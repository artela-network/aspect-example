"use strict"

// const demoContractABI = require("./contract/abi-contract.json");
const fs = require('fs')
const Web3 = require('web3');
const bytecode = fs.readFileSync("./testdc/Counter.bin", "utf-8")
const abidata = fs.readFileSync("./testdc/Counter.abi", "utf-8")
// var abi = eval("(" + abidata + ")");
var abi = JSON.parse(abidata)

// const demoContractOptions = {
//     data: bytecode,
//     gasPrice: 1000000010, // Default gasPrice set by Geth
//     gas: 4000000
// };

async function f() {
    // init connection to Artela node
    const web3 = new Web3('http://127.0.0.1:8545');

    // retrieve accounts
    let accounts = await web3.atl.getAccounts();

    // retrieve current nonce
    let nonceVal = await web3.atl.getTransactionCount(accounts[0]);

    // instantiate an instance of contract
    let contract = new web3.atl.Contract(abi,
        web3.utils.aspectCoreAddr, {
        data: bytecode,
        gasPrice: 1000000010, // Default gasPrice set by Geth
        gas: 4000000
    });
    // deploy contract
    let instance = contract.deploy().send({ from: accounts[0], nonce: nonceVal });
    contract = await instance.on('receipt', function (receipt) {
        console.log("contract address: " + receipt.contractAddress);
    }).on('transactionHash', (txHash) => {
        console.log("tx hash: ", txHash);
    });
}

f().then();
