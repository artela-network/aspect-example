import {
    BigInt,
    ethereum,
    EthStateChange,
    State,
    StateChange,
    StateKey, TraceContext, utils,


} from "@artela/aspect-libs";

export namespace HoneyPotState {
    export class balances_MappingValue extends StateChange<BigInt> {

        constructor(ctx: TraceContext, addr: string, indices: Uint8Array[] = []) {
            super({ctx:ctx, account:addr, stateVar:'HoneyPot.balances', indices:indices});
        }

        override unmarshalState(raw: EthStateChange): State<BigInt> {
            let valueHex = utils.uint8ArrayToHex(raw.value);
            let value = BigInt.fromString(valueHex, 16);
            return new State(raw.account, value, raw.callIndex);
        }
    }

    export class balances extends StateKey<string> {

        constructor(ctx: TraceContext, addr: string, indices: Uint8Array[] = []) {
            super({ctx:ctx, account:addr, stateVar:'HoneyPot.balances', indices:indices});
        }

        @operator("[]")
        get(index: string): balances_MappingValue {
            // @ts-ignore
            return new balances_MappingValue(this.ctx, this.account,
                utils.arrayCopyPush(this.prefixes, this.parseKey(index)));
        }

        protected parseKey(key: string): Uint8Array {
            return ethereum.Address.fromHexString(key).encodeUint8Array();
        }
    }

    export class _balance_ extends StateChange<BigInt> {

        constructor(ctx: TraceContext, addr: string, indices: Uint8Array[] = []) {
            super({ctx:ctx, account:addr, stateVar:'.balances', indices:indices});
        }

        override unmarshalState(raw: EthStateChange): State<BigInt> {
            let valueHex = utils.uint8ArrayToHex(raw.value);
            let value = BigInt.fromString(valueHex, 16);
            return new State(raw.account, value, raw.callIndex);
        }
    }
}
