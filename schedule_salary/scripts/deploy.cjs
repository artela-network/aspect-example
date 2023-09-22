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
    arguments: [1000000000000000],

};

const brokerBin = fs.readFileSync('./build/contract/contracts_broker_sol_Borker.bin', "utf-8");
const brokerTarget = fs.readFileSync('./build/contract/contracts_broker_sol_Borker.abi', "utf-8")
const brokerAbi = JSON.parse(brokerTarget);


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
    let gasPrice = await web3.atl.getGasPrice();

    // Step 1. Deploy an erc20 contract "token" to define the asset.
    //
    // contract at: schedule_salary/contracts/token.sol
    let token_contract = new web3.atl.Contract(tokenAbi);
    let contractAddress = "";
    let token_instance = await token_contract.deploy(tokenOptions)
        .send({
            from: tokenDeployer,
            nonce: nonceValtokenDeployer,
            gasPrice,
            gas: 4000000
        }).on('receipt', function (receipt) {
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
    const brokerOptions = {
        data: brokerBin,
        arguments: [contractAddress],

    };
    let brokerAddress = "";
    let broker_contract = new web3.atl.Contract(brokerAbi);
    let broker_instance = await broker_contract.deploy(brokerOptions)
        .send({
            from: brokerDeployer,
            nonce: nonceValBrokerDeployer,
            gasPrice,
            gas: 3000000
        }).on('receipt', function (receipt) {
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
    let aspect = new web3.atl.Aspect();

    let aspectInstance = await aspect.deploy({
        data: '0x' + aspectCode,
        properties: [{'key': 'TargetAddr', 'value': targetAccount}, {
            'key': 'ScheduleTo',
            'value': brokerAddress
        }, {'key': 'Broker', 'value': brokerDeployer}, {'key': 'binding', 'value': brokerAddress}, {
            'key': 'owner',
            'value': AspectDeployer
        }],
        paymaster: AspectDeployer,
        proof: '0x0',
    }).send({from: AspectDeployer, nonce: nonceValAspectDeployer,      gasPrice,
        gas: 4000000,})
        .on('receipt', (receipt) => {
            console.log(receipt);
        }).on('transactionHash', (txHash) => {
            console.log("deploy aspect tx hash: ", txHash);
        })

    await new Promise(r => setTimeout(r, 5000));

    let aspectId = aspectInstance.options.address

    // Step 4. Bind the accountant contract with aspect.
    await broker_instance.bind({
        priority: 1,
        aspectId: aspectId,
        aspectVersion: 1,
    }).send({from: brokerDeployer, nonce: nonceValBrokerDeployer + 1})
        .on('receipt', function (receipt) {
            console.log("=============== bind aspect ===============")
            console.log(receipt)
        })
        .on('transactionHash', (txHash) => {
            console.log("contract binding tx hash: ", txHash);
        });

    await new Promise(r => setTimeout(r, 5000));

    // Step 5. Transfer money to accountant, which is same to deposit to the accountant address. 
    await token_instance.methods.transfer(brokerAddress, 10000000)
        .send({
            from: tokenDeployer,
            nonce: nonceValtokenDeployer + 1,
            gas: 2500000,
            gasPrice
        })
        .on('receipt', (receipt) => {
            console.log("=============== called aspect bound contract ===============")
            console.log(receipt);
        })
        .on('transactionHash', (txHash) => {
            console.log("called aspect bound contract tx hash: ", txHash);
        });

    let result = await token_instance.methods.balanceOf(brokerAddress).call()
    console.log("==== brokerDeployer  balance===" + result);

    // Step 6. Call the contract method to start schdule salary pament transation.
    await broker_instance.methods.startSchedule()
        .send({
            from: brokerDeployer,
            nonce: nonceValBrokerDeployer + 2,
            gas: 2500000,
            gasPrice
        })
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
        let result = await token_instance.methods.balanceOf(targetAccount).call()
        console.log("==== targetAccount  balanceOf===" + result);
        ++nonceskip
    }
}

f().then();
