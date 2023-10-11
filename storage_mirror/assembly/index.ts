// The entry file of your WebAssembly module.
import {StorageMirror} from "./aspect/storage-mirror"
import {Entry} from "@artela/aspect-libs";

let aspect = new StorageMirror();
var entry = new Entry(aspect, aspect, null);

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
