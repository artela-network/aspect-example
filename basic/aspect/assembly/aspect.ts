// The entry file of your WebAssembly module.
import {Aspect, Context} from "./lib";

class MyFirstAspect implements Aspect {
    onTxReceive(s: string): string {
        return Context.lastBlock();
    }

    onBlockInitialize(arg: string): string {
        return "";
    }

    onTxVerify(arg: string): string {
        return "";
    }

    onAccountVerify(arg: string): string {
        return "";
    }

    onGasPayment(arg: string): string {
        return "";
    }

    preTxExecute(arg: string): string {
        return "";
    }

    preContractCall(arg: string): string {
        return "";
    }

    postContractCall(arg: string): string {
        return "";
    }

    postTxExecute(arg: string): string {
        return "";
    }

    onTxCommit(arg: string): string {
        return "";
    }

    onBlockFinalize(arg: string): string {
        return "";
    }
}

export default MyFirstAspect;
