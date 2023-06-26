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
import {ethereum} from "../lib/abi/ethereum/coders";

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

        return new AspectOutput(true);
    }

    preContractCall(ctx: PreContractCallCtx): AspectOutput {
        if (ctx.tx != null) {
            var honeyPotAddr = ctx.getProperty("HoneyPotAddr");
            let balance = ctx.currentBalance(honeyPotAddr);
            debug.log("PreBalance is: " + balance!.toString(10));
            ctx.setContext("balance_pre", balance!.toString(16));
        }
        return new AspectOutput(true);
    }

    postContractCall(ctx: PostContractCallCtx): AspectOutput {
        let ret = new AspectOutput();
        let message="";
        if (ctx.tx != null) {
            let balances = new HoneyPot.balances(ctx, ctx.tx!.to);
            let fromAddr = ethereum.Address.fromHexString(ctx.tx!.from);
            var diffFrom = balances.diff(fromAddr);

            var honeyPotAddr = ctx.getProperty("HoneyPotAddr");
            let postBalance = ctx.currentBalance(honeyPotAddr);

            var preBalanceHex = ctx.getContext("balance_pre")
            let preBalance = BigInt.fromString(preBalanceHex, 16);

            let diff =BigInt.ZERO;
            if(postBalance) {
                diff = postBalance.sub(preBalance);
            }
            debug.log( " Diff_Compare is: " +diffFrom.compareTo(diff).toString(10)
                +" Diff_Balance is: " + diff.toString(10)
                +" Diff_Account is: " + diffFrom.toString(10)
                +" PreBalance is: " + preBalance.toString(10)
                +" PostBalance is: " + postBalance!.toString(10))

            if ((diffFrom) &&(diffFrom.compareTo(diff) != 0)){
                ret.success = false;
                ret.message=message;
                return ret;
            }
        }

        ret.success = true;
        ret.message=message;
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

export default MyFirstAspect;
