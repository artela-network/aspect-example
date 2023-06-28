# Scheduled salary payment to a specific account

## Instruction
 scheduled salary payment to a specific account. it's show the Aspect Schedule ability.

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

normal case：
* Step 1: `Account1` deploy the erc20 contract  `token.sol`. for define the asset..
* Step 2: Switch `Account2`, deploy an erc20 contract "broker" as payroll accountant.
* Step 3: `Account3` deploy the aspect to chain
* Step 4: Bind the accountant contract with aspect.
* Step 5: transfer money to accountant, which is same to deposit to the accountant address.
* Step 6: call the contract method to start schedule salary payment transactions. that every 5 blocks generate a transaction，until 1000 transactions are generated
* Step 7: keep checking the balances of target account.