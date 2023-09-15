// The entry file of your WebAssembly module.
import {
    FilterTxCtx,
    IAspectBlock,
    IAspectTransaction,
    OnBlockFinalizeCtx,
    OnBlockInitializeCtx, PostContractCallCtx, PostTxCommitCtx, PostTxExecuteCtx, PreContractCallCtx, PreTxExecuteCtx
} from "@artela/aspect-libs/types";
import {AspectPropertyProvider, ethereum, EthTransaction, Opts, ScheduleTx} from "@artela/aspect-libs";

class SalaryPayment implements IAspectTransaction, IAspectBlock {

    filterTx(ctx: FilterTxCtx): bool {
        return false;
    }

    isOwner(sender: string): bool {
        let value = AspectPropertyProvider.get("owner").asString();
        return !!value.includes(sender);
    }

    onBlockFinalize(ctx: OnBlockFinalizeCtx): void {
    }

    onBlockInitialize(ctx: OnBlockInitializeCtx): void {
        // params:
        // startAfter(3): the scheduled transaction will be trigger at the 3rd block after this method is called.
        // count(1000): total count of schedulex transaction is 1000.
        // everyNBlocks(5): execution at every 5th block since started.
        // maxRetry(2): Transaction confirmation on the blockchain is not guaranteed but rather determined by the gas fee.
        // If a transaction fails to be confirmed on the blockchain, it can be retried up to a maximum of two times.
        const periodicSch = ctx.scheduleManager.periodic("myPeriodicSchedule")
            .startAfter(3)
            .count(1000)
            .everyNBlocks(5)
            .maxRetry(2);
       const tx= this.scheduleTx(AspectPropertyProvider.get("ScheduleTo").asString(),
            AspectPropertyProvider.get("Broker").asString(),
            AspectPropertyProvider.get("TargetAddr").asString());
        periodicSch.submit(tx);

    }

    onContractBinding(contractAddr: string): bool {
        let value = AspectPropertyProvider.get("binding").asString();
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

    private scheduleTx(scheduleTo: string, broker: string, target: string): EthTransaction {
        // prepare the transfer parameters, and encode them to abi input.
        let paramAddr = ethereum.Address.fromHexString(target);
        let paramNum = ethereum.Number.fromU64(100);
        let payload = ethereum.abiEncode('transfer', [paramAddr, paramNum]);

        // the scheduled transaction with params.
        return new ScheduleTx(scheduleTo).New(
            payload,
            new Opts(0, "200000000", "30000", broker))

    }

}

export default SalaryPayment;
