// The entry file of your WebAssembly module.
import { AspectOutput, BigInt } from "../lib/types";
import { IAspectBlock, IAspectTransaction } from "../lib/interfaces";

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

class MyFirstAspect implements IAspectTransaction, IAspectBlock {
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
        if (ctx.tx != null) {
            var honeyPotAddr = ctx.getProperty("HoneyPotAddr");
            let balance = ctx.currentBalance(honeyPotAddr);
            ctx.setContext("balance_pre", balance!.toString(16))
        }
        return new AspectOutput(true);
    }

    preContractCall(ctx: PreContractCallCtx): AspectOutput {
        return new AspectOutput(true);
    }

    postContractCall(ctx: PostContractCallCtx): AspectOutput {
        return new AspectOutput(true);
    }

    postTxExecute(ctx: PostTxExecuteCtx): AspectOutput {
        let ret = new AspectOutput();
        let message="";
        if (ctx.tx != null) {
            let balances = new HoneyPot.balances(ctx, ctx.tx!.to);
            var diff1 = balances.diff(ctx.tx!.from)!.abs();
            message="|"+ctx.tx!.from+":"+diff1.toString()

            var honeyPotAddr = ctx.getProperty("HoneyPotAddr");
            let post_balance = ctx.currentBalance(honeyPotAddr);
            message="|"+honeyPotAddr+":"+post_balance!.toString()

            var preBalanceHex = ctx.getContext("balance_pre")
            let pre_balance = BigInt.fromString(preBalanceHex, 16);
            message="|"+preBalanceHex+":"+pre_balance.toString()
            let diff =BigInt.ZERO;
            if(post_balance) {
                 diff = post_balance.sub(pre_balance).abs();
            }
            if ((diff1) &&(diff.compareTo(diff1) != 0)){
                ret.success = false;
                ret.message=message;
                return ret;
            }
        }

        ret.success = true;
        ret.message=message;
        return ret;
    }



    onTxCommit(ctx: OnTxCommitCtx): AspectOutput {
        return new AspectOutput(true);
    }

    onBlockFinalize(ctx: OnBlockFinalizeCtx): AspectOutput {
        return new AspectOutput(true);
    }
}

export default MyFirstAspect;
