
import {
    FilterTxCtx,
    IAspectBlock,
    IAspectTransaction,
    IAspectOperation,
    OnBlockFinalizeCtx,
    OnBlockInitializeCtx,
    PostContractCallCtx,
    PostTxCommitCtx,
    PostTxExecuteCtx,
    PreContractCallCtx,
    PreTxExecuteCtx,
    OperationCtx,
    ITransactionVerifier,
    VerifyTxCtx,
    sys
} from "@artela/aspect-libs";
import { Protobuf } from 'as-proto/assembly';
import {NewMessageError} from "@artela/aspect-libs/common/errors";
import {EthBlockHeader} from "@artela/aspect-libs/proto";

/**
 * There are two types of Aspect: Transaction-Level Aspect and Block-Level Aspect.
 * Transaction-Level Aspect will be triggered whenever there is a transaction calling the bound smart contract.
 * Block-Level Aspect will be triggered whenever there is a new block generated.
 *
 * An Aspect can be Transaction-Level, Block-Level,IAspectOperation or both.
 * You can implement corresponding interfaces: IAspectTransaction, IAspectBlock,IAspectOperation or both to tell Artela which
 * type of Aspect you are implementing.
 */
export class Aspect implements IAspectTransaction, IAspectBlock, IAspectOperation, ITransactionVerifier {
    verifyTx(ctx: VerifyTxCtx, validationData: Uint8Array): Uint8Array {
        var number = ctx.block.header.unwrap().number;
        sys.log("header number="+number.toString(10))
        var timestamp = ctx.block.header.unwrap().timestamp;
        sys.log("timestamp=="+timestamp.toString(10))

        var queryResponse = sys.hostApi.runtimeContext.get("block^header^0")
        if (!queryResponse.data!.value) {
            throw NewMessageError(queryResponse.result!.message);
        }
        var ethBlockHeader = Protobuf.decode<EthBlockHeader>(
            queryResponse.data!.value,
            EthBlockHeader.decode,
        );
        sys.log("header="+ethBlockHeader.number.toString(10))


        return queryResponse.data!.value
    }
    /**
     * isOwner is the governance account implemented by the Aspect, when any of the governance operation
     * (including upgrade, config, destroy) is made, isOwner method will be invoked to check
     * against the initiator's account to make sure it has the permission.
     *
     * @param ctx context of Aspect state
     * @param sender address of the operation initiator
     * @return true if check success, false if check fail
     */
    isOwner(sender: string): bool {
        // always return false on isOwner can make the Aspect immutable
        return false;
    }

    /**
     * onContractBinding is an Aspect lifecycle hook, it will be invoked by Aspect Core when
     * a new smart contract is binding to this Aspect. Aspect can choose whether to allow the
     * binding request or not. The binding request will succeed if onContractBinding returns true,
     * otherwise it will fail.
     *
     * @param ctx context of Aspect state
     * @param contractAddr address of the smart contract to binding with current Aspect
     * @return true if binding succeed, otherwise false
     */
    onContractBinding(contractAddr: string): bool {
        return true;
    }


    /**
     * filterTx is a join-point which will be invoked when the mem pool first
     * received the transaction. Since it is a join-point outside the consensus stage,
     * so at this join-point, no state or context can be persisted.
     *
     * @param ctx context of the given join-point
     * @return result of Aspect execution,if false drop tx in mempool
     */
    filterTx(ctx: FilterTxCtx): bool {
        return true
    }

    /**
     * preTxExecute is a join-point which will be invoked before the transaction execution.
     *
     * @param ctx context of the given join-point
     * @return result of Aspect execution
     */
    preTxExecute(ctx: PreTxExecuteCtx): void {
        // Implement me...
        var number = ctx.block.header.unwrap().number;
        sys.log("preTxExecute header 1="+number.toString(10))

        var timestamp = ctx.block.header.unwrap().timestamp;

        var queryResponse = sys.hostApi.runtimeContext.get("block^header^0");
        var ethBlockHeader = Protobuf.decode<EthBlockHeader>(
            queryResponse.data!.value,
            EthBlockHeader.decode,
        );

        sys.log("preTxExecute header 2="+ethBlockHeader.number.toString(10))

        if (!queryResponse.data!.value) {
            throw NewMessageError(queryResponse.result!.message);
        }
    }

    /**
     * preContractCall is a join-point which will be invoked before the contract call is executed.
     *
     * @param ctx context of the given join-point
     * @return result of Aspect execution
     */
    preContractCall(ctx: PreContractCallCtx): void {
        // Implement me...
    }

    /**
     * postContractCall is a join-point which will be invoked after a contract has finished.
     *
     * @param ctx context of the given join-point
     * @return result of Aspect execution
     */
    postContractCall(ctx: PostContractCallCtx): void {
        // Implement me...
    }


    /**
     * postTxExecute is a join-point which will be invoked when the transaction execution is finished but state is not committed.
     *
     * @param ctx context of the given join-point
     * @return result of Aspect execution
     */
    postTxExecute(ctx: PostTxExecuteCtx): void {
        // Implement me...
    }

    /**
     * onTxCommit is a join-point which will be invoked after the state of the transaction is committed.
     *
     * @param ctx context of the given join-point
     * @return result of Aspect execution
     */
    postTxCommit(ctx: PostTxCommitCtx): void {
        // Implement me...
    }


    /**
     * onBlockFinalize is a join-point which will be invoked when a block proposal has been finalized.
     *
     * @param ctx context of the given join-point
     * @return result of Aspect execution
     */
    onBlockFinalize(ctx: OnBlockFinalizeCtx): void {
        // Implement me...
    }


    /**
     * onBlockInitialize is a join-point which will be invoked when a new block proposal is prepared.
     *
     * @param ctx context of the given join-point
     * @return result of Aspect execution
     */
    onBlockInitialize(ctx: OnBlockInitializeCtx): void {
        // Implement me...
    }


    /**
     * operation is a Aspect call.
     *
     * @param ctx  tx input
     * @return result of operation execution
     */
    operation(ctx: OperationCtx, data: Uint8Array): Uint8Array{
        // Implement me...
        return new Uint8Array(0);
    }
}
