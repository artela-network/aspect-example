/** Exported memory */
export declare const memory: WebAssembly.Memory;
/** assembly/lib/entry */
export declare const entry: {
  /** @type `assembly/lib/Entry` */
  get value(): __Internref4;
  set value(value: __Internref4);
};
/**
 * assembly/lib/execute
 * @param methodPtr `i32`
 * @param argPtr `i32`
 * @returns `~lib/string/String`
 */
export declare function execute(methodPtr: number, argPtr: number): string;
/**
 * assembly/lib/allocate
 * @param size `u32`
 * @returns `u32`
 */
export declare function allocate(size: number): number;
/** assembly/lib/Entry */
declare class __Internref4 extends Number {
  private __nominal4: symbol;
  private __nominal0: symbol;
}
