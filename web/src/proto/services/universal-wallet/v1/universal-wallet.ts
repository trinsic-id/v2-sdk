/* eslint-disable */
import _m0 from "protobufjs/minimal";

/** Request to search items in wallet */
export interface SearchRequest {
    /** SQL Query to execute against items in wallet */
    query?: string;
    /**
     * Token provided by previous `SearchResponse`
     * if more data is available for query
     */
    continuationToken?: string;
}

/** Response to `SearchRequest` */
export interface SearchResponse {
    /** Array of query results, as JSON strings */
    items?: string[];
    /** Whether more results are available for this query via `continuation_token` */
    hasMore?: boolean;
    /** Token to fetch next set of results via `SearchRequest` */
    continuationToken?: string;
}

/** Request to fetch an item from wallet */
export interface GetItemRequest {
    /** ID of item in wallet */
    itemId?: string;
}

/** Response to `GetItemRequest` */
export interface GetItemResponse {
    /** Item data as a JSON string */
    itemJson?: string;
    /** Type of item specified when item was inserted into wallet */
    itemType?: string;
}

/** Request to update item in wallet */
export interface UpdateItemRequest {
    /** ID of item in wallet */
    itemId?: string;
    /** Item type (ex. "VerifiableCredential") */
    itemType?: string;
}

/** Response to `UpdateItemRequest` */
export interface UpdateItemResponse {}

/** Request to insert a JSON document into a wallet */
export interface InsertItemRequest {
    /** Document to insert; must be stringified JSON */
    itemJson?: string;
    /** Item type (ex. "VerifiableCredential") */
    itemType?: string;
}

/** Response to `InsertItemRequest` */
export interface InsertItemResponse {
    /** ID of item inserted into wallet */
    itemId?: string;
}

/** Request to delete an item in a wallet */
export interface DeleteItemRequest {
    /** ID of item to delete */
    itemId?: string;
}

/** Response to `DeleteItemRequest` */
export interface DeleteItemResponse {}

function createBaseSearchRequest(): SearchRequest {
    return { query: "", continuationToken: "" };
}

export const SearchRequest = {
    encode(
        message: SearchRequest,
        writer: _m0.Writer = _m0.Writer.create()
    ): _m0.Writer {
        if (message.query !== undefined && message.query !== "") {
            writer.uint32(10).string(message.query);
        }
        if (
            message.continuationToken !== undefined &&
            message.continuationToken !== ""
        ) {
            writer.uint32(18).string(message.continuationToken);
        }
        return writer;
    },

    decode(input: _m0.Reader | Uint8Array, length?: number): SearchRequest {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseSearchRequest();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.query = reader.string();
                    break;
                case 2:
                    message.continuationToken = reader.string();
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },

    fromJSON(object: any): SearchRequest {
        return {
            query: isSet(object.query) ? String(object.query) : "",
            continuationToken: isSet(object.continuationToken)
                ? String(object.continuationToken)
                : "",
        };
    },

    toJSON(message: SearchRequest): unknown {
        const obj: any = {};
        message.query !== undefined && (obj.query = message.query);
        message.continuationToken !== undefined &&
            (obj.continuationToken = message.continuationToken);
        return obj;
    },

    fromPartial(object: DeepPartial<SearchRequest>): SearchRequest {
        const message = createBaseSearchRequest();
        message.query = object.query ?? "";
        message.continuationToken = object.continuationToken ?? "";
        return message;
    },
};

function createBaseSearchResponse(): SearchResponse {
    return { items: [], hasMore: false, continuationToken: "" };
}

