"use strict"

const fs = require('fs')
const Web3 = require('web3');

async function f() {
    // Step1: env init
    const web3 = new Web3('http://127.0.0.1:8545');
    let accounts = await web3.eth.getAccounts();
    let honeyPotContractAddr = ""
    let attackContractAddr = ""
    console.log("account1: ", accounts[0]);
    console.log("account2: ", accounts[1]);

    //console.log(JSON.stringify(web3.utils.aspectCoreAddr))
}

f().then();
