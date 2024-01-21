import {
    ethereum,
    hexToUint8Array,
    IPostContractCallJP, JitCallBuilder,
    PostContractCallInput,
    sys, uint8ArrayToHex,
} from "@artela/aspect-libs";

export class StorageMirror implements IPostContractCallJP {

    isOwner(sender: Uint8Array): bool {
        return true
    }


    postContractCall(ctx: PostContractCallInput): void {

        let txData = uint8ArrayToHex(ctx.call!.data);

        // calling store method
        if (txData.startsWith('6057361d')) {
            // then we try to mirror the call to another storage contract
            let walletAddress = sys.aspect.property.get<string>("wallet");
            let contractAddress = sys.aspect.property.get<string>("contract");


            const request = JitCallBuilder.simple(hexToUint8Array(walletAddress), ethereum.Address.fromHexString(contractAddress), ethereum.Bytes.fromHexString(txData)).build();

            const response = sys.hostApi.evmCall.jitCall(request);

            sys.require(response.success, 'failed to call JIT');
        }
    }
}
