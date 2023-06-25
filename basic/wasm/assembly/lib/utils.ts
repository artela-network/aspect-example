import { AString, AUint8Array } from "./types";

declare namespace __Util__ {
    function fromHexString(input: i32): i32;
    function toHexString(input: i32): i32;
    function revert(input: i32): i32;

}

export namespace Utils {
    export function alloc(size: i32): i32 {
        return heap.alloc(size) as i32;
    }

    export function revert(message: string): void {
        let input = new AString();
        input.set(message);
        let inPtr = input.store();
         __Util__.revert(inPtr);
         throw new Error(message)
    }

    export function stringToUint8Array(s: string): Uint8Array {
        const buffer = String.UTF8.encode(s);
        if (buffer.byteLength === 0) {
            return new Uint8Array(0);
        }

        return Uint8Array.wrap(buffer, 0, s.length);
    }

    export function uint8ArrayToString(arr: Uint8Array): string {
        return String.UTF8.decode(arr.buffer, false);
    }

    export function uint8ArrayToHex(data: Uint8Array): string {
        let outPtr = __Util__.toHexString(new AUint8Array(data).store());
        let out = new AString();
        out.load(outPtr);
        return out.get();
    }

    export function hexToUint8Array(s: string): Uint8Array {
        if (s.length % 2 !== 0) {
            throw new Error("Invalid hex string");
        }

        let outPtr = __Util__.fromHexString(new AString(s).store());
        let out = new AUint8Array();
        out.load(outPtr);
        let data = out.get();
        if (data.length == 0 && s.length != 0) {
            throw new Error("Invalid hex string");
        }
        return data;
    }

    export function uint8ArrayToBool(data: Uint8Array): bool {
        for (let i = 0; i < data.length; i++) {
            if (data[i] != 0) {
                return true;
            }
        }
        return false;
    }

    export function boolToUint8Array(b: bool): Uint8Array {
        const result = new Uint8Array(1);
        result[0] = b ? 1 : 0;

        return result;
    }

    export function concatUint8Arrays(a: Uint8Array, b: Uint8Array): Uint8Array {
        const result = new Uint8Array(a.length + b.length);

        for (let i = 0; i < a.length; i++) {
            result[i] = a[i];
        }

        for (let i = 0; i < b.length; i++) {
            result[a.length + i] = b[i];
        }

        return result;
    }
}