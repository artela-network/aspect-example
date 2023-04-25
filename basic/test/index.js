"use strict"

const demoContractABI = require("./demo-contract.json");
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
    let contract = new web3.atl.Contract(web3.utils.aspectCoreAbi,
        web3.utils.aspectCoreAddr, demoContractOptions);

    // instantiate an instance of aspect
    let aspect = new web3.atl.Aspect(
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

    // load aspect code and deploy
    let aspectCode = fs.readFileSync('../aspect/build/release.wasm', {
        encoding: "hex"
    });
    instance = aspect.deploy({
        data: '0x' + aspectCode,
        properties: [{'key': '0x00', 'value': '0x02'}]
    }).send({from: accounts[0], nonce: nonceVal + 1});

    aspect = await instance.on('receipt', (receipt) => {
        console.log("=============== deployed aspect ===============");
        console.log("aspect address: " + aspect.options.address);
        console.log(receipt);
    }).on('transactionHash', (txHash) => {
        console.log("deploy contract tx hash: ", txHash);
    });

    // bind the smart contract with aspect
    await contract.bind({
        priority: 1,
        aspectId: aspect.options.address,
        aspectVersion: 1,
    }).send({from: accounts[0], nonce: nonceVal + 2})
        .on('receipt', function (receipt) {
            console.log("=============== bind aspect ===============")
            console.log(receipt)
        })
        .on('transactionHash', (txHash) => {
            console.log("contract binding tx hash: ", txHash);
        });

    // call the smart contract, aspect should be triggered
    await contract.methods.bind('0xf0ad2a7bb38bbaa19ed206cac5279fb50e0dd732',
        1, '0xf0ad2a7bb38bbaa19ed206cac5279fb50e0dd732', 10)
        .send({from: accounts[0], nonce: nonceVal + 3})
        .on('receipt', (receipt) => {
            console.log("=============== called contract ===============")
            console.log(receipt);
        })
        .on('transactionHash', (txHash) => {
            console.log("call contract tx hash: ", txHash);
        });
}

f().then();
