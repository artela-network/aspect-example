import {ABool, AString, AUint8Array} from "./types/types";


import {IAspectBlock, IAspectTransaction} from "./interfaces"
import {AspectInput} from "./types/aspect/v1/AspectInput";
import {Protobuf} from "as-proto/assembly/Protobuf";
import {AspectOutput} from "./types/aspect/v1/AspectOutput";

export class Entry {
    private readonly blockAspect: IAspectBlock;
    private readonly transactionAspect: IAspectTransaction;

    constructor(blockAspect: IAspectBlock, transactionAspect: IAspectTransaction) {
        this.blockAspect = blockAspect;
        this.transactionAspect = transactionAspect;
    }

    private checkAspect(): i32 {
        if ((this.blockAspect == null) && (this.transactionAspect == null)) {
            return 0;
        }
        if ((this.blockAspect != null) && (this.transactionAspect != null)) {
            return 3;
        }
        if (this.transactionAspect != null) {
            return 2;
        }
        if (this.blockAspect != null) {
            return 1;
        }
        return 0;
    }

    public isBlockLevel(): bool {
        let objectType = this.checkAspect();
        return objectType === 1 || objectType === 3;
    }

    public isTransactionLevel(): bool {
        let objectType = this.checkAspect();
        return objectType === 2 || objectType === 3;
    }

    loadAspectInput(argPtr: i32): AspectInput {
        let encodedArg = new AUint8Array();
        encodedArg.load(argPtr);
        return Protobuf.decode<AspectInput>(encodedArg.get(), AspectInput.decode);
    }

    loadInputString(argPtr: i32): AString {
        let arg = new AString();
        arg.load(argPtr);
        return arg;
    }

    storeOutputBool(out: bool): i32 {
        let b = new ABool();
        b.set(out);
        return b.store();
    }

    storeAspectOutput(output: AspectOutput): i32 {
        let encodedOutput = Protobuf.encode(output, AspectOutput.encode);
        let ret = new AUint8Array();
        ret.set(encodedOutput);
        return ret.store();
    }

    public execute(methodPtr: i32, argPtr: i32): i32 {
        let methodArg = new AString();
        methodArg.load(methodPtr);
        let method = methodArg.get();
        if (this.checkAspect() <= 0) {
            throw new Error("invalid aspect code");
        }
        if (method === "onContractBinding" && this.isTransactionLevel()) {
            let arg = this.loadInputString(argPtr);
            let out = this.transactionAspect.onContractBinding(arg.get());
            return this.storeOutputBool(out);
        } else if (method === "isOwner") {
            let arg = this.loadInputString(argPtr);
            if (this.isTransactionLevel()) {
                let out = this.transactionAspect.isOwner(arg.get());
                return this.storeOutputBool(out);
            } else if (this.isBlockLevel()) {
                let out = this.blockAspect.isOwner(arg.get());
                return this.storeOutputBool(out);
            }
        } else if (method == "onTxReceive" && this.isTransactionLevel()) {
            let arg = this.loadAspectInput(argPtr);
            let out = this.transactionAspect.onTxReceive(arg);
            return this.storeAspectOutput(out);
        } else if (method == "onBlockInitialize" && this.isBlockLevel()) {
            let arg = this.loadAspectInput(argPtr);
            let out = this.blockAspect.onBlockInitialize(arg);
            return this.storeAspectOutput(out);
        } else if (method == "onTxVerify" && this.isTransactionLevel()) {
            let arg = this.loadAspectInput(argPtr);
            let out = this.transactionAspect.onTxVerify(arg);
            return this.storeAspectOutput(out);
        } else if (method == "onAccountVerify" && this.isTransactionLevel()) {
            let arg = this.loadAspectInput(argPtr);
            let out = this.transactionAspect.onAccountVerify(arg);
            return this.storeAspectOutput(out);
        } else if (method == "onGasPayment" && this.isTransactionLevel()) {
            let arg = this.loadAspectInput(argPtr);
            let out = this.transactionAspect.onGasPayment(arg);
            return this.storeAspectOutput(out);
        } else if (method == "preTxExecute" && this.isTransactionLevel()) {
            let arg = this.loadAspectInput(argPtr);
            let out = this.transactionAspect.preTxExecute(arg);
            return this.storeAspectOutput(out);
        } else if (method == "preContractCall" && this.isTransactionLevel()) {
            let arg = this.loadAspectInput(argPtr);
            let out = this.transactionAspect.preContractCall(arg);
            return this.storeAspectOutput(out);
        } else if (method == "postContractCall" && this.isTransactionLevel()) {
            let arg = this.loadAspectInput(argPtr);
            let out = this.transactionAspect.postContractCall(arg);
            return this.storeAspectOutput(out);
        } else if (method == "postTxExecute" && this.isTransactionLevel()) {
            let arg = this.loadAspectInput(argPtr);
            let out = this.transactionAspect.postTxExecute(arg);
            return this.storeAspectOutput(out);
        } else if (method == "onTxCommit" && this.isTransactionLevel()) {
            let arg = this.loadAspectInput(argPtr);
            let out = this.transactionAspect.onTxCommit(arg);
            return this.storeAspectOutput(out);
        } else if (method == "onBlockFinalize" && this.isBlockLevel()) {
            let arg = this.loadAspectInput(argPtr);
            let out = this.blockAspect.onBlockFinalize(arg);
            return this.storeAspectOutput(out);
        } else {
            throw new Error("method " + method + " not found");
        }
        return 0;
    }
}
