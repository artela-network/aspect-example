// The entry file of your WebAssembly module.


import {StoreAspect} from "./aspect/store-aspect"
import {Entry} from "@artela/aspect-libs/types";
import {vm} from "@artela/aspect-libs/system";

let salaryPayment = new StoreAspect();
var entry = new Entry(salaryPayment, salaryPayment, salaryPayment);


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
    return vm.alloc(size);
}