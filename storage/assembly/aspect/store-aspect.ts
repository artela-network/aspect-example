import {
    ethereum,
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
} from "@artela/aspect-libs";


export class StoreAspect implements IAspectTransaction, IAspectBlock {

    filterTx(ctx: FilterTxCtx): bool {

        return true
        // add test data

    }

    isOwner(sender: string): bool {
        let value = sys.aspect.property.get<string>("owner")
        return !!value.includes(sender);
    }

    onBlockFinalize(ctx: OnBlockFinalizeCtx): void {

        let schName = "myPeriodicSchedule";
        let stateValue = ctx.mutableState.get<string>(schName).unwrap();
        if (stateValue == "open") {
            return
        }
        ctx.mutableState.get<string>(schName).set<string>("open");

        let periodicSchedule = ctx.schedule.periodic("myPeriodicSchedule004")
            .startAfter(3)
            .execCount(1000)
            .everyNBlocks(5)
            .maxRetry(2);

        let num = ethereum.Number.fromU64(100);

        let payload = ethereum.abiEncode('store', [num]);
        // the scheduled transaction with params.

        let scheduleTo = sys.aspect.property.get<string>("ScheduleTo")

        let broker = sys.aspect.property.get<string>("Broker");


        let tx = new ScheduleTx(scheduleTo).New(
            payload,
            new ScheduleOpts(0, "200000000", "30000", broker))
        periodicSchedule.submit(tx);
        sys.require(ctx.block != null, "onBlockFinalize block is empty")
        sys.require(ctx.env != null, "onBlockFinalize env is empty")
        sys.require(ctx.schedule != null, "onBlockFinalize schedule is empty")
    }


    onBlockInitialize(ctx: OnBlockInitializeCtx): void {
        sys.require(ctx.block != null, "onBlockInitialize block is empty")
        sys.require(ctx.schedule != null, "onBlockInitialize schedule is empty")
        sys.require(ctx.env != null, "onBlockInitialize env is empty")
    }

    onContractBinding(contractAddr: string): bool {
        let value = sys.aspect.property.get<string>("binding")
        return !!value.includes(contractAddr);
    }

    postContractCall(ctx: PostContractCallCtx): void {

        ctx.aspect.transientStorage<string>("k1").set<string>("v2");
        ctx.aspect.transientStorage<string>("k2").set<string>("v2");

        // add hostapi return data
        const k1 = ctx.aspect.transientStorage<string>("k1").unwrap();

        const k2 = ctx.aspect.transientStorage<string>("k2").unwrap();
        sys.require(k1 == "v2" && k2 == "v2", "postContractCall require")
        sys.require(ctx.tx != null, 'postContractCall tx is empty')
        sys.require(ctx.block != null, "postContractCall block is empty")
        sys.require(ctx.aspect != null, "postContractCall aspect is empty")
        sys.require(ctx.currentCall != null, "postContractCall currInnerTx is empty")
        sys.require(ctx.stateDB != null, "postContractCall stateDB is empty")
        sys.require(ctx.trace != null, "postContractCall trace is empty")
        sys.require(ctx.env != null, "postContractCall env is empty")

    }

    postTxCommit(ctx: PostTxCommitCtx): void {
        sys.require(ctx.tx != null, 'postTxCommit tx is empty')
        sys.require(ctx.receipt != null, "postTxCommit receipt is empty")
        sys.require(ctx.aspect != null, "postTxCommit aspect is empty")
        sys.require(ctx.block != null, "postTxCommit block is empty")
        sys.require(ctx.env != null, "postTxCommit env is empty")

    }

    postTxExecute(ctx: PostTxExecuteCtx): void {

        sys.require(ctx.tx != null, 'postTxExecute tx is empty')
        sys.require(ctx.env != null, "postTxExecute env is empty")
        sys.require(ctx.aspect != null, "postTxExecute aspect is empty")
        sys.require(ctx.trace != null, "postTxExecute trace is empty")
        sys.require(ctx.stateDB != null, "postTxExecute stateDB is empty")

    }

    preContractCall(ctx: PreContractCallCtx): void {

        sys.require(ctx.tx != null, 'postContractCall tx is empty')
        sys.require(ctx.block != null, "postContractCall block is empty")
        sys.require(ctx.aspect != null, "postContractCall aspect is empty")
        sys.require(ctx.currentCall != null, "postContractCall currInnerTx is empty")
        sys.require(ctx.stateDB != null, "postContractCall stateDB is empty")
        sys.require(ctx.trace != null, "postContractCall trace is empty")
        sys.require(ctx.env != null, "postContractCall env is empty")


    }

    preTxExecute(ctx: PreTxExecuteCtx): void {

        //for smart contract call
        sys.aspect.mutableState(ctx).get<string>("k2").set<string>("test")
        ctx.aspect.transientStorage<string>("k2", "").set<string>("setk2")

        sys.require(ctx.tx != null, 'preTxExecute tx is empty')
        sys.require(ctx.aspect != null, "preTxExecute context is empty")
        sys.require(ctx.env != null, "preTxExecute context is empty")
        sys.require(ctx.block != null, "preTxExecute context is empty")
        sys.require(ctx.stateDB != null, "preTxExecute context is empty")

    }

}
