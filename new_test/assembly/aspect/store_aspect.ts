// The entry file of your WebAssembly module.

import { Opts, PeriodicSchedule, Schedule,ScheduleTx } from "@artela/aspect-libs/scheduler";
import { IAspectBlock, IAspectTransaction } from "@artela/aspect-libs/types";
import { AspectOutput  } from "@artela/aspect-libs/proto";

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


class ScheduleStoreAspect implements IAspectTransaction, IAspectBlock {
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
        // schedule a tx
        return new AspectOutput(true);
    }

    onTxVerify(ctx: OnTxVerifyCtx): AspectOutput {
        return new AspectOutput(true);
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


}

export default ScheduleStoreAspect;
