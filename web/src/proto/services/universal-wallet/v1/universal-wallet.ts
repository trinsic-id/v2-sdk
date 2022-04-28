/* eslint-disable */
import Long from "long";
import * as _m0 from "protobufjs/minimal";

/** Search request object */
export interface SearchRequest {
  query: string;
  continuationToken: string;
}

/** Search response object */
export interface SearchResponse {
  items: string[];
  hasMore: boolean;
  /** int32 count = 3; */
  continuationToken: string;
}

/** Get item request object */
export interface GetItemRequest {
  /** The item identifier */
  itemId: string;
}

/** Get item response object */
export interface GetItemResponse {
  /** The item data represented as stringified JSON */
  itemJson: string;
  /** User set item type that described the content of this item */
  itemType: string;
}

/** Update item request object */
export interface UpdateItemRequest {
  /** The item identifier */
  itemId: string;
  /** The item type that described the content of this item */
  itemType: string;
}

/** Update item response object */
export interface UpdateItemResponse {}

/** Insert item request */
export interface InsertItemRequest {
  /** the document to insert as stringified json */
  itemJson: string;
  /** optional item type ex. "VerifiableCredential" */
  itemType: string;
}

/** Insert item response */
export interface InsertItemResponse {
  /** The item identifier of the inserted record */
  itemId: string;
}

/** Delete item request */
export interface DeleteItemRequest {
  /** item identifier of the record to delete */
  itemId: string;
}

/** Delete item response */
export interface DeleteItemResponse {}

function createBaseSearchRequest(): SearchRequest {
  return { query: "", continuationToken: "" };
}

export const SearchRequest = {
  encode(
    message: SearchRequest,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.query !== "") {
      writer.uint32(10).string(message.query);
    }
    if (message.continuationToken !== "") {
      writer.uint32(18).string(message.continuationToken);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): SearchRequest {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
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
    for (const v of message.items) {
      writer.uint32(10).string(v!);
    }
    if (message.hasMore === true) {
      writer.uint32(16).bool(message.hasMore);
    }
    if (message.continuationToken !== "") {
      writer.uint32(34).string(message.continuationToken);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): SearchResponse {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseSearchResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.items.push(reader.string());
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
    if (message.itemId !== "") {
      writer.uint32(10).string(message.itemId);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): GetItemRequest {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
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
    if (message.itemJson !== "") {
      writer.uint32(10).string(message.itemJson);
    }
    if (message.itemType !== "") {
      writer.uint32(18).string(message.itemType);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): GetItemResponse {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
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
    if (message.itemId !== "") {
      writer.uint32(10).string(message.itemId);
    }
    if (message.itemType !== "") {
      writer.uint32(18).string(message.itemType);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): UpdateItemRequest {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
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

  decode(input: _m0.Reader | Uint8Array, length?: number): UpdateItemResponse {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
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
    if (message.itemJson !== "") {
      writer.uint32(10).string(message.itemJson);
    }
    if (message.itemType !== "") {
      writer.uint32(18).string(message.itemType);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): InsertItemRequest {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
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
    if (message.itemId !== "") {
      writer.uint32(18).string(message.itemId);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): InsertItemResponse {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
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
    if (message.itemId !== "") {
      writer.uint32(10).string(message.itemId);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): DeleteItemRequest {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
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

  decode(input: _m0.Reader | Uint8Array, length?: number): DeleteItemResponse {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
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

  fromPartial(_: DeepPartial<DeleteItemResponse>): DeleteItemResponse {
    const message = createBaseDeleteItemResponse();
    return message;
  },
};

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
    /** Search the wallet using a SQL-like syntax */
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
    /** Insert an item into the wallet */
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

if (_m0.util.Long !== Long) {
  _m0.util.Long = Long as any;
  _m0.configure();
}
