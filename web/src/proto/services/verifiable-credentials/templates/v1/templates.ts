/* eslint-disable */
import Long from "long";
import * as _m0 from "protobufjs/minimal";

export enum FieldType {
  STRING = 0,
  NUMBER = 1,
  BOOL = 2,
  DATETIME = 4,
  UNRECOGNIZED = -1,
}

export function fieldTypeFromJSON(object: any): FieldType {
  switch (object) {
    case 0:
    case "STRING":
      return FieldType.STRING;
    case 1:
    case "NUMBER":
      return FieldType.NUMBER;
    case 2:
    case "BOOL":
      return FieldType.BOOL;
    case 4:
    case "DATETIME":
      return FieldType.DATETIME;
    case -1:
    case "UNRECOGNIZED":
    default:
      return FieldType.UNRECOGNIZED;
  }
}

export function fieldTypeToJSON(object: FieldType): string {
  switch (object) {
    case FieldType.STRING:
      return "STRING";
    case FieldType.NUMBER:
      return "NUMBER";
    case FieldType.BOOL:
      return "BOOL";
    case FieldType.DATETIME:
      return "DATETIME";
    default:
      return "UNKNOWN";
  }
}

export interface GetCredentialTemplateRequest {
  id: string;
}

export interface GetCredentialTemplateResponse {
  template: TemplateData | undefined;
}

export interface SearchCredentialTemplatesRequest {
  /** SELECT * FROM c WHERE c.name = 'Diploma' */
  query: string;
  continuationToken: string;
}

export interface SearchCredentialTemplatesResponse {
  itemsJson: string;
  hasMore: boolean;
  count: number;
  continuationToken: string;
}

export interface ListCredentialTemplatesRequest {
  /** SELECT * FROM c WHERE c.name = 'Diploma' */
  query: string;
  continuationToken: string;
}

export interface ListCredentialTemplatesResponse {
  templates: TemplateData[];
  hasMoreResults: boolean;
  continuationToken: string;
}

export interface DeleteCredentialTemplateRequest {
  id: string;
}

export interface DeleteCredentialTemplateResponse {}

/** Request to create new template */
export interface CreateCredentialTemplateRequest {
  name: string;
  fields: { [key: string]: TemplateField };
  allowAdditionalFields: boolean;
}

export interface CreateCredentialTemplateRequest_FieldsEntry {
  key: string;
  value: TemplateField | undefined;
}

export interface CreateCredentialTemplateResponse {
  data: TemplateData | undefined;
}

export interface TemplateField {
  description: string;
  optional: boolean;
  type: FieldType;
}

export interface GetTemplateRequest {
  id: string;
}

export interface GetTemplateResponse {
  data: TemplateData | undefined;
}

export interface ListTemplatesRequest {}

export interface ListTemplatesResponse {
  templates: TemplateData[];
}

export interface TemplateData {
  id: string;
  name: string;
  version: number;
  fields: { [key: string]: TemplateField };
  allowAdditionalFields: boolean;
  schemaUri: string;
  contextUri: string;
  ecosystemId: string;
  type: string;
  createdBy: string;
}

export interface TemplateData_FieldsEntry {
  key: string;
  value: TemplateField | undefined;
}

function createBaseGetCredentialTemplateRequest(): GetCredentialTemplateRequest {
  return { id: "" };
}

export const GetCredentialTemplateRequest = {
  encode(
    message: GetCredentialTemplateRequest,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.id !== "") {
      writer.uint32(10).string(message.id);
    }
    return writer;
  },

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): GetCredentialTemplateRequest {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseGetCredentialTemplateRequest();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.id = reader.string();
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): GetCredentialTemplateRequest {
    return {
      id: isSet(object.id) ? String(object.id) : "",
    };
  },

  toJSON(message: GetCredentialTemplateRequest): unknown {
    const obj: any = {};
    message.id !== undefined && (obj.id = message.id);
    return obj;
  },

  fromPartial(
    object: DeepPartial<GetCredentialTemplateRequest>
  ): GetCredentialTemplateRequest {
    const message = createBaseGetCredentialTemplateRequest();
    message.id = object.id ?? "";
    return message;
  },
};

