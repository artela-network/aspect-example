const Web3 = require('web3');
const web3 = new Web3('http://127.0.0.1:8545'); // modify it according to your own requirements.

async function f() {
    // retrieve accounts
    let accounts = await web3.atl.getAccounts(); // <-- use your local account

    // retrieve current nonce
    let nonceVal = await web3.atl.getTransactionCount(accounts[0]);

    let contractAddress = '0xd10721b126377e73F18F31D59c63261f6325b66A' // <-- contract address, saved in Deploying Contract
    const fs = require('fs')
    const abidata = fs.readFileSync("./test/Counter.abi", "utf-8") // change the abi json to your own
    var abi = JSON.parse(abidata)
    let contract = new web3.atl.Contract(abi, contractAddress)

    await contract.methods.count(1)
        .send({ from: accounts[0], nonce: nonceVal, gas: 4000000, gasPrice: '1000000000' })
        .on('receipt', (receipt) => {
            console.log(receipt);
        })
        .on('transactionHash', (txHash) => {
            console.log("call contract tx hash: ", txHash);
        });
}

f().then();
