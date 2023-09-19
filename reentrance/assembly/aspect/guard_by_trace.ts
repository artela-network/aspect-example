// The entry file of your WebAssembly module.

import {
    AspectPropertyProvider, BigInt, ethereum,
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
import {HoneyPotState} from "./honeypotstate";

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

    preTxExecute(ctx: PreTxExecuteCtx): void {
    }


    preContractCall(ctx: PreContractCallCtx): void {

    }

    postContractCall(ctx: PostContractCallCtx): void {
        // 1.Calculate the eth balance change of DeFi SmartContract(HoneyPot) before and after tx.
        let sysBalance = new HoneyPotState.SysBalance(ctx.traceContext, ctx.currInnerTx!.to);
        UtilityProvider.sLog("55")
        let deltaSys = sysBalance.current()!.value.sub(sysBalance.original()!.value);
        UtilityProvider.sLog(sysBalance.current()!.value.toString(10) +" "+sysBalance.original()!.value.toString(10) +" "+deltaSys.toString(10))

        // 2.Calculate the financial change of withdrawer in DeFi SmartContract(HoneyPot) before and after tx.
        let contractState = new HoneyPotState.balances(ctx.traceContext, ctx.currInnerTx!.to);
        UtilityProvider.sLog("44")

        let withdrawer = ethereum.Address.fromHexString(ctx.currInnerTx!.from);
        UtilityProvider.sLog("33")

        let deltaUser = BigInt.ZERO;
        if (contractState.isExist(withdrawer)) {
            UtilityProvider.sLog("22")

            deltaUser = contractState.current(withdrawer)!.value.sub(contractState.original(withdrawer)!.value);
        }
        UtilityProvider.sLog("11")
        // 3.Verify if the above two values are equal.
        if(deltaSys.compareTo(deltaUser) != 0){
            UtilityProvider.sLog("00")
            UtilityProvider.revert("risky transaction")
        }
    }

    postTxExecute(ctx: PostTxExecuteCtx): void {

    }


    postTxCommit(ctx: PostTxCommitCtx): void {
    }


}

export default GuardByCountAspect;
