import {EthBlock} from "@artela/aspect-libs/proto";
import {Context,AspTransaction} from "@artela/aspect-libs/";
import {ScheduleCtx} from "@artela/aspect-libs/entry/context";

export class AspectCtx {

    constructor(tx:AspTransaction) {

    }

    public lastBlock(): EthBlock | null {
        return Context.lastBlock();
    }

    public currentBlock(): EthBlock | null {
        return Context.currentBlock();
    }

}