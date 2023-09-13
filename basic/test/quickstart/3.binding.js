const Web3 = require('web3');
const web3 = new Web3('http://127.0.0.1:8545'); // modify it according to your own requirements.

let contractAddress = '0xd10721b126377e73F18F31D59c63261f6325b66A' // <-- contract address, saved in Deploying Contract
let aspectAddress = '0x6d4CC47CeD100f696C50bC2c1a1395f12c6BF613' // <-- aspect address, saved in Deploying Aspect
const fs = require('fs')
const abidata = fs.readFileSync("./test/Counter.abi", "utf-8") // change the abi json to your own
var abi = JSON.parse(abidata)
let contract = new web3.atl.Contract(abi, contractAddress)

async function f() {

    // retrieve accounts
    let accounts = await web3.atl.getAccounts(); // <-- use your local account

    // retrieve current nonce
    let nonceVal = await web3.atl.getTransactionCount(accounts[0]);

    await contract.bind({
        priority: 1,
        aspectId: aspectAddress,
        aspectVersion: 1,
    }).send({ from: accounts[0], nonce: nonceVal })
        .on('receipt', function (receipt) {
            console.log("=============== bind aspect ===============")
            console.log(receipt)
        })
        .on('transactionHash', (txHash) => {
            console.log("contract binding tx hash: ", txHash);
        });
}

f().then();