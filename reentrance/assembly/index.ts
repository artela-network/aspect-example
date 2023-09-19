// The entry file of your WebAssembly module.

import { Entry,UtilityProvider } from "@artela/aspect-libs";

//import Aspect from "./aspect/guard_by_trace_aspect"
//import Aspect from "./aspect/guard_by_count_aspect"
import Aspect from "./aspect/guard_by_trace"

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
  return UtilityProvider.alloc(size);
}