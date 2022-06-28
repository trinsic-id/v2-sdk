/* eslint-disable */
import Long from "long";
import * as _m0 from "protobufjs/minimal";

export enum EventType {
  PING = 0,
  LOG = 1,
  EGF_CREATED = 5,
  EGF_MEMBER_REGISTERED = 6,
  EGF_MEMBER_UNREGISTERED = 7,
  TEMPLATE_CREATED = 10,
  TEMPLATE_DELETED = 11,
  WALLET_CREATED = 15,
  ITEM_RECEIVED = 16,
  UNRECOGNIZED = -1,
}

export function eventTypeFromJSON(object: any): EventType {
  switch (object) {
    case 0:
    case "PING":
      return EventType.PING;
    case 1:
    case "LOG":
      return EventType.LOG;
    case 5:
    case "EGF_CREATED":
      return EventType.EGF_CREATED;
    case 6:
    case "EGF_MEMBER_REGISTERED":
      return EventType.EGF_MEMBER_REGISTERED;
    case 7:
    case "EGF_MEMBER_UNREGISTERED":
      return EventType.EGF_MEMBER_UNREGISTERED;
    case 10:
    case "TEMPLATE_CREATED":
      return EventType.TEMPLATE_CREATED;
    case 11:
    case "TEMPLATE_DELETED":
      return EventType.TEMPLATE_DELETED;
    case 15:
    case "WALLET_CREATED":
      return EventType.WALLET_CREATED;
    case 16:
    case "ITEM_RECEIVED":
      return EventType.ITEM_RECEIVED;
    case -1:
    case "UNRECOGNIZED":
    default:
      return EventType.UNRECOGNIZED;
  }
}

export function eventTypeToJSON(object: EventType): string {
  switch (object) {
    case EventType.PING:
      return "PING";
    case EventType.LOG:
      return "LOG";
    case EventType.EGF_CREATED:
      return "EGF_CREATED";
    case EventType.EGF_MEMBER_REGISTERED:
      return "EGF_MEMBER_REGISTERED";
    case EventType.EGF_MEMBER_UNREGISTERED:
      return "EGF_MEMBER_UNREGISTERED";
    case EventType.TEMPLATE_CREATED:
      return "TEMPLATE_CREATED";
    case EventType.TEMPLATE_DELETED:
      return "TEMPLATE_DELETED";
    case EventType.WALLET_CREATED:
      return "WALLET_CREATED";
    case EventType.ITEM_RECEIVED:
      return "ITEM_RECEIVED";
    case EventType.UNRECOGNIZED:
    default:
      return "UNRECOGNIZED";
  }
}

/** System event */
export interface Event {
  /** UUID for the event */
  id: string;
  /** event type */
  type: EventType;
  /** when the event occured */
  timestamp: string;
  /** data payload - will be encoded proto message for the event type */
  data: Uint8Array;
}

export interface APICall {
  source: string;
  request: Uint8Array;
  response: Uint8Array;
}

/** Message to test webhook functionality */
export interface Ping {
  /** UUID of this ping */
  id: string;
  /** UUID of the webhook receiving the ping */
  webhookId: string;
  /** when this was generated */
  timestamp: string;
  /** message to be sent (e.g. I'm a teapot) */
  message: string;
}

export interface EGFCreated {
  /** UUID of the governance framework */
  id: string;
  /** UUID of the ecosystem that owns this egf */
  ecosystemId: string;
  /** Trust registry assoicated with this egf */
  trustRegistry: string;
  /** Wallet ID of the aurhority for this egf */
  governingAuthority: string;
  /** Type of egf */
  type: string;
  /** User friendly name for the egf */
  name: string;
  /** Description of the egf */
  description: string;
  /** URI for the egf */
  governanceFramework: string;
}

export interface TemplateCreated {
  /** UUID of the template */
  id: string;
  /** UUID of the ecosystem that owns this template */
  ecosystemId: string;
  /** Template name */
  name: string;
  /** Tempalte type */
  type: string;
  /** WalletID that created the template */
  createdBy: string;
}

export interface ItemReceived {
  /** UUID of the new item */
  id: string;
  /** Timestamp when the item was received */
  received: string;
}

