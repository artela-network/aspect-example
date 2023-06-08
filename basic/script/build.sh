#!/usr/bin/env bash

set -eo pipefail

echo "compile contract...."
rm -rf ./build

proto_dirs=$(find ./contracts -path -prune -o -name '*.sol' -print0 | xargs -0 -n1 dirname | sort | uniq)
for dir in $proto_dirs; do
  proto_files=$(find "${dir}" -maxdepth 1 -name '*.sol')
  for file in $proto_files; do
    # Check if the go_package in the file is pointing to evmos
      solc -o ./contracts/temp --abi --bin $file  --overwrite
      filePath=${file##*/}
      filename=${filePath%%.*}
      mkdir -pv ./build/$filename
      cp ./contracts/temp/*  ./build/$filename
      rm -rf ./contracts/temp/
  done
done

cp ./script/templ/* ./build

echo "compile wasm...."
sh ./script/genproc.sh

cp ./wasm/build/release.wasm  ./build

echo "success...."
