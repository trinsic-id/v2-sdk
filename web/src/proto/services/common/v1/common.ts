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

/**
 * Enum of all supported DID Methods
 * https://docs.godiddy.com/en/supported-methods
 */
export enum SupportedDidMethod {
  /** KEY - The did:key method -- all wallets use this by default */
  KEY = 0,
  /** ION - The did:ion method -- Sidetree implementation on top of Bitcoin by Microsoft */
  ION = 1,
  /** INDY - The did:sov method -- Hyperledger Indy based by Sovrin Foundation */
  INDY = 2,
  UNRECOGNIZED = -1,
}

export function supportedDidMethodFromJSON(object: any): SupportedDidMethod {
  switch (object) {
    case 0:
    case "KEY":
      return SupportedDidMethod.KEY;
    case 1:
    case "ION":
      return SupportedDidMethod.ION;
    case 2:
    case "INDY":
      return SupportedDidMethod.INDY;
    case -1:
    case "UNRECOGNIZED":
    default:
      return SupportedDidMethod.UNRECOGNIZED;
  }
}

export function supportedDidMethodToJSON(object: SupportedDidMethod): string {
  switch (object) {
    case SupportedDidMethod.KEY:
      return "KEY";
    case SupportedDidMethod.ION:
      return "ION";
    case SupportedDidMethod.INDY:
      return "INDY";
    case SupportedDidMethod.UNRECOGNIZED:
    default:
      return "UNRECOGNIZED";
  }
}

/** Nonce used to generate an oberon proof */
export interface Nonce {
  /** UTC unix millisecond timestamp the request was made */
  timestamp?:
    | number
    | undefined;
  /** blake3256 hash of the request body */
  requestHash?: Uint8Array | undefined;
}

export interface TrinsicClientOptions {
  /** Trinsic API endpoint. Defaults to `prod.trinsic.cloud` */
  serverEndpoint?:
    | string
    | undefined;
  /** Trinsic API port; defaults to `443` */
  serverPort?:
    | number
    | undefined;
  /** Whether TLS is enabled between SDK and Trinsic API; defaults to `true` */
  serverUseTls?:
    | boolean
    | undefined;
  /** Authentication token for SDK calls; defaults to empty string (unauthenticated) */
  authToken?: string | undefined;
}

function createBaseNonce(): Nonce {
  return { timestamp: 0, requestHash: new Uint8Array(0) };
}

export const Nonce = {
  encode(message: Nonce, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.timestamp !== undefined && message.timestamp !== 0) {
      writer.uint32(8).int64(message.timestamp);
    }
    if (message.requestHash !== undefined && message.requestHash.length !== 0) {
      writer.uint32(18).bytes(message.requestHash);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): Nonce {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseNonce();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag !== 8) {
            break;
          }

          message.timestamp = longToNumber(reader.int64() as Long);
          continue;
        case 2:
          if (tag !== 18) {
            break;
          }

          message.requestHash = reader.bytes();
          continue;
      }
      if ((tag & 7) === 4 || tag === 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): Nonce {
    return {
      timestamp: isSet(object.timestamp) ? Number(object.timestamp) : 0,
      requestHash: isSet(object.requestHash) ? bytesFromBase64(object.requestHash) : new Uint8Array(0),
    };
  },

  toJSON(message: Nonce): unknown {
    const obj: any = {};
    if (message.timestamp !== undefined && message.timestamp !== 0) {
      obj.timestamp = Math.round(message.timestamp);
    }
    if (message.requestHash !== undefined && message.requestHash.length !== 0) {
      obj.requestHash = base64FromBytes(message.requestHash);
    }
    return obj;
  },

  create(base?: DeepPartial<Nonce>): Nonce {
    return Nonce.fromPartial(base ?? {});
  },
  fromPartial(object: DeepPartial<Nonce>): Nonce {
    const message = createBaseNonce();
    message.timestamp = object.timestamp ?? 0;
    message.requestHash = object.requestHash ?? new Uint8Array(0);
    return message;
  },
};

function createBaseTrinsicClientOptions(): TrinsicClientOptions {
  return { serverEndpoint: "", serverPort: 0, serverUseTls: false, authToken: "" };
}

