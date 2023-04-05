/* eslint-disable */
import _m0 from "protobufjs/minimal";

/** Valid types for credential fields */
export enum FieldType {
  STRING = 0,
  NUMBER = 1,
  BOOL = 2,
  DATETIME = 4,
  URI = 5,
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
    case 5:
    case "URI":
      return FieldType.URI;
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
    case FieldType.URI:
      return "URI";
    case FieldType.UNRECOGNIZED:
    default:
      return "UNRECOGNIZED";
  }
}

/** How to display a URI value when rendering a credential. */
export enum UriRenderMethod {
  /** TEXT - Display URI as text */
  TEXT = 0,
  /** LINK - Display URI as a clickable link */
  LINK = 1,
  /** INLINE_IMAGE - Display URI as an inline image. Only takes effect if the template field's MIME Type is an image type. */
  INLINE_IMAGE = 2,
  UNRECOGNIZED = -1,
}

export function uriRenderMethodFromJSON(object: any): UriRenderMethod {
  switch (object) {
    case 0:
    case "TEXT":
      return UriRenderMethod.TEXT;
    case 1:
    case "LINK":
      return UriRenderMethod.LINK;
    case 2:
    case "INLINE_IMAGE":
      return UriRenderMethod.INLINE_IMAGE;
    case -1:
    case "UNRECOGNIZED":
    default:
      return UriRenderMethod.UNRECOGNIZED;
  }
}

export function uriRenderMethodToJSON(object: UriRenderMethod): string {
  switch (object) {
    case UriRenderMethod.TEXT:
      return "TEXT";
    case UriRenderMethod.LINK:
      return "LINK";
    case UriRenderMethod.INLINE_IMAGE:
      return "INLINE_IMAGE";
    case UriRenderMethod.UNRECOGNIZED:
    default:
      return "UNRECOGNIZED";
  }
}

/** Request to fetch a template by ID */
export interface GetCredentialTemplateRequest {
  /** ID of template to fetch */
  id?: string;
}

/** Response to `GetCredentialTemplateRequest` */
export interface GetCredentialTemplateResponse {
  /** Template fetched by ID */
  template?: TemplateData;
}

/** Request to search templates using a SQL query */
export interface SearchCredentialTemplatesRequest {
  /** SQL query to execute. Example: `SELECT * FROM c WHERE c.name = 'Diploma'` */
  query?: string;
  /**
   * Token provided by previous `SearchCredentialTemplatesResponse`
   * if more data is available for query
   */
  continuationToken?: string;
}

/** Response to `SearchCredentialTemplatesRequest` */
export interface SearchCredentialTemplatesResponse {
  /** Raw JSON data returned from query */
  itemsJson?: string;
  /** Whether more results are available for this query via `continuation_token` */
  hasMoreResults?: boolean;
  /** Token to fetch next set of results via `SearchCredentialTemplatesRequest` */
  continuationToken?: string;
}

/** Request to list templates using a SQL query */
export interface ListCredentialTemplatesRequest {
  /** SQL query to execute. Example: `SELECT * FROM c WHERE c.name = 'Diploma'` */
  query?: string;
  /**
   * Token provided by previous `ListCredentialTemplatesResponse`
   * if more data is available for query
   */
  continuationToken?: string;
}

/** Response to `ListCredentialTemplatesRequest` */
export interface ListCredentialTemplatesResponse {
  /** Templates found by query */
  templates?: TemplateData[];
  /** Whether more results are available for this query via `continuation_token` */
  hasMoreResults?: boolean;
  /** Token to fetch next set of resuts via `ListCredentialTemplatesRequest` */
  continuationToken?: string;
}

/** Request to delete a template by ID */
export interface DeleteCredentialTemplateRequest {
  /** ID of template to delete */
  id?: string;
}

/** Response to `DeleteCredentialTemplateRequest` */
export interface DeleteCredentialTemplateResponse {}

/** Request to create a new template */
export interface CreateCredentialTemplateRequest {
  /** Name of new template. Must be a unique identifier within its ecosystem. */
  name?: string;
  /** Fields which compose the template */
  fields?: { [key: string]: TemplateField };
  /**
   * Whether credentials may be issued against this template which have fields
   * not specified in `fields`
   */
  allowAdditionalFields?: boolean;
  /** Human-readable name of template */
  title?: string;
  /** Human-readable description of template */
  description?: string;
  /**
   * Optional map describing how to order and categorize the fields within the template. The key of this map is the field `name`.
   * If not provided, this will be auto-generated.
   */
  fieldOrdering?: { [key: string]: FieldOrdering };
  /** Options for rendering the template in Apple Wallet */
  appleWalletOptions?: AppleWalletOptions | undefined;
}

export interface CreateCredentialTemplateRequest_FieldsEntry {
  key: string;
  value?: TemplateField;
}

export interface CreateCredentialTemplateRequest_FieldOrderingEntry {
  key: string;
  value?: FieldOrdering;
}

/** Response to `CreateCredentialTemplateRequest` */
export interface CreateCredentialTemplateResponse {
  /** Created template */
  data?: TemplateData;
}

/** Request to update display information for a template */
export interface UpdateCredentialTemplateRequest {
  /** ID of Template to update */
  id?: string;
  /** New human-readable title of Template */
  title?: string | undefined;
  /** New human-readable description of Template */
  description?: string | undefined;
  /** Fields to update within the Template */
  fields?: { [key: string]: TemplateFieldPatch };
  /** New field ordering options. See documentation for template creation for usage information. */
  fieldOrdering?: { [key: string]: FieldOrdering };
  /** New Apple Wallet configuration */
  appleWalletOptions?: AppleWalletOptions | undefined;
}

export interface UpdateCredentialTemplateRequest_FieldsEntry {
  key: string;
  value?: TemplateFieldPatch;
}

export interface UpdateCredentialTemplateRequest_FieldOrderingEntry {
  key: string;
  value?: FieldOrdering;
}

/** Response to `UpdateCredentialTemplateRequest` */
export interface UpdateCredentialTemplateResponse {
  /** The Template after the update has been applied */
  updatedTemplate?: TemplateData;
}

