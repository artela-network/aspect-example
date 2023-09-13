const fs = require('fs')
const bytecode = fs.readFileSync("/Users/likun/go/src/github.com/artela-network/aspect-example/basic/test/1/1_Storage.bin", "utf-8") // change the bin file it to your own
const abidata = fs.readFileSync("/Users/likun/go/src/github.com/artela-network/aspect-example/basic/test/1/1_Storage.abi.json", "utf-8") // change the abi json to your own
var abi = JSON.parse(abidata)
const Web3 = require('web3');
const web3 = new Web3('http://127.0.0.1:8545');

async function f() {
    // retrieve accounts
    let accounts = await web3.atl.getAccounts();

    // retrieve current nonce
    let nonceVal = await web3.atl.getTransactionCount(accounts[0]);

    let deployOptions = {
        gasPrice: '1000000000', // <-- adjust accrodingly
        gas: 4000000            // <-- adjust accrodingly
    }
    // instantiate an instance of contract
    let contract = new web3.atl.Contract(abi);
    // deploy contract
    let instance = contract.deploy({ data: bytecode }).send({ from: accounts[0], nonce: nonceVal, ...deployOptions });

    contract = await instance.on('receipt', function (receipt) {
        console.log(receipt);
        console.log("contract address: " + receipt.contractAddress);
    }).on('transactionHash', (txHash) => {
        console.log("tx hash: ", txHash);
    });

    await contract.methods.store(1)
        .send({ from: accounts[0], nonce: nonceVal + 1, gas: 4000000, gasPrice: '1000000000' })
        .on('receipt', (receipt) => {
            console.log(receipt);
        })
        .on('transactionHash', (txHash) => {
            console.log("call contract tx hash: ", txHash);
        });
}

f().then();