function createBaseGetCredentialTemplateResponse(): GetCredentialTemplateResponse {
  return { template: undefined };
}

export const GetCredentialTemplateResponse = {
  encode(
    message: GetCredentialTemplateResponse,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.template !== undefined) {
      TemplateData.encode(message.template, writer.uint32(10).fork()).ldelim();
    }
    return writer;
  },

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): GetCredentialTemplateResponse {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseGetCredentialTemplateResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.template = TemplateData.decode(reader, reader.uint32());
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): GetCredentialTemplateResponse {
    return {
      template: isSet(object.template)
        ? TemplateData.fromJSON(object.template)
        : undefined,
    };
  },

  toJSON(message: GetCredentialTemplateResponse): unknown {
    const obj: any = {};
    message.template !== undefined &&
      (obj.template = message.template
        ? TemplateData.toJSON(message.template)
        : undefined);
    return obj;
  },

  fromPartial(
    object: DeepPartial<GetCredentialTemplateResponse>
  ): GetCredentialTemplateResponse {
    const message = createBaseGetCredentialTemplateResponse();
    message.template =
      object.template !== undefined && object.template !== null
        ? TemplateData.fromPartial(object.template)
        : undefined;
    return message;
  },
};

function createBaseSearchCredentialTemplatesRequest(): SearchCredentialTemplatesRequest {
  return { query: "", continuationToken: "" };
}

export const SearchCredentialTemplatesRequest = {
  encode(
    message: SearchCredentialTemplatesRequest,
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

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): SearchCredentialTemplatesRequest {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseSearchCredentialTemplatesRequest();
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

  fromJSON(object: any): SearchCredentialTemplatesRequest {
    return {
      query: isSet(object.query) ? String(object.query) : "",
      continuationToken: isSet(object.continuationToken)
        ? String(object.continuationToken)
        : "",
    };
  },

  toJSON(message: SearchCredentialTemplatesRequest): unknown {
    const obj: any = {};
    message.query !== undefined && (obj.query = message.query);
    message.continuationToken !== undefined &&
      (obj.continuationToken = message.continuationToken);
    return obj;
  },

  fromPartial(
    object: DeepPartial<SearchCredentialTemplatesRequest>
  ): SearchCredentialTemplatesRequest {
    const message = createBaseSearchCredentialTemplatesRequest();
    message.query = object.query ?? "";
    message.continuationToken = object.continuationToken ?? "";
    return message;
  },
};

function createBaseSearchCredentialTemplatesResponse(): SearchCredentialTemplatesResponse {
  return { itemsJson: "", hasMore: false, count: 0, continuationToken: "" };
}

export const SearchCredentialTemplatesResponse = {
  encode(
    message: SearchCredentialTemplatesResponse,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.itemsJson !== "") {
      writer.uint32(10).string(message.itemsJson);
    }
    if (message.hasMore === true) {
      writer.uint32(16).bool(message.hasMore);
    }
    if (message.count !== 0) {
      writer.uint32(24).int32(message.count);
    }
    if (message.continuationToken !== "") {
      writer.uint32(34).string(message.continuationToken);
    }
    return writer;
  },

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): SearchCredentialTemplatesResponse {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseSearchCredentialTemplatesResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.itemsJson = reader.string();
          break;
        case 2:
          message.hasMore = reader.bool();
          break;
        case 3:
          message.count = reader.int32();
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

  fromJSON(object: any): SearchCredentialTemplatesResponse {
    return {
      itemsJson: isSet(object.itemsJson) ? String(object.itemsJson) : "",
      hasMore: isSet(object.hasMore) ? Boolean(object.hasMore) : false,
      count: isSet(object.count) ? Number(object.count) : 0,
      continuationToken: isSet(object.continuationToken)
        ? String(object.continuationToken)
        : "",
    };
  },

  toJSON(message: SearchCredentialTemplatesResponse): unknown {
    const obj: any = {};
    message.itemsJson !== undefined && (obj.itemsJson = message.itemsJson);
    message.hasMore !== undefined && (obj.hasMore = message.hasMore);
    message.count !== undefined && (obj.count = Math.round(message.count));
    message.continuationToken !== undefined &&
      (obj.continuationToken = message.continuationToken);
    return obj;
  },

  fromPartial(
    object: DeepPartial<SearchCredentialTemplatesResponse>
  ): SearchCredentialTemplatesResponse {
    const message = createBaseSearchCredentialTemplatesResponse();
    message.itemsJson = object.itemsJson ?? "";
    message.hasMore = object.hasMore ?? false;
    message.count = object.count ?? 0;
    message.continuationToken = object.continuationToken ?? "";
    return message;
  },
};