/** Credential Template */
export interface TemplateData {
  /** Template ID */
  id?: string;
  /** Template name */
  name?: string;
  /** Template version number */
  version?: number;
  /** Fields defined for the template */
  fields?: { [key: string]: TemplateField };
  /**
   * Whether credentials issued against this template may
   * contain fields not defined by template
   */
  allowAdditionalFields?: boolean;
  /** URI pointing to template JSON schema document */
  schemaUri?: string;
  /**
   * URI pointing to template JSON-LD context document
   *
   * @deprecated
   */
  contextUri?: string;
  /** ID of ecosystem in which template resides */
  ecosystemId?: string;
  /** Template type (`VerifiableCredential`) */
  type?: string;
  /** ID of template creator */
  createdBy?: string;
  /** Date when template was created as ISO 8601 utc string */
  dateCreated?: string;
  /** Human-readable template title */
  title?: string;
  /** Human-readable template description */
  description?: string;
  /** Map describing how to order and categorize the fields within the template. The key of this map is the field `name`. */
  fieldOrdering?: { [key: string]: FieldOrdering };
  /** Options for rendering the template in Apple Wallet */
  appleWalletOptions?: AppleWalletOptions;
}

export interface TemplateData_FieldsEntry {
  key: string;
  value?: TemplateField;
}

export interface TemplateData_FieldOrderingEntry {
  key: string;
  value?: FieldOrdering;
}

/** Configuration options for Apple Wallet when */
export interface AppleWalletOptions {
  /** Background color, in hex format, of credential when stored in an Apple Wallet. */
  backgroundColor?: string;
  /** Foreground color, in hex format, of credential when stored in an Apple Wallet. */
  foregroundColor?: string;
  /** Label color, in hex format, of credential when stored in an Apple Wallet. */
  labelColor?: string;
  /** The ID of the template field which should be used as the primary field of a credential. */
  primaryField?: string;
  /** The secondary fields of the credential. This is a mapping between the order of a secondary field (0 or 1) and the field name. */
  secondaryFields?: string[];
  /** The auxiliary fields of the credential. This is a mapping between the order of an auxiliary field (0 or 1) and the field name. */
  auxiliaryFields?: string[];
}

/** Ordering information for a template field */
export interface FieldOrdering {
  /**
   * The order of the field; must be unique within the Template. Fields are sorted by order ascending when displaying a credential.
   * Field orders must be contiguous from `0` to the number of fields minus 1.
   */
  order?: number;
  /**
   * The human-readable name of the section this field appears in; used to group together fields when displaying a credential.
   * Sections must be contiguous with respect to `order`.
   */
  section?: string;
}

/** A field defined in a template */
export interface TemplateField {
  /** Human-readable name of the field */
  title?: string;
  /** Human-readable description of the field */
  description?: string;
  /** Whether this field may be omitted when a credential is issued against the template */
  optional?: boolean;
  /** The type of the field */
  type?: FieldType;
  /**
   * Do not use.
   * Annotations for the field that may be used to add additional information.
   *
   * @deprecated
   */
  annotations?: { [key: string]: string };
  /** How to deal with this URI field when rendering credential. Only use if `type` is `URI`. */
  uriData?: UriFieldData | undefined;
}

export interface TemplateField_AnnotationsEntry {
  key: string;
  value: string;
}

/** A patch to apply to an existing template field */
export interface TemplateFieldPatch {
  /** Human-readable name of the field */
  title?: string | undefined;
  /** Human-readable description of the field */
  description?: string | undefined;
  /** How to deal with this URI field when rendering credential. Only use if `type` is `URI`. */
  uriData?: UriFieldData | undefined;
}

/** Data pertaining to a URI Field */
export interface UriFieldData {
  /**
   * Expected MIME Type of content pointed to by URI. Can be generic (eg, "image/") or specific ("image/png").
   * Defaults to "application/octet-stream".
   */
  mimeType?: string;
  /** How to display the URI value when rendering a credential. */
  renderMethod?: UriRenderMethod;
}

function createBaseGetCredentialTemplateRequest(): GetCredentialTemplateRequest {
  return { id: "" };
}

