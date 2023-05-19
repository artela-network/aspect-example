"use strict"

const honeyPotContractABI = require("./contract/honeypot.json");
const attackContractABI = require("./contract/attack.json");

const fs = require('fs')
const Web3 = require('web3');

const honeyPotContractOptions = {
    data: honeyPotContractABI.bytecode,
    gasPrice: 1000000010, // Default gasPrice set by Geth
    gas: 4000000
};

const attackContractOptions = {
    data: attackContractABI.bytecode,
    gasPrice: 1000000010,
    gas: 4000000
};

async function f() {
    // Step1: env init
    const web3 = new Web3('http://127.0.0.1:8545');
    let accounts = await web3.eth.getAccounts();

    console.log(JSON.stringify(web3.utils.aspectCoreAddr))

    let honeyPotNonceVal = await web3.eth.getTransactionCount(accounts[0]);
    let attackNonceVal = await web3.eth.getTransactionCount(accounts[1]);

    // Step2: deploy honeypot contract to artela
    let honeyPotContract = new web3.atl.Contract(honeyPotContractABI.abi,honeyPotContractOptions);
    let honeyPotInstance = honeyPotContract.deploy().send({from: accounts[0], nonce: honeyPotNonceVal});
    honeyPotContract = await honeyPotInstance.on('receipt', function (receipt) {
        console.log("=============== Deploy contract :: HoneyPot.sol ===============");
        console.log("Contract address: " + receipt.contractAddress);
        console.log(receipt);
    }).on('transactionHash', (txHash) => {
        console.log("Deploy contract tx hash: ", txHash);
    });

    // Step3: deploy attack contract to artela
    let attackContract = new web3.atl.Contract(attackContractABI.abi,attackContractOptions);
    let attackInstance = attackContract.deploy().send({from: accounts[1], nonce: attackNonceVal});
    attackContract = await attackInstance.on('receipt', function (receipt) {
        console.log("=============== Deploy contract :: Attack.sol ===============");
        console.log("Contract address: " + receipt.contractAddress);
        console.log(receipt);
    }).on('transactionHash', (txHash) => {
        console.log("Deploy contract tx hash: ", txHash);
    });


    // call the smart contract
    // await contract.methods.depositFunds()
    //     .send({from: accounts[0], nonce: nonceVal + 3})
    //     .on('receipt', (receipt) => {
    //         console.log("=============== called store ===============")
    //         console.log(receipt);
    //     })
    //     .on('transactionHash', (txHash) => {
    //         console.log("call contract tx hash: ", txHash);
    //     });

    // let result= await contract.methods.retrieve().call({from: accounts[0], nonce: nonceVal + 4})
    // console.log("==== reuslt==="+ result);


}

f().then();