function createBaseListCredentialTemplatesRequest(): ListCredentialTemplatesRequest {
  return { query: "", continuationToken: "" };
}

export const ListCredentialTemplatesRequest = {
  encode(
    message: ListCredentialTemplatesRequest,
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

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): ListCredentialTemplatesRequest {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseListCredentialTemplatesRequest();
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

  fromJSON(object: any): ListCredentialTemplatesRequest {
    return {
      query: isSet(object.query) ? String(object.query) : "",
      continuationToken: isSet(object.continuationToken)
        ? String(object.continuationToken)
        : "",
    };
  },

  toJSON(message: ListCredentialTemplatesRequest): unknown {
    const obj: any = {};
    message.query !== undefined && (obj.query = message.query);
    message.continuationToken !== undefined &&
      (obj.continuationToken = message.continuationToken);
    return obj;
  },

  fromPartial(
    object: DeepPartial<ListCredentialTemplatesRequest>
  ): ListCredentialTemplatesRequest {
    const message = createBaseListCredentialTemplatesRequest();
    message.query = object.query ?? "";
    message.continuationToken = object.continuationToken ?? "";
    return message;
  },
};

function createBaseListCredentialTemplatesResponse(): ListCredentialTemplatesResponse {
  return { templates: [], hasMoreResults: false, continuationToken: "" };
}

export const ListCredentialTemplatesResponse = {
  encode(
    message: ListCredentialTemplatesResponse,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    for (const v of message.templates) {
      TemplateData.encode(v!, writer.uint32(10).fork()).ldelim();
    }
    if (message.hasMoreResults === true) {
      writer.uint32(16).bool(message.hasMoreResults);
    }
    if (message.continuationToken !== "") {
      writer.uint32(26).string(message.continuationToken);
    }
    return writer;
  },

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): ListCredentialTemplatesResponse {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseListCredentialTemplatesResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.templates.push(TemplateData.decode(reader, reader.uint32()));
          break;
        case 2:
          message.hasMoreResults = reader.bool();
          break;
        case 3:
          message.continuationToken = reader.string();
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): ListCredentialTemplatesResponse {
    return {
      templates: Array.isArray(object?.templates)
        ? object.templates.map((e: any) => TemplateData.fromJSON(e))
        : [],
      hasMoreResults: isSet(object.hasMoreResults)
        ? Boolean(object.hasMoreResults)
        : false,
      continuationToken: isSet(object.continuationToken)
        ? String(object.continuationToken)
        : "",
    };
  },

  toJSON(message: ListCredentialTemplatesResponse): unknown {
    const obj: any = {};
    if (message.templates) {
      obj.templates = message.templates.map((e) =>
        e ? TemplateData.toJSON(e) : undefined
      );
    } else {
      obj.templates = [];
    }
    message.hasMoreResults !== undefined &&
      (obj.hasMoreResults = message.hasMoreResults);
    message.continuationToken !== undefined &&
      (obj.continuationToken = message.continuationToken);
    return obj;
  },

  fromPartial(
    object: DeepPartial<ListCredentialTemplatesResponse>
  ): ListCredentialTemplatesResponse {
    const message = createBaseListCredentialTemplatesResponse();
    message.templates =
      object.templates?.map((e) => TemplateData.fromPartial(e)) || [];
    message.hasMoreResults = object.hasMoreResults ?? false;
    message.continuationToken = object.continuationToken ?? "";
    return message;
  },
};

function createBaseDeleteCredentialTemplateRequest(): DeleteCredentialTemplateRequest {
  return { id: "" };
}

