#!/usr/bin/bash

### run this script from the project root path.

test=./wasm
#### change your path
protoRealPath=$GOPATH/src/github.com/artela-network/artelasdk/proto/message
npm install --prefix $test;

rm -rf $test/output_temp
mkdir -p $test/output_temp

protoc --plugin=protoc-gen-as=$test/node_modules/.bin/as-proto-gen --proto_path=$protoRealPath  --as_out=$test/output_temp  aspect/v1/hostapi_message.proto
protoc --plugin=protoc-gen-as=$test/node_modules/.bin/as-proto-gen --proto_path=$protoRealPath  --as_out=$test/output_temp  scheduler/v1/schedule_message.proto


rm -rf $test/assembly/lib/types/message/*
cp -rf $test/output_temp/  $test/assembly/lib/types/message/

rm -rf $test/output_temp
rm -rf $test/build
npm --prefix $test run asbuild


