#!/bin/bash

web3jsDir=/Users/jack/Projects/js/web3.js
currentDir=$(pwd)

packages=()
for d in "$web3jsDir/packages/*"
do
  packages+=($(basename $d))
done
npm link "${packages[@]}"
