/* eslint-disable */
import _m0 from "protobufjs/minimal";

/** Configuration for Trinsic SDK Services */
export interface ServiceOptions {
  /** Trinsic API endpoint. Defaults to `prod.trinsic.cloud` */
  serverEndpoint: string;
  /** Trinsic API port; defaults to `443` */
  serverPort: number;
  /** Whether TLS is enabled between SDK and Trinsic API; defaults to `true` */
  serverUseTls: boolean;
  /** Authentication token for SDK calls; defaults to empty string (unauthenticated) */
  authToken: string;
}

function createBaseServiceOptions(): ServiceOptions {
  return {
    serverEndpoint: "",
    serverPort: 0,
    serverUseTls: false,
    authToken: "",
  };
}

export const ServiceOptions = {
  encode(
    message: ServiceOptions,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.serverEndpoint !== "") {
      writer.uint32(10).string(message.serverEndpoint);
    }
    if (message.serverPort !== 0) {
      writer.uint32(16).int32(message.serverPort);
    }
    if (message.serverUseTls === true) {
      writer.uint32(24).bool(message.serverUseTls);
    }
    if (message.authToken !== "") {
      writer.uint32(34).string(message.authToken);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): ServiceOptions {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseServiceOptions();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.serverEndpoint = reader.string();
          break;
        case 2:
          message.serverPort = reader.int32();
          break;
        case 3:
          message.serverUseTls = reader.bool();
          break;
        case 4:
          message.authToken = reader.string();
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): ServiceOptions {
    return {
      serverEndpoint: isSet(object.serverEndpoint)
        ? String(object.serverEndpoint)
        : "",
      serverPort: isSet(object.serverPort) ? Number(object.serverPort) : 0,
      serverUseTls: isSet(object.serverUseTls)
        ? Boolean(object.serverUseTls)
        : false,
      authToken: isSet(object.authToken) ? String(object.authToken) : "",
    };
  },

  toJSON(message: ServiceOptions): unknown {
    const obj: any = {};
    message.serverEndpoint !== undefined &&
      (obj.serverEndpoint = message.serverEndpoint);
    message.serverPort !== undefined &&
      (obj.serverPort = Math.round(message.serverPort));
    message.serverUseTls !== undefined &&
      (obj.serverUseTls = message.serverUseTls);
    message.authToken !== undefined && (obj.authToken = message.authToken);
    return obj;
  },

  fromPartial(object: DeepPartial<ServiceOptions>): ServiceOptions {
    const message = createBaseServiceOptions();
    message.serverEndpoint = object.serverEndpoint ?? "";
    message.serverPort = object.serverPort ?? 0;
    message.serverUseTls = object.serverUseTls ?? false;
    message.authToken = object.authToken ?? "";
    return message;
  },
};

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

function isSet(value: any): boolean {
  return value !== null && value !== undefined;
}
