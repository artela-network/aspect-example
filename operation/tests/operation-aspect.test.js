import {ConnectToANode, DeployAspect, EntryPoint} from "./bese-test.js";

import assert from "assert";

const aspect = await DeployAspect({
    wasmPath: "../build/release.wasm",
})

console.log("==deploy Aspect Result== ", aspect)
assert.ok(aspect.aspectAddress, "deploy Aspect fail")


const rawcall = await EntryPoint({
    aspectId: aspect.aspectAddress,
    operationData: '0x1167c2e50dFE34b9Ad593d2c6694731097147317'
})
const web3 = ConnectToANode();
console.log(rawcall)
const rest = web3.eth.abi.decodeParameter('string', rawcall);
console.log(rawcall, rest)
assert.strictEqual(rest, "HelloWorld")