export const SearchResponse = {
    encode(
        message: SearchResponse,
        writer: _m0.Writer = _m0.Writer.create()
    ): _m0.Writer {
        if (message.items !== undefined && message.items.length !== 0) {
            for (const v of message.items) {
                writer.uint32(10).string(v!);
            }
        }
        if (message.hasMore === true) {
            writer.uint32(16).bool(message.hasMore);
        }
        if (
            message.continuationToken !== undefined &&
            message.continuationToken !== ""
        ) {
            writer.uint32(34).string(message.continuationToken);
        }
        return writer;
    },

    decode(input: _m0.Reader | Uint8Array, length?: number): SearchResponse {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseSearchResponse();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.items!.push(reader.string());
                    break;
                case 2:
                    message.hasMore = reader.bool();
                    break;
                case 4:
                    message.continuationToken = reader.string();
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },

    fromJSON(object: any): SearchResponse {
        return {
            items: Array.isArray(object?.items)
                ? object.items.map((e: any) => String(e))
                : [],
            hasMore: isSet(object.hasMore) ? Boolean(object.hasMore) : false,
            continuationToken: isSet(object.continuationToken)
                ? String(object.continuationToken)
                : "",
        };
    },

    toJSON(message: SearchResponse): unknown {
        const obj: any = {};
        if (message.items) {
            obj.items = message.items.map((e) => e);
        } else {
            obj.items = [];
        }
        message.hasMore !== undefined && (obj.hasMore = message.hasMore);
        message.continuationToken !== undefined &&
            (obj.continuationToken = message.continuationToken);
        return obj;
    },

    fromPartial(object: DeepPartial<SearchResponse>): SearchResponse {
        const message = createBaseSearchResponse();
        message.items = object.items?.map((e) => e) || [];
        message.hasMore = object.hasMore ?? false;
        message.continuationToken = object.continuationToken ?? "";
        return message;
    },
};

function createBaseGetItemRequest(): GetItemRequest {
    return { itemId: "" };
}

export const GetItemRequest = {
    encode(
        message: GetItemRequest,
        writer: _m0.Writer = _m0.Writer.create()
    ): _m0.Writer {
        if (message.itemId !== undefined && message.itemId !== "") {
            writer.uint32(10).string(message.itemId);
        }
        return writer;
    },

    decode(input: _m0.Reader | Uint8Array, length?: number): GetItemRequest {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseGetItemRequest();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.itemId = reader.string();
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },

    fromJSON(object: any): GetItemRequest {
        return {
            itemId: isSet(object.itemId) ? String(object.itemId) : "",
        };
    },

    toJSON(message: GetItemRequest): unknown {
        const obj: any = {};
        message.itemId !== undefined && (obj.itemId = message.itemId);
        return obj;
    },

    fromPartial(object: DeepPartial<GetItemRequest>): GetItemRequest {
        const message = createBaseGetItemRequest();
        message.itemId = object.itemId ?? "";
        return message;
    },
};

function createBaseGetItemResponse(): GetItemResponse {
    return { itemJson: "", itemType: "" };
}

export const GetItemResponse = {
    encode(
        message: GetItemResponse,
        writer: _m0.Writer = _m0.Writer.create()
    ): _m0.Writer {
        if (message.itemJson !== undefined && message.itemJson !== "") {
            writer.uint32(10).string(message.itemJson);
        }
        if (message.itemType !== undefined && message.itemType !== "") {
            writer.uint32(18).string(message.itemType);
        }
        return writer;
    },

    decode(input: _m0.Reader | Uint8Array, length?: number): GetItemResponse {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseGetItemResponse();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.itemJson = reader.string();
                    break;
                case 2:
                    message.itemType = reader.string();
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },

    fromJSON(object: any): GetItemResponse {
        return {
            itemJson: isSet(object.itemJson) ? String(object.itemJson) : "",
            itemType: isSet(object.itemType) ? String(object.itemType) : "",
        };
    },

    toJSON(message: GetItemResponse): unknown {
        const obj: any = {};
        message.itemJson !== undefined && (obj.itemJson = message.itemJson);
        message.itemType !== undefined && (obj.itemType = message.itemType);
        return obj;
    },

    fromPartial(object: DeepPartial<GetItemResponse>): GetItemResponse {
        const message = createBaseGetItemResponse();
        message.itemJson = object.itemJson ?? "";
        message.itemType = object.itemType ?? "";
        return message;
    },
};