export const GetCredentialTemplateRequest = {
  encode(
    message: GetCredentialTemplateRequest,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.id !== undefined && message.id !== "") {
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
  return { itemsJson: "", hasMoreResults: false, continuationToken: "" };
}

export const SearchCredentialTemplatesResponse = {
  encode(
    message: SearchCredentialTemplatesResponse,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.itemsJson !== undefined && message.itemsJson !== "") {
      writer.uint32(10).string(message.itemsJson);
    }
    if (message.hasMoreResults === true) {
      writer.uint32(16).bool(message.hasMoreResults);
    }
    if (
      message.continuationToken !== undefined &&
      message.continuationToken !== ""
    ) {
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
          message.hasMoreResults = reader.bool();
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
      hasMoreResults: isSet(object.hasMoreResults)
        ? Boolean(object.hasMoreResults)
        : false,
      continuationToken: isSet(object.continuationToken)
        ? String(object.continuationToken)
        : "",
    };
  },

  toJSON(message: SearchCredentialTemplatesResponse): unknown {
    const obj: any = {};
    message.itemsJson !== undefined && (obj.itemsJson = message.itemsJson);
    message.hasMoreResults !== undefined &&
      (obj.hasMoreResults = message.hasMoreResults);
    message.continuationToken !== undefined &&
      (obj.continuationToken = message.continuationToken);
    return obj;
  },

  fromPartial(
    object: DeepPartial<SearchCredentialTemplatesResponse>
  ): SearchCredentialTemplatesResponse {
    const message = createBaseSearchCredentialTemplatesResponse();
    message.itemsJson = object.itemsJson ?? "";
    message.hasMoreResults = object.hasMoreResults ?? false;
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
    if (message.templates !== undefined && message.templates.length !== 0) {
      for (const v of message.templates) {
        TemplateData.encode(v!, writer.uint32(10).fork()).ldelim();
      }
    }
    if (message.hasMoreResults === true) {
      writer.uint32(16).bool(message.hasMoreResults);
    }
    if (
      message.continuationToken !== undefined &&
      message.continuationToken !== ""
    ) {
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
          message.templates!.push(TemplateData.decode(reader, reader.uint32()));
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
    if (message.id !== undefined && message.id !== "") {
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
  return {
    name: "",
    fields: {},
    allowAdditionalFields: false,
    title: "",
    description: "",
    fieldOrdering: {},
    appleWalletOptions: undefined,
  };
}

export const CreateCredentialTemplateRequest = {
  encode(
    message: CreateCredentialTemplateRequest,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.name !== undefined && message.name !== "") {
      writer.uint32(10).string(message.name);
    }
    Object.entries(message.fields || {}).forEach(([key, value]) => {
      CreateCredentialTemplateRequest_FieldsEntry.encode(
        { key: key as any, value },
        writer.uint32(18).fork()
      ).ldelim();
    });
    if (message.allowAdditionalFields === true) {
      writer.uint32(24).bool(message.allowAdditionalFields);
    }
    if (message.title !== undefined && message.title !== "") {
      writer.uint32(34).string(message.title);
    }
    if (message.description !== undefined && message.description !== "") {
      writer.uint32(42).string(message.description);
    }
    Object.entries(message.fieldOrdering || {}).forEach(([key, value]) => {
      CreateCredentialTemplateRequest_FieldOrderingEntry.encode(
        { key: key as any, value },
        writer.uint32(50).fork()
      ).ldelim();
    });
    if (message.appleWalletOptions !== undefined) {
      AppleWalletOptions.encode(
        message.appleWalletOptions,
        writer.uint32(58).fork()
      ).ldelim();
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
            message.fields![entry2.key] = entry2.value;
          }
          break;
        case 3:
          message.allowAdditionalFields = reader.bool();
          break;
        case 4:
          message.title = reader.string();
          break;
        case 5:
          message.description = reader.string();
          break;
        case 6:
          const entry6 =
            CreateCredentialTemplateRequest_FieldOrderingEntry.decode(
              reader,
              reader.uint32()
            );
          if (entry6.value !== undefined) {
            message.fieldOrdering![entry6.key] = entry6.value;
          }
          break;
        case 7:
          message.appleWalletOptions = AppleWalletOptions.decode(
            reader,
            reader.uint32()
          );
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
      title: isSet(object.title) ? String(object.title) : "",
      description: isSet(object.description) ? String(object.description) : "",
      fieldOrdering: isObject(object.fieldOrdering)
        ? Object.entries(object.fieldOrdering).reduce<{
            [key: string]: FieldOrdering;
          }>((acc, [key, value]) => {
            acc[key] = FieldOrdering.fromJSON(value);
            return acc;
          }, {})
        : {},
      appleWalletOptions: isSet(object.appleWalletOptions)
        ? AppleWalletOptions.fromJSON(object.appleWalletOptions)
        : undefined,
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
    message.title !== undefined && (obj.title = message.title);
    message.description !== undefined &&
      (obj.description = message.description);
    obj.fieldOrdering = {};
    if (message.fieldOrdering) {
      Object.entries(message.fieldOrdering).forEach(([k, v]) => {
        obj.fieldOrdering[k] = FieldOrdering.toJSON(v);
      });
    }
    message.appleWalletOptions !== undefined &&
      (obj.appleWalletOptions = message.appleWalletOptions
        ? AppleWalletOptions.toJSON(message.appleWalletOptions)
        : undefined);
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
    message.title = object.title ?? "";
    message.description = object.description ?? "";
    message.fieldOrdering = Object.entries(object.fieldOrdering ?? {}).reduce<{
      [key: string]: FieldOrdering;
    }>((acc, [key, value]) => {
      if (value !== undefined) {
        acc[key] = FieldOrdering.fromPartial(value);
      }
      return acc;
    }, {});
    message.appleWalletOptions =
      object.appleWalletOptions !== undefined &&
      object.appleWalletOptions !== null
        ? AppleWalletOptions.fromPartial(object.appleWalletOptions)
        : undefined;
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

function createBaseCreateCredentialTemplateRequest_FieldOrderingEntry(): CreateCredentialTemplateRequest_FieldOrderingEntry {
  return { key: "", value: undefined };
}

export const CreateCredentialTemplateRequest_FieldOrderingEntry = {
  encode(
    message: CreateCredentialTemplateRequest_FieldOrderingEntry,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.key !== "") {
      writer.uint32(10).string(message.key);
    }
    if (message.value !== undefined) {
      FieldOrdering.encode(message.value, writer.uint32(18).fork()).ldelim();
    }
    return writer;
  },

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): CreateCredentialTemplateRequest_FieldOrderingEntry {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message =
      createBaseCreateCredentialTemplateRequest_FieldOrderingEntry();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.key = reader.string();
          break;
        case 2:
          message.value = FieldOrdering.decode(reader, reader.uint32());
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): CreateCredentialTemplateRequest_FieldOrderingEntry {
    return {
      key: isSet(object.key) ? String(object.key) : "",
      value: isSet(object.value)
        ? FieldOrdering.fromJSON(object.value)
        : undefined,
    };
  },

  toJSON(message: CreateCredentialTemplateRequest_FieldOrderingEntry): unknown {
    const obj: any = {};
    message.key !== undefined && (obj.key = message.key);
    message.value !== undefined &&
      (obj.value = message.value
        ? FieldOrdering.toJSON(message.value)
        : undefined);
    return obj;
  },

  fromPartial(
    object: DeepPartial<CreateCredentialTemplateRequest_FieldOrderingEntry>
  ): CreateCredentialTemplateRequest_FieldOrderingEntry {
    const message =
      createBaseCreateCredentialTemplateRequest_FieldOrderingEntry();
    message.key = object.key ?? "";
    message.value =
      object.value !== undefined && object.value !== null
        ? FieldOrdering.fromPartial(object.value)
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

function createBaseUpdateCredentialTemplateRequest(): UpdateCredentialTemplateRequest {
  return {
    id: "",
    title: undefined,
    description: undefined,
    fields: {},
    fieldOrdering: {},
    appleWalletOptions: undefined,
  };
}

export const UpdateCredentialTemplateRequest = {
  encode(
    message: UpdateCredentialTemplateRequest,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.id !== undefined && message.id !== "") {
      writer.uint32(10).string(message.id);
    }
    if (message.title !== undefined) {
      writer.uint32(18).string(message.title);
    }
    if (message.description !== undefined) {
      writer.uint32(26).string(message.description);
    }
    Object.entries(message.fields || {}).forEach(([key, value]) => {
      UpdateCredentialTemplateRequest_FieldsEntry.encode(
        { key: key as any, value },
        writer.uint32(34).fork()
      ).ldelim();
    });
    Object.entries(message.fieldOrdering || {}).forEach(([key, value]) => {
      UpdateCredentialTemplateRequest_FieldOrderingEntry.encode(
        { key: key as any, value },
        writer.uint32(42).fork()
      ).ldelim();
    });
    if (message.appleWalletOptions !== undefined) {
      AppleWalletOptions.encode(
        message.appleWalletOptions,
        writer.uint32(50).fork()
      ).ldelim();
    }
    return writer;
  },

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): UpdateCredentialTemplateRequest {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseUpdateCredentialTemplateRequest();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.id = reader.string();
          break;
        case 2:
          message.title = reader.string();
          break;
        case 3:
          message.description = reader.string();
          break;
        case 4:
          const entry4 = UpdateCredentialTemplateRequest_FieldsEntry.decode(
            reader,
            reader.uint32()
          );
          if (entry4.value !== undefined) {
            message.fields![entry4.key] = entry4.value;
          }
          break;
        case 5:
          const entry5 =
            UpdateCredentialTemplateRequest_FieldOrderingEntry.decode(
              reader,
              reader.uint32()
            );
          if (entry5.value !== undefined) {
            message.fieldOrdering![entry5.key] = entry5.value;
          }
          break;
        case 6:
          message.appleWalletOptions = AppleWalletOptions.decode(
            reader,
            reader.uint32()
          );
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): UpdateCredentialTemplateRequest {
    return {
      id: isSet(object.id) ? String(object.id) : "",
      title: isSet(object.title) ? String(object.title) : undefined,
      description: isSet(object.description)
        ? String(object.description)
        : undefined,
      fields: isObject(object.fields)
        ? Object.entries(object.fields).reduce<{
            [key: string]: TemplateFieldPatch;
          }>((acc, [key, value]) => {
            acc[key] = TemplateFieldPatch.fromJSON(value);
            return acc;
          }, {})
        : {},
      fieldOrdering: isObject(object.fieldOrdering)
        ? Object.entries(object.fieldOrdering).reduce<{
            [key: string]: FieldOrdering;
          }>((acc, [key, value]) => {
            acc[key] = FieldOrdering.fromJSON(value);
            return acc;
          }, {})
        : {},
      appleWalletOptions: isSet(object.appleWalletOptions)
        ? AppleWalletOptions.fromJSON(object.appleWalletOptions)
        : undefined,
    };
  },

  toJSON(message: UpdateCredentialTemplateRequest): unknown {
    const obj: any = {};
    message.id !== undefined && (obj.id = message.id);
    message.title !== undefined && (obj.title = message.title);
    message.description !== undefined &&
      (obj.description = message.description);
    obj.fields = {};
    if (message.fields) {
      Object.entries(message.fields).forEach(([k, v]) => {
        obj.fields[k] = TemplateFieldPatch.toJSON(v);
      });
    }
    obj.fieldOrdering = {};
    if (message.fieldOrdering) {
      Object.entries(message.fieldOrdering).forEach(([k, v]) => {
        obj.fieldOrdering[k] = FieldOrdering.toJSON(v);
      });
    }
    message.appleWalletOptions !== undefined &&
      (obj.appleWalletOptions = message.appleWalletOptions
        ? AppleWalletOptions.toJSON(message.appleWalletOptions)
        : undefined);
    return obj;
  },

  fromPartial(
    object: DeepPartial<UpdateCredentialTemplateRequest>
  ): UpdateCredentialTemplateRequest {
    const message = createBaseUpdateCredentialTemplateRequest();
    message.id = object.id ?? "";
    message.title = object.title ?? undefined;
    message.description = object.description ?? undefined;
    message.fields = Object.entries(object.fields ?? {}).reduce<{
      [key: string]: TemplateFieldPatch;
    }>((acc, [key, value]) => {
      if (value !== undefined) {
        acc[key] = TemplateFieldPatch.fromPartial(value);
      }
      return acc;
    }, {});
    message.fieldOrdering = Object.entries(object.fieldOrdering ?? {}).reduce<{
      [key: string]: FieldOrdering;
    }>((acc, [key, value]) => {
      if (value !== undefined) {
        acc[key] = FieldOrdering.fromPartial(value);
      }
      return acc;
    }, {});
    message.appleWalletOptions =
      object.appleWalletOptions !== undefined &&
      object.appleWalletOptions !== null
        ? AppleWalletOptions.fromPartial(object.appleWalletOptions)
        : undefined;
    return message;
  },
};

function createBaseUpdateCredentialTemplateRequest_FieldsEntry(): UpdateCredentialTemplateRequest_FieldsEntry {
  return { key: "", value: undefined };
}

export const UpdateCredentialTemplateRequest_FieldsEntry = {
  encode(
    message: UpdateCredentialTemplateRequest_FieldsEntry,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.key !== "") {
      writer.uint32(10).string(message.key);
    }
    if (message.value !== undefined) {
      TemplateFieldPatch.encode(
        message.value,
        writer.uint32(18).fork()
      ).ldelim();
    }
    return writer;
  },

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): UpdateCredentialTemplateRequest_FieldsEntry {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseUpdateCredentialTemplateRequest_FieldsEntry();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.key = reader.string();
          break;
        case 2:
          message.value = TemplateFieldPatch.decode(reader, reader.uint32());
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): UpdateCredentialTemplateRequest_FieldsEntry {
    return {
      key: isSet(object.key) ? String(object.key) : "",
      value: isSet(object.value)
        ? TemplateFieldPatch.fromJSON(object.value)
        : undefined,
    };
  },

  toJSON(message: UpdateCredentialTemplateRequest_FieldsEntry): unknown {
    const obj: any = {};
    message.key !== undefined && (obj.key = message.key);
    message.value !== undefined &&
      (obj.value = message.value
        ? TemplateFieldPatch.toJSON(message.value)
        : undefined);
    return obj;
  },

  fromPartial(
    object: DeepPartial<UpdateCredentialTemplateRequest_FieldsEntry>
  ): UpdateCredentialTemplateRequest_FieldsEntry {
    const message = createBaseUpdateCredentialTemplateRequest_FieldsEntry();
    message.key = object.key ?? "";
    message.value =
      object.value !== undefined && object.value !== null
        ? TemplateFieldPatch.fromPartial(object.value)
        : undefined;
    return message;
  },
};

