import {State, UtilityProvider as utils, BigInt, TraceCtx, ethereum, UtilityProvider} from "@artela/aspect-libs";
import {KeysBundle} from "@artela/aspect-libs";

export namespace HoneyPotState {
    export class SysBalance {
        addr: string;
        prefix: KeysBundle;
        ctx: TraceCtx;

        constructor(ctx: TraceCtx, addr: string, prefix: KeysBundle=KeysBundle.NewBuilder()) {
            this.ctx = ctx;
            this.addr = addr;
            this.prefix = prefix;
        }

        public original(): State<BigInt> | null {
            let changes = this.ctx.getStateChanges(this.addr, ".balance", this.prefix);
            if (!changes || changes.all.length == 0) {
                return null;
            }

            let account = changes.all[0].account;
            let valueHex = utils.uint8ArrayToHex(changes.all[0].value);
            let value = BigInt.fromString(valueHex, 16);
            return new State(account, value);
        }

        public all(): Array<State<BigInt>> | null {
            let changes = this.ctx.getStateChanges(this.addr, ".balance", this.prefix);
            if (!changes || changes.all.length == 0) {
                return null;
            }

            let res = new Array<State<BigInt>>(changes.all.length);
            for (let i = 0; i < changes.all.length; i++) {
                let account = changes.all[i].account;
                let valueHex = utils.uint8ArrayToHex(changes.all[i].value);
                let value = BigInt.fromString(valueHex, 16);
                res[i] = new State(account, value)
            }
            return res;
        }

        public current(): State<BigInt> | null {
            let changes = this.ctx.getStateChanges(this.addr, ".balance", this.prefix);
            if (!changes || changes.all.length == 0) {
                return null;
            }

            let index = changes.all.length - 1;
            let account = changes.all[index].account;
            let valueHex = utils.uint8ArrayToHex(changes.all[index].value);
            let value = BigInt.fromString(valueHex, 16);
            return new State(account, value);
        }
    }


    export class balances {
        ctx: TraceCtx;
        addr: string;
        prefix: KeysBundle;



        constructor(ctx: TraceCtx, addr: string, prefix: KeysBundle=KeysBundle.NewBuilder()) {
            this.ctx = ctx;
            this.addr = addr;
            this.prefix = prefix;
        }

        public original(key: ethereum.Address): State<BigInt> | null {
            let encoded = ethereum.encodeAddress(key);
            let changes = this.ctx.getStateChanges(this.addr, "HoneyPot.balances", this.prefix);
            if (!changes || changes.all.length == 0) {
                return null;
            }

            let account = changes.all[0].account;
            let valueHex = utils.uint8ArrayToHex(changes.all[0].value);
            let value = BigInt.fromString(valueHex, 16);
            return new State(account, value);
        }

        public all(key: ethereum.Address): Array<State<BigInt>> | null {
            let encoded = ethereum.encodeAddress(key);
            let changes = this.ctx.getStateChanges(this.addr, "HoneyPot.balances", this.prefix);
            if (!changes || changes.all.length == 0) {
                return null;
            }

            let res = new Array<State<BigInt>>(changes.all.length);
            for (let i = 0; i < changes.all.length; i++) {
                let account = changes.all[i].account;
                let valueHex = utils.uint8ArrayToHex(changes.all[0].value);
                let value = BigInt.fromString(valueHex, 16);
                res[i] = new State(account, value)
            }
            return res;
        }

        public current(key: ethereum.Address): State<BigInt> | null {
            let encoded = ethereum.encodeAddress(key);

            let changes = this.ctx.getStateChanges(this.addr, "HoneyPot.balances", this.prefix);
            if (!changes || changes.all.length == 0) {
                return null;
            }

            let index = changes.all.length - 1;
            let account = changes.all[index].account;
            let valueHex = utils.uint8ArrayToHex(changes.all[index].value);
            let value = BigInt.fromString(valueHex, 16);
            return new State(account, value);
        }

        public isExist(key:string): boolean {
            UtilityProvider.sLog("001")
            UtilityProvider.sLog("002")


            this.prefix.fromString(key)

            UtilityProvider.sLog("003")

            let changes = this.ctx.getStateChanges(this.addr, "HoneyPot.balances", this.prefix);
            UtilityProvider.sLog("004")

            this.prefix._bytesAry.data.pop()
            UtilityProvider.sLog("005")

            if (!changes || changes.all.length == 0) {
                UtilityProvider.sLog("006")

                return false;
            }
            return true;
        }
    }
}
