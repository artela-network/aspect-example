// The entry file of your WebAssembly module.

import { Entry } from "@artela/aspect-libs";

import Aspect from "./aspect/guard_by_trace"
//import Aspect from "./aspect/guard_by_lock"
//import Aspect from "./aspect/guard_by_count"

const firstAspect = new Aspect();
const entry = new Entry(firstAspect, firstAspect,null);

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
  return heap.alloc(size) as i32;
}
