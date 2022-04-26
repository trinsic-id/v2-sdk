/* eslint-disable */
import Long from "long";
import * as _m0 from "protobufjs/minimal";

export enum ResponseStatus {
  SUCCESS = 0,
  WALLET_ACCESS_DENIED = 10,
  WALLET_EXISTS = 11,
  ITEM_NOT_FOUND = 20,
  SERIALIZATION_ERROR = 200,
  UNKNOWN_ERROR = 100,
  UNRECOGNIZED = -1,
}

export interface ServerConfig {
  /** service endpoint */
  endpoint: string;
  /** service port */
  port: number;
  /** indicates if tls is used */
  useTls: boolean;
}

/** Nonce used to generate an oberon proof */
export interface Nonce {
  /** UTC unix millisecond timestamp the request was made */
  timestamp: number;
  /** blake3256 hash of the request body */
  requestHash: Uint8Array;
}

function createBaseServerConfig(): ServerConfig {
  return { endpoint: "", port: 0, useTls: false };
}

export const ServerConfig = {
  encode(
    message: ServerConfig,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.endpoint !== "") {
      writer.uint32(10).string(message.endpoint);
    }
    if (message.port !== 0) {
      writer.uint32(16).int32(message.port);
    }
    if (message.useTls === true) {
      writer.uint32(24).bool(message.useTls);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): ServerConfig {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseServerConfig();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.endpoint = reader.string();
          break;
        case 2:
          message.port = reader.int32();
          break;
        case 3:
          message.useTls = reader.bool();
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromPartial(object: DeepPartial<ServerConfig>): ServerConfig {
    const message = createBaseServerConfig();
    message.endpoint = object.endpoint ?? "";
    message.port = object.port ?? 0;
    message.useTls = object.useTls ?? false;
    return message;
  },
};

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