function createBaseEvent(): Event {
  return { id: "", type: 0, timestamp: "", data: new Uint8Array() };
}

export const Event = {
  encode(message: Event, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.id !== "") {
      writer.uint32(10).string(message.id);
    }
    if (message.type !== 0) {
      writer.uint32(16).int32(message.type);
    }
    if (message.timestamp !== "") {
      writer.uint32(26).string(message.timestamp);
    }
    if (message.data.length !== 0) {
      writer.uint32(34).bytes(message.data);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): Event {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseEvent();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.id = reader.string();
          break;
        case 2:
          message.type = reader.int32() as any;
          break;
        case 3:
          message.timestamp = reader.string();
          break;
        case 4:
          message.data = reader.bytes();
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): Event {
    return {
      id: isSet(object.id) ? String(object.id) : "",
      type: isSet(object.type) ? eventTypeFromJSON(object.type) : 0,
      timestamp: isSet(object.timestamp) ? String(object.timestamp) : "",
      data: isSet(object.data)
        ? bytesFromBase64(object.data)
        : new Uint8Array(),
    };
  },

  toJSON(message: Event): unknown {
    const obj: any = {};
    message.id !== undefined && (obj.id = message.id);
    message.type !== undefined && (obj.type = eventTypeToJSON(message.type));
    message.timestamp !== undefined && (obj.timestamp = message.timestamp);
    message.data !== undefined &&
      (obj.data = base64FromBytes(
        message.data !== undefined ? message.data : new Uint8Array()
      ));
    return obj;
  },

  fromPartial(object: DeepPartial<Event>): Event {
    const message = createBaseEvent();
    message.id = object.id ?? "";
    message.type = object.type ?? 0;
    message.timestamp = object.timestamp ?? "";
    message.data = object.data ?? new Uint8Array();
    return message;
  },
};

function createBaseAPICall(): APICall {
  return { source: "", request: new Uint8Array(), response: new Uint8Array() };
}

export const APICall = {
  encode(
    message: APICall,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.source !== "") {
      writer.uint32(10).string(message.source);
    }
    if (message.request.length !== 0) {
      writer.uint32(18).bytes(message.request);
    }
    if (message.response.length !== 0) {
      writer.uint32(26).bytes(message.response);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): APICall {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseAPICall();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.source = reader.string();
          break;
        case 2:
          message.request = reader.bytes();
          break;
        case 3:
          message.response = reader.bytes();
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): APICall {
    return {
      source: isSet(object.source) ? String(object.source) : "",
      request: isSet(object.request)
        ? bytesFromBase64(object.request)
        : new Uint8Array(),
      response: isSet(object.response)
        ? bytesFromBase64(object.response)
        : new Uint8Array(),
    };
  },

  toJSON(message: APICall): unknown {
    const obj: any = {};
    message.source !== undefined && (obj.source = message.source);
    message.request !== undefined &&
      (obj.request = base64FromBytes(
        message.request !== undefined ? message.request : new Uint8Array()
      ));
    message.response !== undefined &&
      (obj.response = base64FromBytes(
        message.response !== undefined ? message.response : new Uint8Array()
      ));
    return obj;
  },

  fromPartial(object: DeepPartial<APICall>): APICall {
    const message = createBaseAPICall();
    message.source = object.source ?? "";
    message.request = object.request ?? new Uint8Array();
    message.response = object.response ?? new Uint8Array();
    return message;
  },
};

function createBasePing(): Ping {
  return { id: "", webhookId: "", timestamp: "", message: "" };
}

