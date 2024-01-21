import {
    allocate,
    entryPoint,
    ethereum,
    execute,
    IPostTxExecuteJP,
    IPreTxExecuteJP,
    PostTxExecuteInput,
    PreTxExecuteInput,
    sys,BytesData,
    uint8ArrayToHex,
} from '@artela/aspect-libs';
import {Protobuf} from "as-proto/assembly";
class StoreAspect
    implements IPostTxExecuteJP, IPreTxExecuteJP {
    isOwner(sender: Uint8Array): bool {
        return true
    }

    preTxExecute(input: PreTxExecuteInput): void {
        //for smart contract call
        sys.aspect.transientStorage.get<string>('ToContract').set<string>('HelloWorld');
    }

    postTxExecute(input: PostTxExecuteInput): void {
        const to = uint8ArrayToHex(input.tx!.to);
        let txData = sys.hostApi.runtimeContext.get("tx.data");
        const txDataPt = Protobuf.decode<BytesData>(txData, BytesData.decode);
        const parentCallMethod = ethereum.parseMethodSig(txDataPt.data);
        const value = sys.aspect.transientStorage.get<string>('ToAspect', to).unwrap();
        // setAspectContext method signature value is `9cf3ef1e`
        if(parentCallMethod=="9cf3ef1e") {
            //'HelloAspect' here is set from smart contract
            sys.require(value == "HelloAspect", "failed to get value by contract setting.");
        }
    }

}

// 2.register aspect Instance
const aspect = new StoreAspect();
entryPoint.setAspect(aspect);

// 3.must export it
export {execute, allocate};
