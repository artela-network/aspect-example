import assert from "assert";
import { isBlockLevel } from "../build/debug.js";

assert.strictEqual(isBlockLevel(),true);
console.log("ok");
