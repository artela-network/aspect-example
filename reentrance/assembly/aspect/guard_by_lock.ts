// The entry file of your WebAssembly module.

import {
    AspectPropertyProvider,
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
    UtilityProvider
} from "@artela/aspect-libs";

class GuardByCountAspect implements IAspectTransaction, IAspectBlock {


    isOwner(sender: string): bool {
        let value = AspectPropertyProvider.get("owner")!.asString();
        return !!value.includes(sender);
    }

    onContractBinding(contractAddr: string): bool {
        let value = AspectPropertyProvider.get("binding")!.asString();
        return !!value.includes(contractAddr);
    }

    onBlockFinalize(ctx: OnBlockFinalizeCtx): void {
    }

    onBlockInitialize(ctx: OnBlockInitializeCtx): void {
    }

    filterTx(ctx: FilterTxCtx): bool {
        return true;
    }

    preTxExecute(ctx: PreTxExecuteCtx): void {
    }

    _CONTEXT_KEY: string = "{InnerTxToAddr}_LOCK";
    _NOT_ENTERED: string = "0";
    _ENTERED: string = "1";

    preContractCall(ctx: PreContractCallCtx): void {

        let curContract = ctx.currInnerTx!.to.toString();
        let reentKey = this._CONTEXT_KEY.replace("{InnerTxToAddr}", curContract);

        // 2.Check if another transaction has already occupied.
        if (this._ENTERED == ctx.aspectContext.get(reentKey)!.asString()) {
            UtilityProvider.revert("revert")
        }
        // 3.Set reentrant lock entered.
        ctx.aspectContext.set(reentKey, this._ENTERED);
    }

    postContractCall(ctx: PostContractCallCtx): void {
        // 1.Get reentrant lock key of current contract.
        let curContract = ctx.currInnerTx!.to.toString();
        let reentKey = this._CONTEXT_KEY.replace("{InnerTxToAddr}", curContract);

        // 2.Set reentrant lock not entered.
        ctx.aspectContext.set(reentKey, this._NOT_ENTERED);
    }

    postTxExecute(ctx: PostTxExecuteCtx): void {

    }


    postTxCommit(ctx: PostTxCommitCtx): void {
    }


}

export default GuardByCountAspect;