function createBaseUpdateCredentialTemplateRequest_FieldOrderingEntry(): UpdateCredentialTemplateRequest_FieldOrderingEntry {
  return { key: "", value: undefined };
}

export const UpdateCredentialTemplateRequest_FieldOrderingEntry = {
  encode(
    message: UpdateCredentialTemplateRequest_FieldOrderingEntry,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.key !== "") {
      writer.uint32(10).string(message.key);
    }
    if (message.value !== undefined) {
      FieldOrdering.encode(message.value, writer.uint32(18).fork()).ldelim();
    }
    return writer;
  },

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): UpdateCredentialTemplateRequest_FieldOrderingEntry {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message =
      createBaseUpdateCredentialTemplateRequest_FieldOrderingEntry();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.key = reader.string();
          break;
        case 2:
          message.value = FieldOrdering.decode(reader, reader.uint32());
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): UpdateCredentialTemplateRequest_FieldOrderingEntry {
    return {
      key: isSet(object.key) ? String(object.key) : "",
      value: isSet(object.value)
        ? FieldOrdering.fromJSON(object.value)
        : undefined,
    };
  },

  toJSON(message: UpdateCredentialTemplateRequest_FieldOrderingEntry): unknown {
    const obj: any = {};
    message.key !== undefined && (obj.key = message.key);
    message.value !== undefined &&
      (obj.value = message.value
        ? FieldOrdering.toJSON(message.value)
        : undefined);
    return obj;
  },

  fromPartial(
    object: DeepPartial<UpdateCredentialTemplateRequest_FieldOrderingEntry>
  ): UpdateCredentialTemplateRequest_FieldOrderingEntry {
    const message =
      createBaseUpdateCredentialTemplateRequest_FieldOrderingEntry();
    message.key = object.key ?? "";
    message.value =
      object.value !== undefined && object.value !== null
        ? FieldOrdering.fromPartial(object.value)
        : undefined;
    return message;
  },
};

