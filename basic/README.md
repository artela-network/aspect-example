# Setup Instruction

Note: this is a very early version, you may need to setup some of the dependencies manually.

## Compile Aspect

1. Run `cd aspect`
2. Run `npm install` to install dependencies of assembly script
3. Run `npm run asbuild:release` to build Aspect into WASM bytecode
4. Ignore the warnings for now, find out the `release.wasm` in `build` folder, that's your aspect bytecode

## Setup Artela web3.js

1. Run `git clone https://github.com/artela-network/web3.js.git` to clone the web3.js code to your local folder
2. By default, the branch should be `1.x` , if not, switch to it
3. Run `npm install` to install dependencies
4. Run `npm run build` to build the web3.js files
5. Run `sh link.sh` to link the packages to your local npm cache

## Run Test

1. Start Artela node first
2. Run `cd test`
3. change the value of `web3jsDir` variable in `link.sh` to the path of Artela web3.js
4. Run `sh link.sh` to link the packages
5. Run `node index.js` to run the test, the test will do the following things:
   1. deploy an aspect
   2. bind the aspect to a smart contract
   3. call smart contract and trigger the aspect

## build 
1. confirm '$GOPATH/src/github.com/artela-network/artelasdk/'
2. install solc
   ```shell
    brew tap ethereum/ethereum
   brew install  solidity
   npm install sloc 
   brew intall buf
   ```
2. `sh script/build.sh`
3. `cd build`
4. `sh run-test.sh`