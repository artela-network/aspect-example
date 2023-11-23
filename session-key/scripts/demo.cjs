"use strict"

//todo modify it

const Web3 = require('@artela/web3');
const fs = require("fs");
const {numberToHex} = require("@artela/web3-utils");

const contractBin = fs.readFileSync('./build/contract/Counter.bin', "utf-8");
const abi = fs.readFileSync('./build/contract/Counter.abi', "utf-8")
const contractABI = JSON.parse(abi);
const EthereumTx = require('ethereumjs-tx').Transaction;

const demoContractOptions = {
    data: contractBin
};

async function f() {
    // init connection to Artela node
    const web3 = new Web3('http://127.0.0.1:8545');
    let privKey = '0x{private-key-hex}';
    let account = web3.eth.accounts.privateKeyToAccount(privKey);
    web3.eth.accounts.wallet.add(account.privateKey);

    let gasPrice = await web3.eth.getGasPrice();

    // get chain id
    let chainId = await web3.eth.getChainId();

    // retrieve current nonce
    let nonce = await web3.eth.getTransactionCount(account.address);

    // instantiate an instance of the contract
    let aspectCore = web3.atl.aspectCore();

    let contract = new web3.eth.Contract(contractABI);

    // deploy contract
    let deployData = contract.deploy(demoContractOptions).encodeABI();
    let tx = {
        from: account.address,
        nonce: nonce,
        gasPrice,
        gas: 4000000,
        data: deployData,
        chainId
    }

    let signedTx = await web3.eth.accounts.signTransaction(tx, account.privateKey);

    let receipt = await web3.eth.sendSignedTransaction(signedTx.rawTransaction);
    contract.options.address = receipt.contractAddress;
    console.log('contract address is: ',  contract.options.address);

    // load aspect code and deploy
    let aspectCode = fs.readFileSync('./build/release.wasm', {
        encoding: "hex"
    });

    // instantiate an instance of aspect
    let aspect = new web3.atl.Aspect();
    let aspectDeployData = aspect.deploy({
        data: '0x' + aspectCode,
        properties: [],
        paymaster: account.address,
        proof: '0x0'
    }).encodeABI();

    tx = {
        from: account.address,
        nonce: nonce + 1,
        gasPrice,
        gas: 4000000,
        to: aspectCore.options.address,
        data: aspectDeployData,
        chainId
    }

    signedTx = await web3.eth.accounts.signTransaction(tx, account.privateKey);
    receipt = await web3.eth.sendSignedTransaction(signedTx.rawTransaction);
    aspect.options.address = receipt.aspectAddress;
    console.log('aspect address is: ', aspect.options.address);


    // binding with smart contract
    let contractBindingData = await contract.bind({
        priority: 1,
        aspectId: aspect.options.address,
        aspectVersion: 1,
    }).encodeABI();

    tx = {
        from: account.address,
        nonce: nonce + 2,
        gasPrice,
        gas: 4000000,
        data: contractBindingData,
        to: aspectCore.options.address,
        chainId
    }

    signedTx = await web3.eth.accounts.signTransaction(tx, account.privateKey);
    receipt = await web3.eth.sendSignedTransaction(signedTx.rawTransaction);
    console.log(`binding contract result:`);
    console.log(receipt);

    // binding with EoA
    let eoaBindingData = await aspectCore.methods.bind(aspect.options.address, 1, account.address, 1).encodeABI();

    tx = {
        from: account.address,
        nonce: nonce + 3,
        gasPrice,
        gas: 4000000,
        data: eoaBindingData,
        to: aspectCore.options.address,
        chainId
    }

    signedTx = await web3.eth.accounts.signTransaction(tx, account.privateKey);
    receipt = await web3.eth.sendSignedTransaction(signedTx.rawTransaction);
    console.log(`binding EoA result:`);
    console.log(receipt);

    // register session key
    let sessionKeyRegData = aspect.operation('0x123456').encodeABI();
    tx = {
        from: account.address,
        nonce: nonce + 4,
        gasPrice,
        gas: 4000000,
        data: sessionKeyRegData,
        to: aspectCore.options.address,
        chainId
    }

    signedTx = await web3.eth.accounts.signTransaction(tx, account.privateKey);
    console.log('tx hash: ', signedTx.messageHash);
    receipt = await web3.eth.sendSignedTransaction(signedTx.rawTransaction);
    console.log('register session key result: ');
    console.log(receipt)

    // call contract with session key
    let contractCallData = contract.methods.add([1]).encodeABI();
    let validationData = '0x123456';

    const encodedData = web3.eth.abi.encodeParameters(['bytes', 'bytes'],
        [validationData, contractCallData]);

    tx = {
        from: account.address,
        nonce: numberToHex(nonce + 5),
        gasPrice: numberToHex(gasPrice),
        gas: numberToHex(4000000),
        data: encodedData,
        to: contract.options.address,
        chainId: numberToHex(chainId)
    }

    const rawTx = '0x' + new EthereumTx(tx).serialize().toString('hex');

    receipt = await web3.eth.sendSignedTransaction(rawTx);
    console.log(`call contract with session key result: `);
    console.log(receipt);
}

f().then();