function createBaseUpdateCredentialTemplateResponse(): UpdateCredentialTemplateResponse {
  return { updatedTemplate: undefined };
}

export const UpdateCredentialTemplateResponse = {
  encode(
    message: UpdateCredentialTemplateResponse,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.updatedTemplate !== undefined) {
      TemplateData.encode(
        message.updatedTemplate,
        writer.uint32(10).fork()
      ).ldelim();
    }
    return writer;
  },

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): UpdateCredentialTemplateResponse {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseUpdateCredentialTemplateResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.updatedTemplate = TemplateData.decode(
            reader,
            reader.uint32()
          );
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): UpdateCredentialTemplateResponse {
    return {
      updatedTemplate: isSet(object.updatedTemplate)
        ? TemplateData.fromJSON(object.updatedTemplate)
        : undefined,
    };
  },

  toJSON(message: UpdateCredentialTemplateResponse): unknown {
    const obj: any = {};
    message.updatedTemplate !== undefined &&
      (obj.updatedTemplate = message.updatedTemplate
        ? TemplateData.toJSON(message.updatedTemplate)
        : undefined);
    return obj;
  },

  fromPartial(
    object: DeepPartial<UpdateCredentialTemplateResponse>
  ): UpdateCredentialTemplateResponse {
    const message = createBaseUpdateCredentialTemplateResponse();
    message.updatedTemplate =
      object.updatedTemplate !== undefined && object.updatedTemplate !== null
        ? TemplateData.fromPartial(object.updatedTemplate)
        : undefined;
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
    dateCreated: "",
    title: "",
    description: "",
    fieldOrdering: {},
    appleWalletOptions: undefined,
  };
}

