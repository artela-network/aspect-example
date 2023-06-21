"use strict"

//todo modify it
const Web3 = require('web3');
const fs = require("fs");
const scheduleTargetBin = fs.readFileSync('./schedule_target/ScheduleTarget.bin', "utf-8");
const ScheduleTarget = fs.readFileSync('./schedule_target/ScheduleTarget.abi',"utf-8")
const ScheduleTargetAbi = JSON.parse(ScheduleTarget);
const ScheduleTargetOptions = {
    data: scheduleTargetBin,
    gasPrice: 1000000010, // Default gasPrice set by Geth
    gas: 4000000
};

const contractBin = fs.readFileSync('./storage/Storage.bin', "utf-8");
const storage = fs.readFileSync('./storage/Storage.abi',"utf-8")
const contractABI = JSON.parse(storage);

const demoContractOptions = {
    data: contractBin,
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
    let schedule_contract = new web3.atl.Contract(ScheduleTargetAbi,
        web3.utils.aspectCoreAddr, ScheduleTargetOptions);
    // deploy demo contract
    let schedule_instance = schedule_contract.deploy().send({from: accounts[0], nonce: nonceVal});
    let contractAddress="";
    schedule_contract = await schedule_instance.on('receipt', function (receipt) {
        console.log("=============== deployed contract ===============");
        console.log("contract address: " + receipt.contractAddress);
        console.log(receipt);
        contractAddress= receipt.contractAddress
    }).on('transactionHash', (txHash) => {
        console.log("deploy contract tx hash: ", txHash);
    });

    console.log("== ScheduleTo ==",contractAddress)
    console.log("== account ==",accounts[0])

    await new Promise(r => setTimeout(r, 5000));
    // instantiate an instance of demo contract
    let contract = new web3.atl.Contract(contractABI,
        web3.utils.aspectCoreAddr, demoContractOptions);
    // deploy demo contract
    let instance = contract.deploy().send({from: accounts[0], nonce: nonceVal+1});
    let contractAddr=""
    contract = await instance.on('receipt', function (receipt) {
        console.log("=============== deployed contract ===============");
        console.log("contract address: " + receipt.contractAddress);
        contractAddr=receipt.contractAddress
        console.log(receipt);
    }).on('transactionHash', (txHash) => {
        console.log("deploy contract tx hash: ", txHash);
    });


    // load aspect code and deploy
    let aspectCode = fs.readFileSync('./release.wasm', {
        encoding: "hex"
    });
    // instantiate an instance of aspect
    let aspect = new web3.atl.Aspect(
        web3.utils.aspectCoreAddr, {
            gasPrice: 1000000010, // Default gasPrice set by Geth
            gas: 4000000
        });
    instance = aspect.deploy({
        data: '0x' + aspectCode,
        properties: [{'key': 'ScheduleTo', 'value': contractAddress},{'key': 'Broker', 'value': accounts[0] },{'key': 'binding', 'value': contractAddr},{'key': 'owner', 'value': accounts[0] }]
    }).send({from: accounts[0], nonce: nonceVal + 2});

    aspect = await instance.on('receipt', (receipt) => {
        console.log("=============== deployed aspect ===============");
        console.log("aspect address: " + aspect.options.address);
        console.log(receipt);
    }).on('transactionHash', (txHash) => {
        console.log("deploy aspect tx hash: ", txHash);
    });
    await new Promise(r => setTimeout(r, 5000));

    let aspectId=aspect.options.address
    // bind the smart contract with aspect
    await contract.bind({
        priority: 1,
        aspectId: aspectId,
        aspectVersion: 1,
    }).send({from: accounts[0], nonce: nonceVal + 3})
        .on('receipt', function (receipt) {
            console.log("=============== bind aspect ===============")
            console.log(receipt)
        })
        .on('transactionHash', (txHash) => {
            console.log("contract binding tx hash: ", txHash);
        });

    await new Promise(r => setTimeout(r, 5000));

    // call the smart contract, aspect should be triggered
    await contract.methods.store(100)
        .send({from: accounts[0], nonce: nonceVal + 4})
        .on('receipt', (receipt) => {
            console.log("=============== called store ===============")
            console.log(receipt);
        })
        .on('transactionHash', (txHash) => {
            console.log("call contract tx hash: ", txHash);
        });

    let result= await contract.methods.retrieve().call({from: accounts[0], nonce: nonceVal + 5})
    console.log("==== reuslt==="+ result);



    let nonceskip=6;
    for (;;){
        await new Promise(r => setTimeout(r, 5000));

        let result= await schedule_contract.methods.retrieve().call({from: accounts[0], nonce: nonceVal + nonceskip})

        console.log("==== schedule_contract result==="+ result);

        ++nonceskip
    }
}

f().then();
