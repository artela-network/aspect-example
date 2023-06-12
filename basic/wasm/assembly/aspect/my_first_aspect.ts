// The entry file of your WebAssembly module.
import { IAspectTransaction,IAspectBlock } from "../lib/interfaces";
import { Context } from "../lib/hostapi";

import { Schedule, PeriodicSchedule, } from "../lib/types/schedule";
import { Msg } from "../lib/types/msg";

import { AspectInput } from "../lib/types/aspect/v1/AspectInput"
import { AspectOutput } from "../lib/types/aspect/v1/AspectOutput"

import { MyContract } from "./my_contract";

class MyFirstAspect implements IAspectTransaction,IAspectBlock {
    isOwner(sender: string): bool {
        // let value = Context.getProperty("owner");
        // if (value.includes(sender)) {
        //     return true;
        // }
        return false;
    }

    onContractBinding(contractAddr: string): bool {
        let value = Context.getProperty("binding");
        if (value.includes(contractAddr)) {
            return true;
        }
        return false;
    }

    onTxReceive(input: AspectInput): AspectOutput {
        // call host api
        let block = Context.lastBlock();

        // write response values
        let ret = new AspectOutput();
        ret.success = true;

        // add test data
        Context.setContext("k1", "v1");
        Context.setContext("k2", "v2");

        // add hostapi return data
        if (block) {
            let header = block.header ? block.header : null;
            if (header) {
                Context.setContext("lastBlockNum", header.number.toString());
            } else {
                Context.setContext("lastBlockNum", "empty");
            }
        } else {
            Context.setContext("lastBlockNum", "not found");
        }

        const k1 = Context.getContext("k1");
        const k2 = Context.getContext("k2");
        const lastBlockNum = Context.getContext("lastBlockNum");

        // schedule a tx
        this.scheduleTx();
        ret.success=true;
        ret.message=k1;
        return ret;
    }

    onBlockInitialize(input: AspectInput): AspectOutput {
        return new AspectOutput();
    }

    onTxVerify(input: AspectInput): AspectOutput {
        return new AspectOutput();
    }

    onAccountVerify(input: AspectInput): AspectOutput {
        return new AspectOutput();
    }

    onGasPayment(input: AspectInput): AspectOutput {
        return new AspectOutput();
    }

    preTxExecute(input: AspectInput): AspectOutput {
        return new AspectOutput();
    }

    preContractCall(input: AspectInput): AspectOutput {
        return new AspectOutput();
    }

    postContractCall(input: AspectInput): AspectOutput {
        return new AspectOutput();
    }

    postTxExecute(input: AspectInput): AspectOutput {
        return new AspectOutput();
    }

    onTxCommit(input: AspectInput): AspectOutput {
        return new AspectOutput();
    }

    onBlockFinalize(input: AspectInput): AspectOutput {
        return new AspectOutput();
    }

    private scheduleTx(): bool {
        let scheduleTo = Context.getProperty("ScheduleTo");
        let broker = Context.getProperty("Broker");

        let tx = new MyContract(scheduleTo).store100(new Msg(0, "200000000", "30000", broker));
        var periodicSch: Schedule = PeriodicSchedule.builder("myPeriodicSchedule").startAfter(3).count(1000).everyNBlocks(5).maxRetry(2);
        return periodicSch.submit(tx);
    }
}

export default MyFirstAspect;
