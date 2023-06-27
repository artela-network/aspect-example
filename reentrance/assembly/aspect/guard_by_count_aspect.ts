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
        let value = ctx.getProperty("owner");
        if (value.includes(sender)) {
            return true;
        }
        return false;
    }

    onContractBinding(ctx: StateCtx, contractAddr: string): bool {
        let value = ctx.getProperty("binding");
        if (value.includes(contractAddr)) {
            return true;
        }
        return false;
    }


    onTxReceive(ctx: OnTxReceiveCtx): AspectOutput {
        // call host api
        let block = ctx.lastBlock();

        // write response values
        let ret = new AspectOutput();
        ret.success = true;

        // add test data
        ctx.setContext("k1", "v1");
        ctx.setContext("k2", "v2");

        // // add hostapi return data
        if (block) {
            let header = block.header ? block.header : null;
            if (header) {
                ctx.setContext("lastBlockNum", header.number.toString());
            } else {
                ctx.setContext("lastBlockNum", "empty");
            }
        } else {
            ctx.setContext("lastBlockNum", "not found");
        }
        const k1 = ctx.getContext("k1");
        ret.success = true;
        ret.message = k1;
        return ret;
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
        if (ctx.tx != null) {
            let count = ctx.getContext("call_count");
            let innerCount=BigInt.ZERO;
            if (count!=""){
                innerCount  = BigInt.fromString(count, 10);
            }
            innerCount= innerCount.add(BigInt.fromInt32(1));
            debug.log("innerCount is: " + innerCount.toString(10));
            ctx.setContext("call_count", innerCount.toString(10));
        }
        return new AspectOutput(true);
    }

    postContractCall(ctx: PostContractCallCtx): AspectOutput {
        let ret = new AspectOutput(true);
        let count = ctx.getContext("call_count");
        if (count==""){
            return ret;
        }
        let innerCount  = BigInt.fromString(count, 10);

        let honeyPotAddr = ctx.getProperty("HoneyPotAddr");
        let contractBalance = ctx.currentBalance(honeyPotAddr);
        let fromBalance = ctx.currentBalance(ctx.tx!.from);
        if(contractBalance && fromBalance) {
            debug.log("innerCount is: " + innerCount.toString(10)
                + " honeyPotAddr CurrentBalance is:" +contractBalance.toString(10)
                + " fromBalance CurrentBalance is:" +fromBalance.toString(10)
            )
        }

        // >1 return false
        if ( innerCount.compareTo(BigInt.fromInt32(1))>0){
            ret.success = false;
            ret.message="generate multiple inner transactions";
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
