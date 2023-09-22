import {
    FilterTxCtx,
    IAspectBlock,
    IAspectTransaction,
    IAspectOperation,
    OnBlockFinalizeCtx,
    OnBlockInitializeCtx,
    PostContractCallCtx,
    PostTxCommitCtx,
    PostTxExecuteCtx,
    PreContractCallCtx,
    PreTxExecuteCtx,
    OperationCtx,
    StringData,
    AspectPropertyProvider,
    AspectStateProvider,
    UtilityProvider,
} from "@artela/aspect-libs";
import {Protobuf} from "as-proto/assembly";

export class StoreAspect implements IAspectTransaction, IAspectBlock, IAspectOperation {
    operation(ctx: OperationCtx): Uint8Array | null {

        UtilityProvider.sLog(UtilityProvider.uint8ArrayToString(ctx.input!))
        let s = AspectStateProvider.get("k2")!.asString();
        UtilityProvider.sLog(s)

        const stringData = new StringData("test");
        return Protobuf.encode(stringData, StringData.encode);
    }

    filterTx(ctx: FilterTxCtx): bool {

        // add test data
        ctx.aspectContext.set("k1", "v1");
        AspectStateProvider.set("k2", "v2");

        // add hostapi return data
        const k1 = ctx.aspectContext.get("k1")!.asString();
        const k2 = AspectStateProvider.get("k2")!.asString();
        return k1 != "v1" && k2 != "v2";
    }

    isOwner(sender: string): bool {
        let value = AspectPropertyProvider.get("owner")!.asString();
        return !!value.includes(sender);
    }

    onBlockFinalize(ctx: OnBlockFinalizeCtx): void {
    }


    onBlockInitialize(ctx: OnBlockInitializeCtx): void {
    }

    onContractBinding(contractAddr: string): bool {
        let value = AspectPropertyProvider.get("binding")!.asString();
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

    }

}

export function AssertTrue(cond: bool, msg: string): void {
    if (!cond) {
        UtilityProvider.revert(msg)
    }
}