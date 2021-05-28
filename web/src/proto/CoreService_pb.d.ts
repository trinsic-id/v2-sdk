import * as jspb from 'google-protobuf'

import * as pbmse_pbmse_pb from './pbmse/pbmse_pb';


export class NoOp extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): NoOp.AsObject;
  static toObject(includeInstance: boolean, msg: NoOp): NoOp.AsObject;
  static serializeBinaryToWriter(message: NoOp, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): NoOp;
  static deserializeBinaryFromReader(message: NoOp, reader: jspb.BinaryReader): NoOp;
}

export namespace NoOp {
  export type AsObject = {
  }
}

export enum ResponseStatus { 
  SUCCESS = 0,
  WALLET_ACCESS_DENIED = 10,
  WALLET_EXISTS = 11,
  ITEM_NOT_FOUND = 20,
  SERIALIZATION_ERROR = 200,
  UNKNOWN_ERROR = 100,
}