export const DeleteCredentialTemplateRequest = {
  encode(
    message: DeleteCredentialTemplateRequest,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.id !== "") {
      writer.uint32(10).string(message.id);
    }
    return writer;
  },

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): DeleteCredentialTemplateRequest {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseDeleteCredentialTemplateRequest();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.id = reader.string();
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): DeleteCredentialTemplateRequest {
    return {
      id: isSet(object.id) ? String(object.id) : "",
    };
  },

  toJSON(message: DeleteCredentialTemplateRequest): unknown {
    const obj: any = {};
    message.id !== undefined && (obj.id = message.id);
    return obj;
  },

  fromPartial(
    object: DeepPartial<DeleteCredentialTemplateRequest>
  ): DeleteCredentialTemplateRequest {
    const message = createBaseDeleteCredentialTemplateRequest();
    message.id = object.id ?? "";
    return message;
  },
};

function createBaseDeleteCredentialTemplateResponse(): DeleteCredentialTemplateResponse {
  return {};
}

export const DeleteCredentialTemplateResponse = {
  encode(
    _: DeleteCredentialTemplateResponse,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    return writer;
  },

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): DeleteCredentialTemplateResponse {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseDeleteCredentialTemplateResponse();
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

  fromJSON(_: any): DeleteCredentialTemplateResponse {
    return {};
  },

  toJSON(_: DeleteCredentialTemplateResponse): unknown {
    const obj: any = {};
    return obj;
  },

  fromPartial(
    _: DeepPartial<DeleteCredentialTemplateResponse>
  ): DeleteCredentialTemplateResponse {
    const message = createBaseDeleteCredentialTemplateResponse();
    return message;
  },
};

function createBaseCreateCredentialTemplateRequest(): CreateCredentialTemplateRequest {
  return { name: "", fields: {}, allowAdditionalFields: false };
}

export const CreateCredentialTemplateRequest = {
  encode(
    message: CreateCredentialTemplateRequest,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.name !== "") {
      writer.uint32(10).string(message.name);
    }
    Object.entries(message.fields).forEach(([key, value]) => {
      CreateCredentialTemplateRequest_FieldsEntry.encode(
        { key: key as any, value },
        writer.uint32(18).fork()
      ).ldelim();
    });
    if (message.allowAdditionalFields === true) {
      writer.uint32(24).bool(message.allowAdditionalFields);
    }
    return writer;
  },

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): CreateCredentialTemplateRequest {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseCreateCredentialTemplateRequest();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.name = reader.string();
          break;
        case 2:
          const entry2 = CreateCredentialTemplateRequest_FieldsEntry.decode(
            reader,
            reader.uint32()
          );
          if (entry2.value !== undefined) {
            message.fields[entry2.key] = entry2.value;
          }
          break;
        case 3:
          message.allowAdditionalFields = reader.bool();
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): CreateCredentialTemplateRequest {
    return {
      name: isSet(object.name) ? String(object.name) : "",
      fields: isObject(object.fields)
        ? Object.entries(object.fields).reduce<{
            [key: string]: TemplateField;
          }>((acc, [key, value]) => {
            acc[key] = TemplateField.fromJSON(value);
            return acc;
          }, {})
        : {},
      allowAdditionalFields: isSet(object.allowAdditionalFields)
        ? Boolean(object.allowAdditionalFields)
        : false,
    };
  },

  toJSON(message: CreateCredentialTemplateRequest): unknown {
    const obj: any = {};
    message.name !== undefined && (obj.name = message.name);
    obj.fields = {};
    if (message.fields) {
      Object.entries(message.fields).forEach(([k, v]) => {
        obj.fields[k] = TemplateField.toJSON(v);
      });
    }
    message.allowAdditionalFields !== undefined &&
      (obj.allowAdditionalFields = message.allowAdditionalFields);
    return obj;
  },

  fromPartial(
    object: DeepPartial<CreateCredentialTemplateRequest>
  ): CreateCredentialTemplateRequest {
    const message = createBaseCreateCredentialTemplateRequest();
    message.name = object.name ?? "";
    message.fields = Object.entries(object.fields ?? {}).reduce<{
      [key: string]: TemplateField;
    }>((acc, [key, value]) => {
      if (value !== undefined) {
        acc[key] = TemplateField.fromPartial(value);
      }
      return acc;
    }, {});
    message.allowAdditionalFields = object.allowAdditionalFields ?? false;
    return message;
  },
};

