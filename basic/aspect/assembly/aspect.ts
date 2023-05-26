// The entry file of your WebAssembly module.
import {Aspect, Context} from "./lib";

class MyFirstAspect implements Aspect {

    isOwner(sender: string): bool {
        return true
    }

    onContractBinding(contractAddr: string): bool {
        return true
    }

    onTxReceive(s: string): string {
      //  let lastBlock = Context.lastBlock().replaceAll("\"", "\\\"");

        return "{\"success\":true,\"context\":{\"testKey\":\"testValue\"}}";

      //  return "{\"success\":true,\"context\":{\"testKey\":\"testValue\",\"blockLen\":\""+lastBlock+"\"}}";
    }

    onBlockInitialize(arg: string): string {

    return "{\"success\":true,\"context\":{\"testKey\":\"testValue\",\"testKey2\":\"testValue2\"}}";
    }

    onTxVerify(arg: string): string {
        return "{\"success\":true,\"context\":{\"testKey\":\"testValue\",\"testKey2\":\"testValue2\"}}";
    }

    onAccountVerify(arg: string): string {
        return "{\"success\":true,\"context\":{\"testKey\":\"testValue\",\"testKey2\":\"testValue2\"}}";
    }

    onGasPayment(arg: string): string {
        return "{\"success\":true,\"context\":{\"testKey\":\"testValue\",\"testKey2\":\"testValue2\"}}";
    }

    preTxExecute(arg: string): string {
        return "{\"success\":true,\"context\":{\"testKey\":\"testValue\",\"testKey2\":\"testValue2\"}}";
    }

    preContractCall(arg: string): string {
        return "{\"success\":true,\"context\":{\"testKey\":\"testValue\",\"testKey2\":\"testValue2\"}}";
    }

    postContractCall(arg: string): string {
        return "{\"success\":true,\"context\":{\"testKey\":\"testValue\",\"testKey2\":\"testValue2\"}}";
    }

    postTxExecute(arg: string): string {
        return "{\"success\":true,\"context\":{\"testKey\":\"testValue\",\"testKey2\":\"testValue2\"}}";
    }

    onTxCommit(arg: string): string {
        return "{\"success\":true,\"context\":{\"testKey\":\"testValue\",\"testKey2\":\"testValue2\"}}";
    }

    onBlockFinalize(arg: string): string {
        return "{\"success\":true,\"context\":{\"testKey\":\"testValue\",\"testKey2\":\"testValue2\"}}";
    }
}

export default MyFirstAspect;
