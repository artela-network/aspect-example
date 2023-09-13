"use strict"

const Web3 = require('@artela/web3');
const fs = require("fs");

const attackBin = fs.readFileSync('../build/contract/attack_curve.bin', "utf-8");
const attackTarget = fs.readFileSync('../build/contract/attack_curve.abi', "utf-8")
const attackAbi = JSON.parse(attackTarget);
const attackOptions = {
    data: attackBin,
    gasPrice: 1000000010, // Default gasPrice set by Geth
    gas: 4000000
};

const CurveBin = fs.readFileSync('../build/contract/curve.bin', "utf-8");
const CurveTarget = fs.readFileSync('../build/contract/curve.abi', "utf-8")
const CurvePotAbi = JSON.parse(CurveTarget);
const curveOptions = {
    data: CurveBin,
    gasPrice: 1000000010, // Default gasPrice set by Geth
    gas: 3000000
};


async function f() {
    // init connection to Artela node
    const web3 = new Web3('http://127.0.0.1:8545');

    // retrieve accounts
    let accounts = await web3.atl.getAccounts();

    // retrieve current nonce
    let curveDeployer = accounts[0]
    let curveNonceVal = await web3.atl.getTransactionCount(curveDeployer);


    // Step1: deploy curve contract to artela
    //
    // curve is an asset management contract that keeps track of the assets owned by users of curve. 
    // The total recorded amount of these assets is mapped to the native assets held in the contract's account on the blockchain.
    //
    // Contract at: reentrance/contracts/curve.sol
    console.log("\ncurve contract is depolying...")
    let curveContract = new web3.atl.Contract(CurvePotAbi,
        web3.utils.aspectCoreAddr, curveOptions);
    let token_instance = curveContract.deploy().send({ from: curveDeployer, nonce: curveNonceVal });
    let curveAddress = "";
    curveContract = await token_instance.on('receipt', function (receipt) {
        console.log("contract address: " + receipt.contractAddress);
        console.log(receipt);
        curveAddress = receipt.contractAddress
    }).on('transactionHash', (txHash) => {
        console.log("deploy contract tx hash: ", txHash);
    });
    console.log("curve contract is deployed successfully.")
    console.log("== curve_address ==", curveAddress)
    console.log("== curve_account ==", curveDeployer)


    // Step2: deploy attack contract to artela
    //
    // The "attach" contract is one of the users of curve and defines the "deposit" and "attach" (withdraw) methods.
    // It use the contract call method to invoke the "deposit" and "withdraw" functions from the curve contract.
    //
    // Contract at: reentrance/contracts/Attack.sol
    console.log("\nattack contract is depolying...")
    let attackDeployer = accounts[1]
    let attackNonceVal = await web3.atl.getTransactionCount(attackDeployer);

    let attackContract = new web3.atl.Contract(attackAbi,
        web3.utils.aspectCoreAddr, attackOptions);
    let attack_instance = attackContract.deploy({ "arguments": [curveAddress] }).send({
        from: attackDeployer,
        nonce: attackNonceVal
    });
    let attackAddress = "";
    attackContract = await attack_instance.on('receipt', function (receipt) {
        console.log("contract attack address: " + receipt.contractAddress);
        console.log(receipt);
        attackAddress = receipt.contractAddress
    }).on('transactionHash', (txHash) => {
        console.log("deploy attack contract tx hash: ", txHash);
    });

    console.log("attack contract is deployed successfully.")
    console.log("== attack_contract ==", attackAddress)
    console.log("== attack_account ==", attackDeployer)


    // Step3: deploy Security Aspect
    //
    // Deploy an aspect onto the blockchain with the functionality of
    // checking balances and intercepting transactions according to predefined rules.
    //
    console.log("\nAspect is depolying...")
    let AspectDeployer = accounts[2]
    let nonceValAspectDeployer = await web3.atl.getTransactionCount(AspectDeployer);

    let aspectCode = fs.readFileSync('/Users/likun/go/src/github.com/artela-network/test/myaspect/build/release.wasm', {
        encoding: "hex"
    });
    let aspect = new web3.atl.Aspect(
        web3.utils.aspectCoreAddr, {
        gasPrice: 1000000010, // Default gasPrice set by Geth
        gas: 4000000
    });
    let instance = aspect.deploy({
        data: '0x' + aspectCode,
        properties: [{ 'key': 'CurveAddr', 'value': curveAddress }, {
            'key': 'binding',
            'value': curveAddress
        }, { 'key': 'owner', 'value': AspectDeployer }]
    }).send({ from: AspectDeployer, nonce: nonceValAspectDeployer });

    let aspectRt = await instance.on('receipt', (receipt) => {
        console.log("=============== deployed aspect ===============");
        console.log("aspect address: " + aspect.options.address);
        console.log(receipt);
    }).on('transactionHash', (txHash) => {
        console.log("deploy aspect tx hash: ", txHash);
    });
    console.log("Aspect is deployed successfully.")

    console.log("\nAspect is binding to curve...")
    await new Promise(r => setTimeout(r, 2000));
    let aspectId = aspectRt.options.address

    // Step4: bind curve contract with the Security Aspect aspect
    //
    // Bind the curve asset management contract, deployed in Step1 (the contract being attacked),
    // to the security check contract deployed in Step5 on the blockchain.
    await curveContract.bind({
        priority: 1,
        aspectId: aspectId,
        aspectVersion: 1,
    }).send({ from: curveDeployer, nonce: curveNonceVal + 1 })
        .on('receipt', function (receipt) {
            console.log(receipt)
        })
        .on('transactionHash', (txHash) => {
            console.log("contract binding tx hash: ", txHash);
        });
    console.log("Aspect is bund to contract curve successfully.")

    // wait for block committing
    await new Promise(r => setTimeout(r, 2000));

    // Step5. call "Attach" contract method "attack"
    //
    // The logic within the attach function will be triggered.
    // Utilizing the code from the curve contract,
    // an attempt is made to bypass the balance restriction and perform a withdrawal activity.
    console.log("\ncalling attack...")
    try {
        await attackContract.methods.attack()
            .send({ from: accounts[1], nonce: attackNonceVal + 1 })
            .on('receipt', (receipt) => {
                console.log(receipt);
            })
            .on('transactionHash', (txHash) => {
                console.log("Call contract tx hash: ", txHash);
            });
    } catch (err) {
        console.log(err);
    }
}

f().then();