function createBaseCreateCredentialTemplateRequest_FieldsEntry(): CreateCredentialTemplateRequest_FieldsEntry {
  return { key: "", value: undefined };
}

export const CreateCredentialTemplateRequest_FieldsEntry = {
  encode(
    message: CreateCredentialTemplateRequest_FieldsEntry,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.key !== "") {
      writer.uint32(10).string(message.key);
    }
    if (message.value !== undefined) {
      TemplateField.encode(message.value, writer.uint32(18).fork()).ldelim();
    }
    return writer;
  },

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): CreateCredentialTemplateRequest_FieldsEntry {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseCreateCredentialTemplateRequest_FieldsEntry();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.key = reader.string();
          break;
        case 2:
          message.value = TemplateField.decode(reader, reader.uint32());
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): CreateCredentialTemplateRequest_FieldsEntry {
    return {
      key: isSet(object.key) ? String(object.key) : "",
      value: isSet(object.value)
        ? TemplateField.fromJSON(object.value)
        : undefined,
    };
  },

  toJSON(message: CreateCredentialTemplateRequest_FieldsEntry): unknown {
    const obj: any = {};
    message.key !== undefined && (obj.key = message.key);
    message.value !== undefined &&
      (obj.value = message.value
        ? TemplateField.toJSON(message.value)
        : undefined);
    return obj;
  },

  fromPartial(
    object: DeepPartial<CreateCredentialTemplateRequest_FieldsEntry>
  ): CreateCredentialTemplateRequest_FieldsEntry {
    const message = createBaseCreateCredentialTemplateRequest_FieldsEntry();
    message.key = object.key ?? "";
    message.value =
      object.value !== undefined && object.value !== null
        ? TemplateField.fromPartial(object.value)
        : undefined;
    return message;
  },
};

function createBaseCreateCredentialTemplateResponse(): CreateCredentialTemplateResponse {
  return { data: undefined };
}

export const CreateCredentialTemplateResponse = {
  encode(
    message: CreateCredentialTemplateResponse,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.data !== undefined) {
      TemplateData.encode(message.data, writer.uint32(10).fork()).ldelim();
    }
    return writer;
  },

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): CreateCredentialTemplateResponse {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseCreateCredentialTemplateResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.data = TemplateData.decode(reader, reader.uint32());
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): CreateCredentialTemplateResponse {
    return {
      data: isSet(object.data) ? TemplateData.fromJSON(object.data) : undefined,
    };
  },

  toJSON(message: CreateCredentialTemplateResponse): unknown {
    const obj: any = {};
    message.data !== undefined &&
      (obj.data = message.data ? TemplateData.toJSON(message.data) : undefined);
    return obj;
  },

  fromPartial(
    object: DeepPartial<CreateCredentialTemplateResponse>
  ): CreateCredentialTemplateResponse {
    const message = createBaseCreateCredentialTemplateResponse();
    message.data =
      object.data !== undefined && object.data !== null
        ? TemplateData.fromPartial(object.data)
        : undefined;
    return message;
  },
};

function createBaseTemplateField(): TemplateField {
  return { description: "", optional: false, type: 0 };
}

