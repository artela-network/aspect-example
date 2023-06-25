#!/bin/bash

web3jsDir=/Users/yuanyuan/go/src/github.com/artela-network/web3.js
currentDir=$(pwd)

packages=()
for d in "$web3jsDir/packages/*"
do
  packages+=($(basename $d))
done
npm link "${packages[@]}"
