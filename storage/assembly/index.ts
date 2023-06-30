// The entry file of your WebAssembly module.


import ScheduleStoreAspect from "./aspect/store_aspect"
import { Entry } from "@artela/aspect-libs/entry";
import { utils } from "@artela/aspect-libs/common";

let salaryPayment = new ScheduleStoreAspect();
var entry = new Entry(salaryPayment, salaryPayment);


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