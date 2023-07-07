import { Abi, State, utils, BigInt, TraceCtx, ethereum } from "@artela/aspect-libs";
export namespace HoneyPotState {
  export class SysBalance {
    addr: string;
    prefix: Uint8Array;
    ctx: TraceCtx;

    constructor(ctx: TraceCtx, addr: string, prefix: Uint8Array = new Uint8Array(0)) {
      this.ctx = ctx;
      this.addr = addr;
      this.prefix = prefix;
    }
    public first(): State<BigInt> | null {
      let changes = this.ctx.getStateChanges(this.addr, ".balance", this.prefix);
      if (changes.all.length == 0) {
        return null;
      }

      let account = changes.all[0].account;
      let valueHex = utils.uint8ArrayToHex(changes.all[0].value);
      let value = BigInt.fromString(valueHex, 16);
      return new State(account, value);
    }

    public all(): Array<State<BigInt>> | null {
      let changes = this.ctx.getStateChanges(this.addr, ".balance", this.prefix);
      if (changes.all.length == 0) {
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

    public last(): State<BigInt> | null {
      let changes = this.ctx.getStateChanges(this.addr, ".balance", this.prefix);
      if (changes.all.length == 0) {
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
    prefix: Uint8Array;
    constructor(ctx: TraceCtx, addr: string, prefix: Uint8Array = new Uint8Array(0)) {
      this.ctx = ctx;
      this.addr = addr;
      this.prefix = prefix;
    }
    public first(key: ethereum.Address): State<BigInt> | null {
      let encoded = Abi.encodeAddress(key);
      let changes = this.ctx.getStateChanges(this.addr, "HoneyPot.balances", utils.concatUint8Arrays(this.prefix, encoded));
      if (changes.all.length == 0) {
        return null;
      }

      let account = changes.all[0].account;
      let valueHex = utils.uint8ArrayToHex(changes.all[0].value);
      let value = BigInt.fromString(valueHex, 16);
      return new State(account, value);
    }
    public all(key: ethereum.Address): Array<State<BigInt>> | null {
      let encoded = Abi.encodeAddress(key);
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
    public last(key: ethereum.Address): State<BigInt> | null {
      let encoded = Abi.encodeAddress(key);
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
    public isExist(key: ethereum.Address): boolean {
      let encoded = Abi.encodeAddress(key);
      let changes = this.ctx.getStateChanges(this.addr, "HoneyPot.balances", utils.concatUint8Arrays(this.prefix, encoded));
      if (changes.all.length == 0) {
        return false;
      }
      return true;
    }
  }
}