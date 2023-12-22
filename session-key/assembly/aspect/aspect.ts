import {
    BigInt,
    EthBlockHeader,
    ethereum,
    FilterTxCtx,
    IAspectBlock,
    IAspectOperation,
    IAspectTransaction,
    ITransactionVerifier,
    NewMessageError,
    OnBlockFinalizeCtx,
    OnBlockInitializeCtx,
    OperationCtx,
    PostContractCallCtx,
    PostTxCommitCtx,
    PostTxExecuteCtx,
    PreContractCallCtx,
    PreTxExecuteCtx,
    StringArrayData,
    sys,
    VerifyTxCtx,
} from "@artela/aspect-libs";
import { Protobuf } from 'as-proto/assembly';
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
    /**
     * isOwner is the governance account implemented by the Aspect, when any of the governance operation
     * (including upgrade, config, destroy) is made, isOwner method will be invoked to check
     * against the initiator's account to make sure it has the permission.
     *
     * @param ctx context of Aspect state
     * @param sender address of the operation initiator
     * @return true if c heck success, false if check fail
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
     * operation is an Aspect call.
     *
     * @param ctx  tx input
     * @param data
     * @return result of operation execution
     */
    operation(ctx: OperationCtx, data: Uint8Array): Uint8Array {
        // calldata encode rule
        // 2 bytes: op
        //      op codes lists:
        //           0x0001 | registerSessionKey
        //
        //           ** 0x10xx means read only op **
        //           0x1001 | getSessionKey
        //           0x0002 | verifySessionKeyScope
        //           0x0003 | verifySignature
        //           0x0004 | ecRecover
        //
        // variable-length bytes: params
        //      encode rule of params is defined by each method

        const calldata = sys.utils.uint8ArrayToHex(data);
        const op = this.parseOP(calldata);
        const params = this.parsePrams(calldata);

        if (op == "0001") {
            this.registerSessionKey(this.rmPrefix(ctx.tx.content.unwrap().from), params, ctx);
            return new Uint8Array(0);
        }
        else if (op == "1001") {
            const ret = this.getSessionKey(params, ctx);
            return sys.utils.stringToUint8Array(ret);
        }
        else if (op == "1002") {
            const ret = this.verifySessionKeyScope(params, ctx);
            return ret ? sys.utils.stringToUint8Array("success") : sys.utils.stringToUint8Array("false");
        }
        else if (op == "1003") {
            const ret = this.verifySignature(params, ctx);
            return ret ? sys.utils.stringToUint8Array("success") : sys.utils.stringToUint8Array("false");
        }
        else if (op == "1004") {
            const ret = this.ecRecover(params, ctx);
            return sys.utils.stringToUint8Array(ret);
        }
        else {
            sys.revert("unknown op");
        }
        return new Uint8Array(0);
    }

    parseOP(calldata: string): string {
        if (calldata.startsWith('0x')) {
            return calldata.substring(2, 6);
        } else {
            return calldata.substring(0, 4);
        }
    }

    parsePrams(calldata: string): string {
        if (calldata.startsWith('0x')) {
            return calldata.substring(6, calldata.length);
        } else {
            return calldata.substring(4, calldata.length);
        }
    }

    rmPrefix(data: string): string {
        if (data.startsWith('0x')) {
            return data.substring(2, data.length);
        } else {
            return data;
        }
    }

    registerSessionKey(eoa: string, params: string, ctx: OperationCtx): void {
        /**
         * params encode rules:
         *      20 bytes: session key
         *           eg. 1f9090aaE28b8a3dCeaDf281B0F12828e676c326
         *      20 bytes: contract address 
         *           eg. 388C818CA8B9251b393131C08a736A67ccB19297
         *      2 bytes: length of methods set
         *           eg. 0002
         *      variable-length: 4 bytes * length of methods set; methods set          
         *           eg. 0a0a0a0a0b0b0b0b
         *           means there are two methods: ['0a0a0a0a', '0b0b0b0b']
         */

        const encodeKey = params + eoa;

        const sKeyObj = new SessionKey(encodeKey);
        sKeyObj.verify();

        sys.aspect.mutableState(ctx).get<string>(sKeyObj.getStateKey()).set(sKeyObj.getEncodeKey());
    }

    getSessionKey(params: string, ctx: OperationCtx): string {
        return sys.aspect.mutableState(ctx).get<string>(params).unwrap();
    }

    verifySessionKeyScope(params: string, ctx: OperationCtx): bool {
        // params encode rules:
        //     20 bytes: from
        //         eg. e2f8857467b61f2e4b1a614a0d560cd75c0c076f
        //     20 bytes: to
        //         eg. e2f8857467b61f2e4b1a614a0d560cd75c0c076f
        //     4 bytes: method
        //         eg. e2f8857467b61f2e4b1a614a0d560cd75c0c076f
        //     20 bytes: signer
        //         eg. e2f8857467b61f2e4b1a614a0d560cd75c0c076f

        sys.require(params.length == 128, "illegal params");
        const from = params.slice(0, 40);
        const to = params.slice(40, 80);
        const method = params.slice(80, 88);
        const signer = params.slice(88, 128);

        return this.verifySessionKeyScope_(from, to, method, signer, ctx);
    }

    verifySignature(params: string, ctx: OperationCtx): bool {
        // params encode rules:
        //     20 bytes: from
        //         eg. e2f8857467b61f2e4b1a614a0d560cd75c0c076f
        //     20 bytes: to
        //         eg. e2f8857467b61f2e4b1a614a0d560cd75c0c076f
        //     32 bytes: hash
        //     32 bytes: r
        //     32 bytes: s
        //     1 bytes: v
        sys.require(params.length == 274, "illegal params");
        const from = params.slice(0, 40);
        const to = params.slice(40, 80);
        const hash = params.slice(80, 144);
        const r = params.slice(144, 208);
        const s = params.slice(208, 272);
        const v = params.slice(272, 274);

        return this.verifySignature_(from, to, hash, r, s, v, ctx);
    }

    ecRecover(params: string, ctx: OperationCtx): string {
        // params encode rules:
        //     20 bytes: from
        //         eg. e2f8857467b61f2e4b1a614a0d560cd75c0c076f
        //     20 bytes: to
        //         eg. e2f8857467b61f2e4b1a614a0d560cd75c0c076f
        //     32 bytes: hash
        //     32 bytes: r
        //     32 bytes: s
        //     1 bytes: v
        sys.require(params.length == 274, "illegal params");
        const from = params.slice(0, 40);
        const to = params.slice(40, 80);
        const hash = params.slice(80, 144);
        const r = params.slice(144, 208);
        const s = params.slice(208, 272);
        const v = params.slice(272, 274);

        return this.ecRecover_(hash, r, s, v);
    }

    verifySessionKeyScope_(from: string, to: string, method: string, signer: string, ctx: OperationCtx): bool {

        const stateVal = sys.aspect.mutableState(ctx).get<string>(SessionKey.getStateKey(to, from, signer)).unwrap();

        sys.require(stateVal != '', "session key doesn't exist");

        const sKey = new SessionKey(stateVal);
        return sKey.getMethodArray().includes(method);
    }

    verifySignature_(from: string, to: string, hash: string, r: string, s: string, v: string, ctx: OperationCtx): bool {

        //[msgHash 32B][v 32B][r 32B][s 32B]
        const syscallInput = hash
            + "00000000000000000000000000000000000000000000000000000000000000" + v
            + r
            + s;

        const ret = sys.hostApi.crypto.ecRecover(sys.utils.hexToUint8Array(syscallInput));
        const signer = sys.utils.uint8ArrayToHex(ret.subarray(12, 32));

        if (signer == "") {
            return false;
        }

        const stateVal = sys.aspect.mutableState(ctx).get<string>(SessionKey.getStateKey(to, from, signer)).unwrap();

        if (stateVal == "") {
            return false;
        }

        return true;
    }

    ecRecover_(hash: string, r: string, s: string, v: string): string {

        //[msgHash 32B][v 32B][r 32B][s 32B]
        const syscallInput = hash
            + "00000000000000000000000000000000000000000000000000000000000000" + v
            + r
            + s;

        const ret = sys.hostApi.crypto.ecRecover(sys.utils.hexToUint8Array(syscallInput));
        const retHex = sys.utils.uint8ArrayToHex(ret);

        return retHex;
    }

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

        // params encode rules:
        //     20 bytes: from
        //         eg. e2f8857467b61f2e4b1a614a0d560cd75c0c076f
        //     32 bytes: r
        //     32 bytes: s
        //     1 bytes: v
        const params = sys.utils.uint8ArrayToHex(validationData);

        sys.require(params.length == 170, "illegal validation data, actual: " + params.length.toString());
        const from = params.slice(0, 40);
        const r = params.slice(40, 104);
        const s = params.slice(104, 168);
        const v = params.slice(168, 170);

        // 1. verify sig
        const msgHash = this.rmPrefix(sys.utils.uint8ArrayToHex(ctx.tx.msgHash.unwrap()));
        const syscallInput = msgHash
            + "00000000000000000000000000000000000000000000000000000000000000" + v
            + r
            + s;

        const ret =sys.hostApi.crypto.ecRecover(sys.utils.hexToUint8Array(syscallInput));
        const skey = sys.utils.uint8ArrayToHex(ret.subarray(12, 32));

        sys.require(skey != "", "illegal signature, verify fail");

        // 2. match session key
        const encodeSKey = sys.aspect.readonlyState(ctx).get<string>(
            SessionKey.getStateKey(this.rmPrefix(ctx.tx.content.unwrap().to), from, skey)
        ).unwrap();

        sys.require(encodeSKey != "", "illegal session key");

        // 2. match session key
        const sKeyObj = new SessionKey(encodeSKey);

        // 3. verify session key scope
        const method = sys.utils.parseCallMethod(ctx.tx.content.unwrap().input);
        sys.require(sKeyObj.getMethodArray().includes(this.rmPrefix(method)),
            "illegal session key scope, method isn't allowed. actual is " + method + ". detail: " + sys.utils.uint8ArrayToHex(ctx.tx.content.unwrap().input));

        // 4. return main key
        return sys.utils.hexToUint8Array(from);
    }
}

