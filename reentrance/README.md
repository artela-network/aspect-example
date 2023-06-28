# Against Reentrancy Attacks with Aspect

## Instruction
A reentrancy attack is a vulnerability in smart contracts where an external contract can maliciously call a target contract's function multiple times before the previous invocation completes. 
This can lead to unexpected behavior or manipulation of contract state. 
In this scenario, Aspect-Oriented Programming is employed to protect fund security without modifying the contract itself.
```shell
.
├── app  // Node.js app,for Deployment, Binding , and Testing.
├── assembly // wasm code 
│ ├── aspect // Aspect File
│ ├── lib    // Aspect library
├── contracts // contracts  file
├── script   // build script

```
## Guide
This guide assumes that you have the necessary environments for Node development, protobuf, artela-network/Web3.js, and artela-network/artelasdk Git repository set up.
If you are not familiar with these environments, please refer to external resources such as Google for more information and instructions on how to set them up.

## build
1. build smart contract and aspect
   ```shell
   cd .     
   sh script/build.sh
   ```
2. run test 
   ```shell
   cd app
   sh run-normal.sh // normal case, honeypot was attacked
   sh run-app.sh   // aspect case,  protect honeypot
   ```

## How it works?
To understand what these contracts' functions doing [read](https://gus-tavo-guim.medium.com/reentrancy-attack-on-smart-contracts-how-to-identify-the-exploitable-and-an-example-of-an-attack-4470a2d8dfe4) the original work.

normal case：
* Step 1: `Account1` deploy the `HoneyPot.sol`. And set its address to a variable. 
* Step 2: Switch `Account2`, deploy the Attack.sol with HoneyPot address.
* Step 3: `Account1` deposit 100 eth to HoneyPot contract, 
* Step 4: `Account2` deposit 10 eth to HoneyPot by Attack contract, then  HoneyPot contract have 110 ether.
* Step 5: `Account2` call attack() with Attack contract, that withdraw HoneyPot. `HoneyPot.withdraw()` function sends ether to the address that called it only if this contract has any ether as balance. When HoneyPot sends ether to Attack the receive function is triggered. If the HoneyPot balance is more than the value that it was sent to, the receive function calls withdraw() function once again and the cycle repeats.

Aspect case：at step 5，Aspect protects the HoneyPot balance using  following logic
*  1: deploy aspect and binding it to HoneyPot contract.
*  2: during the execution of transactions by the EVM (Ethereum Virtual Machine), the Aspect code is executed in addition to the regular contract code. this example implements two defense mechanisms. 
   *  2.1: Count the inner transactions generated during EVM execution. If it more than one, it is  a reentrancy attack. see `reentrance/assembly/aspect/guard_by_count_aspect.ts`
   *  2.2: It compares the balance of the sender address with the balance changes caused by all generated inner transactions. If the balance becomes less than 0, it is considered a reentrancy attack. see `reentrance/assembly/aspect/guard_by_trace_aspect.ts`
