import {
    FilterTxCtx,
    IAspectBlock,
    IAspectOperation,
    IAspectTransaction,
    OnBlockFinalizeCtx,
    OnBlockInitializeCtx,
    OperationCtx,
    PostContractCallCtx,
    PostTxCommitCtx,
    PostTxExecuteCtx,
    PreContractCallCtx,
    PreTxExecuteCtx,
    StringData,
    sys
} from "@artela/aspect-libs";
import {Protobuf} from "as-proto/assembly";

export class StoreAspect implements IAspectTransaction, IAspectBlock, IAspectOperation {

    operation(ctx: OperationCtx, data: Uint8Array): Uint8Array {
        sys.log("----operation----0")

        sys.log(sys.utils.uint8ArrayToString(data))
        sys.log("----operation----1")

        let s = ctx.mutableState.get<string>("k2").unwrap()!
        sys.log("----operation----2")

        sys.require(s == "v2", s + "mutableState get fail")
        sys.log("----operation----3")

        const stringData = new StringData("test")
        sys.log("----operation----4")

        return Protobuf.encode(stringData, StringData.encode);
    }

    filterTx(ctx: FilterTxCtx): bool {
        return true
    }

    isOwner(sender: string): bool {
        let value = sys.aspect.property.get<string>("owner")
        return !!value.includes(sender);
    }

    onBlockFinalize(ctx: OnBlockFinalizeCtx): void {
    }


    onBlockInitialize(ctx: OnBlockInitializeCtx): void {
    }

    onContractBinding(contractAddr: string): bool {
        let value = sys.aspect.property.get<string>("binding");
        return !!value.includes(contractAddr);
    }


    postContractCall(ctx: PostContractCallCtx): void {
    }

    postTxCommit(ctx: PostTxCommitCtx): void {

    }

    postTxExecute(ctx: PostTxExecuteCtx): void {

    }

    preContractCall(ctx: PreContractCallCtx): void {

    }

    preTxExecute(ctx: PreTxExecuteCtx): void {

        // add test data
        ctx.aspect.transientStorage<string>("k1").set<string>("v1");
        sys.aspect.mutableState(ctx).get<string>("k2").set<string>("v2")

        // add hostapi return data
        const k1 = ctx.aspect.transientStorage<string>("k1").unwrap()
        const k2 = sys.aspect.readonlyState(ctx).get<string>("k2").unwrap();

        sys.require(k1 == "v1" && k2 == "v2", "get fail")

    }

}