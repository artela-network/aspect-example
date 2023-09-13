"use strict"
const Web3 = require("web3");
const web3 = new Web3('http://127.0.0.1:8545');
const fs = require("fs");

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

async function f() {
    // load bank account
    // const bank = (await web3.atl.getAccounts())[0];

    // // transfer account from bank to local account
    // let bankNonce = await web3.atl.getTransactionCount(bank);
    let tx = {
        'from': account.address,
        'to': account.address,
        'value': web3.utils.toWei('1', 'ether'), // transfer 0.1 eth
        'gas': 2000000,
        'nonce': 0
    };

    // send transaction
    await web3.atl.sendTransaction(tx).on('receipt', receipt => {
        console.log('transferred from bank to local account');
        console.log(receipt);
    });
}
f().then();
