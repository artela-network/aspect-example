const fs = require('fs')
const bytecode = fs.readFileSync("/Users/likun/go/src/github.com/artela-network/aspect-example/basic/test/contract/transfer/transfer.bin", "utf-8") // change the bin file it to your own
const abidata = fs.readFileSync("/Users/likun/go/src/github.com/artela-network/aspect-example/basic/test/contract/transfer/transfer.abi", "utf-8") // change the abi json to your own
var abi = JSON.parse(abidata)
const Web3 = require('web3');
const web3 = new Web3('http://127.0.0.1:8545');

async function f() {
    // retrieve accounts
    let accounts = await web3.atl.getAccounts();

    // retrieve current nonce
    let nonceVal = await web3.atl.getTransactionCount(accounts[0]);
    const amountToSend = web3.utils.toWei('1', 'ether'); // 转账金额，这里是1 ETH

    web3.atl.sendTransaction({
        // nonce: nonceVal,
        from: accounts[0],
        to: accounts[1],
        value: amountToSend,
        gas: 21000, // 交易的gas限额
        gasPrice: '1000000000' // gas价格（wei）
    })
        .on('transactionHash', (hash) => {
            console.log(`Transaction hash: ${hash}`);
        })
        .on('receipt', (receipt) => {
            console.log('Transaction receipt:', receipt);
        })
        .on('error', (error) => {
            console.error('Transaction error:', error);
        });

    // let deployOptions = {
    //     gasPrice: '1000000000', // <-- adjust accrodingly
    //     gas: 4000000            // <-- adjust accrodingly
    // }
    // // instantiate an instance of contract
    // let contract = new web3.atl.Contract(abi);
    // // deploy contract
    // let instance = contract.deploy({ data: bytecode }).send({ from: accounts[0], nonce: nonceVal, ...deployOptions });

    // contract = await instance.on('receipt', function (receipt) {
    //     console.log(receipt);
    //     console.log("contract address: " + receipt.contractAddress);
    // }).on('transactionHash', (txHash) => {
    //     console.log("tx hash: ", txHash);
    // });

    // await new Promise(r => setTimeout(r, 5000));

    // await contract.methods.transfer(accounts[1], 1000000)
    //     .send({ from: accounts[0], nonce: nonceVal + 1, gas: 4000000, gasPrice: '1000000000' })
    //     .on('receipt', (receipt) => {
    //         console.log(receipt);
    //     })
    //     .on('transactionHash', (txHash) => {
    //         console.log("call contract tx hash: ", txHash);
    //     });
    // console.log("\ntransferred 1000000 from ", accounts[0], " to ", accounts[1]);
}

f().then();
