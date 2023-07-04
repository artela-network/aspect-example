// The entry file of your WebAssembly module.
import { AspectOutput, BigInt } from "../lib/types";
import { IAspectBlock, IAspectTransaction } from "../lib/interfaces";
import { debug } from "../lib/host";

import { HoneyPot } from "./honeypot"
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
} from "../lib/context";


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

    preContractCall(ctx: PreContractCallCtx): AspectOutput {
        // In this aspect, calculate the total amount to re-entry precontract,
        // to avoid re-entrance attach.

        if (ctx.tx != null) { /** @cp under what situation it will be null? */ 
            // step 1. update the call count to context.
            // getContext: retireve a key-value pair in the blockchain state, all aspect shares.
            let count = ctx.getContext("call_count"); /** @cp what happen if there are mutliple contract bound to it and triggered at same tx? */ 

            let innerCount = BigInt.ZERO; /** @cp how to understand "inner" Count? */ 
            if (count != "") {
                innerCount = BigInt.fromString(count, 10);
            }
            innerCount = innerCount.add(BigInt.fromInt32(1));
            debug.log("innerCount is: " + innerCount.toString(10));

            // setContext: store a key-value pair in the blockchain state, all aspect shares.
            ctx.setContext("call_count", innerCount.toString(10));
        }
        return new AspectOutput(true);
    }

    postContractCall(ctx: PostContractCallCtx): AspectOutput {
        let ret = new AspectOutput(true);

        // getContext: retireve a key-value pair in the blockchain state, all aspect shares.
        let count = ctx.getContext("call_count");
        if (count == "") {
            return ret;
        }
        let innerCount = BigInt.fromString(count, 10); // @cp why dose it use BigInt?

        // print the balance of "HonePot" contract and "Attach" contract
        // getProperty: to retrieve the properties of an aspect, pass the key "owner" associated with the aspect,
        //   which is deployed together with it.
        //   the properity is depoly like 'properties: [{ 'key': 'owner', 'value': AspectDeployer }...'
        let honeyPotAddr = ctx.getProperty("HoneyPotAddr"); /** @cp they are unsue variables: honeyPotAddr, contractBalance, fromBalance*/ 

        // currentBalance: Always return the latest balance value, and if there is a transaction execution in progress, return the temporarily stored value.
        let contractBalance = ctx.currentBalance(honeyPotAddr);
        let fromBalance = ctx.currentBalance(ctx.tx!.from);
        if (contractBalance && fromBalance) {
            debug.log("innerCount is: " + innerCount.toString(10)
                + " honeyPotAddr CurrentBalance is:" + contractBalance.toString(10)
                + " fromBalance CurrentBalance is:" + fromBalance.toString(10)
            )
        }

        // Step 2. If the call count large than 1, mark the transaction as failed.
        if (innerCount.compareTo(BigInt.fromInt32(1)) > 0) {
            ret.success = false; /** @cp what's different between setting ret.sucess as false and calling revert api? */
            ret.message = "generate multiple inner transactions";
            return ret;
        }
        return ret;
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
