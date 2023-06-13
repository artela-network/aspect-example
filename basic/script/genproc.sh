#!/usr/bin/bash

### run this script from the project root path.

test=./wasm
#### change your path
protoRealPath=$GOPATH/src/github.com/artela-network/artelasdk/proto/message
npm install --prefix $test;

rm -rf $test/output
mkdir -p $test/output

protoc --plugin=protoc-gen-as=$test/node_modules/.bin/as-proto-gen --proto_path=$protoRealPath  --as_out=$test/output  aspect/v1/hostapi_message.proto
protoc --plugin=protoc-gen-as=$test/node_modules/.bin/as-proto-gen --proto_path=$protoRealPath  --as_out=$test/output scheduler/v1/schedule_message.proto


mkdir -p $test/assembly/lib/types/aspect/
mkdir -p $test/assembly/lib/types/scheduler/

cp -rf $test/output/aspect/*   $test/assembly/lib/types/aspect/
cp -rf $test/output/scheduler/*   $test/assembly/lib/types/scheduler/

rm -rf $test/output

npm --prefix $test run asbuild:release


