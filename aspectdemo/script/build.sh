#!/usr/bin/env bash

npm install

sh ./script/build-contract.sh
sh ./script/build-protobuf.sh
echo "compile wasm starting...."
npm run asbuild
echo "compile wasm success...."

