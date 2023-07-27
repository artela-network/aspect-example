// The entry file of your WebAssembly module.
import { Opts, PeriodicSchedule, Schedule,ScheduleTx } from "@artela/aspect-libs/scheduler";
import { IAspectBlock, IAspectTransaction } from "@artela/aspect-libs/types";
import { AspectOutput  } from "@artela/aspect-libs/proto";

import { ArtToken } from "./token_storage"
import { ethereum } from "@artela/aspect-libs/abi";
import { debug } from "@artela/aspect-libs/host";
import {
    ScheduleCtx,
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
        return new AspectOutput(true);
    }

    onTxCommit(ctx: OnTxCommitCtx): AspectOutput {
        return new AspectOutput(true);
    }

    onBlockFinalize(ctx: OnBlockFinalizeCtx): AspectOutput {
        return new AspectOutput(true);
    }

    private scheduleTx(ctx: ScheduleCtx, scheduleTo: string, broker: string, target: string): bool {
        // prepare the transfer parameters, and encode them to abi input.
        let paramAddr = ethereum.Address.fromHexString(target);
        let paramNum = ethereum.Number.fromU64(100);
        let payload = ethereum.abiEncode('transfer', [paramAddr, paramNum]);

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