export const TemplateField = {
  encode(
    message: TemplateField,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.description !== "") {
      writer.uint32(18).string(message.description);
    }
    if (message.optional === true) {
      writer.uint32(24).bool(message.optional);
    }
    if (message.type !== 0) {
      writer.uint32(32).int32(message.type);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): TemplateField {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseTemplateField();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 2:
          message.description = reader.string();
          break;
        case 3:
          message.optional = reader.bool();
          break;
        case 4:
          message.type = reader.int32() as any;
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): TemplateField {
    return {
      description: isSet(object.description) ? String(object.description) : "",
      optional: isSet(object.optional) ? Boolean(object.optional) : false,
      type: isSet(object.type) ? fieldTypeFromJSON(object.type) : 0,
    };
  },

  toJSON(message: TemplateField): unknown {
    const obj: any = {};
    message.description !== undefined &&
      (obj.description = message.description);
    message.optional !== undefined && (obj.optional = message.optional);
    message.type !== undefined && (obj.type = fieldTypeToJSON(message.type));
    return obj;
  },

  fromPartial(object: DeepPartial<TemplateField>): TemplateField {
    const message = createBaseTemplateField();
    message.description = object.description ?? "";
    message.optional = object.optional ?? false;
    message.type = object.type ?? 0;
    return message;
  },
};

function createBaseGetTemplateRequest(): GetTemplateRequest {
  return { id: "" };
}

export const GetTemplateRequest = {
  encode(
    message: GetTemplateRequest,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.id !== "") {
      writer.uint32(10).string(message.id);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): GetTemplateRequest {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseGetTemplateRequest();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.id = reader.string();
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): GetTemplateRequest {
    return {
      id: isSet(object.id) ? String(object.id) : "",
    };
  },

  toJSON(message: GetTemplateRequest): unknown {
    const obj: any = {};
    message.id !== undefined && (obj.id = message.id);
    return obj;
  },

  fromPartial(object: DeepPartial<GetTemplateRequest>): GetTemplateRequest {
    const message = createBaseGetTemplateRequest();
    message.id = object.id ?? "";
    return message;
  },
};

function createBaseGetTemplateResponse(): GetTemplateResponse {
  return { data: undefined };
}

export const GetTemplateResponse = {
  encode(
    message: GetTemplateResponse,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.data !== undefined) {
      TemplateData.encode(message.data, writer.uint32(10).fork()).ldelim();
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): GetTemplateResponse {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseGetTemplateResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.data = TemplateData.decode(reader, reader.uint32());
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): GetTemplateResponse {
    return {
      data: isSet(object.data) ? TemplateData.fromJSON(object.data) : undefined,
    };
  },

  toJSON(message: GetTemplateResponse): unknown {
    const obj: any = {};
    message.data !== undefined &&
      (obj.data = message.data ? TemplateData.toJSON(message.data) : undefined);
    return obj;
  },

  fromPartial(object: DeepPartial<GetTemplateResponse>): GetTemplateResponse {
    const message = createBaseGetTemplateResponse();
    message.data =
      object.data !== undefined && object.data !== null
        ? TemplateData.fromPartial(object.data)
        : undefined;
    return message;
  },
};

function createBaseListTemplatesRequest(): ListTemplatesRequest {
  return {};
}

export const ListTemplatesRequest = {
  encode(
    _: ListTemplatesRequest,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    return writer;
  },

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): ListTemplatesRequest {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseListTemplatesRequest();
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

  fromJSON(_: any): ListTemplatesRequest {
    return {};
  },

  toJSON(_: ListTemplatesRequest): unknown {
    const obj: any = {};
    return obj;
  },

  fromPartial(_: DeepPartial<ListTemplatesRequest>): ListTemplatesRequest {
    const message = createBaseListTemplatesRequest();
    return message;
  },
};

function createBaseListTemplatesResponse(): ListTemplatesResponse {
  return { templates: [] };
}

export const ListTemplatesResponse = {
  encode(
    message: ListTemplatesResponse,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    for (const v of message.templates) {
      TemplateData.encode(v!, writer.uint32(10).fork()).ldelim();
    }
    return writer;
  },

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): ListTemplatesResponse {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseListTemplatesResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.templates.push(TemplateData.decode(reader, reader.uint32()));
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): ListTemplatesResponse {
    return {
      templates: Array.isArray(object?.templates)
        ? object.templates.map((e: any) => TemplateData.fromJSON(e))
        : [],
    };
  },

  toJSON(message: ListTemplatesResponse): unknown {
    const obj: any = {};
    if (message.templates) {
      obj.templates = message.templates.map((e) =>
        e ? TemplateData.toJSON(e) : undefined
      );
    } else {
      obj.templates = [];
    }
    return obj;
  },

  fromPartial(
    object: DeepPartial<ListTemplatesResponse>
  ): ListTemplatesResponse {
    const message = createBaseListTemplatesResponse();
    message.templates =
      object.templates?.map((e) => TemplateData.fromPartial(e)) || [];
    return message;
  },
};

