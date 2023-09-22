// If the call count large than 1, mark the transaction as failed.
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
  CONTEXT_KEY: String = "{InnerTxToAddr}_CALL_COUNT";
  preTxExecute(ctx: PreTxExecuteCtx): void {
  }
  preContractCall(ctx: PreContractCallCtx): void {
    let contextKey = this.CONTEXT_KEY.replace("{InnerTxToAddr}", ctx.currInnerTx!.to.toString());
    let callCount = ctx.aspectContext.get(contextKey)!.asI64();
    callCount = callCount+1;
    ctx.aspectContext.set(contextKey, callCount.toString());
  }
  postContractCall(ctx: PostContractCallCtx): void {
    let contextKey = this.CONTEXT_KEY.replace("{InnerTxToAddr}", ctx.currInnerTx!.to.toString());
    let callCount = ctx.aspectContext.get(contextKey)!.asI64();
    // If the call count large than 1, mark the transaction as failed.
    if (callCount > 1) {
      UtilityProvider.revert( "multiple inner tx calls");
    }
  }

  postTxExecute(ctx: PostTxExecuteCtx): void {

  }


  postTxCommit(ctx: PostTxCommitCtx): void {
  }


}

export default GuardByCountAspect;