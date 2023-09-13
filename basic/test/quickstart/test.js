"use strict"

const demoContractABI = require("./contract/storage-contract.json");
const fs = require('fs')
const Web3 = require('web3');

const demoContractOptions = {
    data: demoContractABI.bytecode,
    gasPrice: 1000000010, // Default gasPrice set by Geth
    gas: 4000000
};

async function f() {
    // init connection to Artela node
    const web3 = new Web3('http://127.0.0.1:8545');

    // retrieve accounts
    let accounts = await web3.eth.getAccounts();

    // retrieve current nonce
    let nonceVal = await web3.eth.getTransactionCount(accounts[0]);

    // instantiate an instance of demo contract
    let contract = new web3.atl.Contract(demoContractABI.abi,
        web3.utils.aspectCoreAddr, demoContractOptions);
    // deploy demo contract
    let instance = contract.deploy().send({from: accounts[0], nonce: nonceVal});
    contract = await instance.on('receipt', function (receipt) {
        console.log("=============== deployed contract ===============");
        console.log("contract address: " + receipt.contractAddress);
        console.log(receipt);
    }).on('transactionHash', (txHash) => {
        console.log("deploy contract tx hash: ", txHash);
    });





    let result= await contract.methods.retrieve().call({from: accounts[0], nonce: nonceVal + 4})
    console.log("==== reuslt==="+ result);

}

f().then();
