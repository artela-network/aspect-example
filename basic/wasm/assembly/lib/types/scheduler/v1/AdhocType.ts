// Code generated by protoc-gen-as. DO NOT EDIT.
// Versions:
//   protoc-gen-as v1.3.0
//   protoc        v3.21.12

import { Writer, Reader } from "as-proto/assembly";

export class AdhocType {
  static encode(message: AdhocType, writer: Writer): void {
    writer.uint32(8);
    writer.uint64(message.nextNBlocks);

    writer.uint32(16);
    writer.uint64(message.maxRetry);
  }

  static decode(reader: Reader, length: i32): AdhocType {
    const end: usize = length < 0 ? reader.end : reader.ptr + length;
    const message = new AdhocType();

    while (reader.ptr < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.nextNBlocks = reader.uint64();
          break;

        case 2:
          message.maxRetry = reader.uint64();
          break;

        default:
          reader.skipType(tag & 7);
          break;
      }
    }

    return message;
  }

  nextNBlocks: u64;
  maxRetry: u64;

  constructor(nextNBlocks: u64 = 0, maxRetry: u64 = 0) {
    this.nextNBlocks = nextNBlocks;
    this.maxRetry = maxRetry;
  }
}
