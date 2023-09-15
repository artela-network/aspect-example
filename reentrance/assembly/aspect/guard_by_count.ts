// The entry file of your WebAssembly module.

import {
  AspectPropertyProvider,
  BigInt,
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
    let value = AspectPropertyProvider.get("owner").asString();
    return !!value.includes(sender);
  }
  onContractBinding(contractAddr: string): bool {
    let value = AspectPropertyProvider.get("binding").asString();
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
    UtilityProvider.sLog("preContractCall 1  "+contextKey)
    let callCount = ctx.context.get(contextKey)!.asI64();
    UtilityProvider.sLog("preContractCall 2  "+callCount.toString())
    callCount = callCount+1;
    UtilityProvider.sLog("preContractCall 3  "+callCount.toString())
    ctx.context.set(contextKey, callCount.toString());
  }
  postContractCall(ctx: PostContractCallCtx): void {
    let contextKey = this.CONTEXT_KEY.replace("{InnerTxToAddr}", ctx.currInnerTx!.to.toString());
    UtilityProvider.sLog("postContractCall 1  "+contextKey)

    let callCount = ctx.context.get(contextKey)!.asI64();
    UtilityProvider.sLog("postContractCall 2  "+callCount.toString())

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