export const TemplateData = {
  encode(
    message: TemplateData,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.id !== undefined && message.id !== "") {
      writer.uint32(10).string(message.id);
    }
    if (message.name !== undefined && message.name !== "") {
      writer.uint32(18).string(message.name);
    }
    if (message.version !== undefined && message.version !== 0) {
      writer.uint32(24).int32(message.version);
    }
    Object.entries(message.fields || {}).forEach(([key, value]) => {
      TemplateData_FieldsEntry.encode(
        { key: key as any, value },
        writer.uint32(34).fork()
      ).ldelim();
    });
    if (message.allowAdditionalFields === true) {
      writer.uint32(40).bool(message.allowAdditionalFields);
    }
    if (message.schemaUri !== undefined && message.schemaUri !== "") {
      writer.uint32(50).string(message.schemaUri);
    }
    if (message.contextUri !== undefined && message.contextUri !== "") {
      writer.uint32(58).string(message.contextUri);
    }
    if (message.ecosystemId !== undefined && message.ecosystemId !== "") {
      writer.uint32(66).string(message.ecosystemId);
    }
    if (message.type !== undefined && message.type !== "") {
      writer.uint32(74).string(message.type);
    }
    if (message.createdBy !== undefined && message.createdBy !== "") {
      writer.uint32(82).string(message.createdBy);
    }
    if (message.dateCreated !== undefined && message.dateCreated !== "") {
      writer.uint32(90).string(message.dateCreated);
    }
    if (message.title !== undefined && message.title !== "") {
      writer.uint32(98).string(message.title);
    }
    if (message.description !== undefined && message.description !== "") {
      writer.uint32(106).string(message.description);
    }
    Object.entries(message.fieldOrdering || {}).forEach(([key, value]) => {
      TemplateData_FieldOrderingEntry.encode(
        { key: key as any, value },
        writer.uint32(114).fork()
      ).ldelim();
    });
    if (message.appleWalletOptions !== undefined) {
      AppleWalletOptions.encode(
        message.appleWalletOptions,
        writer.uint32(122).fork()
      ).ldelim();
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
            message.fields![entry4.key] = entry4.value;
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
        case 11:
          message.dateCreated = reader.string();
          break;
        case 12:
          message.title = reader.string();
          break;
        case 13:
          message.description = reader.string();
          break;
        case 14:
          const entry14 = TemplateData_FieldOrderingEntry.decode(
            reader,
            reader.uint32()
          );
          if (entry14.value !== undefined) {
            message.fieldOrdering![entry14.key] = entry14.value;
          }
          break;
        case 15:
          message.appleWalletOptions = AppleWalletOptions.decode(
            reader,
            reader.uint32()
          );
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
      dateCreated: isSet(object.dateCreated) ? String(object.dateCreated) : "",
      title: isSet(object.title) ? String(object.title) : "",
      description: isSet(object.description) ? String(object.description) : "",
      fieldOrdering: isObject(object.fieldOrdering)
        ? Object.entries(object.fieldOrdering).reduce<{
            [key: string]: FieldOrdering;
          }>((acc, [key, value]) => {
            acc[key] = FieldOrdering.fromJSON(value);
            return acc;
          }, {})
        : {},
      appleWalletOptions: isSet(object.appleWalletOptions)
        ? AppleWalletOptions.fromJSON(object.appleWalletOptions)
        : undefined,
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
    message.dateCreated !== undefined &&
      (obj.dateCreated = message.dateCreated);
    message.title !== undefined && (obj.title = message.title);
    message.description !== undefined &&
      (obj.description = message.description);
    obj.fieldOrdering = {};
    if (message.fieldOrdering) {
      Object.entries(message.fieldOrdering).forEach(([k, v]) => {
        obj.fieldOrdering[k] = FieldOrdering.toJSON(v);
      });
    }
    message.appleWalletOptions !== undefined &&
      (obj.appleWalletOptions = message.appleWalletOptions
        ? AppleWalletOptions.toJSON(message.appleWalletOptions)
        : undefined);
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
    message.dateCreated = object.dateCreated ?? "";
    message.title = object.title ?? "";
    message.description = object.description ?? "";
    message.fieldOrdering = Object.entries(object.fieldOrdering ?? {}).reduce<{
      [key: string]: FieldOrdering;
    }>((acc, [key, value]) => {
      if (value !== undefined) {
        acc[key] = FieldOrdering.fromPartial(value);
      }
      return acc;
    }, {});
    message.appleWalletOptions =
      object.appleWalletOptions !== undefined &&
      object.appleWalletOptions !== null
        ? AppleWalletOptions.fromPartial(object.appleWalletOptions)
        : undefined;
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

function createBaseTemplateData_FieldOrderingEntry(): TemplateData_FieldOrderingEntry {
  return { key: "", value: undefined };
}

export const TemplateData_FieldOrderingEntry = {
  encode(
    message: TemplateData_FieldOrderingEntry,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.key !== "") {
      writer.uint32(10).string(message.key);
    }
    if (message.value !== undefined) {
      FieldOrdering.encode(message.value, writer.uint32(18).fork()).ldelim();
    }
    return writer;
  },

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): TemplateData_FieldOrderingEntry {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseTemplateData_FieldOrderingEntry();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.key = reader.string();
          break;
        case 2:
          message.value = FieldOrdering.decode(reader, reader.uint32());
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): TemplateData_FieldOrderingEntry {
    return {
      key: isSet(object.key) ? String(object.key) : "",
      value: isSet(object.value)
        ? FieldOrdering.fromJSON(object.value)
        : undefined,
    };
  },

  toJSON(message: TemplateData_FieldOrderingEntry): unknown {
    const obj: any = {};
    message.key !== undefined && (obj.key = message.key);
    message.value !== undefined &&
      (obj.value = message.value
        ? FieldOrdering.toJSON(message.value)
        : undefined);
    return obj;
  },

  fromPartial(
    object: DeepPartial<TemplateData_FieldOrderingEntry>
  ): TemplateData_FieldOrderingEntry {
    const message = createBaseTemplateData_FieldOrderingEntry();
    message.key = object.key ?? "";
    message.value =
      object.value !== undefined && object.value !== null
        ? FieldOrdering.fromPartial(object.value)
        : undefined;
    return message;
  },
};

function createBaseAppleWalletOptions(): AppleWalletOptions {
  return {
    backgroundColor: "",
    foregroundColor: "",
    labelColor: "",
    primaryField: "",
    secondaryFields: [],
    auxiliaryFields: [],
  };
}

