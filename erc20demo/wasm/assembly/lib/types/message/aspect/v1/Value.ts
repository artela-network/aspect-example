// Code generated by protoc-gen-as. DO NOT EDIT.
// Versions:
//   protoc-gen-as v1.3.0
//   protoc        v4.23.2

import { Writer, Reader } from "as-proto/assembly";
import { ValueKind } from "./ValueKind";

export class Value {
  static encode(message: Value, writer: Writer): void {
    writer.uint32(8);
    writer.int32(message.kind);

    writer.uint32(18);
    writer.bytes(message.data);
  }

  static decode(reader: Reader, length: i32): Value {
    const end: usize = length < 0 ? reader.end : reader.ptr + length;
    const message = new Value();

    while (reader.ptr < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.kind = reader.int32();
          break;

        case 2:
          message.data = reader.bytes();
          break;

        default:
          reader.skipType(tag & 7);
          break;
      }
    }

    return message;
  }

  kind: ValueKind;
  data: Uint8Array;

  constructor(kind: ValueKind = 0, data: Uint8Array = new Uint8Array(0)) {
    this.kind = kind;
    this.data = data;
  }
}
