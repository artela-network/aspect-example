// The entry file of your WebAssembly module.
import { AspectOutput } from "@artela/aspect-libs";
import { IAspectBlock, IAspectTransaction } from "@artela/aspect-libs";
import { debug } from "@artela/aspect-libs";

import { HoneyPotState } from "./honeypotstate"
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
} from "@artela/aspect-libs";
import { ethereum } from "@artela/aspect-libs";
import { BigInt } from "@artela/aspect-libs/message";

class GuardByTraceAspect implements IAspectTransaction, IAspectBlock {
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
        return new AspectOutput(true);
    }

    postContractCall(ctx: PostContractCallCtx): AspectOutput {
        // 1.Calculate the eth balance change of DeFi SmartContract(HoneyPot) before and after tx.
        let sysBalance = new HoneyPotState.SysBalance(ctx.traceContext, ctx.currInnerTx!.to);
        var deltaSys = sysBalance.current()?.change.sub(sysBalance.original()?.change);

        // 2.Calculate the financial change of withdrawer in DeFi SmartContract(HoneyPot) before and after tx.
        let contractState = new HoneyPotState.balances(ctx, ctx.currInnerTx!.to);
        let withdrawer = ethereum.Address.fromHexString(ctx.currInnerTx!.from);
        var deltaUser = 0;
        if (contractState.isExist(withdrawer)) {
            deltaUser = contractState.current(withdrawer)?.change.sub(contractState.original(withdrawer)?.change);
        }

        // 3.Verify if the above two values are equal.
        if(deltaSys.compareTo(deltaUser) == 0){
            return new AspectOutput(true);
        }
        return new AspectOutput(false, "risky transaction");
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
