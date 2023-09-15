"use strict"

///
/// Here is a test scenario for using an aspect to schedule periodic salary payments
///

const Web3 = require('@artela/web3');
const fs = require("fs");

const tokenBin = fs.readFileSync('./build/contract/contracts_token_sol_ArtToken.bin', "utf-8");
const tokenTarget = fs.readFileSync('./build/contract/contracts_token_sol_ArtToken.abi', "utf-8")
const tokenAbi = JSON.parse(tokenTarget);
const tokenOptions = {
    data: tokenBin,
    gasPrice: 1000000010, // Default gasPrice set by Geth
    gas: 4000000
};

const brokerBin = fs.readFileSync('./build/contract/contracts_broker_sol_Borker.bin', "utf-8");
const brokerTarget = fs.readFileSync('./build/contract/contracts_broker_sol_Borker.abi', "utf-8")
const brokerAbi = JSON.parse(brokerTarget);
const brokerOptions = {
    data: brokerBin,
    gasPrice: 1000000010, // Default gasPrice set by Geth
    gas: 3000000
};



async function f() {
    // init connection to Artela node
    const web3 = new Web3('http://127.0.0.1:8545');

    // retrieve accounts
    let accounts = await web3.atl.getAccounts();

    // retrieve current nonce
    let tokenDeployer = accounts[0]
    let targetAccount = accounts[3]
    console.log("===targetAccount===", targetAccount)
    let nonceValtokenDeployer = await web3.atl.getTransactionCount(tokenDeployer);


    // Step 1. Deploy an erc20 contract "token" to define the asset.
    //
    // contract at: schedule_salary/contracts/token.sol
    let token_contract = new web3.atl.Contract(tokenAbi,
        web3.utils.aspectCoreAddr, tokenOptions);
    let token_instance = token_contract.deploy({ "arguments": [1000000000000000] }).send({ from: tokenDeployer, nonce: nonceValtokenDeployer });
    let contractAddress = "";
    token_contract = await token_instance.on('receipt', function (receipt) {
        console.log("=============== deployed contract ===============");
        console.log("contract address: " + receipt.contractAddress);
        console.log(receipt);
        contractAddress = receipt.contractAddress
    }).on('transactionHash', (txHash) => {
        console.log("deploy contract tx hash: ", txHash);
    });
    console.log("== token_address ==", contractAddress)
    console.log("== token_account ==", tokenDeployer)



    // Step 2. Deploy an erc20 contract "broker" as payroll accountant.
    //
    // contrat at: schedule_salary/contracts/broker.sol
    let brokerDeployer = accounts[1]
    let nonceValBrokerDeployer = await web3.atl.getTransactionCount(brokerDeployer);

    let broker_contract = new web3.atl.Contract(brokerAbi,
        web3.utils.aspectCoreAddr, brokerOptions);
    let broker_instance = broker_contract.deploy({ "arguments": [contractAddress] }).send({ from: brokerDeployer, nonce: nonceValBrokerDeployer });
    let brokerAddress = "";
    broker_contract = await broker_instance.on('receipt', function (receipt) {
        console.log("=============== deployed contract ===============");
        console.log("contract address: " + receipt.contractAddress);
        console.log(receipt);
        brokerAddress = receipt.contractAddress
    }).on('transactionHash', (txHash) => {
        console.log("deploy contract tx hash: ", txHash);
    });

    console.log("== broker_contract ==", brokerAddress)
    console.log("== broker_account ==", brokerDeployer)



    let AspectDeployer = accounts[2]
    let nonceValAspectDeployer = await web3.atl.getTransactionCount(AspectDeployer);

    // Step 3. Deploy the aspect to chain
    //
    // Aspect at: schedule_salary/assembly/aspect/salary_payment.ts
    let aspectCode = fs.readFileSync('./build/release.wasm', {
        encoding: "hex"
    });
    let aspect = new web3.atl.Aspect(
        web3.utils.aspectCoreAddr, {
        gasPrice: 1000000010, // Default gasPrice set by Geth
        gas: 4000000
    });

    aspect = await aspect.deploy({
        data: '0x' + aspectCode,
        properties: [{ 'key': 'TargetAddr', 'value': targetAccount }, { 'key': 'ScheduleTo', 'value': brokerAddress }, { 'key': 'Broker', 'value': brokerDeployer }, { 'key': 'binding', 'value': brokerAddress }, { 'key': 'owner', 'value': AspectDeployer }],
        paymaster: AspectDeployer,
        proof: '0x0',
    }).send({ from: AspectDeployer, nonce: nonceValAspectDeployer})
        .on('receipt', (receipt) => {
            console.log(receipt);
        }).on('transactionHash', (txHash) => {
            console.log("deploy aspect tx hash: ", txHash);
        })

    await new Promise(r => setTimeout(r, 5000));

    let aspectId = aspect.options.address

    // Step 4. Bind the accountant contract with aspect.
    await broker_contract.bind({
        priority: 1,
        aspectId: aspectId,
        aspectVersion: 1,
    }).send({ from: brokerDeployer, nonce: nonceValBrokerDeployer + 1 })
        .on('receipt', function (receipt) {
            console.log("=============== bind aspect ===============")
            console.log(receipt)
        })
        .on('transactionHash', (txHash) => {
            console.log("contract binding tx hash: ", txHash);
        });

    await new Promise(r => setTimeout(r, 5000));

    // Step 5. Transfer money to accountant, which is same to deposit to the accountant address. 
    await token_contract.methods.transfer(brokerAddress, 10000000)
        .send({ from: tokenDeployer, nonce: nonceValtokenDeployer + 1 })
        .on('receipt', (receipt) => {
            console.log("=============== called aspect bound contract ===============")
            console.log(receipt);
        })
        .on('transactionHash', (txHash) => {
            console.log("called aspect bound contract tx hash: ", txHash);
        });

    let result = await token_contract.methods.balanceOf(brokerAddress).call({ from: tokenDeployer, nonce: nonceValtokenDeployer + 2 })
    console.log("==== brokerDeployer  balance===" + result);

    // Step 6. Call the contract method to start schdule salary pament transation.
    await broker_contract.methods.startSchedule()
        .send({ from: brokerDeployer, nonce: nonceValBrokerDeployer + 2 })
        .on('receipt', (receipt) => {
            console.log("=============== called startSchedule===============")
            console.log(receipt);
        })
        .on('transactionHash', (txHash) => {
            console.log("called startSchedulet tx hash: ", txHash);
        });

    // Step 7. keep checking the balances of target account.
    // There should be a continuous influx of money.
    // According to the logic set in the aspect, starting from the third block after its invocation,
    // there will be an additional transfer income every 5 blocks.
    // see: schedule_salary/contracts/broker.sol: scheduleTx
    let nonceskip = 3;
    for (; ;) {
        await new Promise(r => setTimeout(r, 5000));
        let result = await token_contract.methods.balanceOf(targetAccount).call({ from: tokenDeployer, nonce: nonceValtokenDeployer + nonceskip })
        console.log("==== targetAccount  balanceOf===" + result);
        ++nonceskip
    }
}

f().then();
