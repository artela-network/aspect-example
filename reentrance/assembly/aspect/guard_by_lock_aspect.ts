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

    CONTEXT_KEY: string = "{InnerTxToAddr}_LOCK";
    LOCKED: string = "1";
  //  UNLOCK: string = "0";

    preContractCall(ctx: PreContractCallCtx): AspectOutput {

        let contextKey = this.CONTEXT_KEY.replace("{InnerTxToAddr}", ctx.currInnerTx!.to.toString());
        let isLock = ctx.getContext(contextKey)

        debug.log(`===contextKey:${contextKey},isLock:${isLock}`)

        if (isLock == this.LOCKED) {
            return new AspectOutput(false, "Locked by other tx");
        }

        ctx.setContext(contextKey, this.LOCKED);
        return new AspectOutput(true);

    }

    postContractCall(ctx: PostContractCallCtx): AspectOutput {
        //get context
        debug.log(`===PostContractCallCtx,isLock`)
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
