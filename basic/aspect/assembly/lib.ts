const HEADER_LEN = 8
const HEADER_RADIX = 16

export interface Aspect {
    onTxReceive(arg: string): string
    onBlockInitialize(arg: string): string
    onTxVerify(arg: string): string
    onAccountVerify(arg: string): string
    onGasPayment(arg: string): string
    preTxExecute(arg: string): string
    preContractCall(arg: string): string
    postContractCall(arg: string): string
    postTxExecute(arg: string): string
    onTxCommit(arg: string): string
    onBlockFinalize(arg: string): string
}

class DummyAspect implements Aspect {
    onTxReceive(arg: string): string {
        return "";
    }
    onBlockInitialize(arg: string): string {
        return "";
    }
    onTxVerify(arg: string): string {
        return "";
    }
    onAccountVerify(arg: string): string {
        return "";
    }
    onGasPayment(arg: string): string {
        return "";
    }
    preTxExecute(arg: string): string {
        return "";
    }
    preContractCall(arg: string): string {
        return "";
    }
    postContractCall(arg: string): string {
        return "";
    }
    postTxExecute(arg: string): string {
        return "";
    }
    onTxCommit(arg: string): string {
        return "";
    }
    onBlockFinalize(arg: string): string {
        return "";
    }
}

class Entry {
    public buildAspect: () => Aspect;

    constructor() {
        this.buildAspect = function () {
            return new DummyAspect();
        }
    }

    public execute(methodPtr: i32, argPtr: i32): string {
        let method = Helper.unpackMsg(methodPtr);
        let arg = Helper.unpackMsg(argPtr);
        let aspect = this.buildAspect();
        if (aspect instanceof DummyAspect) {
            throw new Error("invalid aspect code");
        }

        var out: string
        if (method == "onTxReceive") {
            out = aspect.onTxReceive(arg);
        } else if (method == "onBlockInitialize") {
            out = aspect.onBlockInitialize(arg);
        } else if (method == "onTxVerify") {
            out = aspect.onTxVerify(arg);
        } else if (method == "onAccountVerify") {
            out = aspect.onAccountVerify(arg);
        } else if (method == "onGasPayment") {
            out = aspect.onGasPayment(arg);
        } else if (method == "preTxExecute") {
            out = aspect.preTxExecute(arg);
        } else if (method == "preContractCall") {
            out = aspect.preContractCall(arg);
        } else if (method == "postTxExecute") {
            out = aspect.postTxExecute(arg);
        } else if (method == "postContractCall") {
            out = aspect.postContractCall(arg);
        } else if (method == "onTxCommit") {
            out = aspect.onTxCommit(arg);
        } else if (method == "onBlockFinalize") {
            out = aspect.onBlockFinalize(arg);
        } else {
            out = "method not found"
        }
        return Helper.packMsg(out);
    }
}

export let entry = new Entry();

export function execute(methodPtr: i32, argPtr: i32) : string {
    return entry.execute(methodPtr, argPtr)
}

namespace Helper {
    // a lib function to read parameters from memory
    function getString(ptr: i64, len: i64): string {
        let s = String.UTF16.decodeUnsafe(<usize>ptr, <usize>len);
        return s;
    }

    // a lib function to pack messages
    export function packMsg(raw: string): string {
        let msg = raw.length.toString(HEADER_RADIX).padStart(HEADER_LEN, "0") + raw;
        return msg;
    }

    // a lib function to unpack messags
    export function unpackMsg(p: i32): string {
        // if allocate memory or write memory failed, p is set to -1
        if (p == -1) {
            return "message is not valid"
        }
        let l = u32.parse(getString(p, HEADER_LEN * 2), HEADER_RADIX);
        let raw = getString(p + HEADER_LEN * 2, l * 2);
        return raw;
    }
}

export function allocate(size: u32): u32 {
    return __alloc(size) as u32;
}

declare namespace __HostApi__ {
    function lastBlock(s: string): i32
    function currentBlock(s: string): i32
    function localCall(s: string): i32
}

// Context part of hostapis
export class Context {
    static lastBlock(): string {
        // pack api arguments
        // lastBlock accept an empty message, with no body but header
        let input = ""
        let packedMsg = Helper.packMsg(input)
        let ret = __HostApi__.lastBlock(packedMsg);
        let raw = Helper.unpackMsg(ret);
        return raw;
    }

    static currentBlock(): string {
        // currentBlock accept an empty message, with no body but header
        let input = ""
        let packedMsg = Helper.packMsg(input)
        let ret = __HostApi__.currentBlock(packedMsg);
        let raw = Helper.unpackMsg(ret);
        return raw;
    }

    static localCall(input: string): string {
        let packedMsg = Helper.packMsg(input)
        let ret = __HostApi__.localCall(packedMsg);
        let raw = Helper.unpackMsg(ret);
        return raw;
    }
}

// Util part of hostapis
export class Util {
}

// Crypto part of hostapis
export class Crypto {
}

// Tx part of hostapis
export class Tx {
}
