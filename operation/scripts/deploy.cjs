"use strict"

//todo modify it

const Web3 = require('@artela/web3');
const fs = require("fs");

const contractBin = fs.readFileSync('./build/contract/Storage.bin', "utf-8");
const storage = fs.readFileSync('./build/contract/Storage.abi', "utf-8")
const contractABI = JSON.parse(storage);

const demoContractOptions = {
    data: contractBin
};

async function f() {
    // init connection to Artela node
    const web3 = new Web3('http://127.0.0.1:8545');

    let gasPrice = await web3.atl.getGasPrice();

    // retrieve accounts
    let accounts = await web3.atl.getAccounts();

    // retrieve current nonce
    let nonceVal = await web3.atl.getTransactionCount(accounts[0]);

    let contractAddr = ""
    // instantiate an instance of demo contract
    let contract = new web3.atl.Contract(contractABI);
    // deploy demo contract
    let instance =await contract.deploy(demoContractOptions).send({
            from: accounts[0],
            nonce: nonceVal ,
            gasPrice,
            gas: 9000000
        }).on('receipt', function (receipt) {
            console.log("=============== deployed contract ===============");
            console.log("contract address: " + receipt.contractAddress);
            contractAddr = receipt.contractAddress
            console.log(receipt);
        }).on('transactionHash', (txHash) => {
            console.log("deploy contract tx hash: ", txHash);
        });


    // load aspect code and deploy
    let aspectCode = fs.readFileSync('./build/release.wasm', {
        encoding: "hex"
    });
    // instantiate an instance of aspect
    let aspect = new web3.atl.Aspect();
    let aspectInstance = await aspect.deploy({
        data: '0x' + aspectCode,
        properties: [ {
            'key': 'Broker',
            'value': accounts[0]
        }, {'key': 'binding', 'value': contractAddr}, {'key': 'owner', 'value': accounts[0]}],
        paymaster: accounts[0],
        proof: '0x0',
    }).send({from: accounts[0], nonce: nonceVal + 1, gasPrice, gas: 4000000})
        .on('receipt', (receipt) => {
            console.log(receipt);
        }).on('transactionHash', (txHash) => {
            console.log("deploy aspect tx hash: ", txHash);
        })

    await new Promise(r => setTimeout(r, 5000));

    console.log("=============== deployed aspect ===============");
    console.log("aspect address: " + aspectInstance.options.address);

    let aspectId = aspectInstance.options.address
    console.log("--aspect id--: " + aspectId);
    // bind the smart contract with aspect
    await instance.bind({
        priority: 1,
        aspectId: aspectId,
        aspectVersion: 1,
    }).send({from: accounts[0], nonce: nonceVal + 2, gasPrice, gas: 4000000})
        .on('receipt', function (receipt) {
            console.log("=============== bind aspect ===============")
            console.log(receipt)
        })
        .on('transactionHash', (txHash) => {
            console.log("contract binding tx hash: ", txHash);
        });

    await new Promise(r => setTimeout(r, 5000));

    // call the smart contract, aspect should be triggered
    await instance.methods.store(100)
        .send({from: accounts[0], nonce: nonceVal + 3, gasPrice, gas: 4000000})
        .on('receipt', (receipt) => {
            console.log("=============== called store ===============")
            console.log(receipt);
        })
        .on('transactionHash', (txHash) => {
            console.log("call contract tx hash: ", txHash);
        });

    let result = await instance.methods.retrieve().call()
    console.log("==== reuslt===" + result);


    let rawcall = await aspectInstance.rawcall('0x1167c2e50dFE34b9Ad593d2c6694731097147317')
        .send({from: accounts[0], nonce: nonceVal + 4, gasPrice, gas: 4000000})
        .on('receipt', (receipt) => {
            console.log(receipt);
            console.log(receipt);
        }).on('transactionHash', (txHash) => {
            console.log("rawcall  tx hash: ", txHash);
        })
    console.log(rawcall)

}

f().then();
