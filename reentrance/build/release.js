import * as __import0 from "hostapi";
import * as __import1 from "utils";
import * as __import2 from "debug";
async function instantiate(module, imports = {}) {
  const __module0 = imports.hostapi;
  const __module1 = imports.utils;
  const __module2 = imports.debug;
  const adaptedImports = {
    env: Object.assign(Object.create(globalThis), imports.env || {}, {
      abort(message, fileName, lineNumber, columnNumber) {
        // ~lib/builtins/abort(~lib/string/String | null?, ~lib/string/String | null?, u32?, u32?) => void
        message = __liftString(message >>> 0);
        fileName = __liftString(fileName >>> 0);
        lineNumber = lineNumber >>> 0;
        columnNumber = columnNumber >>> 0;
        (() => {
          // @external.js
          throw Error(`${message} in ${fileName}:${lineNumber}:${columnNumber}`);
        })();
      },
    }),
    hostapi: Object.assign(Object.create(__module0), {
      "__HostApi__.getProperty"(ptr) {
        // assembly/lib/host/hostapi/__HostApi__.getProperty(i32) => i32
        return __module0.__HostApi__.getProperty(ptr);
      },
      "__HostApi__.getContext"(ptr) {
        // assembly/lib/host/hostapi/__HostApi__.getContext(i32) => i32
        return __module0.__HostApi__.getContext(ptr);
      },
      "__HostApi__.hash"(hasher, dataPtr) {
        // assembly/lib/host/hostapi/__HostApi__.hash(i32, i32) => i32
        return __module0.__HostApi__.hash(hasher, dataPtr);
      },
      "__HostApi__.setContext"(keyPtr, valuePtr) {
        // assembly/lib/host/hostapi/__HostApi__.setContext(i32, i32) => bool
        return __module0.__HostApi__.setContext(keyPtr, valuePtr) ? 1 : 0;
      },
      "__HostApi__.currentBalance"(addr) {
        // assembly/lib/host/hostapi/__HostApi__.currentBalance(i32) => i32
        return __module0.__HostApi__.currentBalance(addr);
      },
      "__HostApi__.getStateChanges"(addr, variable, key) {
        // assembly/lib/host/hostapi/__HostApi__.getStateChanges(i32, i32, i32) => i32
        return __module0.__HostApi__.getStateChanges(addr, variable, key);
      },
    }),
    utils: Object.assign(Object.create(__module1), {
      "__Util__.toHexString"(input) {
        // assembly/lib/utils/__Util__.toHexString(i32) => i32
        return __module1.__Util__.toHexString(input);
      },
      "__Util__.fromHexString"(input) {
        // assembly/lib/utils/__Util__.fromHexString(i32) => i32
        return __module1.__Util__.fromHexString(input);
      },
    }),
    debug: Object.assign(Object.create(__module2), {
      "__debug__.log"(ptr) {
        // assembly/lib/host/debug/__debug__.log(i32) => void
        __module2.__debug__.log(ptr);
      },
    }),
  };
  const { exports } = await WebAssembly.instantiate(module, adaptedImports);
  const memory = exports.memory || imports.env.memory;
  function __liftString(pointer) {
    if (!pointer) return null;
    const
      end = pointer + new Uint32Array(memory.buffer)[pointer - 4 >>> 2] >>> 1,
      memoryU16 = new Uint16Array(memory.buffer);
    let
      start = pointer >>> 1,
      string = "";
    while (end - start > 1024) string += String.fromCharCode(...memoryU16.subarray(start, start += 1024));
    return string + String.fromCharCode(...memoryU16.subarray(start, end));
  }
  return exports;
}
export const {
  memory,
  execute,
  isBlockLevel,
  isTransactionLevel,
  allocate,
} = await (async url => instantiate(
  await (async () => {
    try { return await globalThis.WebAssembly.compileStreaming(globalThis.fetch(url)); }
    catch { return globalThis.WebAssembly.compile(await (await import("node:fs/promises")).readFile(url)); }
  })(), {
    hostapi: __maybeDefault(__import0),
    utils: __maybeDefault(__import1),
    debug: __maybeDefault(__import2),
  }
))(new URL("release.wasm", import.meta.url));
function __maybeDefault(module) {
  return typeof module.default === "object" && Object.keys(module).length == 1
    ? module.default
    : module;
}
