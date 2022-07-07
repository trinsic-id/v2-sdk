/* eslint-disable */
import Long from "long";
import * as _m0 from "protobufjs/minimal";

export interface SdkTemplateOption {
  /**
   * Whether the service endpoint allows anonymous (no auth token necessary) authentication
   * This is used by the `protoc-gen-trinsic-sdk` plugin for metadata.
   */
  anonymous?: boolean | undefined;
  /**
   * Whether the SDK template generator should ignore this method. This method will
   * be wrapped manually.
   */
  ignore?: boolean | undefined;
}

function createBaseSdkTemplateOption(): SdkTemplateOption {
  return { anonymous: undefined, ignore: undefined };
}

export const SdkTemplateOption = {
  encode(
    message: SdkTemplateOption,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.anonymous !== undefined) {
      writer.uint32(8).bool(message.anonymous);
    }
    if (message.ignore !== undefined) {
      writer.uint32(16).bool(message.ignore);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): SdkTemplateOption {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseSdkTemplateOption();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.anonymous = reader.bool();
          break;
        case 2:
          message.ignore = reader.bool();
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): SdkTemplateOption {
    return {
      anonymous: isSet(object.anonymous)
        ? Boolean(object.anonymous)
        : undefined,
      ignore: isSet(object.ignore) ? Boolean(object.ignore) : undefined,
    };
  },

  toJSON(message: SdkTemplateOption): unknown {
    const obj: any = {};
    message.anonymous !== undefined && (obj.anonymous = message.anonymous);
    message.ignore !== undefined && (obj.ignore = message.ignore);
    return obj;
  },

  fromPartial(object: DeepPartial<SdkTemplateOption>): SdkTemplateOption {
    const message = createBaseSdkTemplateOption();
    message.anonymous = object.anonymous ?? undefined;
    message.ignore = object.ignore ?? undefined;
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

if (_m0.util.Long !== Long) {
  _m0.util.Long = Long as any;
  _m0.configure();
}

function isSet(value: any): boolean {
  return value !== null && value !== undefined;
}
