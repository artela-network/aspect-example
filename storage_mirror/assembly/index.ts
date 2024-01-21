// The entry file of your WebAssembly module.
import {StorageMirror} from "./aspect/storage-mirror"

import {
    allocate,
    entryPoint,
    execute,
} from '@artela/aspect-libs';

let aspect = new StorageMirror();
entryPoint.setAspect(aspect);

// 3.must export it
export { execute, allocate };