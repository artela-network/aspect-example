// The entry file of your WebAssembly module.
import { Opts, PeriodicSchedule, Schedule, ScheduleTx, AspectOutput } from "../lib/types";
import { IAspectBlock, IAspectTransaction } from "../lib/interfaces";

import { ArtToken } from "./token_storage"
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

class SalaryPayment implements IAspectTransaction, IAspectBlock {
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
        // schedule a salary payment
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
        if (ctx.tx != null) {
            // to retrieve the properties of an aspect, pass the key associated with the aspect,
            // which is deployed together with it.
            let schedule = ctx.getProperty("ScheduleTo");

            // convert to an address
            let scheduleAddr = ethereum.Address.fromHexString(schedule);

            // call traced balance changes, print the diff
            let num1 = new ArtToken._balances(ctx, ctx.tx!.to);
            let num1_latest = num1.diff(scheduleAddr);
            if (num1_latest) {
                debug.log("scheduleAddr balance " + num1_latest.toString(10))
            }
        }
        ret.success = true;
        return ret;
    }



    onTxCommit(ctx: OnTxCommitCtx): AspectOutput {
        return new AspectOutput(true);
    }

    onBlockFinalize(ctx: OnBlockFinalizeCtx): AspectOutput {
        return new AspectOutput(true);
    }

    private scheduleTx(ctx: ScheduleCtx, scheduleTo: string, broker: string, target: string): bool {
        // prepare the transfer parameters, and encode them to abi input.
        let addr = ethereum.Address.fromHexString(target);
        let num = ethereum.Number.fromU64(100);
        let payload = ethereum.abiEncode('transfer', [addr, num]);

        debug.log(payload);

        // the scheduled transaction with params.
        let tx = new ScheduleTx(scheduleTo).New(
            payload,
            new Opts(0, "200000000", "30000", broker))

        // params:
        // startAfter(3): the scheduled transaction will be trigger at the 3rd block after this method is called.
        // count(1000): total count of schedulex transaction is 1000.
        // everyNBlocks(5): execution at every 5th block since started.
        // maxRetry(2): Transaction confirmation on the blockchain is not guaranteed but rather determined by the gas fee.
        // If a transaction fails to be confirmed on the blockchain, it can be retried up to a maximum of two times.
        var periodicSch: Schedule = PeriodicSchedule
            .new(ctx, "myPeriodicSchedule")
            .startAfter(3)
            .count(1000)
            .everyNBlocks(5)
            .maxRetry(2);
        return periodicSch.submit(tx);
    }
}

export default SalaryPayment;