export const AppleWalletOptions = {
  encode(
    message: AppleWalletOptions,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (
      message.backgroundColor !== undefined &&
      message.backgroundColor !== ""
    ) {
      writer.uint32(10).string(message.backgroundColor);
    }
    if (
      message.foregroundColor !== undefined &&
      message.foregroundColor !== ""
    ) {
      writer.uint32(18).string(message.foregroundColor);
    }
    if (message.labelColor !== undefined && message.labelColor !== "") {
      writer.uint32(26).string(message.labelColor);
    }
    if (message.primaryField !== undefined && message.primaryField !== "") {
      writer.uint32(34).string(message.primaryField);
    }
    if (
      message.secondaryFields !== undefined &&
      message.secondaryFields.length !== 0
    ) {
      for (const v of message.secondaryFields) {
        writer.uint32(42).string(v!);
      }
    }
    if (
      message.auxiliaryFields !== undefined &&
      message.auxiliaryFields.length !== 0
    ) {
      for (const v of message.auxiliaryFields) {
        writer.uint32(50).string(v!);
      }
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): AppleWalletOptions {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseAppleWalletOptions();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.backgroundColor = reader.string();
          break;
        case 2:
          message.foregroundColor = reader.string();
          break;
        case 3:
          message.labelColor = reader.string();
          break;
        case 4:
          message.primaryField = reader.string();
          break;
        case 5:
          message.secondaryFields!.push(reader.string());
          break;
        case 6:
          message.auxiliaryFields!.push(reader.string());
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): AppleWalletOptions {
    return {
      backgroundColor: isSet(object.backgroundColor)
        ? String(object.backgroundColor)
        : "",
      foregroundColor: isSet(object.foregroundColor)
        ? String(object.foregroundColor)
        : "",
      labelColor: isSet(object.labelColor) ? String(object.labelColor) : "",
      primaryField: isSet(object.primaryField)
        ? String(object.primaryField)
        : "",
      secondaryFields: Array.isArray(object?.secondaryFields)
        ? object.secondaryFields.map((e: any) => String(e))
        : [],
      auxiliaryFields: Array.isArray(object?.auxiliaryFields)
        ? object.auxiliaryFields.map((e: any) => String(e))
        : [],
    };
  },

  toJSON(message: AppleWalletOptions): unknown {
    const obj: any = {};
    message.backgroundColor !== undefined &&
      (obj.backgroundColor = message.backgroundColor);
    message.foregroundColor !== undefined &&
      (obj.foregroundColor = message.foregroundColor);
    message.labelColor !== undefined && (obj.labelColor = message.labelColor);
    message.primaryField !== undefined &&
      (obj.primaryField = message.primaryField);
    if (message.secondaryFields) {
      obj.secondaryFields = message.secondaryFields.map((e) => e);
    } else {
      obj.secondaryFields = [];
    }
    if (message.auxiliaryFields) {
      obj.auxiliaryFields = message.auxiliaryFields.map((e) => e);
    } else {
      obj.auxiliaryFields = [];
    }
    return obj;
  },

  fromPartial(object: DeepPartial<AppleWalletOptions>): AppleWalletOptions {
    const message = createBaseAppleWalletOptions();
    message.backgroundColor = object.backgroundColor ?? "";
    message.foregroundColor = object.foregroundColor ?? "";
    message.labelColor = object.labelColor ?? "";
    message.primaryField = object.primaryField ?? "";
    message.secondaryFields = object.secondaryFields?.map((e) => e) || [];
    message.auxiliaryFields = object.auxiliaryFields?.map((e) => e) || [];
    return message;
  },
};

function createBaseFieldOrdering(): FieldOrdering {
  return { order: 0, section: "" };
}

export const FieldOrdering = {
  encode(
    message: FieldOrdering,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.order !== undefined && message.order !== 0) {
      writer.uint32(8).int32(message.order);
    }
    if (message.section !== undefined && message.section !== "") {
      writer.uint32(18).string(message.section);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): FieldOrdering {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseFieldOrdering();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.order = reader.int32();
          break;
        case 2:
          message.section = reader.string();
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): FieldOrdering {
    return {
      order: isSet(object.order) ? Number(object.order) : 0,
      section: isSet(object.section) ? String(object.section) : "",
    };
  },

  toJSON(message: FieldOrdering): unknown {
    const obj: any = {};
    message.order !== undefined && (obj.order = Math.round(message.order));
    message.section !== undefined && (obj.section = message.section);
    return obj;
  },

  fromPartial(object: DeepPartial<FieldOrdering>): FieldOrdering {
    const message = createBaseFieldOrdering();
    message.order = object.order ?? 0;
    message.section = object.section ?? "";
    return message;
  },
};

function createBaseTemplateField(): TemplateField {
  return {
    title: "",
    description: "",
    optional: false,
    type: 0,
    annotations: {},
    uriData: undefined,
  };
}

export const TemplateField = {
  encode(
    message: TemplateField,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.title !== undefined && message.title !== "") {
      writer.uint32(10).string(message.title);
    }
    if (message.description !== undefined && message.description !== "") {
      writer.uint32(18).string(message.description);
    }
    if (message.optional === true) {
      writer.uint32(24).bool(message.optional);
    }
    if (message.type !== undefined && message.type !== 0) {
      writer.uint32(32).int32(message.type);
    }
    Object.entries(message.annotations || {}).forEach(([key, value]) => {
      TemplateField_AnnotationsEntry.encode(
        { key: key as any, value },
        writer.uint32(42).fork()
      ).ldelim();
    });
    if (message.uriData !== undefined) {
      UriFieldData.encode(message.uriData, writer.uint32(50).fork()).ldelim();
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
        case 1:
          message.title = reader.string();
          break;
        case 2:
          message.description = reader.string();
          break;
        case 3:
          message.optional = reader.bool();
          break;
        case 4:
          message.type = reader.int32() as any;
          break;
        case 5:
          const entry5 = TemplateField_AnnotationsEntry.decode(
            reader,
            reader.uint32()
          );
          if (entry5.value !== undefined) {
            message.annotations![entry5.key] = entry5.value;
          }
          break;
        case 6:
          message.uriData = UriFieldData.decode(reader, reader.uint32());
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
      title: isSet(object.title) ? String(object.title) : "",
      description: isSet(object.description) ? String(object.description) : "",
      optional: isSet(object.optional) ? Boolean(object.optional) : false,
      type: isSet(object.type) ? fieldTypeFromJSON(object.type) : 0,
      annotations: isObject(object.annotations)
        ? Object.entries(object.annotations).reduce<{ [key: string]: string }>(
            (acc, [key, value]) => {
              acc[key] = String(value);
              return acc;
            },
            {}
          )
        : {},
      uriData: isSet(object.uriData)
        ? UriFieldData.fromJSON(object.uriData)
        : undefined,
    };
  },

  toJSON(message: TemplateField): unknown {
    const obj: any = {};
    message.title !== undefined && (obj.title = message.title);
    message.description !== undefined &&
      (obj.description = message.description);
    message.optional !== undefined && (obj.optional = message.optional);
    message.type !== undefined && (obj.type = fieldTypeToJSON(message.type));
    obj.annotations = {};
    if (message.annotations) {
      Object.entries(message.annotations).forEach(([k, v]) => {
        obj.annotations[k] = v;
      });
    }
    message.uriData !== undefined &&
      (obj.uriData = message.uriData
        ? UriFieldData.toJSON(message.uriData)
        : undefined);
    return obj;
  },

  fromPartial(object: DeepPartial<TemplateField>): TemplateField {
    const message = createBaseTemplateField();
    message.title = object.title ?? "";
    message.description = object.description ?? "";
    message.optional = object.optional ?? false;
    message.type = object.type ?? 0;
    message.annotations = Object.entries(object.annotations ?? {}).reduce<{
      [key: string]: string;
    }>((acc, [key, value]) => {
      if (value !== undefined) {
        acc[key] = String(value);
      }
      return acc;
    }, {});
    message.uriData =
      object.uriData !== undefined && object.uriData !== null
        ? UriFieldData.fromPartial(object.uriData)
        : undefined;
    return message;
  },
};

