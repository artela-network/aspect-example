#!/usr/bin/env bash

set -eo pipefail

echo "compile contract...."
rm -rf ./build/contract/
mkdir -pv ./build/contract/

solcjs --bin --abi --include-path ./wasm/node_modules/ --base-path . -o ./build/contract/  ./wasm/contracts/*.sol


echo "compile wasm...."
sh ./script/genproc.sh

cp ./wasm/build/release.wasm  ./build

echo "success...."
