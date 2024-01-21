"use strict"

const Web3 = require('@artela/web3');
const fs = require("fs");
const aaWalletFactory = require('./AspectEnabledSimpleAccountFactory.json');
const aaWallet = require('./AspectEnabledSimpleAccount.json');
const aaEntryPoint = require('./EntryPoint.json');
const storage = require('./Storage.json');

async function f() {
    // 1. some preparation
    // init connection to Artela node
    const web3 = new Web3('http://127.0.0.1:8545');

    // retrieve accounts
    let accounts = await web3.eth.getAccounts();

    // retrieve current nonce
    let nonce = await web3.eth.getTransactionCount(accounts[0]);
    let gasPrice = await web3.eth.getGasPrice();

    let entrypointContractAddress = '0x000000000000000000000000000000000000AAEC';

    // 2. deploy aa wallet factory
    let aaWalletFactoryContract = await new web3.eth.Contract(aaWalletFactory.abi);
    let deployOption = {
        data: aaWalletFactory.bytecode,
        arguments: [entrypointContractAddress] // entrypoint contact address
    };
    aaWalletFactoryContract = await aaWalletFactoryContract.deploy(deployOption)
        .send({
            from: accounts[0],
            nonce: nonce++,
          //  gas: await aaWalletFactoryContract.deploy(deployOption).estimateGas({from: accounts[0]}),
            gas: 10000000,
            gasPrice
        }).on('transactionHash', (txHash) => {
            console.log('aa wallet factory deploy tx: ', txHash);
        }).on('receipt', function (receipt) {
            console.log('aa wallet factory deploy receipt: ', receipt);
        }).on('error', function (error) {
            console.log('aa wallet deploy error: ', error);
        });

    // 3. create an aspect enabled aa wallet
    // create aa wallet
    await aaWalletFactoryContract.methods.createAccount(accounts[0], nonce).send({
        from: accounts[0],
        gas: await aaWalletFactoryContract.methods.createAccount(accounts[0], nonce).estimateGas({from: accounts[0]}),
        gasPrice: gasPrice,
        nonce: nonce
    }).on('transactionHash', (txHash) => {
        console.log('aa wallet create tx: ', txHash);
    }).on('receipt', function (receipt) {
        console.log('aa wallet create receipt: ', receipt);
    }).on('error', function (error) {
        console.log('aa wallet create error: ', error);
    });

    let walletAddr = await aaWalletFactoryContract.methods.getAddress(accounts[0], nonce++).call();
    console.log('wallet address: ', walletAddr);

    // 4. deploy a business logic contract
    let storageContract = new web3.eth.Contract(storage.abi);
    deployOption = {
        data: storage.bin,
    };
    storageContract = await storageContract.deploy(deployOption)
        .send({
            from: accounts[0],
            nonce: nonce++,
            gas: await storageContract.deploy(deployOption).estimateGas({from: accounts[0]}),
            gasPrice
        }).on('transactionHash', (txHash) => {
            console.log('storage deploy tx: ', txHash);
        }).on('receipt', function (receipt) {
            console.log('storage deploy receipt: ', receipt);
        }).on('error', function (error) {
            console.log('storage deploy error: ', error);
        });

    let storageContract2 = new web3.eth.Contract(storage.abi);
    deployOption = {
        data: storage.bin,
    };
    storageContract2 = await storageContract2.deploy(deployOption)
        .send({
            from: accounts[0],
            nonce: nonce++,
            gas: await storageContract2.deploy(deployOption).estimateGas({from: accounts[0]}),
            gasPrice
        }).on('transactionHash', (txHash) => {
            console.log('storage2 deploy tx: ', txHash);
        }).on('receipt', function (receipt) {
            console.log('storage2 deploy receipt: ', receipt);
        }).on('error', function (error) {
            console.log('storage2 deploy error: ', error);
        });

    // 5. deploy an aspect
    const aspectCode = fs.readFileSync('./build/release.wasm', {
        encoding: "hex"
    });
    let aspect = new web3.atl.Aspect();
    aspect = await aspect.deploy({
        data: '0x' + aspectCode,
        properties: [{'key': 'wallet', 'value': walletAddr}, {'key': 'contract', 'value': storageContract2.options.address}],
        paymaster: accounts[0],
        proof: '0x0',
    }).send({from: accounts[0], nonce: nonce++, gas: 10000000,
        gasPrice})
        .on('receipt', (receipt) => {
            console.log('deploy aspect receipt: ', receipt);
        }).on('transactionHash', (txHash) => {
            console.log('deploy aspect tx hash: ', txHash);
        }).on('error', (error) => {
            console.log('deploy aspect error: ', error);
        });
    const aspectId = aspect.options.address;
    console.log('deployed aspect id: ', aspectId);

    // 6. approve aspect
    let aaWalletContract = new web3.eth.Contract(aaWallet.abi, walletAddr);

    // check owner
    let owner = await aaWalletContract.methods.owner().call();
    console.log('wallet owner: ', owner);

    let callGas = await aaWalletContract.methods.approveAspects([aspectId]).estimateGas({from: accounts[0]});
    console.log(callGas);

    await aaWalletContract.methods.approveAspects([aspectId]).send({
        from: accounts[0],
        gas: await aaWalletContract.methods.approveAspects([aspectId]).estimateGas({from: accounts[0]}),
        gasPrice: gasPrice,
        nonce: nonce++
    }).on('transactionHash', (txHash) => {
        console.log('aa wallet approve aspect tx: ', txHash);
    }).on('receipt', function (receipt) {
        console.log('aa wallet approve aspect receipt: ', receipt);
    }).on('error', function (error) {
        console.log('aa wallet approve aspect error: ', error);
    });

    // 7. bind the contract with aspect
    await storageContract.bind({
        priority: 1,
        aspectId: aspectId,
        aspectVersion: 1,
    }).send({
        from: accounts[0],
        nonce: nonce++,
        gas: 10000000,
        gasPrice
    }).on('receipt', function (receipt) {
        console.log('aspect bind receipt: ', receipt);
    }).on('transactionHash', (txHash) => {
        console.log('aspect bind tx hash: ', txHash);
    }).on('error', function (error) {
        console.log('aspect bind error: ', error);
    });

    // 8. call the contract and trigger the jit call
    await storageContract.methods.store(100)
        .send({
            from: accounts[0],
            nonce: nonce++,
            gas: 2500000,
            gasPrice
        }).on('transactionHash', (txHash) => {
            console.log('storage store tx: ', txHash);
        }).on('receipt', function (receipt) {
            console.log('storage store receipt: ', receipt);
        }).on('error', function (error) {
            console.log('storage store error: ', error);
        });

    // 9. check whether call has been submitted
    let value = await storageContract2.methods.retrieve().call();
    console.log('stored value: ', value);

    // extra. try call contract with aa
    // await web3.atl.sendTransaction({
    //     from: accounts[0],
    //     to: aaWalletContract.options.address,
    //     value: web3.utils.toWei('1', 'ether'),
    //     gas: 210000,
    //     gasPrice: gasPrice,
    //     nonce: nonce++
    // }).on('transactionHash', (hash) => {
    //     console.log(`transfer tx hash: ${hash}`);
    // }).on('receipt', (receipt) => {
    //     console.log('transfer receipt:', receipt);
    // }).on('error', (error) => {
    //     console.error('transfer error:', error);
    // });
    //
    // let callData = storageContract.options.address + storageContract.methods.store(100).encodeABI().substring(2);
    // let gas = await storageContract.methods.store(100).estimateGas({from: accounts[0]});
    // let userOp = {
    //     sender: aaWalletContract.options.address,
    //     nonce: 0,
    //     initCode: '0x',
    //     callData: callData,
    //     callGasLimit: gas + 10000,
    //     verificationGasLimit: gas,
    //     preVerificationGas: gas,
    //     maxFeePerGas: gasPrice,
    //     maxPriorityFeePerGas: gasPrice,
    //     paymasterAndData:  '0x',
    //     signature: '0x'
    // };
    //
    // let entryPointContract = new web3.atl.Contract(aaEntryPoint.abi, entrypointContractAddress);
    // let userOpHash = await entryPointContract.methods.getUserOpHash(userOp).call();
    // userOp.hash = userOpHash;
    // console.log('user op hash is: ', userOpHash);
    //
    // // sign user op
    // let msgToSign = web3.utils.utf8ToHex('\x19Ethereum Signed Message:\n32') + userOpHash.substr(2);
    // console.log('msg to sign: ', msgToSign);
    // userOp.signature = await web3.atl.sign(msgToSign, accounts[0]);
    // console.log('signature: ', userOp.signature);
    //
    // // call contract via entry point
    // let err = await entryPointContract.methods.handleOps([userOp], accounts[0]).call({from: accounts[0]});
    // console.log(err);
    //
    // await entryPointContract.methods.handleOps([userOp], accounts[0]).send({
    //     from: accounts[0],
    //     nonce: nonce++,
    //     gas: await entryPointContract.methods.handleOps([userOp], accounts[0]).estimateGas({from: accounts[0]}),
    //     gasPrice
    // }).on('transactionHash', (txHash) => {
    //     console.log('aa call tx: ', txHash);
    // }).on('receipt', function (receipt) {
    //     console.log('aa call receipt: ', receipt);
    // }).on('error', function (error) {
    //     console.log('aa call error: ', error);
    // });
}

f().then();