export const Ping = {
  encode(message: Ping, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.id !== "") {
      writer.uint32(10).string(message.id);
    }
    if (message.webhookId !== "") {
      writer.uint32(18).string(message.webhookId);
    }
    if (message.timestamp !== "") {
      writer.uint32(26).string(message.timestamp);
    }
    if (message.message !== "") {
      writer.uint32(34).string(message.message);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): Ping {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBasePing();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.id = reader.string();
          break;
        case 2:
          message.webhookId = reader.string();
          break;
        case 3:
          message.timestamp = reader.string();
          break;
        case 4:
          message.message = reader.string();
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): Ping {
    return {
      id: isSet(object.id) ? String(object.id) : "",
      webhookId: isSet(object.webhookId) ? String(object.webhookId) : "",
      timestamp: isSet(object.timestamp) ? String(object.timestamp) : "",
      message: isSet(object.message) ? String(object.message) : "",
    };
  },

  toJSON(message: Ping): unknown {
    const obj: any = {};
    message.id !== undefined && (obj.id = message.id);
    message.webhookId !== undefined && (obj.webhookId = message.webhookId);
    message.timestamp !== undefined && (obj.timestamp = message.timestamp);
    message.message !== undefined && (obj.message = message.message);
    return obj;
  },

  fromPartial(object: DeepPartial<Ping>): Ping {
    const message = createBasePing();
    message.id = object.id ?? "";
    message.webhookId = object.webhookId ?? "";
    message.timestamp = object.timestamp ?? "";
    message.message = object.message ?? "";
    return message;
  },
};

function createBaseEGFCreated(): EGFCreated {
  return {
    id: "",
    ecosystemId: "",
    trustRegistry: "",
    governingAuthority: "",
    type: "",
    name: "",
    description: "",
    governanceFramework: "",
  };
}

export const EGFCreated = {
  encode(
    message: EGFCreated,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.id !== "") {
      writer.uint32(10).string(message.id);
    }
    if (message.ecosystemId !== "") {
      writer.uint32(18).string(message.ecosystemId);
    }
    if (message.trustRegistry !== "") {
      writer.uint32(26).string(message.trustRegistry);
    }
    if (message.governingAuthority !== "") {
      writer.uint32(34).string(message.governingAuthority);
    }
    if (message.type !== "") {
      writer.uint32(42).string(message.type);
    }
    if (message.name !== "") {
      writer.uint32(50).string(message.name);
    }
    if (message.description !== "") {
      writer.uint32(58).string(message.description);
    }
    if (message.governanceFramework !== "") {
      writer.uint32(66).string(message.governanceFramework);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): EGFCreated {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseEGFCreated();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.id = reader.string();
          break;
        case 2:
          message.ecosystemId = reader.string();
          break;
        case 3:
          message.trustRegistry = reader.string();
          break;
        case 4:
          message.governingAuthority = reader.string();
          break;
        case 5:
          message.type = reader.string();
          break;
        case 6:
          message.name = reader.string();
          break;
        case 7:
          message.description = reader.string();
          break;
        case 8:
          message.governanceFramework = reader.string();
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): EGFCreated {
    return {
      id: isSet(object.id) ? String(object.id) : "",
      ecosystemId: isSet(object.ecosystemId) ? String(object.ecosystemId) : "",
      trustRegistry: isSet(object.trustRegistry)
        ? String(object.trustRegistry)
        : "",
      governingAuthority: isSet(object.governingAuthority)
        ? String(object.governingAuthority)
        : "",
      type: isSet(object.type) ? String(object.type) : "",
      name: isSet(object.name) ? String(object.name) : "",
      description: isSet(object.description) ? String(object.description) : "",
      governanceFramework: isSet(object.governanceFramework)
        ? String(object.governanceFramework)
        : "",
    };
  },

  toJSON(message: EGFCreated): unknown {
    const obj: any = {};
    message.id !== undefined && (obj.id = message.id);
    message.ecosystemId !== undefined &&
      (obj.ecosystemId = message.ecosystemId);
    message.trustRegistry !== undefined &&
      (obj.trustRegistry = message.trustRegistry);
    message.governingAuthority !== undefined &&
      (obj.governingAuthority = message.governingAuthority);
    message.type !== undefined && (obj.type = message.type);
    message.name !== undefined && (obj.name = message.name);
    message.description !== undefined &&
      (obj.description = message.description);
    message.governanceFramework !== undefined &&
      (obj.governanceFramework = message.governanceFramework);
    return obj;
  },

  fromPartial(object: DeepPartial<EGFCreated>): EGFCreated {
    const message = createBaseEGFCreated();
    message.id = object.id ?? "";
    message.ecosystemId = object.ecosystemId ?? "";
    message.trustRegistry = object.trustRegistry ?? "";
    message.governingAuthority = object.governingAuthority ?? "";
    message.type = object.type ?? "";
    message.name = object.name ?? "";
    message.description = object.description ?? "";
    message.governanceFramework = object.governanceFramework ?? "";
    return message;
  },
};