/**
 * SessionKey object
 *      1. getEncodeKey() will encode the key and return a hex string, which used in storage
 *      2. other methods will decode the key and return fields of the key
 * 
 * SessionKey encode rules:
 *      20 bytes: session key public key 
 *           eg. 1f9090aaE28b8a3dCeaDf281B0F12828e676c326
 *      20 bytes: contract address 
 *           eg. 388C818CA8B9251b393131C08a736A67ccB19297
 *      2 bytes: length of methods set
 *           eg. 0002
 *      variable-length: 4 bytes * length of methods set; methods set          
 *           eg. 0a0a0a0a0b0b0b0b
 *           means there are two methods: ['0a0a0a0a', '0b0b0b0b']
 *      20 bytes: main key
 *           eg. 388C818CA8B9251b393131C08a736A67ccB19297 
 */
class SessionKey {
    private encodeKey: string;

    constructor(encode: string) {
        this.encodeKey = encode;
    }

    verify(): void {
        sys.require(this.encodeKey.length > 84, "illegal encode session key");
        sys.require(this.encodeKey.length == 84 + 8 * this.getMethodCount().toInt32() + 40, "illegal encode session key");
    }

    getEncodeKey(): string {
        return this.encodeKey;
    }

    getSKey(): string {
        return this.encodeKey.slice(0, 40);
    }

    getContractAddress(): string {
        return this.encodeKey.slice(40, 80);
    }

    getMethodCount(): BigInt {
        return BigInt.fromString(this.encodeKey.slice(80, 84), 16);;
    }

    getRawMethodsSet(): string {
        return this.encodeKey.slice(84, 84 + 8 * this.getMethodCount().toInt32());
    }

    getMethodArray(): Array<string> {

        const array = new Array<string>();
        for (let i = 0; i < this.getMethodCount().toInt32(); ++i) {
            array[i] = this.getRawMethodsSet().slice(8 * i, 8 * (i + 1));
        }
        return array;
    }

    getEoA(): string {
        return this.encodeKey.slice(84 + 8 * this.getMethodCount().toInt32(), this.encodeKey.length);
    }

    getStateKey(): string {
        return sys.utils.uint8ArrayToHex(
           sys.hostApi.crypto.keccak(sys.utils.hexToUint8Array(this.getContractAddress() + this.getEoA() + this.getSKey())));
    }

    static getStateKey(contract: string, eoa: string, sKey: string): string {
        return sys.utils.uint8ArrayToHex(
           sys.hostApi.crypto.keccak(sys.utils.hexToUint8Array(contract + eoa + sKey)));
    }
}