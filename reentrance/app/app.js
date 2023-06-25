"use strict"

//todo modify it
const Web3 = require('web3');
const fs = require("fs");

const attackBin = fs.readFileSync('../build/contract/contracts_Attack_sol_Attack.bin', "utf-8");
const attackTarget = fs.readFileSync('../build/contract/contracts_Attack_sol_Attack.abi',"utf-8")
const attackAbi = JSON.parse(attackTarget);
const attackOptions = {
    data: attackBin,
    gasPrice: 1000000010, // Default gasPrice set by Geth
    gas: 4000000
};

const HoneyPotBin = fs.readFileSync('../build/contract/contracts_HoneyPot_sol_HoneyPot.bin', "utf-8");
const HoneyPotTarget = fs.readFileSync('../build/contract/contracts_HoneyPot_sol_HoneyPot.abi',"utf-8")
const HoneyPotAbi = JSON.parse(HoneyPotTarget);
const honeypotOptions = {
    data: HoneyPotBin,
    gasPrice: 1000000010, // Default gasPrice set by Geth
    gas: 3000000
};



async function f() {
    // init connection to Artela node
    const web3 = new Web3('http://127.0.0.1:8545');

    // retrieve accounts
    let accounts = await web3.eth.getAccounts();

    // retrieve current nonce
    let honeypotDeployer =accounts[0]
    let honeyPotNonceVal = await web3.eth.getTransactionCount(honeypotDeployer);


    // Step1: deploy honeypot contract to artela
    let honeyPotContract = new web3.atl.Contract(HoneyPotAbi,
        web3.utils.aspectCoreAddr, honeypotOptions);
    let token_instance = honeyPotContract.deploy().send({from: honeypotDeployer, nonce: honeyPotNonceVal});
    let honeypotAddress="";
    honeyPotContract = await token_instance.on('receipt', function (receipt) {
        console.log("=============== deployed contract ===============");
        console.log("contract address: " + receipt.contractAddress);
        console.log(receipt);
        honeypotAddress= receipt.contractAddress
    }).on('transactionHash', (txHash) => {
        console.log("deploy contract tx hash: ", txHash);
    });
    console.log("== HoneyPot_address ==",honeypotAddress)
    console.log("== HoneyPot_account ==",honeypotDeployer)



    // Step2: deploy attack contract to artela
    let attackDeployer =accounts[1]
    let attackNonceVal = await web3.eth.getTransactionCount(attackDeployer);

    let attackContract = new web3.atl.Contract(attackAbi,
        web3.utils.aspectCoreAddr, attackOptions);
    let attack_instance = attackContract.deploy({"arguments":[honeypotAddress]}).send({from: attackDeployer, nonce: attackNonceVal});
    let attackAddress="";
    attackContract = await attack_instance.on('receipt', function (receipt) {
        console.log("=============== deployed attack contract ===============");
        console.log("contract attack address: " + receipt.contractAddress);
        console.log(receipt);
        attackAddress= receipt.contractAddress
    }).on('transactionHash', (txHash) => {
        console.log("deploy attack contract tx hash: ", txHash);
    });

    console.log("== attack_contract ==",attackAddress)
    console.log("== attack_account ==",attackDeployer)


    // Step3: deploy aspect
    let AspectDeployer =accounts[2]
    let nonceValAspectDeployer = await web3.eth.getTransactionCount(AspectDeployer);

    let aspectCode = fs.readFileSync('../build/release.wasm', {
        encoding: "hex"
    });
    let aspect = new web3.atl.Aspect(
        web3.utils.aspectCoreAddr, {
            gasPrice: 1000000010, // Default gasPrice set by Geth
            gas: 4000000
        });
   let instance = aspect.deploy({
        data: '0x' + aspectCode,
        properties: [{'key': 'HoneyPotAddr', 'value': honeypotAddress},{'key': 'binding', 'value': honeypotAddress},{'key': 'owner', 'value':AspectDeployer }]
    }).send({from: AspectDeployer, nonce: nonceValAspectDeployer});

   let aspectRt = await instance.on('receipt', (receipt) => {
        console.log("=============== deployed aspect ===============");
        console.log("aspect address: " + aspect.options.address);
        console.log(receipt);
    }).on('transactionHash', (txHash) => {
        console.log("deploy aspect tx hash: ", txHash);
    });
    await new Promise(r => setTimeout(r, 5000));

    let aspectId=aspectRt.options.address

    // Step3: bind honeyPotContract with aspect
    await honeyPotContract.bind({
        priority: 1,
        aspectId: aspectId,
        aspectVersion: 1,
    }).send({from: attackDeployer, nonce: attackNonceVal + 1})
        .on('receipt', function (receipt) {
            console.log("=============== bind aspect ===============")
            console.log(receipt)
        })
        .on('transactionHash', (txHash) => {
            console.log("contract binding tx hash: ", txHash);
        });

    await new Promise(r => setTimeout(r, 5000));

    // Step4: admin deposit 100 eth to honeypot
    await honeyPotContract.methods.deposit()
        .send({from: honeypotDeployer, nonce: honeyPotNonceVal + 1, value: web3.utils.toWei('100', 'ether')})
        .on('receipt', (receipt) => {
            console.log("=============== Admin Deposit 100 ether ===============")
            console.log(receipt);
        })
        .on('transactionHash', (txHash) => {
            console.log("Call contract tx hash: ", txHash);
        });

    let result= await honeyPotContract.balances(honeypotAddress).call({from: honeypotDeployer, nonce: honeyPotNonceVal + 2})
    console.log("==== honeypotAddress  balance==="+ result);


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

    result= await honeyPotContract.balances(attackAddress).call({from: honeypotDeployer, nonce: honeyPotNonceVal + 3})
    console.log("==== attackAddress  balance==="+ result);



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

    result= await honeyPotContract.balances(attackAddress).call({from: honeypotDeployer, nonce: honeyPotNonceVal + 4})
    console.log("==== attackAddress  balance info==="+ result);

    const balance = await web3.eth.getBalancePromise(attackAddress)
    console.log("==== attackAddress  balance info==="+web3.utils.fromWei(balance, 'ether') + ' ETH')



}

f().then();
