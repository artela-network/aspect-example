import { Protobuf } from 'as-proto/assembly';
import { Abi } from "../lib/host";
import { State } from "../lib/states"
import { utils } from "../lib/utils"
import { BigInt } from "../lib/types"
import { TraceCtx } from '../lib/context'
export namespace ArtToken {
  export class _balances {
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
    let changes = this.ctx.getStateChanges(this.addr, "ArtToken._balances", utils.concatUint8Arrays(this.prefix, encoded));
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
    let changes = this.ctx.getStateChanges(this.addr, "ArtToken._balances", utils.concatUint8Arrays(this.prefix, encoded));
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
    let changes = this.ctx.getStateChanges(this.addr, "ArtToken._balances", utils.concatUint8Arrays(this.prefix, encoded));
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
    let changes = this.ctx.getStateChanges(this.addr, "ArtToken._balances", utils.concatUint8Arrays(this.prefix, encoded));
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
  export class _allowances {
    ctx: TraceCtx;
    addr: string;
    prefix: Uint8Array;
    constructor(ctx: TraceCtx, addr: string, prefix: Uint8Array = new Uint8Array(0)) {
      this.ctx = ctx;
      this.addr = addr;
      this.prefix = prefix;
    }
    public before(key: string): State<> | null {
    let encoded = Abi.encodeString(key);
    let changes = this.ctx.getStateChanges(this.addr, "ArtToken._allowances", utils.concatUint8Arrays(this.prefix, encoded));
    if (changes.all.length == 0) {
        return null;
    }

    let account = changes.all[0].account;
    let value = utils.uint8ArrayTo(changes.all[0].value);
    return new State(account, value);
  }
    public changes(key: string): Array<State<>> | null {
    let encoded = Abi.encodeString(key);
    let changes = this.ctx.getStateChanges(this.addr, "ArtToken._allowances", utils.concatUint8Arrays(this.prefix, encoded));
    if (changes.all.length == 0) {
        return null;
    }

    let res = new Array<State<>>(changes.all.length);
    for (let i = 0; i < changes.all.length; i++) {
        let account = changes.all[i].account;
        let value = utils.uint8ArrayTo(changes.all[i].value);
        res[i] = new State(account, value)
    }
    return res;
  }
    public latest(key: string): State<> | null {
    let encoded = Abi.encodeString(key);
    let changes = this.ctx.getStateChanges(this.addr, "ArtToken._allowances", utils.concatUint8Arrays(this.prefix, encoded));
    if (changes.all.length == 0) {
        return null;
    }

    let index = changes.all.length - 1;
    let account = changes.all[index].account;
    let value = utils.uint8ArrayTo(changes.all[index].value);
    return new State(account, value);
  }
  }
  export class _totalSupply {
    ctx: TraceCtx;
    addr: string;
    prefix: Uint8Array;
    constructor(ctx: TraceCtx, addr: string, prefix: Uint8Array = new Uint8Array(0)) {
      this.ctx = ctx;
      this.addr = addr;
      this.prefix = prefix;
    }
    public before(): State<BigInt> | null {
      let changes = this.ctx.getStateChanges(this.addr, "ArtToken._totalSupply", this.prefix);
      if (changes.all.length == 0) {
          return null;
      }

      let account = changes.all[0].account;
      let valueHex = utils.uint8ArrayToHex(changes.all[0].value);
          let value = BigInt.fromString(valueHex, 16);
      return new State(account, value);
    }
    public changes(): Array<State<BigInt>> | null {
      let changes = this.ctx.getStateChanges(this.addr, "ArtToken._totalSupply", this.prefix);
      if (changes.all.length == 0) {
          return null;
      }

      let res = new Array<State<BigInt>>(changes.all.length);
      for (let i = 0; i < changes.all.length; i++) {
          let account = changes.all[i].account;
          let valueHex = Utils.uint8ArrayToHex(changes.all[0].value);
          let value = BigInt.fromString(valueHex, 16);
          res[i] = new State(account, value)
      }
      return res;
    }
    public latest(): State<BigInt> | null {
      let changes = this.ctx.getStateChanges(this.addr, "ArtToken._totalSupply", this.prefix);
      if (changes.all.length == 0) {
          return null;
      }

      let index = changes.all.length - 1;
      let account = changes.all[index].account;
      let valueHex = utils.uint8ArrayToHex(changes.all[index].value);
          let value = BigInt.fromString(valueHex, 16);
      return new State(account, value);
    }
    public diff(): BigInt  | null {
      let changes = this.ctx.getStateChanges(this.addr, "ArtToken._totalSupply", this.prefix);
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
  export class _name {
    ctx: TraceCtx;
    addr: string;
    prefix: Uint8Array;
    constructor(ctx: TraceCtx, addr: string, prefix: Uint8Array = new Uint8Array(0)) {
      this.ctx = ctx;
      this.addr = addr;
      this.prefix = prefix;
    }
    public before(): State<string> | null {
      let changes = this.ctx.getStateChanges(this.addr, "ArtToken._name", this.prefix);
      if (changes.all.length == 0) {
          return null;
      }

      let account = changes.all[0].account;
      let value = utils.uint8ArrayToString(changes.all[0].value);
      return new State(account, value);
    }
    public changes(): Array<State<string>> | null {
      let changes = this.ctx.getStateChanges(this.addr, "ArtToken._name", this.prefix);
      if (changes.all.length == 0) {
          return null;
      }

      let res = new Array<State<string>>(changes.all.length);
      for (let i = 0; i < changes.all.length; i++) {
          let account = changes.all[i].account;
          let value = Utils.uint8ArrayToString(changes.all[i].value);
          res[i] = new State(account, value)
      }
      return res;
    }
    public latest(): State<string> | null {
      let changes = this.ctx.getStateChanges(this.addr, "ArtToken._name", this.prefix);
      if (changes.all.length == 0) {
          return null;
      }

      let index = changes.all.length - 1;
      let account = changes.all[index].account;
      let value = utils.uint8ArrayToString(changes.all[index].value);
      return new State(account, value);
    }
  }
  export class _symbol {
    ctx: TraceCtx;
    addr: string;
    prefix: Uint8Array;
    constructor(ctx: TraceCtx, addr: string, prefix: Uint8Array = new Uint8Array(0)) {
      this.ctx = ctx;
      this.addr = addr;
      this.prefix = prefix;
    }
    public before(): State<string> | null {
      let changes = this.ctx.getStateChanges(this.addr, "ArtToken._symbol", this.prefix);
      if (changes.all.length == 0) {
          return null;
      }

      let account = changes.all[0].account;
      let value = utils.uint8ArrayToString(changes.all[0].value);
      return new State(account, value);
    }
    public changes(): Array<State<string>> | null {
      let changes = this.ctx.getStateChanges(this.addr, "ArtToken._symbol", this.prefix);
      if (changes.all.length == 0) {
          return null;
      }

      let res = new Array<State<string>>(changes.all.length);
      for (let i = 0; i < changes.all.length; i++) {
          let account = changes.all[i].account;
          let value = Utils.uint8ArrayToString(changes.all[i].value);
          res[i] = new State(account, value)
      }
      return res;
    }
    public latest(): State<string> | null {
      let changes = this.ctx.getStateChanges(this.addr, "ArtToken._symbol", this.prefix);
      if (changes.all.length == 0) {
          return null;
      }

      let index = changes.all.length - 1;
      let account = changes.all[index].account;
      let value = utils.uint8ArrayToString(changes.all[index].value);
      return new State(account, value);
    }
  }
  export class _owner {
    ctx: TraceCtx;
    addr: string;
    prefix: Uint8Array;
    constructor(ctx: TraceCtx, addr: string, prefix: Uint8Array = new Uint8Array(0)) {
      this.ctx = ctx;
      this.addr = addr;
      this.prefix = prefix;
    }
    public before(): State<> | null {
      let changes = this.ctx.getStateChanges(this.addr, "ArtToken._owner", this.prefix);
      if (changes.all.length == 0) {
          return null;
      }

      let account = changes.all[0].account;
      let value = utils.uint8ArrayTo(changes.all[0].value);
      return new State(account, value);
    }
    public changes(): Array<State<>> | null {
      let changes = this.ctx.getStateChanges(this.addr, "ArtToken._owner", this.prefix);
      if (changes.all.length == 0) {
          return null;
      }

      let res = new Array<State<>>(changes.all.length);
      for (let i = 0; i < changes.all.length; i++) {
          let account = changes.all[i].account;
          let value = Utils.uint8ArrayTo(changes.all[i].value);
          res[i] = new State(account, value)
      }
      return res;
    }
    public latest(): State<> | null {
      let changes = this.ctx.getStateChanges(this.addr, "ArtToken._owner", this.prefix);
      if (changes.all.length == 0) {
          return null;
      }

      let index = changes.all.length - 1;
      let account = changes.all[index].account;
      let value = utils.uint8ArrayTo(changes.all[index].value);
      return new State(account, value);
    }
  }
}
