// The entry file of your WebAssembly module.

import { Entry } from "@artela/aspect-libs/entry";

//import Aspect from "./aspect/guard_by_trace_aspect"
//import Aspect from "./aspect/guard_by_count_aspect"
import Aspect from "./aspect/guard_by_lock_aspect"

import { utils } from "@artela/aspect-libs/common";
import {AspectOutput} from "@artela/aspect-libs/proto";
import {AString} from "@artela/aspect-libs/message";
import GuardByCountAspect from "./aspect/new_aspect";

const firstAspect = new Aspect();
const entry = new Entry(firstAspect, firstAspect);


export function execute(methodPtr: i32, argPtr: i32): i32 {
  return entry.execute(methodPtr, argPtr);
}

export function isBlockLevel(): i32 {
  return entry.isBlockLevel();
}

export function isTransactionLevel(): i32 {
  return entry.isTransactionLevel();
}

export function allocate(size: i32): i32 {
  return utils.alloc(size);
}

export function  main(input:i32):i32{
  const arg = entry.loadAspectInput(input);
  const methodArg = new AString();
  methodArg.load(arg.tx.input);
  const method = methodArg.get()
  var guardByCountAspect = new GuardByCountAspect(arg);

  if(method=="add"){
    const input = arg.tx.input.subarray(4);
    const reader = new BytesReader(Util.typedToArray(input));
    const dest = reader.readInto<Person>();
    var add = guardByCountAspect.add(dest);
    if (!isVoid(add){
      return Utils.returnValue(add)
    }
  }

}