export const TrinsicClientOptions = {
  encode(message: TrinsicClientOptions, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.serverEndpoint !== undefined && message.serverEndpoint !== "") {
      writer.uint32(10).string(message.serverEndpoint);
    }
    if (message.serverPort !== undefined && message.serverPort !== 0) {
      writer.uint32(16).int32(message.serverPort);
    }
    if (message.serverUseTls === true) {
      writer.uint32(24).bool(message.serverUseTls);
    }
    if (message.authToken !== undefined && message.authToken !== "") {
      writer.uint32(34).string(message.authToken);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): TrinsicClientOptions {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseTrinsicClientOptions();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag !== 10) {
            break;
          }

          message.serverEndpoint = reader.string();
          continue;
        case 2:
          if (tag !== 16) {
            break;
          }

          message.serverPort = reader.int32();
          continue;
        case 3:
          if (tag !== 24) {
            break;
          }

          message.serverUseTls = reader.bool();
          continue;
        case 4:
          if (tag !== 34) {
            break;
          }

          message.authToken = reader.string();
          continue;
      }
      if ((tag & 7) === 4 || tag === 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): TrinsicClientOptions {
    return {
      serverEndpoint: isSet(object.serverEndpoint) ? String(object.serverEndpoint) : "",
      serverPort: isSet(object.serverPort) ? Number(object.serverPort) : 0,
      serverUseTls: isSet(object.serverUseTls) ? Boolean(object.serverUseTls) : false,
      authToken: isSet(object.authToken) ? String(object.authToken) : "",
    };
  },

  toJSON(message: TrinsicClientOptions): unknown {
    const obj: any = {};
    if (message.serverEndpoint !== undefined && message.serverEndpoint !== "") {
      obj.serverEndpoint = message.serverEndpoint;
    }
    if (message.serverPort !== undefined && message.serverPort !== 0) {
      obj.serverPort = Math.round(message.serverPort);
    }
    if (message.serverUseTls === true) {
      obj.serverUseTls = message.serverUseTls;
    }
    if (message.authToken !== undefined && message.authToken !== "") {
      obj.authToken = message.authToken;
    }
    return obj;
  },

  create(base?: DeepPartial<TrinsicClientOptions>): TrinsicClientOptions {
    return TrinsicClientOptions.fromPartial(base ?? {});
  },
  fromPartial(object: DeepPartial<TrinsicClientOptions>): TrinsicClientOptions {
    const message = createBaseTrinsicClientOptions();
    message.serverEndpoint = object.serverEndpoint ?? "";
    message.serverPort = object.serverPort ?? 0;
    message.serverUseTls = object.serverUseTls ?? false;
    message.authToken = object.authToken ?? "";
    return message;
  },
};

declare const self: any | undefined;
declare const window: any | undefined;
declare const global: any | undefined;
const tsProtoGlobalThis: any = (() => {
  if (typeof globalThis !== "undefined") {
    return globalThis;
  }
  if (typeof self !== "undefined") {
    return self;
  }
  if (typeof window !== "undefined") {
    return window;
  }
  if (typeof global !== "undefined") {
    return global;
  }
  throw "Unable to locate global object";
})();

function bytesFromBase64(b64: string): Uint8Array {
  if (tsProtoGlobalThis.Buffer) {
    return Uint8Array.from(tsProtoGlobalThis.Buffer.from(b64, "base64"));
  } else {
    const bin = tsProtoGlobalThis.atob(b64);
    const arr = new Uint8Array(bin.length);
    for (let i = 0; i < bin.length; ++i) {
      arr[i] = bin.charCodeAt(i);
    }
    return arr;
  }
}

function base64FromBytes(arr: Uint8Array): string {
  if (tsProtoGlobalThis.Buffer) {
    return tsProtoGlobalThis.Buffer.from(arr).toString("base64");
  } else {
    const bin: string[] = [];
    arr.forEach((byte) => {
      bin.push(String.fromCharCode(byte));
    });
    return tsProtoGlobalThis.btoa(bin.join(""));
  }
}

type Builtin = Date | Function | Uint8Array | string | number | boolean | undefined;

type DeepPartial<T> = T extends Builtin ? T
  : T extends Array<infer U> ? Array<DeepPartial<U>> : T extends ReadonlyArray<infer U> ? ReadonlyArray<DeepPartial<U>>
  : T extends {} ? { [K in keyof T]?: DeepPartial<T[K]> }
  : Partial<T>;

function longToNumber(long: Long): number {
  if (long.gt(Number.MAX_SAFE_INTEGER)) {
    throw new tsProtoGlobalThis.Error("Value is larger than Number.MAX_SAFE_INTEGER");
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
