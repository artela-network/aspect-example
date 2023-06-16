// The entry file of your WebAssembly module.
import { IAspectTransaction, IAspectBlock } from "../lib/interfaces";
import { Context } from "../lib/host";
import { Storage } from "./contract_storage"
import { Schedule, PeriodicSchedule, ScheduleTx, Opts } from "../lib/types";
import { AspectInput, AspectOutput } from "../lib/types"

class MyFirstAspect implements IAspectTransaction, IAspectBlock {
    isOwner(sender: string): bool {
        let value = Context.getProperty("owner");
        if (value.includes(sender)) {
            return true;
        }
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
        ret.success = true;
        ret.message = k1;
        return ret;
    }

    onBlockInitialize(input: AspectInput): AspectOutput {
        let ret = new AspectOutput(true);
        return ret;
    }

    onTxVerify(input: AspectInput): AspectOutput {
        let ret = new AspectOutput();
        ret.success = true;
        return ret;
    }

    onAccountVerify(input: AspectInput): AspectOutput {
        let ret = new AspectOutput();
        ret.success = true;
        return ret;
    }

    onGasPayment(input: AspectInput): AspectOutput {
        let ret = new AspectOutput();
        ret.success = true;
        return ret;
    }

    preTxExecute(input: AspectInput): AspectOutput {
        let ret = new AspectOutput();
        ret.success = true;
        return ret;
    }

    preContractCall(input: AspectInput): AspectOutput {
        let ret = new AspectOutput();
        ret.success = true;
        return ret;
    }

    postContractCall(input: AspectInput): AspectOutput {
        let ret = new AspectOutput();
        ret.success = true;
        return ret;
    }

    postTxExecute(input: AspectInput): AspectOutput {
        let ret = new AspectOutput();
        if (input.tx != null) {
            let num1 = new Storage.number(input.tx!.to);
            let num1_latest = num1.latest();
            if (num1_latest != null) {
                Context.setContext("number1_latest", num1_latest!.change.toString())
            }

            let account = new Storage.accounts(input.tx!.to);
            let tom_balance_latest = account.person("tom").balance().latest();
            if (tom_balance_latest == null) {
                Context.setContext("account_person_tome_account_latest", "is null");
            } else {
                Context.setContext("account_person_tome_account_latest_acct", tom_balance_latest.account);
                Context.setContext("account_person_tome_balance_latest_change", tom_balance_latest.change.toString());
            }
        }
        ret.success = true;
        ret.message = Context.getContext("account_person_tome_balance_latest_change")
        return ret;
    }

    onTxCommit(input: AspectInput): AspectOutput {
        let ret = new AspectOutput();
        ret.success = true;
        return ret;
    }

    onBlockFinalize(input: AspectInput): AspectOutput {
        let ret = new AspectOutput(true);
        ret.success = true;
        return ret;
    }

    private scheduleTx(): bool {
        let scheduleTo = Context.getProperty("ScheduleTo");
        let broker = Context.getProperty("Broker");

        // let tx = new MyContract(scheduleTo).store100(new Option(0, "200000000", "30000", broker))
        let tx = new ScheduleTx(scheduleTo).New(
            "0x6057361d00000000000000000000000000000000000000000000000000000000000003e8",
            new Opts(0, "200000000", "30000", broker))

        var periodicSch: Schedule = PeriodicSchedule
            .builder("myPeriodicSchedule")
            .startAfter(3)
            .count(1000)
            .everyNBlocks(5)
            .maxRetry(2);
        return periodicSch.submit(tx);
    }

}

export default MyFirstAspect;