function createBaseTemplateField_AnnotationsEntry(): TemplateField_AnnotationsEntry {
  return { key: "", value: "" };
}

export const TemplateField_AnnotationsEntry = {
  encode(
    message: TemplateField_AnnotationsEntry,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.key !== "") {
      writer.uint32(10).string(message.key);
    }
    if (message.value !== "") {
      writer.uint32(18).string(message.value);
    }
    return writer;
  },

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): TemplateField_AnnotationsEntry {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseTemplateField_AnnotationsEntry();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.key = reader.string();
          break;
        case 2:
          message.value = reader.string();
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): TemplateField_AnnotationsEntry {
    return {
      key: isSet(object.key) ? String(object.key) : "",
      value: isSet(object.value) ? String(object.value) : "",
    };
  },

  toJSON(message: TemplateField_AnnotationsEntry): unknown {
    const obj: any = {};
    message.key !== undefined && (obj.key = message.key);
    message.value !== undefined && (obj.value = message.value);
    return obj;
  },

  fromPartial(
    object: DeepPartial<TemplateField_AnnotationsEntry>
  ): TemplateField_AnnotationsEntry {
    const message = createBaseTemplateField_AnnotationsEntry();
    message.key = object.key ?? "";
    message.value = object.value ?? "";
    return message;
  },
};

function createBaseTemplateFieldPatch(): TemplateFieldPatch {
  return { title: undefined, description: undefined, uriData: undefined };
}

export const TemplateFieldPatch = {
  encode(
    message: TemplateFieldPatch,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.title !== undefined) {
      writer.uint32(10).string(message.title);
    }
    if (message.description !== undefined) {
      writer.uint32(18).string(message.description);
    }
    if (message.uriData !== undefined) {
      UriFieldData.encode(message.uriData, writer.uint32(26).fork()).ldelim();
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): TemplateFieldPatch {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseTemplateFieldPatch();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.title = reader.string();
          break;
        case 2:
          message.description = reader.string();
          break;
        case 3:
          message.uriData = UriFieldData.decode(reader, reader.uint32());
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): TemplateFieldPatch {
    return {
      title: isSet(object.title) ? String(object.title) : undefined,
      description: isSet(object.description)
        ? String(object.description)
        : undefined,
      uriData: isSet(object.uriData)
        ? UriFieldData.fromJSON(object.uriData)
        : undefined,
    };
  },

  toJSON(message: TemplateFieldPatch): unknown {
    const obj: any = {};
    message.title !== undefined && (obj.title = message.title);
    message.description !== undefined &&
      (obj.description = message.description);
    message.uriData !== undefined &&
      (obj.uriData = message.uriData
        ? UriFieldData.toJSON(message.uriData)
        : undefined);
    return obj;
  },

  fromPartial(object: DeepPartial<TemplateFieldPatch>): TemplateFieldPatch {
    const message = createBaseTemplateFieldPatch();
    message.title = object.title ?? undefined;
    message.description = object.description ?? undefined;
    message.uriData =
      object.uriData !== undefined && object.uriData !== null
        ? UriFieldData.fromPartial(object.uriData)
        : undefined;
    return message;
  },
};

function createBaseUriFieldData(): UriFieldData {
  return { mimeType: "", renderMethod: 0 };
}

export const UriFieldData = {
  encode(
    message: UriFieldData,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.mimeType !== undefined && message.mimeType !== "") {
      writer.uint32(10).string(message.mimeType);
    }
    if (message.renderMethod !== undefined && message.renderMethod !== 0) {
      writer.uint32(16).int32(message.renderMethod);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): UriFieldData {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseUriFieldData();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.mimeType = reader.string();
          break;
        case 2:
          message.renderMethod = reader.int32() as any;
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): UriFieldData {
    return {
      mimeType: isSet(object.mimeType) ? String(object.mimeType) : "",
      renderMethod: isSet(object.renderMethod)
        ? uriRenderMethodFromJSON(object.renderMethod)
        : 0,
    };
  },

  toJSON(message: UriFieldData): unknown {
    const obj: any = {};
    message.mimeType !== undefined && (obj.mimeType = message.mimeType);
    message.renderMethod !== undefined &&
      (obj.renderMethod = uriRenderMethodToJSON(message.renderMethod));
    return obj;
  },

  fromPartial(object: DeepPartial<UriFieldData>): UriFieldData {
    const message = createBaseUriFieldData();
    message.mimeType = object.mimeType ?? "";
    message.renderMethod = object.renderMethod ?? 0;
    return message;
  },
};

export type CredentialTemplatesDefinition =
  typeof CredentialTemplatesDefinition;
export const CredentialTemplatesDefinition = {
  name: "CredentialTemplates",
  fullName: "services.verifiablecredentials.templates.v1.CredentialTemplates",
  methods: {
    /** Create a credential template in the current ecosystem */
    create: {
      name: "Create",
      requestType: CreateCredentialTemplateRequest,
      requestStream: false,
      responseType: CreateCredentialTemplateResponse,
      responseStream: false,
      options: {},
    },
    /** Fetch a credential template by ID */
    get: {
      name: "Get",
      requestType: GetCredentialTemplateRequest,
      requestStream: false,
      responseType: GetCredentialTemplateResponse,
      responseStream: false,
      options: {},
    },
    /** Update metadata of a template */
    update: {
      name: "Update",
      requestType: UpdateCredentialTemplateRequest,
      requestStream: false,
      responseType: UpdateCredentialTemplateResponse,
      responseStream: false,
      options: {},
    },
    /** Search credential templates using SQL, returning strongly-typed template data */
    list: {
      name: "List",
      requestType: ListCredentialTemplatesRequest,
      requestStream: false,
      responseType: ListCredentialTemplatesResponse,
      responseStream: false,
      options: {},
    },
    /** Search credential templates using SQL, returning raw JSON data */
    search: {
      name: "Search",
      requestType: SearchCredentialTemplatesRequest,
      requestStream: false,
      responseType: SearchCredentialTemplatesResponse,
      responseStream: false,
      options: {},
    },
    /** Delete a credential template from the current ecosystem by ID */
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

function isObject(value: any): boolean {
  return typeof value === "object" && value !== null;
}

function isSet(value: any): boolean {
  return value !== null && value !== undefined;
}
