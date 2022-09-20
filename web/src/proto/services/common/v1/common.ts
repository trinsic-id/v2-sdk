/* eslint-disable */
import Long from "long";
import _m0 from "protobufjs/minimal";

export enum ResponseStatus {
  SUCCESS = 0,
  WALLET_ACCESS_DENIED = 10,
  WALLET_EXISTS = 11,
  ITEM_NOT_FOUND = 20,
  SERIALIZATION_ERROR = 200,
  UNKNOWN_ERROR = 100,
  UNRECOGNIZED = -1,
}

export function responseStatusFromJSON(object: any): ResponseStatus {
  switch (object) {
    case 0:
    case "SUCCESS":
      return ResponseStatus.SUCCESS;
    case 10:
    case "WALLET_ACCESS_DENIED":
      return ResponseStatus.WALLET_ACCESS_DENIED;
    case 11:
    case "WALLET_EXISTS":
      return ResponseStatus.WALLET_EXISTS;
    case 20:
    case "ITEM_NOT_FOUND":
      return ResponseStatus.ITEM_NOT_FOUND;
    case 200:
    case "SERIALIZATION_ERROR":
      return ResponseStatus.SERIALIZATION_ERROR;
    case 100:
    case "UNKNOWN_ERROR":
      return ResponseStatus.UNKNOWN_ERROR;
    case -1:
    case "UNRECOGNIZED":
    default:
      return ResponseStatus.UNRECOGNIZED;
  }
}

export function responseStatusToJSON(object: ResponseStatus): string {
  switch (object) {
    case ResponseStatus.SUCCESS:
      return "SUCCESS";
    case ResponseStatus.WALLET_ACCESS_DENIED:
      return "WALLET_ACCESS_DENIED";
    case ResponseStatus.WALLET_EXISTS:
      return "WALLET_EXISTS";
    case ResponseStatus.ITEM_NOT_FOUND:
      return "ITEM_NOT_FOUND";
    case ResponseStatus.SERIALIZATION_ERROR:
      return "SERIALIZATION_ERROR";
    case ResponseStatus.UNKNOWN_ERROR:
      return "UNKNOWN_ERROR";
    case ResponseStatus.UNRECOGNIZED:
    default:
      return "UNRECOGNIZED";
  }
}

/** Enum of all supported DID Methods */
export enum SupportedDIDMethod {
  /** KEY - The did:key method -- all wallets use this by default */
  KEY = 0,
  /** ION - The did:ion method */
  ION = 1,
  UNRECOGNIZED = -1,
}

export function supportedDIDMethodFromJSON(object: any): SupportedDIDMethod {
  switch (object) {
    case 0:
    case "KEY":
      return SupportedDIDMethod.KEY;
    case 1:
    case "ION":
      return SupportedDIDMethod.ION;
    case -1:
    case "UNRECOGNIZED":
    default:
      return SupportedDIDMethod.UNRECOGNIZED;
  }
}

export function supportedDIDMethodToJSON(object: SupportedDIDMethod): string {
  switch (object) {
    case SupportedDIDMethod.KEY:
      return "KEY";
    case SupportedDIDMethod.ION:
      return "ION";
    case SupportedDIDMethod.UNRECOGNIZED:
    default:
      return "UNRECOGNIZED";
  }
}

/** Nonce used to generate an oberon proof */
export interface Nonce {
  /** UTC unix millisecond timestamp the request was made */
  timestamp: number;
  /** blake3256 hash of the request body */
  requestHash: Uint8Array;
}

function createBaseNonce(): Nonce {
  return { timestamp: 0, requestHash: new Uint8Array() };
}

export const Nonce = {
  encode(message: Nonce, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.timestamp !== 0) {
      writer.uint32(8).int64(message.timestamp);
    }
    if (message.requestHash.length !== 0) {
      writer.uint32(18).bytes(message.requestHash);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): Nonce {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseNonce();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.timestamp = longToNumber(reader.int64() as Long);
          break;
        case 2:
          message.requestHash = reader.bytes();
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): Nonce {
    return {
      timestamp: isSet(object.timestamp) ? Number(object.timestamp) : 0,
      requestHash: isSet(object.requestHash)
        ? bytesFromBase64(object.requestHash)
        : new Uint8Array(),
    };
  },

  toJSON(message: Nonce): unknown {
    const obj: any = {};
    message.timestamp !== undefined &&
      (obj.timestamp = Math.round(message.timestamp));
    message.requestHash !== undefined &&
      (obj.requestHash = base64FromBytes(
        message.requestHash !== undefined
          ? message.requestHash
          : new Uint8Array()
      ));
    return obj;
  },

  fromPartial(object: DeepPartial<Nonce>): Nonce {
    const message = createBaseNonce();
    message.timestamp = object.timestamp ?? 0;
    message.requestHash = object.requestHash ?? new Uint8Array();
    return message;
  },
};

declare var self: any | undefined;
declare var window: any | undefined;
declare var global: any | undefined;
var globalThis: any = (() => {
  if (typeof globalThis !== "undefined") return globalThis;
  if (typeof self !== "undefined") return self;
  if (typeof window !== "undefined") return window;
  if (typeof global !== "undefined") return global;
  throw "Unable to locate global object";
})();

function bytesFromBase64(b64: string): Uint8Array {
  if (globalThis.Buffer) {
    return Uint8Array.from(globalThis.Buffer.from(b64, "base64"));
  } else {
    const bin = globalThis.atob(b64);
    const arr = new Uint8Array(bin.length);
    for (let i = 0; i < bin.length; ++i) {
      arr[i] = bin.charCodeAt(i);
    }
    return arr;
  }
}

function base64FromBytes(arr: Uint8Array): string {
  if (globalThis.Buffer) {
    return globalThis.Buffer.from(arr).toString("base64");
  } else {
    const bin: string[] = [];
    arr.forEach((byte) => {
      bin.push(String.fromCharCode(byte));
    });
    return globalThis.btoa(bin.join(""));
  }
}

type Builtin =
  | Date
  | Function
  | Uint8Array
  | string
  | number
  | boolean
  | undefined;

type DeepPartial<T> = T extends Builtin
  ? T
  : T extends Array<infer U>
  ? Array<DeepPartial<U>>
  : T extends ReadonlyArray<infer U>
  ? ReadonlyArray<DeepPartial<U>>
  : T extends {}
  ? { [K in keyof T]?: DeepPartial<T[K]> }
  : Partial<T>;

function longToNumber(long: Long): number {
  if (long.gt(Number.MAX_SAFE_INTEGER)) {
    throw new globalThis.Error("Value is larger than Number.MAX_SAFE_INTEGER");
  }
  return long.toNumber();
}

if (_m0.util.Long !== Long) {
  _m0.util.Long = Long as any;
  _m0.configure();
}

function isSet(value: any): boolean {
  return value !== null && value !== undefined;
}