function createBaseUpdateItemRequest(): UpdateItemRequest {
    return { itemId: "", itemType: "" };
}

export const UpdateItemRequest = {
    encode(
        message: UpdateItemRequest,
        writer: _m0.Writer = _m0.Writer.create()
    ): _m0.Writer {
        if (message.itemId !== undefined && message.itemId !== "") {
            writer.uint32(10).string(message.itemId);
        }
        if (message.itemType !== undefined && message.itemType !== "") {
            writer.uint32(18).string(message.itemType);
        }
        return writer;
    },

    decode(input: _m0.Reader | Uint8Array, length?: number): UpdateItemRequest {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseUpdateItemRequest();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.itemId = reader.string();
                    break;
                case 2:
                    message.itemType = reader.string();
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },

    fromJSON(object: any): UpdateItemRequest {
        return {
            itemId: isSet(object.itemId) ? String(object.itemId) : "",
            itemType: isSet(object.itemType) ? String(object.itemType) : "",
        };
    },

    toJSON(message: UpdateItemRequest): unknown {
        const obj: any = {};
        message.itemId !== undefined && (obj.itemId = message.itemId);
        message.itemType !== undefined && (obj.itemType = message.itemType);
        return obj;
    },

    fromPartial(object: DeepPartial<UpdateItemRequest>): UpdateItemRequest {
        const message = createBaseUpdateItemRequest();
        message.itemId = object.itemId ?? "";
        message.itemType = object.itemType ?? "";
        return message;
    },
};

function createBaseUpdateItemResponse(): UpdateItemResponse {
    return {};
}

export const UpdateItemResponse = {
    encode(
        _: UpdateItemResponse,
        writer: _m0.Writer = _m0.Writer.create()
    ): _m0.Writer {
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number
    ): UpdateItemResponse {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseUpdateItemResponse();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },

    fromJSON(_: any): UpdateItemResponse {
        return {};
    },

    toJSON(_: UpdateItemResponse): unknown {
        const obj: any = {};
        return obj;
    },

    fromPartial(_: DeepPartial<UpdateItemResponse>): UpdateItemResponse {
        const message = createBaseUpdateItemResponse();
        return message;
    },
};

function createBaseInsertItemRequest(): InsertItemRequest {
    return { itemJson: "", itemType: "" };
}

export const InsertItemRequest = {
    encode(
        message: InsertItemRequest,
        writer: _m0.Writer = _m0.Writer.create()
    ): _m0.Writer {
        if (message.itemJson !== undefined && message.itemJson !== "") {
            writer.uint32(10).string(message.itemJson);
        }
        if (message.itemType !== undefined && message.itemType !== "") {
            writer.uint32(18).string(message.itemType);
        }
        return writer;
    },

    decode(input: _m0.Reader | Uint8Array, length?: number): InsertItemRequest {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseInsertItemRequest();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.itemJson = reader.string();
                    break;
                case 2:
                    message.itemType = reader.string();
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },

    fromJSON(object: any): InsertItemRequest {
        return {
            itemJson: isSet(object.itemJson) ? String(object.itemJson) : "",
            itemType: isSet(object.itemType) ? String(object.itemType) : "",
        };
    },

    toJSON(message: InsertItemRequest): unknown {
        const obj: any = {};
        message.itemJson !== undefined && (obj.itemJson = message.itemJson);
        message.itemType !== undefined && (obj.itemType = message.itemType);
        return obj;
    },

    fromPartial(object: DeepPartial<InsertItemRequest>): InsertItemRequest {
        const message = createBaseInsertItemRequest();
        message.itemJson = object.itemJson ?? "";
        message.itemType = object.itemType ?? "";
        return message;
    },
};

function createBaseInsertItemResponse(): InsertItemResponse {
    return { itemId: "" };
}

