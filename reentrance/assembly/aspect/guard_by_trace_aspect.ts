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

class GuardByTraceAspect implements IAspectTransaction, IAspectBlock {
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
        return new AspectOutput(true);
    }

    postContractCall(ctx: PostContractCallCtx): AspectOutput {
        let ret = new AspectOutput(true);
        let message="";
        if (ctx.tx != null) {
            let balances = new HoneyPot.balances(ctx, ctx.tx!.to);

            let BalanceCtxKey = "original_balance";

            let originalBalanceCtx = ctx.getContext(BalanceCtxKey);
            let fromAddr = ethereum.Address.fromHexString(ctx.tx!.from);

            // set first balance value
            let originalBalance=BigInt.ZERO;
            if (originalBalanceCtx!=""){
                originalBalance= BigInt.fromString(originalBalanceCtx, 10);
            }else {

                let fromBeforeBalance = balances.before(fromAddr);
                if(fromBeforeBalance){
                    ctx.setContext(BalanceCtxKey,fromBeforeBalance.change.toString(10));
                    originalBalance=fromBeforeBalance.change;
                }
            }

            let fromBalanceChange = balances.diff(fromAddr);
            if(!fromBalanceChange){
                return ret;
            }
            let BalanceChangeCtxKey = "sum_balance_change_value";

            let fromChangeBalance = ctx.getContext(BalanceChangeCtxKey);
            let last_change_from_balance=BigInt.ZERO;
            if (fromChangeBalance!=""){
                last_change_from_balance= BigInt.fromString(fromChangeBalance, 10);
            }
            last_change_from_balance =last_change_from_balance.add(fromBalanceChange);

            ctx.setContext(BalanceChangeCtxKey,last_change_from_balance.toString(10));
            let resultBalance = originalBalance.add(last_change_from_balance);

            let honeyPotAddr = ctx.getProperty("HoneyPotAddr");
            let contractBalance = ctx.currentBalance(honeyPotAddr);
            let fromBalance = ctx.currentBalance(ctx.tx!.from);
            if(contractBalance && fromBalance) {
                debug.log("original_balance is: " + originalBalance.toString(10)
                    + " diff_Balance is: " + fromBalanceChange.toString(10)
                    + " last_change_from_balance is: " + last_change_from_balance.toString(10)
                    + " result_balance is: " + resultBalance.toString(10)
                    + " honeyPotAddr CurrentBalance is:" +contractBalance.toString(10)
                    + " fromBalance CurrentBalance is:" +fromBalance.toString(10)
                )
            }

            if(resultBalance.compareTo(BigInt.fromInt32(0))==-1){
                ret.success = false;
                ret.message= "balance is less than zero";
                return ret;
            }
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

export default GuardByTraceAspect;
