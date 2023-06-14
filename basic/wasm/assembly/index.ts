// The entry file of your WebAssembly module.

import {Entry} from "./lib/lib";
import {alloc} from "./lib/types/utils";

import aspect from "./aspect/my_first_aspect"
import errorAspect from "./aspect/error_aspect"

let firstAspect=new aspect();
//let firstAspect=new errorAspect();
var entry = new Entry(firstAspect,firstAspect);


export function execute(methodPtr: i32, argPtr: i32): i32 {
  return entry.execute(methodPtr, argPtr);
}
export function isBlockLevel(): i32 {
  return  entry.isBlockLevel();
}
export function isTransactionLevel(): i32 {
  return  entry.isTransactionLevel();
}
export function allocate(size: i32): i32 {
  return alloc(size) as i32;
}