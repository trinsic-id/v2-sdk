/* eslint-disable */
import _m0 from "protobufjs/minimal";

/** All event types */
export enum EventType {
    PING = 0,
    LOG = 1,
    GOVERNANCE_FRAMEWORK_CREATED = 5,
    GOVERNANCE_FRAMEWORK_MEMBER_REGISTERED = 6,
    GOVERNANCE_FRAMEWORK_MEMBER_UNREGISTERED = 7,
    TEMPLATE_CREATED = 10,
    TEMPLATE_DELETED = 11,
    WALLET_CREATED = 15,
    ITEM_RECEIVED = 16,
    CREDENTIAL_ISSUED = 17,
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
        case "GOVERNANCE_FRAMEWORK_CREATED":
            return EventType.GOVERNANCE_FRAMEWORK_CREATED;
        case 6:
        case "GOVERNANCE_FRAMEWORK_MEMBER_REGISTERED":
            return EventType.GOVERNANCE_FRAMEWORK_MEMBER_REGISTERED;
        case 7:
        case "GOVERNANCE_FRAMEWORK_MEMBER_UNREGISTERED":
            return EventType.GOVERNANCE_FRAMEWORK_MEMBER_UNREGISTERED;
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
        case 17:
        case "CREDENTIAL_ISSUED":
            return EventType.CREDENTIAL_ISSUED;
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
        case EventType.GOVERNANCE_FRAMEWORK_CREATED:
            return "GOVERNANCE_FRAMEWORK_CREATED";
        case EventType.GOVERNANCE_FRAMEWORK_MEMBER_REGISTERED:
            return "GOVERNANCE_FRAMEWORK_MEMBER_REGISTERED";
        case EventType.GOVERNANCE_FRAMEWORK_MEMBER_UNREGISTERED:
            return "GOVERNANCE_FRAMEWORK_MEMBER_UNREGISTERED";
        case EventType.TEMPLATE_CREATED:
            return "TEMPLATE_CREATED";
        case EventType.TEMPLATE_DELETED:
            return "TEMPLATE_DELETED";
        case EventType.WALLET_CREATED:
            return "WALLET_CREATED";
        case EventType.ITEM_RECEIVED:
            return "ITEM_RECEIVED";
        case EventType.CREDENTIAL_ISSUED:
            return "CREDENTIAL_ISSUED";
        case EventType.UNRECOGNIZED:
        default:
            return "UNRECOGNIZED";
    }
}

export interface APICall {
    source?: string;
    request?: Uint8Array;
    response?: Uint8Array;
}

/** Webhook test event */
export interface PingV1 {
    /** UUID of this ping */
    id?: string;
    /** UUID of the webhook receiving the ping */
    webhookId?: string;
    /** Timestamp ping was requested, in ISO 8601 format (ex. `2022-07-07T08:09:10.11Z`) */
    timestamp?: string;
    /** Arbitrary message specified when ping was requested */
    message?: string;
    /** Ecosystem where this event originated, if any. */
    ecosystemId?: string;
}

/** Entity Governance Framework created and attached to ecosystem */
export interface GovernanceFrameworkCreatedV1 {
    /** UUID of the governance framework */
    id?: string;
    /** UUID of the ecosystem that owns this EGF */
    ecosystemId?: string;
    /** Trust registry associated with this EGF */
    trustRegistry?: string;
    /** Wallet ID of the authority for this EGF */
    governingAuthority?: string;
    /** Type of EGF */
    type?: string;
    /** User-friendly name for the EGF */
    name?: string;
    /** Description of the EGF */
    description?: string;
    /** URI for the EGF */
    governanceFramework?: string;
    /** Timestamp event occurred, in ISO 8601 format (ex. `2022-07-07T08:09:10.11Z`) */
    timestamp?: string;
}

/** Template created in ecosystem */
export interface TemplateCreatedV1 {
    /** UUID of the template */
    id?: string;
    /** UUID of the ecosystem that owns this template */
    ecosystemId?: string;
    /** Template name */
    name?: string;
    /** Template type */
    type?: string;
    /** WalletID that created the template */
    createdBy?: string;
    /** Timestamp event occurred, in ISO 8601 format (ex. `2022-07-07T08:09:10.11Z`) */
    timestamp?: string;
}

