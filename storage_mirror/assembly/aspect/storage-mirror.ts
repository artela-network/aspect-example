import {
    ethereum,
    FilterTxCtx,
    IAspectBlock,
    IAspectTransaction,
    JitInherentRequest,
    OnBlockFinalizeCtx,
    OnBlockInitializeCtx,
    PostContractCallCtx,
    PostTxCommitCtx,
    PostTxExecuteCtx,
    PreContractCallCtx,
    PreTxExecuteCtx,
    sys,
} from "@artela/aspect-libs";

export class StorageMirror implements IAspectTransaction, IAspectBlock {
    filterTx(ctx: FilterTxCtx): bool {
        return true;
    }

    isOwner(sender: string): bool {
        let value = sys.aspect.property.get<string>("owner");
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
        sys.log("-111---")
        let txData = sys.utils.uint8ArrayToHex(ctx.tx.content.unwrap().input);
        sys.log("-222---")

        // calling store method
        if (txData.startsWith('6057361d')) {
            // then we try to mirror the call to another storage contract
            let walletAddress = sys.aspect.property.get<string>("wallet");
            sys.log("-333---"+walletAddress)

            let contractAddress = sys.aspect.property.get<string>("contract");
            sys.log("-444---"+contractAddress)

            const callData = ethereum.abiEncode('execute', [
                ethereum.Address.fromHexString(contractAddress),
                ethereum.Number.fromU64(0),
                ethereum.Bytes.fromHexString(txData),
            ]);
            sys.log("-555---")

            let request = new JitInherentRequest(
                sys.utils.hexToUint8Array(walletAddress),
                new Uint8Array(0),
                new Uint8Array(0),
                sys.utils.hexToUint8Array(callData),
                sys.utils.hexToUint8Array(ethereum.Number.fromU64(1000000).encodeHex()),
                sys.utils.hexToUint8Array(ethereum.Number.fromU64(1000000).encodeHex()),
                new Uint8Array(0),
                new Uint8Array(0),
                new Uint8Array(0),
            );
            sys.log("-666---")

            let response = sys.evm.jitCall(ctx).submit(request);
            sys.log("-777---")

            sys.require(response.success, 'failed to call JIT');
            sys.log("-888---")

        }
    }

    postTxExecute(ctx: PostTxExecuteCtx): void {
    }

    postTxCommit(ctx: PostTxCommitCtx): void {
    }
}