function createBaseTemplateCreated(): TemplateCreated {
  return { id: "", ecosystemId: "", name: "", type: "", createdBy: "" };
}

export const TemplateCreated = {
  encode(
    message: TemplateCreated,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.id !== "") {
      writer.uint32(10).string(message.id);
    }
    if (message.ecosystemId !== "") {
      writer.uint32(18).string(message.ecosystemId);
    }
    if (message.name !== "") {
      writer.uint32(26).string(message.name);
    }
    if (message.type !== "") {
      writer.uint32(34).string(message.type);
    }
    if (message.createdBy !== "") {
      writer.uint32(42).string(message.createdBy);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): TemplateCreated {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseTemplateCreated();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.id = reader.string();
          break;
        case 2:
          message.ecosystemId = reader.string();
          break;
        case 3:
          message.name = reader.string();
          break;
        case 4:
          message.type = reader.string();
          break;
        case 5:
          message.createdBy = reader.string();
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): TemplateCreated {
    return {
      id: isSet(object.id) ? String(object.id) : "",
      ecosystemId: isSet(object.ecosystemId) ? String(object.ecosystemId) : "",
      name: isSet(object.name) ? String(object.name) : "",
      type: isSet(object.type) ? String(object.type) : "",
      createdBy: isSet(object.createdBy) ? String(object.createdBy) : "",
    };
  },

  toJSON(message: TemplateCreated): unknown {
    const obj: any = {};
    message.id !== undefined && (obj.id = message.id);
    message.ecosystemId !== undefined &&
      (obj.ecosystemId = message.ecosystemId);
    message.name !== undefined && (obj.name = message.name);
    message.type !== undefined && (obj.type = message.type);
    message.createdBy !== undefined && (obj.createdBy = message.createdBy);
    return obj;
  },

  fromPartial(object: DeepPartial<TemplateCreated>): TemplateCreated {
    const message = createBaseTemplateCreated();
    message.id = object.id ?? "";
    message.ecosystemId = object.ecosystemId ?? "";
    message.name = object.name ?? "";
    message.type = object.type ?? "";
    message.createdBy = object.createdBy ?? "";
    return message;
  },
};

function createBaseItemReceived(): ItemReceived {
  return { id: "", received: "" };
}

export const ItemReceived = {
  encode(
    message: ItemReceived,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.id !== "") {
      writer.uint32(10).string(message.id);
    }
    if (message.received !== "") {
      writer.uint32(18).string(message.received);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): ItemReceived {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseItemReceived();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.id = reader.string();
          break;
        case 2:
          message.received = reader.string();
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): ItemReceived {
    return {
      id: isSet(object.id) ? String(object.id) : "",
      received: isSet(object.received) ? String(object.received) : "",
    };
  },

  toJSON(message: ItemReceived): unknown {
    const obj: any = {};
    message.id !== undefined && (obj.id = message.id);
    message.received !== undefined && (obj.received = message.received);
    return obj;
  },

  fromPartial(object: DeepPartial<ItemReceived>): ItemReceived {
    const message = createBaseItemReceived();
    message.id = object.id ?? "";
    message.received = object.received ?? "";
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

const atob: (b64: string) => string =
  globalThis.atob ||
  ((b64) => globalThis.Buffer.from(b64, "base64").toString("binary"));
function bytesFromBase64(b64: string): Uint8Array {
  const bin = atob(b64);
  const arr = new Uint8Array(bin.length);
  for (let i = 0; i < bin.length; ++i) {
    arr[i] = bin.charCodeAt(i);
  }
  return arr;
}

const btoa: (bin: string) => string =
  globalThis.btoa ||
  ((bin) => globalThis.Buffer.from(bin, "binary").toString("base64"));
function base64FromBytes(arr: Uint8Array): string {
  const bin: string[] = [];
  arr.forEach((byte) => {
    bin.push(String.fromCharCode(byte));
  });
  return btoa(bin.join(""));
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

if (_m0.util.Long !== Long) {
  _m0.util.Long = Long as any;
  _m0.configure();
}

function isSet(value: any): boolean {
  return value !== null && value !== undefined;
}
