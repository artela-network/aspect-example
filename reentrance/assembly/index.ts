// The entry file of your WebAssembly module.

import { Entry } from "@artela/aspect-libs/entry";

//import Aspect from "./aspect/guard_by_trace_aspect"
//import Aspect from "./aspect/guard_by_count_aspect"
import Aspect from "./aspect/guard_by_lock_aspect"

import { utils } from "@artela/aspect-libs/common";

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