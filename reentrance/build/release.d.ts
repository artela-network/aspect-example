/** Exported memory */
export declare const memory: WebAssembly.Memory;
/**
 * assembly/index/execute
 * @param methodPtr `i32`
 * @param argPtr `i32`
 * @returns `i32`
 */
export declare function execute(methodPtr: number, argPtr: number): number;
/**
 * assembly/index/isBlockLevel
 * @returns `i32`
 */
export declare function isBlockLevel(): number;
/**
 * assembly/index/isTransactionLevel
 * @returns `i32`
 */
export declare function isTransactionLevel(): number;
/**
 * assembly/index/allocate
 * @param size `i32`
 * @returns `i32`
 */
export declare function allocate(size: number): number;
