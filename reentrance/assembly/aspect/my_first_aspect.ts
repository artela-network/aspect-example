// The entry file of your WebAssembly module.
import { Opts, PeriodicSchedule, Schedule, ScheduleTx ,AspectOutput} from "../lib/types";
import { IAspectBlock, IAspectTransaction } from "../lib/interfaces";

import { HoneyPot } from "./honeypot_storage"
import { ethereum } from "../lib/abi/ethereum/coders";
import { debug } from "../lib/host";
import { ScheduleCtx } from "../lib/context";
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
        var output = new AspectOutput(true);
        var balance=0;
        if (ctx.tx != null) {
            var honeyPotAddr = ctx.getProperty("HoneyPotAddr");
            var balance= ctx.getBalance(honeyPotAddr);
            ctx.setContext("total",balance)
        }
        var aspectOutput = new AspectOutput(true);
        aspectOutput.message=balance+"";
        return aspectOutput
    }

    preContractCall(ctx: PreContractCallCtx): AspectOutput {
        return new AspectOutput(true);
    }

    postContractCall(ctx: PostContractCallCtx): AspectOutput {
        return new AspectOutput(true);
    }

    postTxExecute(ctx: PostTxExecuteCtx): AspectOutput {
        let ret = new AspectOutput(true);
        if (ctx.tx != null) {

            var property = ctx.getProperty("HoneyPotAddr");
            var currBalance= ctx.getBalance(property);
            var totalBalance=  ctx.getContext("total")


            let account = new HoneyPot.balances(ctx, ctx.tx!.from);
            var diff1 = account.diff(ctx.tx!.from);

            if(diff1!=(totalBalance-currBalance)){
                ret.success = false;
                ret.message="risky transaction";
            }
        }
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
