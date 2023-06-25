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
    let honeyPotContractAddr = ""
    let attackContractAddr = ""

    //console.log(JSON.stringify(web3.utils.aspectCoreAddr))

    let honeyPotNonceVal = await web3.eth.getTransactionCount(accounts[0]);
    let attackNonceVal = await web3.eth.getTransactionCount(accounts[1]);

    // Step2: deploy honeypot contract to artela
    let honeyPotContract = new web3.atl.Contract(honeyPotContractABI.abi,honeyPotContractOptions);
    let honeyPotInstance = honeyPotContract.deploy().send({from: accounts[0], nonce: honeyPotNonceVal});
    honeyPotContract = await honeyPotInstance.on('receipt', function (receipt) {
        console.log("=============== Deploy contract :: HoneyPot.sol ===============");
        honeyPotContractAddr = receipt.contractAddress
        console.log("Contract address: " + honeyPotContractAddr);
        console.log(receipt);
    }).on('transactionHash', (txHash) => {
        console.log("Deploy contract tx hash: ", txHash);
    });

    // Step3: deploy attack contract to artela
    let attackContract = new web3.atl.Contract(attackContractABI.abi,attackContractOptions);
    let attackInstance = attackContract.deploy({arguments: [honeyPotContractAddr]}).send({from: accounts[1], nonce: attackNonceVal});
    attackContract = await attackInstance.on('receipt', function (receipt) {
        console.log("=============== Deploy contract :: Attack.sol ===============");
        attackContractAddr = receipt.contractAddress
        console.log("Contract address: " + attackContractAddr);
        console.log(receipt);
    }).on('transactionHash', (txHash) => {
        console.log("Deploy contract tx hash: ", txHash);
    });

    // Step4: admin deposit 100 eth to honeypot
    await honeyPotContract.methods.deposit()
        .send({from: accounts[0], nonce: honeyPotNonceVal + 1, value: web3.utils.toWei('100', 'ether')})
        .on('receipt', (receipt) => {
            console.log("=============== Admin Deposit 100 ether ===============")
            console.log(receipt);
        })
        .on('transactionHash', (txHash) => {
            console.log("Call contract tx hash: ", txHash);
        });

    // Step5. hacker deposit 10 eth to honeyPot
    await attackContract.methods.deposit()
        .send({from: accounts[1], nonce: attackNonceVal + 1, value: web3.utils.toWei('10', 'ether')})
        .on('receipt', (receipt) => {
            console.log("=============== Hacker Deposit 1 ether ===============")
            console.log(receipt);
        })
        .on('transactionHash', (txHash) => {
            console.log("Call contract tx hash: ", txHash);
        });

    // Step6. hacker call attack contract to withdraw 10 eth
    await attackContract.methods.attack()
        .send({from: accounts[1], nonce: attackNonceVal + 2})
        .on('receipt', (receipt) => {
            console.log("=============== Hacker Withdraw 10 ether ===============")
            console.log(receipt);
        })
        .on('transactionHash', (txHash) => {
            console.log("Call contract tx hash: ", txHash);
        });


    // Stepx: deploy security aspect to artela
    // Stepx: call the attack smart contract
    // Stepx: bind honeypot smart contract and security aspect
    // Stepx: call the attack smart contract



    // let result= await contract.methods.retrieve().call({from: accounts[0], nonce: nonceVal + 4})
    // console.log("==== reuslt==="+ result);


}

f().then();