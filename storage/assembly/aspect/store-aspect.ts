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
    PreTxExecuteCtx,
    ScheduleOpts,
    ScheduleTx,
    sys,
    vm,
    ethereum
} from "@artela/aspect-libs";


export class StoreAspect implements IAspectTransaction, IAspectBlock {

    filterTx(ctx: FilterTxCtx): bool {

        // add test data
        ctx.aspect.transientStorage<string>("k1").set<string>("v2");
        ctx.aspect.transientStorage<string>("k2").set<string>("v2");
        // add hostapi return data
        const k1 = ctx.aspect.transientStorage<string>("k1").unwrap();
        const k2 = ctx.aspect.transientStorage<string>("k2").unwrap();
        return k1 != "v1" && k2 != "v2";
    }

    isOwner(sender: string): bool {
        let value = sys.aspectProperty().get<string>("owner")
        return !!value.includes(sender);
    }

    onBlockFinalize(ctx: OnBlockFinalizeCtx): void {

        let periodicSchedule = ctx.schedule.periodic("myPeriodicSchedule")
            .startAfter(3)
            .execCount(1000)
            .everyNBlocks(5)
            .maxRetry(2);

        let num = ethereum.Number.fromU64(100);

        let payload = ethereum.abiEncode('store', [num]);
        // the scheduled transaction with params.

        let scheduleTo = sys.aspectProperty().get<string>("ScheduleTo")

        let broker = sys.aspectProperty().get<string>("Broker");

        let tx = new ScheduleTx(scheduleTo).New(
            payload,
            new ScheduleOpts(0, "200000000", "30000", broker))
        periodicSchedule.submit(tx);
        AssertTrue(ctx.block != null, "onBlockFinalize block is empty")
        AssertTrue(ctx.env != null, "onBlockFinalize env is empty")
        AssertTrue(ctx.schedule != null, "onBlockFinalize schedule is empty")
    }


    onBlockInitialize(ctx: OnBlockInitializeCtx): void {
        AssertTrue(ctx.block != null, "onBlockInitialize block is empty")
        AssertTrue(ctx.schedule != null, "onBlockInitialize schedule is empty")
        AssertTrue(ctx.env != null, "onBlockInitialize env is empty")
    }

    onContractBinding(contractAddr: string): bool {
        let value = sys.aspectProperty().get<string>("binding")
        return !!value.includes(contractAddr);
    }

    postContractCall(ctx: PostContractCallCtx): void {

        AssertTrue(ctx.tx != null, 'postContractCall tx is empty')
        AssertTrue(ctx.block != null, "postContractCall block is empty")
        AssertTrue(ctx.aspect != null, "postContractCall aspect is empty")
        AssertTrue(ctx.currentCall != null, "postContractCall currInnerTx is empty")
        AssertTrue(ctx.stateDB != null, "postContractCall stateDB is empty")
        AssertTrue(ctx.trace != null, "postContractCall trace is empty")
        AssertTrue(ctx.env != null, "postContractCall env is empty")
    }

    postTxCommit(ctx: PostTxCommitCtx): void {
        AssertTrue(ctx.tx != null, 'postTxCommit tx is empty')
        AssertTrue(ctx.receipt != null, "postTxCommit receipt is empty")
        AssertTrue(ctx.aspect != null, "postTxCommit aspect is empty")
        AssertTrue(ctx.block != null, "postTxCommit block is empty")
        AssertTrue(ctx.env != null, "postTxCommit env is empty")

    }

    postTxExecute(ctx: PostTxExecuteCtx): void {
        AssertTrue(ctx.tx != null, 'postTxExecute tx is empty')
        AssertTrue(ctx.env != null, "postTxExecute env is empty")
        AssertTrue(ctx.aspect != null, "postTxExecute aspect is empty")
        AssertTrue(ctx.trace != null, "postTxExecute trace is empty")
        AssertTrue(ctx.stateDB != null, "postTxExecute stateDB is empty")
    }

    preContractCall(ctx: PreContractCallCtx): void {

        AssertTrue(ctx.tx != null, 'postContractCall tx is empty')
        AssertTrue(ctx.block != null, "postContractCall block is empty")
        AssertTrue(ctx.aspect != null, "postContractCall aspect is empty")
        AssertTrue(ctx.currentCall != null, "postContractCall currInnerTx is empty")
        AssertTrue(ctx.stateDB != null, "postContractCall stateDB is empty")
        AssertTrue(ctx.trace != null, "postContractCall trace is empty")
        AssertTrue(ctx.env != null, "postContractCall env is empty")

    }

    preTxExecute(ctx: PreTxExecuteCtx): void {
        //for smart contract call
        sys.aspectState(ctx).get<string>("k2").set<string>("test")

        ctx.aspect.transientStorage<string>("k2").set<string>("setk2")
        AssertTrue(ctx.tx != null, 'preTxExecute tx is empty')
        AssertTrue(ctx.aspect != null, "preTxExecute context is empty")
        AssertTrue(ctx.env != null, "preTxExecute context is empty")
        AssertTrue(ctx.block != null, "preTxExecute context is empty")
        AssertTrue(ctx.stateDB != null, "preTxExecute context is empty")
    }

}

export function AssertTrue(cond: bool, msg: string): void {
    if (!cond) {
        vm.revert(msg)
    }
}
