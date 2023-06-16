import {AString} from "./types/types";

export class ThrowError {

     static errorMg:string=""

    static revert(message: string): void {
         this.errorMg=message;
        throw new Error(message);
    }
    public static getErr(): i32 {
        let input = new AString();
        input.set(this.errorMg);
        return input.store()
    }
}