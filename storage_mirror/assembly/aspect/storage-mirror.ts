import {
    FilterTxCtx,
    IAspectBlock,
    IAspectTransaction,
    OnBlockFinalizeCtx,
    OnBlockInitializeCtx,
    PostContractCallCtx,
    PostTxCommitCtx,
    PostTxExecuteCtx,
    PreContractCallCtx,
    PreTxExecuteCtx,
    AspectPropertyProvider,
    JustInTimeCaller,
    UtilityProvider,
    ethereum, JitInherentRequest
} from "@artela/aspect-libs";

export class StorageMirror implements IAspectTransaction, IAspectBlock {
    filterTx(ctx: FilterTxCtx): bool {
        return true;
    }

    isOwner(sender: string): bool {
        let value = AspectPropertyProvider.get("owner")!.asString();
        return value.includes(sender);
    }

    onBlockInitialize(ctx: OnBlockInitializeCtx): void {
        return
    }

    onBlockFinalize(ctx: OnBlockFinalizeCtx): void {
        return
    }

    onContractBinding(contractAddr: string): bool {
        return true;
    }

    preTxExecute(ctx: PreTxExecuteCtx): void {

    }

    preContractCall(ctx: PreContractCallCtx): void {

    }

    postContractCall(ctx: PostContractCallCtx): void {
        let txData = UtilityProvider.uint8ArrayToHex(ctx.tx!.input);
        // calling store method
        if (txData.startsWith('6057361d')) {
            // then we try to mirror the call to another storage contract
            let walletAddress = AspectPropertyProvider.get("wallet")!.asString();
            UtilityProvider.sLog("🐸🐸 wallet: " + walletAddress + "        ");
            let contractAddress = AspectPropertyProvider.get("contract")!.asString();
            UtilityProvider.sLog("🐸🐸 contract: " + contractAddress + "        ");
            const calldata = ethereum.abiEncode('execute', [
                ethereum.Address.fromHexString(contractAddress),
                ethereum.Number.fromU64(0),
                ethereum.Bytes.fromHexString(txData),
            ]);
            UtilityProvider.sLog("🐸🐸 txData: " + txData + "        ");
            UtilityProvider.sLog("🐸🐸 calldata: " + calldata + "        ");
            let request = new JitInherentRequest(
                UtilityProvider.hexToUint8Array(walletAddress),
                new Uint8Array(0),
                new Uint8Array(0),
                UtilityProvider.hexToUint8Array(calldata),
                UtilityProvider.hexToUint8Array(ethereum.Number.fromU64(1000000).encodeHex()),
                UtilityProvider.hexToUint8Array(ethereum.Number.fromU64(1000000).encodeHex()),
                new Uint8Array(0),
                new Uint8Array(0),
                new Uint8Array(0),
            );

            const jitCaller = new JustInTimeCaller();
            let response = jitCaller.jitCall(request);
            UtilityProvider.sLog("---1--" + response!.success.toString() + " " + response!.errorMsg)
            AssertTrue(!!response!.success, 'failed to call JIT');
        }
    }

    postTxExecute(ctx: PostTxExecuteCtx): void {
    }

    postTxCommit(ctx: PostTxCommitCtx): void {
    }
}

export function AssertTrue(cond: bool, msg: string): void {
    if (!cond) {
        UtilityProvider.revert(msg)
    }
}

function appendUint8Arrays(a: Uint8Array, b: Uint8Array): Uint8Array {
    let result = new Uint8Array(a.length + b.length);

    for (let i = 0; i < a.length; i++) {
        result[i] = a[i];
    }

    for (let i = 0; i < b.length; i++) {
        result[i + a.length] = b[i];
    }

    return result;
}
