import { Protobuf } from 'as-proto/assembly';
import { Abi } from "../lib/host";
import { State } from "../lib/states"
import { utils } from "../lib/utils"
import { BigInt } from "../lib/types"
import { TraceCtx } from '../lib/context'
export namespace HoneyPot {
  export class balances {
    ctx: TraceCtx;
    addr: string;
    prefix: Uint8Array;
    constructor(ctx: TraceCtx, addr: string, prefix: Uint8Array = new Uint8Array(0)) {
      this.ctx = ctx;
      this.addr = addr;
      this.prefix = prefix;
    }
    public before(key: string): State<BigInt> | null {
    let encoded = Abi.encodeString(key);
    let changes = this.ctx.getStateChanges(this.addr, "HoneyPot.balances", utils.concatUint8Arrays(this.prefix, encoded));
    if (changes.all.length == 0) {
        return null;
    }

    let account = changes.all[0].account;
    let valueHex = utils.uint8ArrayToHex(changes.all[0].value);
        let value = BigInt.fromString(valueHex, 16);
    return new State(account, value);
  }
    public changes(key: string): Array<State<BigInt>> | null {
    let encoded = Abi.encodeString(key);
    let changes = this.ctx.getStateChanges(this.addr, "HoneyPot.balances", utils.concatUint8Arrays(this.prefix, encoded));
    if (changes.all.length == 0) {
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
    public latest(key: string): State<BigInt> | null {
    let encoded = Abi.encodeString(key);
    let changes = this.ctx.getStateChanges(this.addr, "HoneyPot.balances", utils.concatUint8Arrays(this.prefix, encoded));
    if (changes.all.length == 0) {
        return null;
    }

    let index = changes.all.length - 1;
    let account = changes.all[index].account;
    let valueHex = utils.uint8ArrayToHex(changes.all[index].value);
        let value = BigInt.fromString(valueHex, 16);
    return new State(account, value);
  }
    public diff(key: string): BigInt  | null {
    let encoded = Abi.encodeString(key);
    let changes = this.ctx.getStateChanges(this.addr, "HoneyPot.balances", utils.concatUint8Arrays(this.prefix, encoded));
    if (changes.all.length < 2) {
        return null;
    }

    let beforeHex = utils.uint8ArrayToHex(changes.all[0].value);
        let before = BigInt.fromString(beforeHex, 16);
    let afterHex = utils.uint8ArrayToHex(changes.all[changes.all.length - 1].value);
        let after = BigInt.fromString(afterHex, 16);

    return after.sub(before);
  }
  }
}