export const InsertItemResponse = {
    encode(
        message: InsertItemResponse,
        writer: _m0.Writer = _m0.Writer.create()
    ): _m0.Writer {
        if (message.itemId !== undefined && message.itemId !== "") {
            writer.uint32(18).string(message.itemId);
        }
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number
    ): InsertItemResponse {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseInsertItemResponse();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 2:
                    message.itemId = reader.string();
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },

    fromJSON(object: any): InsertItemResponse {
        return {
            itemId: isSet(object.itemId) ? String(object.itemId) : "",
        };
    },

    toJSON(message: InsertItemResponse): unknown {
        const obj: any = {};
        message.itemId !== undefined && (obj.itemId = message.itemId);
        return obj;
    },

    fromPartial(object: DeepPartial<InsertItemResponse>): InsertItemResponse {
        const message = createBaseInsertItemResponse();
        message.itemId = object.itemId ?? "";
        return message;
    },
};

function createBaseDeleteItemRequest(): DeleteItemRequest {
    return { itemId: "" };
}

export const DeleteItemRequest = {
    encode(
        message: DeleteItemRequest,
        writer: _m0.Writer = _m0.Writer.create()
    ): _m0.Writer {
        if (message.itemId !== undefined && message.itemId !== "") {
            writer.uint32(10).string(message.itemId);
        }
        return writer;
    },

    decode(input: _m0.Reader | Uint8Array, length?: number): DeleteItemRequest {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseDeleteItemRequest();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.itemId = reader.string();
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },

    fromJSON(object: any): DeleteItemRequest {
        return {
            itemId: isSet(object.itemId) ? String(object.itemId) : "",
        };
    },

    toJSON(message: DeleteItemRequest): unknown {
        const obj: any = {};
        message.itemId !== undefined && (obj.itemId = message.itemId);
        return obj;
    },

    fromPartial(object: DeepPartial<DeleteItemRequest>): DeleteItemRequest {
        const message = createBaseDeleteItemRequest();
        message.itemId = object.itemId ?? "";
        return message;
    },
};

function createBaseDeleteItemResponse(): DeleteItemResponse {
    return {};
}

export const DeleteItemResponse = {
    encode(
        _: DeleteItemResponse,
        writer: _m0.Writer = _m0.Writer.create()
    ): _m0.Writer {
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number
    ): DeleteItemResponse {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseDeleteItemResponse();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },

    fromJSON(_: any): DeleteItemResponse {
        return {};
    },

    toJSON(_: DeleteItemResponse): unknown {
        const obj: any = {};
        return obj;
    },

    fromPartial(_: DeepPartial<DeleteItemResponse>): DeleteItemResponse {
        const message = createBaseDeleteItemResponse();
        return message;
    },
};

export type UniversalWalletDefinition = typeof UniversalWalletDefinition;
export const UniversalWalletDefinition = {
    name: "UniversalWallet",
    fullName: "services.universalwallet.v1.UniversalWallet",
    methods: {
        /** Retrieve an item from the wallet with a given item identifier */
        getItem: {
            name: "GetItem",
            requestType: GetItemRequest,
            requestStream: false,
            responseType: GetItemResponse,
            responseStream: false,
            options: {},
        },
        /** Search the wallet using a SQL syntax */
        search: {
            name: "Search",
            requestType: SearchRequest,
            requestStream: false,
            responseType: SearchResponse,
            responseStream: false,
            options: {},
        },
        /** Insert an item into the wallet */
        insertItem: {
            name: "InsertItem",
            requestType: InsertItemRequest,
            requestStream: false,
            responseType: InsertItemResponse,
            responseStream: false,
            options: {},
        },
        /** Update an item in the wallet */
        updateItem: {
            name: "UpdateItem",
            requestType: UpdateItemRequest,
            requestStream: false,
            responseType: UpdateItemResponse,
            responseStream: false,
            options: {},
        },
        /** Delete an item from the wallet permanently */
        deleteItem: {
            name: "DeleteItem",
            requestType: DeleteItemRequest,
            requestStream: false,
            responseType: DeleteItemResponse,
            responseStream: false,
            options: {},
        },
    },
} as const;

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
