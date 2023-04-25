#!/bin/bash

web3jsDir=/Users/jack/Projects/js/web3.js/packages
currentDir=$(pwd)

packages=()
for d in "$web3jsDir/*"
do
  packages+=($(basename $d))
done
npm link "${packages[@]}"
