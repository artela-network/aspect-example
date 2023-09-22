import {
    FilterTxCtx,
    IAspectBlock,
    IAspectTransaction,
    OnBlockFinalizeCtx,
    OnBlockInitializeCtx,
    PostContractCallCtx,
    PostTxCommitCtx,
    PostTxExecuteCtx,
    PreContractCallCtx,
    PreTxExecuteCtx
} from "@artela/aspect-libs/types";
import {AspectPropertyProvider, UtilityProvider} from "@artela/aspect-libs/system";
import {ethereum} from "@artela/aspect-libs/common";
import {Opts, ScheduleTx} from "@artela/aspect-libs/components";


export class StoreAspect implements IAspectTransaction, IAspectBlock {

    filterTx(ctx: FilterTxCtx): bool {

        // add test data
        ctx.aspectContext.set("k1", "v1");
        ctx.aspectContext.set("k2", "v2");

        // add hostapi return data
        const k1 = ctx.aspectContext.get("k1")!.asString();
        const k2 = ctx.aspectContext.get("k2")!.asString();
        return k1 != "v1" && k2 != "v2";
    }

    isOwner(sender: string): bool {
        let value = AspectPropertyProvider.get("owner")!.asString();
        return !!value.includes(sender);
    }

    onBlockFinalize(ctx: OnBlockFinalizeCtx): void {

        let periodicSchedule = ctx.schedule.periodic("myPeriodicSchedule")
            .startAfter(3)
            .count(1000)
            .everyNBlocks(5)
            .maxRetry(2);

        let num = ethereum.Number.fromU64(100);

        let payload = ethereum.abiEncode('store', [num]);
        // the scheduled transaction with params.

        let scheduleTo = AspectPropertyProvider.get("ScheduleTo")!.asString();

        let broker = AspectPropertyProvider.get("Broker")!.asString();

        let tx = new ScheduleTx(scheduleTo).New(
            payload,
            new Opts(0, "200000000", "30000", broker))
        periodicSchedule.submit(tx);
        AssertTrue(ctx.blockHeader != null, "onBlockFinalize blockHeader is empty")
        AssertTrue(ctx.schedule != null, "onBlockFinalize scheduleManager is empty")
        AssertTrue(ctx.blockContext != null, "onBlockFinalize blockContext is empty")
        AssertTrue(ctx.staticCaller != null, "onBlockFinalize staticCaller is empty")
    }


    onBlockInitialize(ctx: OnBlockInitializeCtx): void {
        AssertTrue(ctx.blockHeader != null, "onBlockInitialize blockHeader is empty")
        AssertTrue(ctx.schedule != null, "onBlockInitialize scheduleManager is empty")
        AssertTrue(ctx.blockContext != null, "onBlockInitialize blockContext is empty")
        AssertTrue(ctx.staticCaller != null, "onBlockInitialize staticCaller is empty")
    }

    onContractBinding(contractAddr: string): bool {
        let value = AspectPropertyProvider.get("binding")!.asString();
        return !!value.includes(contractAddr);
    }

    postContractCall(ctx: PostContractCallCtx): void {
        AssertTrue(ctx.tx != null, 'postContractCall tx is empty')
        AssertTrue(ctx.jitCall != null, "postContractCall call is empty")
        AssertTrue(ctx.aspectContext != null, "postContractCall context is empty")
        AssertTrue(ctx.currInnerTx != null, "postContractCall innerTx is empty")
        AssertTrue(ctx.stateContext != null, "postContractCall innerTxContext is empty")
        AssertTrue(ctx.blockContext != null, "postContractCall innerTxContext is empty")
        AssertTrue(ctx.traceContext != null, "postContractCall innerTxContext is empty")
    }

    postTxCommit(ctx: PostTxCommitCtx): void {
        AssertTrue(ctx.tx != null, 'postTxCommit tx is empty')
        AssertTrue(ctx.receipt != null, "postTxCommit receipt is empty")
        AssertTrue(ctx.aspectContext != null, "postTxCommit context is empty")
        AssertTrue(ctx.staticCaller != null, "postTxCommit staticCaller is empty")
        AssertTrue(ctx.blockContext != null, "postTxCommit evmTxContext is empty")
        AssertTrue(ctx.schedule != null, "postTxCommit scheduleManager is empty")

    }

    postTxExecute(ctx: PostTxExecuteCtx): void {
        AssertTrue(ctx.tx != null, 'postTxExecute tx is empty')
        AssertTrue(ctx.traceContext != null, "postTxExecute traceContext is empty")
        AssertTrue(ctx.staticCaller != null, "postTxExecute staticCaller is empty")
        AssertTrue(ctx.blockContext != null, "postTxExecute blockContext is empty")

    }

    preContractCall(ctx: PreContractCallCtx): void {

        AssertTrue(ctx.tx != null, 'preContractCall tx is empty')
        AssertTrue(ctx.currInnerTx != null, "preContractCall receipt is empty")
        AssertTrue(ctx.aspectContext != null, "preContractCall context is empty")
        AssertTrue(ctx.traceContext != null, "preContractCall traceContext is empty")
        AssertTrue(ctx.stateContext != null, "preContractCall stateContext is empty")
        AssertTrue(ctx.blockContext != null, "preContractCall blockContext is empty")
        AssertTrue(ctx.jitCall != null, "preContractCall justInTimeCaller is empty")

    }

    preTxExecute(ctx: PreTxExecuteCtx): void {
        AssertTrue(ctx.tx != null, 'preTxExecute tx is empty')
        AssertTrue(ctx.aspectContext != null, "preTxExecute context is empty")
    }

}

export function AssertTrue(cond: bool, msg: string): void {
    if (!cond) {
        UtilityProvider.revert(msg)
    }
}