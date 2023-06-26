#!/usr/bin/bash
echo "compile contract starting...."
rm -rf ./build/contract/
solc -o ./build/contract/ --via-ir --abi --bin ./contracts/*.sol  --overwrite

echo "compile contract success."