function createBaseTemplateData(): TemplateData {
  return {
    id: "",
    name: "",
    version: 0,
    fields: {},
    allowAdditionalFields: false,
    schemaUri: "",
    contextUri: "",
    ecosystemId: "",
    type: "",
    createdBy: "",
  };
}

export const TemplateData = {
  encode(
    message: TemplateData,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.id !== "") {
      writer.uint32(10).string(message.id);
    }
    if (message.name !== "") {
      writer.uint32(18).string(message.name);
    }
    if (message.version !== 0) {
      writer.uint32(24).int32(message.version);
    }
    Object.entries(message.fields).forEach(([key, value]) => {
      TemplateData_FieldsEntry.encode(
        { key: key as any, value },
        writer.uint32(34).fork()
      ).ldelim();
    });
    if (message.allowAdditionalFields === true) {
      writer.uint32(40).bool(message.allowAdditionalFields);
    }
    if (message.schemaUri !== "") {
      writer.uint32(50).string(message.schemaUri);
    }
    if (message.contextUri !== "") {
      writer.uint32(58).string(message.contextUri);
    }
    if (message.ecosystemId !== "") {
      writer.uint32(66).string(message.ecosystemId);
    }
    if (message.type !== "") {
      writer.uint32(74).string(message.type);
    }
    if (message.createdBy !== "") {
      writer.uint32(82).string(message.createdBy);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): TemplateData {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseTemplateData();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.id = reader.string();
          break;
        case 2:
          message.name = reader.string();
          break;
        case 3:
          message.version = reader.int32();
          break;
        case 4:
          const entry4 = TemplateData_FieldsEntry.decode(
            reader,
            reader.uint32()
          );
          if (entry4.value !== undefined) {
            message.fields[entry4.key] = entry4.value;
          }
          break;
        case 5:
          message.allowAdditionalFields = reader.bool();
          break;
        case 6:
          message.schemaUri = reader.string();
          break;
        case 7:
          message.contextUri = reader.string();
          break;
        case 8:
          message.ecosystemId = reader.string();
          break;
        case 9:
          message.type = reader.string();
          break;
        case 10:
          message.createdBy = reader.string();
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): TemplateData {
    return {
      id: isSet(object.id) ? String(object.id) : "",
      name: isSet(object.name) ? String(object.name) : "",
      version: isSet(object.version) ? Number(object.version) : 0,
      fields: isObject(object.fields)
        ? Object.entries(object.fields).reduce<{
            [key: string]: TemplateField;
          }>((acc, [key, value]) => {
            acc[key] = TemplateField.fromJSON(value);
            return acc;
          }, {})
        : {},
      allowAdditionalFields: isSet(object.allowAdditionalFields)
        ? Boolean(object.allowAdditionalFields)
        : false,
      schemaUri: isSet(object.schemaUri) ? String(object.schemaUri) : "",
      contextUri: isSet(object.contextUri) ? String(object.contextUri) : "",
      ecosystemId: isSet(object.ecosystemId) ? String(object.ecosystemId) : "",
      type: isSet(object.type) ? String(object.type) : "",
      createdBy: isSet(object.createdBy) ? String(object.createdBy) : "",
    };
  },

  toJSON(message: TemplateData): unknown {
    const obj: any = {};
    message.id !== undefined && (obj.id = message.id);
    message.name !== undefined && (obj.name = message.name);
    message.version !== undefined &&
      (obj.version = Math.round(message.version));
    obj.fields = {};
    if (message.fields) {
      Object.entries(message.fields).forEach(([k, v]) => {
        obj.fields[k] = TemplateField.toJSON(v);
      });
    }
    message.allowAdditionalFields !== undefined &&
      (obj.allowAdditionalFields = message.allowAdditionalFields);
    message.schemaUri !== undefined && (obj.schemaUri = message.schemaUri);
    message.contextUri !== undefined && (obj.contextUri = message.contextUri);
    message.ecosystemId !== undefined &&
      (obj.ecosystemId = message.ecosystemId);
    message.type !== undefined && (obj.type = message.type);
    message.createdBy !== undefined && (obj.createdBy = message.createdBy);
    return obj;
  },

  fromPartial(object: DeepPartial<TemplateData>): TemplateData {
    const message = createBaseTemplateData();
    message.id = object.id ?? "";
    message.name = object.name ?? "";
    message.version = object.version ?? 0;
    message.fields = Object.entries(object.fields ?? {}).reduce<{
      [key: string]: TemplateField;
    }>((acc, [key, value]) => {
      if (value !== undefined) {
        acc[key] = TemplateField.fromPartial(value);
      }
      return acc;
    }, {});
    message.allowAdditionalFields = object.allowAdditionalFields ?? false;
    message.schemaUri = object.schemaUri ?? "";
    message.contextUri = object.contextUri ?? "";
    message.ecosystemId = object.ecosystemId ?? "";
    message.type = object.type ?? "";
    message.createdBy = object.createdBy ?? "";
    return message;
  },
};

