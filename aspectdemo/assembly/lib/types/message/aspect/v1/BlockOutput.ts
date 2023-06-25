// Code generated by protoc-gen-as. DO NOT EDIT.
// Versions:
//   protoc-gen-as v1.3.0
//   protoc        v4.23.2

import { Writer, Reader } from "as-proto/assembly";
import { Result } from "./BlockOutput/Result";
import { EthBlock } from "./EthBlock";

export class BlockOutput {
  static encode(message: BlockOutput, writer: Writer): void {
    const res = message.res;
    if (res !== null) {
      writer.uint32(10);
      writer.fork();
      Result.encode(res, writer);
      writer.ldelim();
    }

    const block = message.block;
    if (block !== null) {
      writer.uint32(18);
      writer.fork();
      EthBlock.encode(block, writer);
      writer.ldelim();
    }
  }

  static decode(reader: Reader, length: i32): BlockOutput {
    const end: usize = length < 0 ? reader.end : reader.ptr + length;
    const message = new BlockOutput();

    while (reader.ptr < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.res = Result.decode(reader, reader.uint32());
          break;

        case 2:
          message.block = EthBlock.decode(reader, reader.uint32());
          break;

        default:
          reader.skipType(tag & 7);
          break;
      }
    }

    return message;
  }

  res: Result | null;
  block: EthBlock | null;

  constructor(res: Result | null = null, block: EthBlock | null = null) {
    this.res = res;
    this.block = block;
  }
}