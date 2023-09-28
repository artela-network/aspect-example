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
    utils,
    vm,
    sys,
    StringData
} from "@artela/aspect-libs";
import {Protobuf} from "as-proto/assembly";

export class StoreAspect implements IAspectTransaction, IAspectBlock, IAspectOperation {

    operation(ctx: OperationCtx, data: Uint8Array): Uint8Array {

        vm.log(utils.uint8ArrayToString(data))
        let s = sys.aspectReadonlyState(ctx).get<string>("k2").unwrap()!
        vm.log(s)

        const stringData = new StringData("test");
        return Protobuf.encode(stringData, StringData.encode);
    }

    filterTx(ctx: FilterTxCtx): bool {

        // add test data
        ctx.aspect.transientStorage<string>("k1").set<string>("v1");
        sys.aspectState(ctx).get<string>("k2").set<string>("v2")

        // add hostapi return data
        const k1 = ctx.aspect.transientStorage<string>("k1").unwrap()!
        const k2 = sys.aspectReadonlyState(ctx).get<string>("k2").unwrap()!;
        return k1 == "v1" && k2 == "v2";
    }

    isOwner(sender: string): bool {
        let value = sys.aspectProperty().get<string>("owner")!
        return !!value.includes(sender);
    }

    onBlockFinalize(ctx: OnBlockFinalizeCtx): void {
    }


    onBlockInitialize(ctx: OnBlockInitializeCtx): void {
    }

    onContractBinding(contractAddr: string): bool {
        let value = sys.aspectProperty().get<string>("binding")!;
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
        vm.revert(msg)
    }
}