"use strict"

//todo modify it

const Web3 = require('@artela/web3');
const fs = require("fs");
const { numberToHex } = require("@artela/web3-utils");
const BigNumber = require('bignumber.js');

const contractBin = fs.readFileSync('./build/contract/Counter.bin', "utf-8");
const abi = fs.readFileSync('./build/contract/Counter.abi', "utf-8")
const contractABI = JSON.parse(abi);
const EthereumTx = require('ethereumjs-tx').Transaction;

var argv = require('yargs')
    .string('node')
    .string('pkfile')
    .string('args')
    .string('contract')
    .string('gas')
    .string('method')
    .string('abi')
    .argv;


const demoContractOptions = {
    data: contractBin
};
function rmPrefix(data) {
    if (data.startsWith('0x')) {
        return data.substring(2, data.length);
    } else {
        return data;
    }
}

function getOriginalV(hexV, chainId_) {
    const v = new BigNumber(hexV, 16);
    const chainId = new BigNumber(chainId_);
    const chainIdMul = chainId.multipliedBy(2);

    const originalV = v.minus(chainIdMul).minus(8);

    const originalVHex = originalV.toString(16);

    return originalVHex;
}
async function f() {

    // init connection to Artela node
    const configJson = JSON.parse(fs.readFileSync('./project.config.json', "utf-8").toString());
    // init connection to Artela node
    let node = (argv.node)?String(argv.node):configJson.node;
    if(!node){
        console.log("'node' cannot be empty, please set by the parameter or artela.config.json")
        process.exit(0)
    }
    const web3 = new Web3(node);
    let gasPrice = await web3.eth.getGasPrice();
    // get chain id
    let chainId = await web3.eth.getChainId();

    //--pkfile ./build/privateKey.txt
    let senderPriKey = String(argv.pkfile)
    if (!senderPriKey || senderPriKey === 'undefined') {
        senderPriKey = "privateKey.txt"
    }
    if (!fs.existsSync(senderPriKey)) {
        console.log("'account' cannot be empty, please set by the parameter ' --pkfile ./build/privateKey.txt'")
        process.exit(0)
    }
    let pk = fs.readFileSync(senderPriKey, 'utf-8');
    let sender = web3.eth.accounts.privateKeyToAccount(pk.trim());
    console.log("from address: ", sender.address);
    web3.eth.accounts.wallet.add(sender.privateKey);
    // retrieve current nonce
    let nonce = await web3.eth.getTransactionCount(sender.address);

    // --contract 0x9999999999999999999999999999999999999999
    const contractAddr = argv.contract;
    if(!contractAddr){
        console.log("'contract address' cannot be empty, please set by the parameter ' --contract 0x9999999999999999999999999999999999999999'")
        process.exit(0)
    }

    // --aspectId {aspect-Id}
    let aspectId = String(argv.aspectId)
    if (!aspectId || aspectId === 'undefined') {
        console.log("'aspectId' cannot be empty, please set by the parameter' --aspectId 0xxxx'")
        process.exit(0)
    }

    // --abi xxx/xxx.abi
    const abiPath = String(argv.abi)
    let abi = null
    if (abiPath && abiPath !== 'undefined') {
        abi = JSON.parse(fs.readFileSync(abiPath, "utf-8").toString());
    } else {
        console.log("'abi' cannot be empty, please set by the parameter' --abi xxx/xxx.abi'")
        process.exit(0)
    }
    let contract = new web3.eth.Contract(abi, contractAddr);
    let aspectCore = web3.atl.aspectCore();
    let aspect = new web3.atl.Aspect();


    // ******************************************
    // start testing session keys
    // ******************************************

    // ******************************************
    // step 1. binding EoA to aspect
    // ******************************************

    // binding with EoA
    let eoaBindingData = await aspectCore.methods.bind(aspectId, 1, sender.address, 1).encodeABI();

    let tx = {
        from: sender.address,
        nonce: nonce++,
        gasPrice,
        gas: 4000000,
        data: eoaBindingData,
        to: aspectCore.options.address,
        chainId
    }

    let  signedTx = await web3.eth.accounts.signTransaction(tx, sender.privateKey);
    let  receipt = await web3.eth.sendSignedTransaction(signedTx.rawTransaction);
    console.log(`binding EoA result:`);
    console.log(receipt);

    // ******************************************
    // step 1. register session key
    // ******************************************

    // create session keys
    let sKeyPrivKey = web3.eth.accounts.create(web3.utils.randomHex(32)).privateKey;
    let sKeyAccount = web3.eth.accounts.privateKeyToAccount(sKeyPrivKey);
    let sKeyPrivKey2 = web3.eth.accounts.create(web3.utils.randomHex(32)).privateKey;
    let sKeyAccount2 = web3.eth.accounts.privateKeyToAccount(sKeyPrivKey2);

    let mainKey = rmPrefix(sender.address);
    let sKey = rmPrefix(sKeyAccount.address);
    let sKeyContract = rmPrefix(contractAddr);

    let contractCallData = contract.methods.add([1]).encodeABI();
    let contractCallMethod = rmPrefix(contractCallData).substring(0, 8);


    console.log("\n\n" +
        "// ******************************************\n" +
        "// test registerSessionKey    \n" +
        "// ******************************************\n\n");

    let op = "0x0001" + sKey + sKeyContract + "0001" + contractCallMethod;
    let sessionKeyRegData = aspect.operation(op).encodeABI();
    console.log("op: ", op);
    console.log("calldata: ", sessionKeyRegData);

    tx = {
        from: sender.address,
        nonce: nonce++,
        gasPrice,
        gas: 8000000,
        data: sessionKeyRegData,
        to: aspectCore.options.address,
        chainId
    }
    //e2f8857467b61f2e4b1a614a0d560cd75c0c076f
    //0x0001 e2f8857467b61f2e4b1a614a0d560cd75c0c076f0250032b4a11478969dc4caaa11ecc2ea98cfc1200020A0A0A0A0B0B0B0B

    signedTx = await web3.eth.accounts.signTransaction(tx, account.privateKey);
    receipt = await web3.eth.sendSignedTransaction(signedTx.rawTransaction);
    console.log('register session key result: ');
    console.log(receipt)

    // ******************************************
    // test getSessionKey: success
    // ******************************************
    console.log("\n\n" +
        "// ******************************************\n" +
        "// test getSessionKey: success    \n" +
        "// ******************************************\n\n");

    let queryKey = web3.utils.sha3(sKeyContract + mainKey + sKey);
    op = "0x1001" + rmPrefix(queryKey);
    sessionKeyRegData = aspect.operation(op).encodeABI();

    console.log("op: ", op);
    console.log("calldata: ", sessionKeyRegData);

    let ret = await web3.eth.call({
        to: aspectCore.options.address, // contract address
        data: sessionKeyRegData
    });
    console.log("ret ", ret);
    console.log("ret ", web3.eth.abi.decodeParameter('string', ret));

    // ******************************************
    // test sign by main key: success
    // ******************************************
    console.log("\n\n" +
        "// ******************************************\n" +
        "// test sign by main key: success    \n" +
        "// ******************************************\n\n");

    tx = {
        from: account.address,
        nonce: nonce++,
        gasPrice,
        gas: 8000000,
        data: contractCallData,
        to: contract.options.address,
        chainId
    }

    signedTx = await web3.eth.accounts.signTransaction(tx, account.privateKey);
    receipt = await web3.eth.sendSignedTransaction(signedTx.rawTransaction);
    console.log(`call contract with session key result: `);
    console.log(receipt);

    // ******************************************
    // step 2. sign tx by session key
    // ******************************************
    
    // ******************************************
    // test sign by skey: success
    // ******************************************
    console.log("\n\n" +
        "// ******************************************\n" +
        "// test sign by skey: success    \n" +
        "// ******************************************\n\n");

    tx = {
        from: sKeyAccount.address,
        nonce: nonce++,
        gasPrice,
        gas: 8000000,
        data: contractCallData,
        to: contract.options.address,
        chainId
    }

    web3.eth.accounts.wallet.add(sKeyAccount.privateKey);
    signedTx = await web3.eth.accounts.signTransaction(tx, sKeyAccount.privateKey);
    console.log("sign tx : ", signedTx);
    // params encode rules:
    //     20 bytes: from
    //         eg. e2f8857467b61f2e4b1a614a0d560cd75c0c076f
    //     32 bytes: r
    //     32 bytes: s
    //     1 bytes: v
    let validationData = mainKey + rmPrefix(signedTx.r) + rmPrefix(signedTx.s) + rmPrefix(getOriginalV(signedTx.v, chainId));

    console.log("validationData : ", validationData);
    console.log("contractCallData : ", contractCallData);
    let encodedData = web3.eth.abi.encodeParameters(['bytes', 'bytes'],
        ["0x" + validationData, contractCallData]);

    tx = {
        from: sKeyAccount.address,
        nonce: numberToHex(nonce - 1),
        gasPrice: numberToHex(gasPrice),
        gas: numberToHex(8000000),
        data: encodedData,
        to: contract.options.address,
        chainId: numberToHex(chainId)
    }

    let rawTx = '0x' + new EthereumTx(tx).serialize().toString('hex');

    receipt = await web3.eth.sendSignedTransaction(rawTx);
    console.log(`call contract with session key result: `);
    console.log(receipt);

    // ******************************************
    // test sign by skey: fail due to illegal skey
    // ******************************************
    console.log("\n\n" +
        "// ******************************************\n" +
        "// test sign by skey: fail due to illegal skey    \n" +
        "// ******************************************\n\n");

    tx = {
        from: sKeyAccount.address,
        nonce: nonce++,
        gasPrice,
        gas: 8000000,
        data: contractCallData,
        to: contract.options.address,
        chainId
    }

    web3.eth.accounts.wallet.add(sKeyAccount2.privateKey);
    signedTx = await web3.eth.accounts.signTransaction(tx, sKeyAccount2.privateKey);
    console.log("sign tx : ", signedTx);

    validationData = mainKey + rmPrefix(signedTx.r) + rmPrefix(signedTx.s) + rmPrefix(getOriginalV(signedTx.v, chainId));

    console.log("validationData : ", validationData);
    console.log("contractCallData : ", contractCallData);
    encodedData = web3.eth.abi.encodeParameters(['bytes', 'bytes'],
        ["0x" + validationData, contractCallData]);

    tx = {
        from: sKeyAccount.address,
        nonce: numberToHex(nonce - 1),
        gasPrice: numberToHex(gasPrice),
        gas: numberToHex(8000000),
        data: encodedData,
        to: contract.options.address,
        chainId: numberToHex(chainId)
    }

    rawTx = '0x' + new EthereumTx(tx).serialize().toString('hex');

    try {
        receipt = await web3.eth.sendSignedTransaction(rawTx);
        throw new Error('this case must be error.');
    } catch (error) {
        console.error(error);
        console.log(`call contract with session key result: fail`);
        console.log(receipt);
    }
}

f().then();
