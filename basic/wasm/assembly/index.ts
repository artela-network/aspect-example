// The entry file of your WebAssembly module.

import {Entry} from "./lib/lib";
import aspect from "./aspect/my_first_aspect"

let firstAspect=new  aspect();

var entry = new Entry(firstAspect,firstAspect);
export function execute(methodPtr: i32, argPtr: i32): i32 {
  return entry.execute(methodPtr, argPtr);
}
export function isBlockLevel(): bool {
  return  entry.isBlockLevel();
}