function createBaseTemplateData_FieldsEntry(): TemplateData_FieldsEntry {
  return { key: "", value: undefined };
}

export const TemplateData_FieldsEntry = {
  encode(
    message: TemplateData_FieldsEntry,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.key !== "") {
      writer.uint32(10).string(message.key);
    }
    if (message.value !== undefined) {
      TemplateField.encode(message.value, writer.uint32(18).fork()).ldelim();
    }
    return writer;
  },

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): TemplateData_FieldsEntry {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseTemplateData_FieldsEntry();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.key = reader.string();
          break;
        case 2:
          message.value = TemplateField.decode(reader, reader.uint32());
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): TemplateData_FieldsEntry {
    return {
      key: isSet(object.key) ? String(object.key) : "",
      value: isSet(object.value)
        ? TemplateField.fromJSON(object.value)
        : undefined,
    };
  },

  toJSON(message: TemplateData_FieldsEntry): unknown {
    const obj: any = {};
    message.key !== undefined && (obj.key = message.key);
    message.value !== undefined &&
      (obj.value = message.value
        ? TemplateField.toJSON(message.value)
        : undefined);
    return obj;
  },

  fromPartial(
    object: DeepPartial<TemplateData_FieldsEntry>
  ): TemplateData_FieldsEntry {
    const message = createBaseTemplateData_FieldsEntry();
    message.key = object.key ?? "";
    message.value =
      object.value !== undefined && object.value !== null
        ? TemplateField.fromPartial(object.value)
        : undefined;
    return message;
  },
};

export const CredentialTemplatesDefinition = {
  name: "CredentialTemplates",
  fullName: "services.verifiablecredentials.templates.v1.CredentialTemplates",
  methods: {
    create: {
      name: "Create",
      requestType: CreateCredentialTemplateRequest,
      requestStream: false,
      responseType: CreateCredentialTemplateResponse,
      responseStream: false,
      options: {},
    },
    get: {
      name: "Get",
      requestType: GetCredentialTemplateRequest,
      requestStream: false,
      responseType: GetCredentialTemplateResponse,
      responseStream: false,
      options: {},
    },
    list: {
      name: "List",
      requestType: ListCredentialTemplatesRequest,
      requestStream: false,
      responseType: ListCredentialTemplatesResponse,
      responseStream: false,
      options: {},
    },
    search: {
      name: "Search",
      requestType: SearchCredentialTemplatesRequest,
      requestStream: false,
      responseType: SearchCredentialTemplatesResponse,
      responseStream: false,
      options: {},
    },
    delete: {
      name: "Delete",
      requestType: DeleteCredentialTemplateRequest,
      requestStream: false,
      responseType: DeleteCredentialTemplateResponse,
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

function isObject(value: any): boolean {
  return typeof value === "object" && value !== null;
}

function isSet(value: any): boolean {
  return value !== null && value !== undefined;
}
