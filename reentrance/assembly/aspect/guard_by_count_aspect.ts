// The entry file of your WebAssembly module.
import { AspectOutput } from "@artela/aspect-libs/proto";
import { IAspectBlock, IAspectTransaction } from "@artela/aspect-libs/types";
import { BigInt } from "@artela/aspect-libs/message";

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

class GuardByCountAspect implements IAspectTransaction, IAspectBlock {
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
        return new AspectOutput(true);;
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

    CONTEXT_KEY:String= "{InnerTxToAddr}_CALL_COUNT";

    preContractCall(ctx: PreContractCallCtx): AspectOutput {
        /**
         * Count the number of inner TX calls,and set it to Context
         */
        let contextKey = this.CONTEXT_KEY.replace("{InnerTxToAddr}",ctx.currInnerTx!.to.toString());
        let contextCount = ctx.getContext(contextKey)
        let callCount=  (contextCount != "")?BigInt.fromString(contextCount, 10): BigInt.ZERO

        callCount = callCount.add(BigInt.fromInt32(1));

        ctx.setContext(contextKey, callCount.toString());
        return new AspectOutput(true);
    }

    postContractCall(ctx: PostContractCallCtx): AspectOutput {
        //get context
        let contextKey = this.CONTEXT_KEY.replace("{InnerTxToAddr}",ctx.currInnerTx!.to.toString());
        let contextCount = ctx.getContext(contextKey)
        let callCount=  (contextCount != "")?BigInt.fromString(contextCount, 10): BigInt.ZERO

        // If the call count large than 1, mark the transaction as failed.
        if (callCount.toInt64()>1) {
           return  new AspectOutput(false,"multiple inner tx calls");
        }
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

export default GuardByCountAspect;
