"use strict"
const Web3 = require("web3");
const fs = require("fs");

async function deploy() {
    // init connection to Artela node
    let node = 'http://127.0.0.1:8545';
    if (!node) {
        console.log("'node' cannot be empty, please set by the parameter or artela.config.json")
        process.exit(0)
    }
    const web3 = new Web3(node);

    //--sender 0x9999999999999999999999999999999999999999
    // load bank account
    const bank = (await web3.atl.getAccounts())[0];

    // load local account from private key
    let account;
    if (fs.existsSync('privateKey.txt')) {
        let pk = fs.readFileSync('privateKey.txt', 'utf-8');
        account = web3.atl.accounts.privateKeyToAccount(pk);
    } else {
        account = web3.atl.accounts.create();
        fs.writeFileSync('privateKey.txt', account.privateKey);
    }

    // add account to wallet
    web3.atl.accounts.wallet.add(account.privateKey);

    // transfer account from bank to local account
    let bankNonce = await web3.atl.getTransactionCount(bank);
    let tx = {
        'from': bank,
        'to': account.address,
        'value': web3.utils.toWei('1', 'ether'), // transfer 0.1 eth
        'gas': 2000000,
        'nonce': bankNonce
    };

    // send transaction
    await web3.atl.sendTransaction(tx).on('receipt', receipt => {
        console.log('transferred from bank to local account');
        console.log(receipt);
    });

    const aspectDeployer = account.address;

    // set nonce value
    let nonceValAspectDeployer = await web3.atl.getTransactionCount(aspectDeployer);

    //read wasm code
    const aspectCode = fs.readFileSync('/Users/likun/go/src/github.com/artela-network/artelasdk/djpm/run/libs/build/release.wasm', {
        encoding: "hex"
    });
    if (!aspectCode || aspectCode === "" || aspectCode === 'undefined') {
        console.log("aspectCode cannot be empty")
        process.exit(0)
    }

    let aspectCore = new web3.atl.aspectCore();
    const deploy = aspectCore.methods.deploy('0x' + aspectCode, [{ 'key': 'owner', 'value': aspectDeployer }]);
    tx = {
        from: account.address,
        to: aspectCore.options.address,
        data: deploy.encodeABI(),
        nonce: nonceValAspectDeployer,
        gas: 4000000
    }
    let signedTx = await web3.atl.accounts.signTransaction(tx, account.privateKey);
    console.log('deployTxHash: ' + signedTx.transactionHash);
    console.log(signedTx);
    let aspect = await web3.atl.sendSignedTransaction(signedTx.rawTransaction)
        .on('receipt', receipt => {
            console.log("=============== deployed aspect ===============");
            console.log(receipt);
        });

    // print aspect info
    console.log(`--aspectAccount ${aspectDeployer}  --aspectId ${aspect}`);
}

deploy().then();