/** Item inserted into wallet */
export interface ItemReceivedV1 {
    /** UUID of the new item */
    id?: string;
    /** Timestamp when the item was received, in ISO 8601 format (ex. `2022-07-07T08:09:10.11Z`) */
    received?: string;
    /** ID of wallet */
    walletId?: string;
    /** Ecosystem where this event originated, if any. */
    ecosystemId?: string;
}

function createBaseAPICall(): APICall {
    return {
        source: "",
        request: new Uint8Array(),
        response: new Uint8Array(),
    };
}

export const APICall = {
    encode(
        message: APICall,
        writer: _m0.Writer = _m0.Writer.create()
    ): _m0.Writer {
        if (message.source !== undefined && message.source !== "") {
            writer.uint32(10).string(message.source);
        }
        if (message.request !== undefined && message.request.length !== 0) {
            writer.uint32(18).bytes(message.request);
        }
        if (message.response !== undefined && message.response.length !== 0) {
            writer.uint32(26).bytes(message.response);
        }
        return writer;
    },

    decode(input: _m0.Reader | Uint8Array, length?: number): APICall {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
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
                message.request !== undefined
                    ? message.request
                    : new Uint8Array()
            ));
        message.response !== undefined &&
            (obj.response = base64FromBytes(
                message.response !== undefined
                    ? message.response
                    : new Uint8Array()
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

function createBasePingV1(): PingV1 {
    return {
        id: "",
        webhookId: "",
        timestamp: "",
        message: "",
        ecosystemId: "",
    };
}

export const PingV1 = {
    encode(
        message: PingV1,
        writer: _m0.Writer = _m0.Writer.create()
    ): _m0.Writer {
        if (message.id !== undefined && message.id !== "") {
            writer.uint32(10).string(message.id);
        }
        if (message.webhookId !== undefined && message.webhookId !== "") {
            writer.uint32(18).string(message.webhookId);
        }
        if (message.timestamp !== undefined && message.timestamp !== "") {
            writer.uint32(26).string(message.timestamp);
        }
        if (message.message !== undefined && message.message !== "") {
            writer.uint32(34).string(message.message);
        }
        if (message.ecosystemId !== undefined && message.ecosystemId !== "") {
            writer.uint32(42).string(message.ecosystemId);
        }
        return writer;
    },

    decode(input: _m0.Reader | Uint8Array, length?: number): PingV1 {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBasePingV1();
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
                case 5:
                    message.ecosystemId = reader.string();
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },

    fromJSON(object: any): PingV1 {
        return {
            id: isSet(object.id) ? String(object.id) : "",
            webhookId: isSet(object.webhookId) ? String(object.webhookId) : "",
            timestamp: isSet(object.timestamp) ? String(object.timestamp) : "",
            message: isSet(object.message) ? String(object.message) : "",
            ecosystemId: isSet(object.ecosystemId)
                ? String(object.ecosystemId)
                : "",
        };
    },

    toJSON(message: PingV1): unknown {
        const obj: any = {};
        message.id !== undefined && (obj.id = message.id);
        message.webhookId !== undefined && (obj.webhookId = message.webhookId);
        message.timestamp !== undefined && (obj.timestamp = message.timestamp);
        message.message !== undefined && (obj.message = message.message);
        message.ecosystemId !== undefined &&
            (obj.ecosystemId = message.ecosystemId);
        return obj;
    },

    fromPartial(object: DeepPartial<PingV1>): PingV1 {
        const message = createBasePingV1();
        message.id = object.id ?? "";
        message.webhookId = object.webhookId ?? "";
        message.timestamp = object.timestamp ?? "";
        message.message = object.message ?? "";
        message.ecosystemId = object.ecosystemId ?? "";
        return message;
    },
};

function createBaseGovernanceFrameworkCreatedV1(): GovernanceFrameworkCreatedV1 {
    return {
        id: "",
        ecosystemId: "",
        trustRegistry: "",
        governingAuthority: "",
        type: "",
        name: "",
        description: "",
        governanceFramework: "",
        timestamp: "",
    };
}

export const GovernanceFrameworkCreatedV1 = {
    encode(
        message: GovernanceFrameworkCreatedV1,
        writer: _m0.Writer = _m0.Writer.create()
    ): _m0.Writer {
        if (message.id !== undefined && message.id !== "") {
            writer.uint32(10).string(message.id);
        }
        if (message.ecosystemId !== undefined && message.ecosystemId !== "") {
            writer.uint32(18).string(message.ecosystemId);
        }
        if (
            message.trustRegistry !== undefined &&
            message.trustRegistry !== ""
        ) {
            writer.uint32(26).string(message.trustRegistry);
        }
        if (
            message.governingAuthority !== undefined &&
            message.governingAuthority !== ""
        ) {
            writer.uint32(34).string(message.governingAuthority);
        }
        if (message.type !== undefined && message.type !== "") {
            writer.uint32(42).string(message.type);
        }
        if (message.name !== undefined && message.name !== "") {
            writer.uint32(50).string(message.name);
        }
        if (message.description !== undefined && message.description !== "") {
            writer.uint32(58).string(message.description);
        }
        if (
            message.governanceFramework !== undefined &&
            message.governanceFramework !== ""
        ) {
            writer.uint32(66).string(message.governanceFramework);
        }
        if (message.timestamp !== undefined && message.timestamp !== "") {
            writer.uint32(74).string(message.timestamp);
        }
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number
    ): GovernanceFrameworkCreatedV1 {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseGovernanceFrameworkCreatedV1();
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
                case 9:
                    message.timestamp = reader.string();
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },

    fromJSON(object: any): GovernanceFrameworkCreatedV1 {
        return {
            id: isSet(object.id) ? String(object.id) : "",
            ecosystemId: isSet(object.ecosystemId)
                ? String(object.ecosystemId)
                : "",
            trustRegistry: isSet(object.trustRegistry)
                ? String(object.trustRegistry)
                : "",
            governingAuthority: isSet(object.governingAuthority)
                ? String(object.governingAuthority)
                : "",
            type: isSet(object.type) ? String(object.type) : "",
            name: isSet(object.name) ? String(object.name) : "",
            description: isSet(object.description)
                ? String(object.description)
                : "",
            governanceFramework: isSet(object.governanceFramework)
                ? String(object.governanceFramework)
                : "",
            timestamp: isSet(object.timestamp) ? String(object.timestamp) : "",
        };
    },

    toJSON(message: GovernanceFrameworkCreatedV1): unknown {
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
        message.timestamp !== undefined && (obj.timestamp = message.timestamp);
        return obj;
    },

    fromPartial(
        object: DeepPartial<GovernanceFrameworkCreatedV1>
    ): GovernanceFrameworkCreatedV1 {
        const message = createBaseGovernanceFrameworkCreatedV1();
        message.id = object.id ?? "";
        message.ecosystemId = object.ecosystemId ?? "";
        message.trustRegistry = object.trustRegistry ?? "";
        message.governingAuthority = object.governingAuthority ?? "";
        message.type = object.type ?? "";
        message.name = object.name ?? "";
        message.description = object.description ?? "";
        message.governanceFramework = object.governanceFramework ?? "";
        message.timestamp = object.timestamp ?? "";
        return message;
    },
};

function createBaseTemplateCreatedV1(): TemplateCreatedV1 {
    return {
        id: "",
        ecosystemId: "",
        name: "",
        type: "",
        createdBy: "",
        timestamp: "",
    };
}

export const TemplateCreatedV1 = {
    encode(
        message: TemplateCreatedV1,
        writer: _m0.Writer = _m0.Writer.create()
    ): _m0.Writer {
        if (message.id !== undefined && message.id !== "") {
            writer.uint32(10).string(message.id);
        }
        if (message.ecosystemId !== undefined && message.ecosystemId !== "") {
            writer.uint32(18).string(message.ecosystemId);
        }
        if (message.name !== undefined && message.name !== "") {
            writer.uint32(26).string(message.name);
        }
        if (message.type !== undefined && message.type !== "") {
            writer.uint32(34).string(message.type);
        }
        if (message.createdBy !== undefined && message.createdBy !== "") {
            writer.uint32(42).string(message.createdBy);
        }
        if (message.timestamp !== undefined && message.timestamp !== "") {
            writer.uint32(50).string(message.timestamp);
        }
        return writer;
    },

    decode(input: _m0.Reader | Uint8Array, length?: number): TemplateCreatedV1 {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseTemplateCreatedV1();
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
                case 6:
                    message.timestamp = reader.string();
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },

    fromJSON(object: any): TemplateCreatedV1 {
        return {
            id: isSet(object.id) ? String(object.id) : "",
            ecosystemId: isSet(object.ecosystemId)
                ? String(object.ecosystemId)
                : "",
            name: isSet(object.name) ? String(object.name) : "",
            type: isSet(object.type) ? String(object.type) : "",
            createdBy: isSet(object.createdBy) ? String(object.createdBy) : "",
            timestamp: isSet(object.timestamp) ? String(object.timestamp) : "",
        };
    },

    toJSON(message: TemplateCreatedV1): unknown {
        const obj: any = {};
        message.id !== undefined && (obj.id = message.id);
        message.ecosystemId !== undefined &&
            (obj.ecosystemId = message.ecosystemId);
        message.name !== undefined && (obj.name = message.name);
        message.type !== undefined && (obj.type = message.type);
        message.createdBy !== undefined && (obj.createdBy = message.createdBy);
        message.timestamp !== undefined && (obj.timestamp = message.timestamp);
        return obj;
    },

    fromPartial(object: DeepPartial<TemplateCreatedV1>): TemplateCreatedV1 {
        const message = createBaseTemplateCreatedV1();
        message.id = object.id ?? "";
        message.ecosystemId = object.ecosystemId ?? "";
        message.name = object.name ?? "";
        message.type = object.type ?? "";
        message.createdBy = object.createdBy ?? "";
        message.timestamp = object.timestamp ?? "";
        return message;
    },
};

function createBaseItemReceivedV1(): ItemReceivedV1 {
    return { id: "", received: "", walletId: "", ecosystemId: "" };
}

export const ItemReceivedV1 = {
    encode(
        message: ItemReceivedV1,
        writer: _m0.Writer = _m0.Writer.create()
    ): _m0.Writer {
        if (message.id !== undefined && message.id !== "") {
            writer.uint32(10).string(message.id);
        }
        if (message.received !== undefined && message.received !== "") {
            writer.uint32(18).string(message.received);
        }
        if (message.walletId !== undefined && message.walletId !== "") {
            writer.uint32(26).string(message.walletId);
        }
        if (message.ecosystemId !== undefined && message.ecosystemId !== "") {
            writer.uint32(34).string(message.ecosystemId);
        }
        return writer;
    },

    decode(input: _m0.Reader | Uint8Array, length?: number): ItemReceivedV1 {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseItemReceivedV1();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.id = reader.string();
                    break;
                case 2:
                    message.received = reader.string();
                    break;
                case 3:
                    message.walletId = reader.string();
                    break;
                case 4:
                    message.ecosystemId = reader.string();
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },

    fromJSON(object: any): ItemReceivedV1 {
        return {
            id: isSet(object.id) ? String(object.id) : "",
            received: isSet(object.received) ? String(object.received) : "",
            walletId: isSet(object.walletId) ? String(object.walletId) : "",
            ecosystemId: isSet(object.ecosystemId)
                ? String(object.ecosystemId)
                : "",
        };
    },

    toJSON(message: ItemReceivedV1): unknown {
        const obj: any = {};
        message.id !== undefined && (obj.id = message.id);
        message.received !== undefined && (obj.received = message.received);
        message.walletId !== undefined && (obj.walletId = message.walletId);
        message.ecosystemId !== undefined &&
            (obj.ecosystemId = message.ecosystemId);
        return obj;
    },

    fromPartial(object: DeepPartial<ItemReceivedV1>): ItemReceivedV1 {
        const message = createBaseItemReceivedV1();
        message.id = object.id ?? "";
        message.received = object.received ?? "";
        message.walletId = object.walletId ?? "";
        message.ecosystemId = object.ecosystemId ?? "";
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

function isSet(value: any): boolean {
    return value !== null && value !== undefined;
}
