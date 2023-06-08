#!/usr/bin/bash

### run this script from the project root path.

test=./wasm
#### change your path
protoRealPath=$GOPATH/src/github.com/artela-network/artelasdk/proto/message
npm install --prefix $test;

protoc --plugin=protoc-gen-as=$test/node_modules/.bin/as-proto-gen --proto_path=$protoRealPath  --as_out=$test/assembly/lib/types/aspect aspect/v1/hostapi_message.proto
protoc --plugin=protoc-gen-as=$test/node_modules/.bin/as-proto-gen --proto_path=$protoRealPath  --as_out=$test/assembly/lib/types/scheduler scheduler/v1/schedule_message.proto

npm --prefix $test run asbuild:release


