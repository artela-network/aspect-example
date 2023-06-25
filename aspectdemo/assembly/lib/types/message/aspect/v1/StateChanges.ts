// Code generated by protoc-gen-as. DO NOT EDIT.
// Versions:
//   protoc-gen-as v1.3.0
//   protoc        v4.23.2

import { Writer, Reader } from "as-proto/assembly";
import { StateChange } from "./StateChange";

export class StateChanges {
  static encode(message: StateChanges, writer: Writer): void {
    const all = message.all;
    for (let i: i32 = 0; i < all.length; ++i) {
      writer.uint32(10);
      writer.fork();
      StateChange.encode(all[i], writer);
      writer.ldelim();
    }
  }

  static decode(reader: Reader, length: i32): StateChanges {
    const end: usize = length < 0 ? reader.end : reader.ptr + length;
    const message = new StateChanges();

    while (reader.ptr < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.all.push(StateChange.decode(reader, reader.uint32()));
          break;

        default:
          reader.skipType(tag & 7);
          break;
      }
    }

    return message;
  }

  all: Array<StateChange>;

  constructor(all: Array<StateChange> = []) {
    this.all = all;
  }
}