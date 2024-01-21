import {
    BindAspect,
    ConnectToANode,
    DeployAspect,
    DeployContract,
    EntryPoint, bytesToHex, numberToHex,
} from "./bese-test.js";
import assert from "assert";
import {LegacyTransaction as EthereumTx} from "@ethereumjs/tx"
import fs from "fs";

const contract = await DeployContract({
    abiPath: "../build/contract/Counter.abi", bytePath: "../build/contract/Counter.bin"
})
assert.ok(contract.contractAddress, "Deploy Counter Contract fail");
console.log("==deploy  Counter Contract Result== ", contract)


const aspect = await DeployAspect({
    wasmPath: "../build/release.wasm",
    joinPoints: ["VerifyTx"],
    properties: [{'key': 'ScheduleTo', 'value': contract.contractAddress},
        {'key': 'Broker', 'value': contract.from},
        {'key': 'binding', 'value': contract.contractAddress},
        {'key': 'owner', 'value': contract.from}],
})
assert.ok(aspect.aspectAddress, "Deploy storage-aspect  fail");

console.log("==deploy Aspect Result== ", aspect)

const bindResult = await BindAspect({
    abiPath: "../build/contract/Counter.abi",
    contractAddress: contract.contractAddress,
    aspectId: aspect.aspectAddress
})
console.log("==bind Aspect Result== ", bindResult)

// bind EoA
const bindEOAResult = await BindAspect({
    abiPath: "../build/contract/Counter.abi",
    contractAddress: contract.from,
    aspectId: aspect.aspectAddress
})
console.log("==bind EoA Result== ", bindEOAResult)


//  register session key

let registerResult = await EntryPoint({aspectId: aspect.aspectAddress, operationData: '0x123456'});
console.log("==register session key Result== ", registerResult)

let web3 = ConnectToANode();

const abiTxt = fs.readFileSync("../build/contract/Counter.abi", "utf-8").toString().trim();
const contractAbi = JSON.parse(abiTxt);
// instantiate an instance of demo contract
const tokenContract = new web3.eth.Contract(contractAbi);
// call contract with session key
let contractCallData = tokenContract.methods.add([1]).encodeABI();
let validationData = '0x123456';

let encodedData = web3.eth.abi.encodeParameters(['bytes', 'bytes'],
    [validationData, contractCallData]);

// Append magic prefix and checksum to the encoded data
encodedData = '0xCAFECAFE' + web3.utils.keccak256(encodedData).slice(2, 10) + encodedData.slice(2);
let nonce = await web3.eth.getTransactionCount(contract.from);
let gasPrice = await web3.eth.getGasPrice();
let chainId = await web3.eth.getChainId();

// Set gas and gas limit
let gas = 8000000;
let gasLimit = 20000000;
// Update the transaction object with the encoded data
let tx =
    {
        from: contract.from,
        nonce: numberToHex(nonce),
        gasPrice: numberToHex(gasPrice),
        gasLimit: numberToHex(gasLimit),
        gas: numberToHex(gas),
        data: encodedData,
        to: contract.contractAddress,
        chainId: numberToHex(chainId)
    }

// Return the serialized unsigned transaction
let rawTx = '0x' + bytesToHex(EthereumTx.fromTxData(tx).serialize());
let receipt = await web3.eth.sendSignedTransaction(rawTx);
console.log(`call contract with result: `);
console.log(receipt);


