// The entry file of your WebAssembly module.
import { Opts, PeriodicSchedule, Schedule, ScheduleTx ,AspectOutput} from "../lib/types";
import { IAspectBlock, IAspectTransaction } from "../lib/interfaces";

import { Storage } from "./contract_storage"
import { honeypot } from "./honeypot"
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
        this.scheduleTx(ctx, ctx.getProperty("ScheduleTo"), ctx.getProperty("Broker"), ctx.getProperty("TargetAddr"));
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
        return new AspectOutput(true);
    }

    postTxExecute(ctx: PostTxExecuteCtx): AspectOutput {
        let ret = new AspectOutput();
        honeypot;
        // if (ctx.tx != null) {
        //     let num1 = new Storage.number1(ctx, ctx.tx!.to);
        //     let num1_latest = num1.latest();
        //     ctx.setContext("number1_latest", num1_latest!.change.toString())
        //
        //     let account = new Storage.accounts(ctx, ctx.tx!.to);
        //     let tom_balance_latest = account.person("tom").balance().latest();
        //     if (tom_balance_latest == null) {
        //         ctx.setContext("account_person_tome_account_latest", "is null");
        //     } else {
        //         ctx.setContext("account_person_tome_account_latest_acct", tom_balance_latest.account);
        //         ctx.setContext("account_person_tome_balance_latest_change", tom_balance_latest.change.toString());
        //     }
        // }
        ret.success = true;
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
