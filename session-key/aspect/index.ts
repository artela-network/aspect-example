import {
    allocate,
    entryPoint,
    execute,
    ITransactionVerifier,
    IAspectOperation,
    TxVerifyInput,
    OperationInput,
    uint8ArrayToHex, sys, hexToUint8Array
} from "@artela/aspect-libs";

/**
 * Please describe what functionality this aspect needs to implement.
 *
 * About the concept of Aspect @see [join-point](https://docs.artela.network/develop/core-concepts/join-point)
 * How to develop an Aspect  @see [Aspect Structure](https://docs.artela.network/develop/reference/aspect-lib/aspect-structure)
 */
class Aspect implements ITransactionVerifier, IAspectOperation {
    verifyTx(input: TxVerifyInput): Uint8Array {
        // looks up session key -> account mapping
        const sessionKey = uint8ArrayToHex(input.validationData);
        // retrieve account and check if it matches
        const address = sys.aspect.readonlyState.get<Uint8Array>(sessionKey).unwrap();
        sys.require(address.length > 0, 'invalid session key');

        return address;
    }

    /**
     * isOwner is the governance account implemented by the Aspect, when any of the governance operation
     * (including upgrade, config, destroy) is made, isOwner method will be invoked to check
     * against the initiator's account to make sure it has the permission.
     *
     * @param sender address of the transaction
     * @return true if check success, false if check fail
     */
    isOwner(sender: Uint8Array): bool {
        return true;
    }


    operation(input: OperationInput): Uint8Array {
        // saves session key -> account mapping
        const sessionKey = uint8ArrayToHex(input.callData);
        const stateVal = sys.aspect.mutableState.get<Uint8Array>(sessionKey);
        stateVal.set<Uint8Array>(input.tx!.from);
        return new Uint8Array(0);
    }
}

// 2.register aspect Instance
const aspect = new Aspect()
entryPoint.setAspect(aspect)
entryPoint.setOperationAspect(aspect)

// 3.must export it
export {execute, allocate}

