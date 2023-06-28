// The entry file of your WebAssembly module.

import { Entry } from "./lib/entry";

import aspect from "./aspect/salary_payment "
import { utils } from "./lib/utils";

let salaryPayment = new aspect();
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