// The entry file of your WebAssembly module.
import {AspectOutput} from "@artela/aspect-libs/proto";
import {IAspectBlock, IAspectTransaction} from "@artela/aspect-libs/types";
import {debug} from "@artela/aspect-libs/host";
import {BigInt} from "@artela/aspect-libs/message";

import {
    StateCtx,
    OnTxReceiveCtx,
    OnBlockInitializeCtx,
    OnTxVerifyCtx,
    OnAccountVerifyCtx,
    OnGasPaymentCtx,
    PreTxExecuteCtx,
    PreContractCallCtx,
    PostContractCallCtx,
    PostTxExecuteCtx,
    OnTxCommitCtx,
    OnBlockFinalizeCtx
} from "@artela/aspect-libs/entry";

class GuardByLockAspect implements IAspectTransaction, IAspectBlock {
    isOwner(ctx: StateCtx, sender: string): bool {
        // to retrieve the properties of an aspect, pass the key "owner" associated with the aspect,
        // which is deployed together with it.
        // the properity is depoly like 'properties: [{ 'key': 'owner', 'value': AspectDeployer }...'
        let value = ctx.getProperty("owner");
        if (value.includes(sender)) {
            return true;
        }
        return false;
    }

    onContractBinding(ctx: StateCtx, contractAddr: string): bool {
        // to retrieve the properties of current aspect, pass the key "binding" associated with the aspect,
        // which is deployed together with it.
        let value = ctx.getProperty("binding");
        if (value.includes(contractAddr)) {
            return true;
        }
        return false;
    }


    onTxReceive(ctx: OnTxReceiveCtx): AspectOutput {
        return new AspectOutput(true);
    }

    onBlockInitialize(ctx: OnBlockInitializeCtx): AspectOutput {
        return new AspectOutput(true);
    }

    onTxVerify(ctx: OnTxVerifyCtx): AspectOutput {
        return new AspectOutput(true);
        ;
    }

    onAccountVerify(ctx: OnAccountVerifyCtx): AspectOutput {
        return new AspectOutput(true);
    }

    onGasPayment(ctx: OnGasPaymentCtx): AspectOutput {
        return new AspectOutput(true);
    }

    preTxExecute(ctx: PreTxExecuteCtx): AspectOutput {

        return new AspectOutput(true);
    }

    _CONTEXT_KEY: string = "{InnerTxToAddr}_LOCK";
    _NOT_ENTERED: string = "0";
    _ENTERED: string = "1";
    preContractCall(ctx: PreContractCallCtx): AspectOutput {
        // 1.Get reentrant lock key of current contract.
        let curContract = ctx.currInnerTx!.to.toString();
        let reentKey = this._CONTEXT_KEY.replace("{InnerTxToAddr}", curContract);
        
        // 2.Check if another transaction has already occupied.
        if (ctx.getContext(reentKey) == this._ENTERED) {
            return new AspectOutput(false, "revert");
        }

        // 3.Set reentrant lock entered.
        ctx.setContext(reentKey, this._ENTERED);
        return new AspectOutput(true);
    }

    postContractCall(ctx: PostContractCallCtx): AspectOutput {
        // 1.Get reentrant lock key of current contract.
        let curContract = ctx.currInnerTx!.to.toString();
        let reentKey = this._CONTEXT_KEY.replace("{InnerTxToAddr}", curContract);
        
        // 2.Set reentrant lock not entered.
        ctx.setContext(reentKey, this._NOT_ENTERED);
        return new AspectOutput(true);
    }

    postTxExecute(ctx: PostTxExecuteCtx): AspectOutput {
        return new AspectOutput(true);
    }

    onTxCommit(ctx: OnTxCommitCtx): AspectOutput {
        return new AspectOutput(true);
    }

    onBlockFinalize(ctx: OnBlockFinalizeCtx): AspectOutput {
        return new AspectOutput(true);
    }
}

export default GuardByLockAspect;
