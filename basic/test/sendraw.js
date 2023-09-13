"use strict"

const fs = require('fs')
const bytecode = fs.readFileSync("/Users/likun/go/src/github.com/artela-network/aspect-example/basic/test/1/1_Storage.bin", "utf-8") // change the bin file it to your own
const abidata = fs.readFileSync("/Users/likun/go/src/github.com/artela-network/aspect-example/basic/test/1/1_Storage.abi.json", "utf-8") // change the abi json to your own
var abi = JSON.parse(abidata)
const Web3 = require('web3');
const web3 = new Web3('http://127.0.0.1:8545');

async function f() {
    // load local account from private key
    let privateFile = 'privateKey.txt'; // <-- your private key here, if not exist, create new one
    let account;
    if (fs.existsSync(privateFile)) {
        let pk = fs.readFileSync(privateFile, 'utf-8');
        account = web3.atl.accounts.privateKeyToAccount(pk);
    } else {
        account = web3.atl.accounts.create();
        fs.writeFileSync(privateFile, account.privateKey);
    }

    // add account to wallet
    web3.atl.accounts.wallet.add(account.privateKey);

    /*
    // load bank account
    const bank = (await web3.atl.getAccounts())[0];

    // transfer account from bank to local account
    let bankNonce = await web3.atl.getTransactionCount(bank);
    let tx1 = {
        'from': bank,
        'to': account.address,
        'value': web3.utils.toWei('1', 'ether'), // transfer 0.1 eth
        'gas': 2000000,
        'nonce': bankNonce
    };

    // send transaction
    await web3.atl.sendTransaction(tx1).on('receipt', receipt => {
        console.log('transferred from bank to local account');
        console.log(receipt);
    });
    */

    // retrieve current nonce
    let nonceVal = await web3.atl.getTransactionCount(account.address);

    // let deployOptions = {
    //     gasPrice: '1000000000', // <-- adjust accrodingly
    //     gas: 4000000            // <-- adjust accrodingly
    // }
    // instantiate an instance of contract
    let contract = new web3.atl.Contract(abi);
    // deploy contract
    let deploy = contract.deploy({ data: bytecode });

    // let aspectCore = new web3.atl.aspectCore();
    // const deploy = aspectCore.methods.deploy('0x' + aspectCode, [{ 'key': 'owner', 'value': aspectDeployer }]);
    let tx2 = {
        from: account.address,
        data: deploy.encodeABI(),
        nonce: nonceVal,
        gas: 4000000
    }
    let signedTx = await web3.atl.accounts.signTransaction(tx2, account.privateKey);
    console.log('deployTxHash: ' + signedTx.transactionHash);
    await web3.atl.sendSignedTransaction(signedTx.rawTransaction)
        .on('receipt', receipt => {
            console.log(receipt);
        });

}

f().then();