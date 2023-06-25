// Code generated by protoc-gen-as. DO NOT EDIT.
// Versions:
//   protoc-gen-as v1.3.0
//   protoc        v4.23.2

import { Writer, Reader } from "as-proto/assembly";
import { AspTransaction } from "./AspTransaction";

export class AspectInput {
  static encode(message: AspectInput, writer: Writer): void {
    writer.uint32(8);
    writer.int64(message.blockHeight);

    const tx = message.tx;
    if (tx !== null) {
      writer.uint32(18);
      writer.fork();
      AspTransaction.encode(tx, writer);
      writer.ldelim();
    }
  }

  static decode(reader: Reader, length: i32): AspectInput {
    const end: usize = length < 0 ? reader.end : reader.ptr + length;
    const message = new AspectInput();

    while (reader.ptr < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.blockHeight = reader.int64();
          break;

        case 2:
          message.tx = AspTransaction.decode(reader, reader.uint32());
          break;

        default:
          reader.skipType(tag & 7);
          break;
      }
    }

    return message;
  }

  blockHeight: i64;
  tx: AspTransaction | null;

  constructor(blockHeight: i64 = 0, tx: AspTransaction | null = null) {
    this.blockHeight = blockHeight;
    this.tx = tx;
  }
}