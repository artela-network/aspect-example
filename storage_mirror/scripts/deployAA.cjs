"use strict"

const Web3 = require('@artela/web3');
const fs = require("fs");
const aaWalletFactory = require('./AspectEnabledSimpleAccountFactory.json');
const aaWallet = require('./AspectEnabledSimpleAccount.json');
const aaEntryPoint = require('./EntryPoint.json');
const storage = require('./Storage.json');

async function f() {

    const web3 = new Web3('http://127.0.0.1:8545/'); // <--这个自己改下

    let privKey = '0x5703e49696d138a276ea66fe643cd10f526ea0dbdac2d1bed0602a1b16635f0a'; // <--换个有钱的私钥
    let account = web3.eth.accounts.privateKeyToAccount(privKey);
    web3.eth.accounts.wallet.add(account.privateKey);

    let gasPrice = await web3.eth.getGasPrice();

    // get chain id
    let chainId = await web3.eth.getChainId();

    // retrieve current nonce
    let nonce = await web3.eth.getTransactionCount(account.address);

    // instantiate an instance of the contract
    let aspectCore = web3.atl.aspectCore();

    let entrypointContractAddress = '0x7b20970624Cd01582Cd01385B67B969446AC5110';

    // 2. deploy aa wallet factory
    let aaWalletFactoryContract = await new web3.eth.Contract(aaWalletFactory.abi);
    let deployOption = {
        data: aaWalletFactory.bytecode,
        arguments: [entrypointContractAddress] // entrypoint contact address
    };
    let deployData = aaWalletFactoryContract.deploy(deployOption).encodeABI();
    let tx = {
        from: account.address,
        nonce: nonce,
        gasPrice,
        gas: 10000000,
        data: deployData,
        chainId
    };

    let signedTx = await web3.eth.accounts.signTransaction(tx, account.privateKey);

    let receipt = await web3.eth.sendSignedTransaction(signedTx.rawTransaction);
    aaWalletFactoryContract.options.address = receipt.contractAddress;
    console.log('factory address is: ',  aaWalletFactoryContract.options.address);

    // 3. create an aspect enabled aa wallet
    // create aa wallet
    let calldata = aaWalletFactoryContract.methods.createAccount(account.address, nonce).encodeABI();
    tx = {
        from: account.address,
        to: aaWalletFactoryContract.options.address,
        nonce: nonce + 1,
        gasPrice,
        gas: 10000000,
        data: calldata,
        chainId
    };

    signedTx = await web3.eth.accounts.signTransaction(tx, account.privateKey);
    receipt = await web3.eth.sendSignedTransaction(signedTx.rawTransaction);

    let walletAddr = await aaWalletFactoryContract.methods.getAddress(account.address, nonce++).call();
    console.log('wallet address: ', walletAddr);
}

f().then();
