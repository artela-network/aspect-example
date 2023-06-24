#!/usr/bin/bash
echo "compile contract starting...."
rm -rf ./build/contract/
solcjs --abi --bin --include-path ./node_modules/ --base-path . -o ./build/contract/  ./contracts/*.sol
echo "compile contract success."
