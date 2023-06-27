#!/usr/bin/bash

### run this script from the project root path.
echo "compile protobuf starting...."
proto_out_path=./build/message
#### change your path
protoRealPath=$GOPATH/src/github.com/artela-network/artelasdk/proto/message

rm -rf $proto_out_path
mkdir -p $proto_out_path

protoc --plugin=protoc-gen-as=./node_modules/.bin/as-proto-gen --proto_path=$protoRealPath  --as_out=$proto_out_path  aspect/v1/hostapi_message.proto
protoc --plugin=protoc-gen-as=./node_modules/.bin/as-proto-gen --proto_path=$protoRealPath  --as_out=$proto_out_path  scheduler/v1/schedule_message.proto

rm -rf ./assembly/lib/types/message/*
cp -rf $proto_out_path/*  ./assembly/lib/types/message/
rm -rf $proto_out_path
echo "compile protobuf starting...."
