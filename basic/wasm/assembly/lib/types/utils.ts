

export function alloc(size: i32): i32 {
    return heap.alloc(size) as i32;
}


export function stringToUint8Array(s: string): Uint8Array {
    const buffer = String.UTF8.encode(s);
    if (buffer.byteLength === 0) {
        return new Uint8Array(0);
    }

    return Uint8Array.wrap(buffer, 0, s.length);
}