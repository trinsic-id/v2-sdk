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

export enum VerificationShareType {
    OPTIONAL = 0,
    REQUIRED = 1,
    UNRECOGNIZED = -1,
}

export function verificationShareTypeFromJSON(
    object: any,
): VerificationShareType {
    switch (object) {
        case 0:
        case "OPTIONAL":
            return VerificationShareType.OPTIONAL;
        case 1:
        case "REQUIRED":
            return VerificationShareType.REQUIRED;
        case -1:
        case "UNRECOGNIZED":
        default:
            return VerificationShareType.UNRECOGNIZED;
    }
}

export function verificationShareTypeToJSON(
    object: VerificationShareType,
): string {
    switch (object) {
        case VerificationShareType.OPTIONAL:
            return "OPTIONAL";
        case VerificationShareType.REQUIRED:
            return "REQUIRED";
        case VerificationShareType.UNRECOGNIZED:
        default:
            return "UNRECOGNIZED";
    }
}

/** Request to fetch a template by ID */
export interface GetCredentialTemplateRequest {
    /** ID of template to fetch */
    id?: string | undefined;
}

/** Response to `GetCredentialTemplateRequest` */
export interface GetCredentialTemplateResponse {
    /** Template fetched by ID */
    template?: TemplateData | undefined;
}

/** Request to search templates using a SQL query */
export interface SearchCredentialTemplatesRequest {
    /** SQL query to execute. Example: `SELECT * FROM c WHERE c.name = 'Diploma'` */
    query?: string | undefined;
    /**
     * Token provided by previous `SearchCredentialTemplatesResponse`
     * if more data is available for query
     */
    continuationToken?: string | undefined;
}

/** Response to `SearchCredentialTemplatesRequest` */
export interface SearchCredentialTemplatesResponse {
    /** Raw JSON data returned from query */
    itemsJson?: string | undefined;
    /** Whether more results are available for this query via `continuation_token` */
    hasMoreResults?: boolean | undefined;
    /** Token to fetch next set of results via `SearchCredentialTemplatesRequest` */
    continuationToken?: string | undefined;
}

/** Request to list templates using a SQL query */
export interface ListCredentialTemplatesRequest {
    /** SQL query to execute. Example: `SELECT * FROM c WHERE c.name = 'Diploma'` */
    query?: string | undefined;
    /**
     * Token provided by previous `ListCredentialTemplatesResponse`
     * if more data is available for query
     */
    continuationToken?: string | undefined;
}

/** Response to `ListCredentialTemplatesRequest` */
export interface ListCredentialTemplatesResponse {
    /** Templates found by query */
    templates?: TemplateData[] | undefined;
    /** Whether more results are available for this query via `continuation_token` */
    hasMoreResults?: boolean | undefined;
    /** Token to fetch next set of results via `ListCredentialTemplatesRequest` */
    continuationToken?: string | undefined;
}

/** Request to delete a template by ID */
export interface DeleteCredentialTemplateRequest {
    /** ID of template to delete */
    id?: string | undefined;
}

/** Response to `DeleteCredentialTemplateRequest` */
export interface DeleteCredentialTemplateResponse {}

/** Request to create a new template */
export interface CreateCredentialTemplateRequest {
    /** Name of new template. Must be a unique identifier within its ecosystem. */
    name?: string | undefined;
    /** Fields which compose the template */
    fields?: { [key: string]: TemplateField } | undefined;
    /**
     * Whether credentials may be issued against this template which have fields
     * not specified in `fields`
     */
    allowAdditionalFields?: boolean | undefined;
    /** Human-readable name of template */
    title?: string | undefined;
    /** Human-readable description of template */
    description?: string | undefined;
    /**
     * Optional map describing how to order and categorize the fields within the template. The key of this map is the field `name`.
     * If not provided, this will be auto-generated.
     */
    fieldOrdering?: { [key: string]: FieldOrdering } | undefined;
    /** Options for rendering the template in Apple Wallet */
    appleWalletOptions?: AppleWalletOptions | undefined;
}

export interface CreateCredentialTemplateRequest_FieldsEntry {
    key: string;
    value?: TemplateField | undefined;
}

export interface CreateCredentialTemplateRequest_FieldOrderingEntry {
    key: string;
    value?: FieldOrdering | undefined;
}

/** Response to `CreateCredentialTemplateRequest` */
export interface CreateCredentialTemplateResponse {
    /** Created template */
    data?: TemplateData | undefined;
}

/** Request to update display information for a template */
export interface UpdateCredentialTemplateRequest {
    /** ID of Template to update */
    id?: string | undefined;
    /** New human-readable title of Template */
    title?: string | undefined;
    /** New human-readable description of Template */
    description?: string | undefined;
    /** Fields to update within the Template */
    fields?: { [key: string]: TemplateFieldPatch } | undefined;
    /** New field ordering options. See documentation for template creation for usage information. */
    fieldOrdering?: { [key: string]: FieldOrdering } | undefined;
    /** New Apple Wallet configuration */
    appleWalletOptions?: AppleWalletOptions | undefined;
}

export interface UpdateCredentialTemplateRequest_FieldsEntry {
    key: string;
    value?: TemplateFieldPatch | undefined;
}

export interface UpdateCredentialTemplateRequest_FieldOrderingEntry {
    key: string;
    value?: FieldOrdering | undefined;
}

/** Response to `UpdateCredentialTemplateRequest` */
export interface UpdateCredentialTemplateResponse {
    /** The Template after the update has been applied */
    updatedTemplate?: TemplateData | undefined;
}

/** Credential Template */
export interface TemplateData {
    /** Template ID */
    id?: string | undefined;
    /** Template name */
    name?: string | undefined;
    /** Template version number */
    version?: number | undefined;
    /** Fields defined for the template */
    fields?: { [key: string]: TemplateField } | undefined;
    /**
     * Whether credentials issued against this template may
     * contain fields not defined by template
     */
    allowAdditionalFields?: boolean | undefined;
    /** URI pointing to template JSON schema document */
    schemaUri?: string | undefined;
    /** ID of ecosystem in which template resides */
    ecosystemId?: string | undefined;
    /** Template type (`VerifiableCredential`) */
    type?: string | undefined;
    /** ID of template creator */
    createdBy?: string | undefined;
    /** Date when template was created as ISO 8601 utc string */
    dateCreated?: string | undefined;
    /** Human-readable template title */
    title?: string | undefined;
    /** Human-readable template description */
    description?: string | undefined;
    /** Map describing how to order and categorize the fields within the template. The key of this map is the field `name`. */
    fieldOrdering?: { [key: string]: FieldOrdering } | undefined;
    /** Options for rendering the template in Apple Wallet */
    appleWalletOptions?: AppleWalletOptions | undefined;
}

export interface TemplateData_FieldsEntry {
    key: string;
    value?: TemplateField | undefined;
}

export interface TemplateData_FieldOrderingEntry {
    key: string;
    value?: FieldOrdering | undefined;
}

/** Configuration options for Apple Wallet when */
export interface AppleWalletOptions {
    /** Background color, in hex format, of credential when stored in an Apple Wallet. */
    backgroundColor?: string | undefined;
    /** Foreground color, in hex format, of credential when stored in an Apple Wallet. */
    foregroundColor?: string | undefined;
    /** Label color, in hex format, of credential when stored in an Apple Wallet. */
    labelColor?: string | undefined;
    /** The ID of the template field which should be used as the primary field of a credential. */
    primaryField?: string | undefined;
    /** The secondary fields of the credential. This is a mapping between the order of a secondary field (0 or 1) and the field name. */
    secondaryFields?: string[] | undefined;
    /** The auxiliary fields of the credential. This is a mapping between the order of an auxiliary field (0 or 1) and the field name. */
    auxiliaryFields?: string[] | undefined;
}

/** Ordering information for a template field */
export interface FieldOrdering {
    /**
     * The order of the field; must be unique within the Template. Fields are sorted by order ascending when displaying a credential.
     * Field orders must be contiguous from `0` to the number of fields minus 1.
     */
    order?: number | undefined;
    /**
     * The human-readable name of the section this field appears in; used to group together fields when displaying a credential.
     * Sections must be contiguous with respect to `order`.
     */
    section?: string | undefined;
}

/** A field defined in a template */
export interface TemplateField {
    /** Human-readable name of the field */
    title?: string | undefined;
    /** Human-readable description of the field */
    description?: string | undefined;
    /** Whether this field may be omitted when a credential is issued against the template */
    optional?: boolean | undefined;
    /** The type of the field */
    type?: FieldType | undefined;
    /** How to deal with this URI field when rendering credential. Only use if `type` is `URI`. */
    uriData?: UriFieldData | undefined;
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
    mimeType?: string | undefined;
    /** How to display the URI value when rendering a credential. */
    renderMethod?: UriRenderMethod | undefined;
}

/** Request to fetch a template by ID */
export interface GetVerificationTemplateRequest {
    /** ID of template to fetch */
    id?: string | undefined;
}

/** Response to `GetCredentialTemplateRequest` */
export interface GetVerificationTemplateResponse {
    /** Template fetched by ID */
    template?: VerificationTemplateData | undefined;
}

export interface CreateVerificationTemplateRequest {
    /** Name of new template. Must be a unique identifier within its ecosystem. */
    name?: string | undefined;
    /** Fields which will be required in the verification proof template */
    fields?: { [key: string]: VerificationTemplateField } | undefined;
    /** Source credential template, used for verifying that the specified `fields` are present in the credential template */
    credentialTemplateId?: string | undefined;
    /** Human-readable name of template */
    title?: string | undefined;
    /** Human-readable description of template */
    description?: string | undefined;
}

export interface CreateVerificationTemplateRequest_FieldsEntry {
    key: string;
    value?: VerificationTemplateField | undefined;
}

export interface CreateVerificationTemplateResponse {
    data?: VerificationTemplateData | undefined;
}

export interface UpdateVerificationTemplateRequest {
    /** ID of Template to update */
    id?: string | undefined;
    /** New human-readable title of Template */
    title?: string | undefined;
    /** New human-readable description of Template */
    description?: string | undefined;
    /** Fields to update within the Template */
    fields?: { [key: string]: VerificationTemplateFieldPatch } | undefined;
}

export interface UpdateVerificationTemplateRequest_FieldsEntry {
    key: string;
    value?: VerificationTemplateFieldPatch | undefined;
}

export interface UpdateVerificationTemplateResponse {
    template?: VerificationTemplateData | undefined;
}

export interface DeleteVerificationTemplateRequest {
    verificationTemplateId?: string | undefined;
}

/** This space intentionally left blank */
export interface DeleteVerificationTemplateResponse {}

/** Verification Template */
export interface VerificationTemplateData {
    /** Template ID */
    id?: string | undefined;
    /** Template name */
    name?: string | undefined;
    /** Template version number */
    version?: number | undefined;
    /** Fields defined for the template */
    fields?: { [key: string]: VerificationTemplateField } | undefined;
    /** Source credential template, used for verifying that the specified `fields` are present in the credential template */
    credentialTemplateId?: string | undefined;
    /** ID of ecosystem in which template resides */
    ecosystemId?: string | undefined;
    /** Template type (`VerificationTemplate`) */
    type?: string | undefined;
    /** ID of template creator */
    createdBy?: string | undefined;
    /** Date when template was created as ISO 8601 utc string */
    dateCreated?: string | undefined;
    /** Human-readable template title */
    title?: string | undefined;
    /** Human-readable template description */
    description?: string | undefined;
}

export interface VerificationTemplateData_FieldsEntry {
    key: string;
    value?: VerificationTemplateField | undefined;
}

/** Request to list templates using a SQL query */
export interface ListVerificationTemplatesRequest {
    /** SQL query to execute. Example: `SELECT * FROM c WHERE c.name = 'Diploma'` */
    query?: string | undefined;
    /**
     * Token provided by previous `ListCredentialTemplatesResponse`
     * if more data is available for query
     */
    continuationToken?: string | undefined;
}

export interface ListVerificationTemplatesResponse {
    /** Templates found by query */
    templates?: VerificationTemplateData[] | undefined;
    /** Whether more results are available for this query via `continuation_token` */
    hasMoreResults?: boolean | undefined;
    /** Token to fetch next set of results via `ListVerificationTemplatesRequest` */
    continuationToken?: string | undefined;
}

/** A field defined in a template */
export interface VerificationTemplateField {
    /** Whether this field may be omitted on proof creation */
    fieldShareType?: VerificationShareType | undefined;
    /** User-facing explanation of what is done with this data */
    usagePolicy?: string | undefined;
}

/** A patch to apply to an existing template field */
export interface VerificationTemplateFieldPatch {
    /** Human-readable name of the field */
    fieldShareType?: VerificationShareType | undefined;
    /** User-facing explanation of what is done with this data */
    usagePolicy?: string | undefined;
}

function createBaseGetCredentialTemplateRequest(): GetCredentialTemplateRequest {
    return { id: "" };
}

export const GetCredentialTemplateRequest = {
    encode(
        message: GetCredentialTemplateRequest,
        writer: _m0.Writer = _m0.Writer.create(),
    ): _m0.Writer {
        if (message.id !== undefined && message.id !== "") {
            writer.uint32(10).string(message.id);
        }
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number,
    ): GetCredentialTemplateRequest {
        const reader =
            input instanceof _m0.Reader ? input : _m0.Reader.create(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseGetCredentialTemplateRequest();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    if (tag !== 10) {
                        break;
                    }

                    message.id = reader.string();
                    continue;
            }
            if ((tag & 7) === 4 || tag === 0) {
                break;
            }
            reader.skipType(tag & 7);
        }
        return message;
    },

    fromJSON(object: any): GetCredentialTemplateRequest {
        return { id: isSet(object.id) ? String(object.id) : "" };
    },

    toJSON(message: GetCredentialTemplateRequest): unknown {
        const obj: any = {};
        if (message.id !== undefined && message.id !== "") {
            obj.id = message.id;
        }
        return obj;
    },

    create(
        base?: DeepPartial<GetCredentialTemplateRequest>,
    ): GetCredentialTemplateRequest {
        return GetCredentialTemplateRequest.fromPartial(base ?? {});
    },
    fromPartial(
        object: DeepPartial<GetCredentialTemplateRequest>,
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
        writer: _m0.Writer = _m0.Writer.create(),
    ): _m0.Writer {
        if (message.template !== undefined) {
            TemplateData.encode(
                message.template,
                writer.uint32(10).fork(),
            ).ldelim();
        }
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number,
    ): GetCredentialTemplateResponse {
        const reader =
            input instanceof _m0.Reader ? input : _m0.Reader.create(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseGetCredentialTemplateResponse();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    if (tag !== 10) {
                        break;
                    }

                    message.template = TemplateData.decode(
                        reader,
                        reader.uint32(),
                    );
                    continue;
            }
            if ((tag & 7) === 4 || tag === 0) {
                break;
            }
            reader.skipType(tag & 7);
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
        if (message.template !== undefined) {
            obj.template = TemplateData.toJSON(message.template);
        }
        return obj;
    },

    create(
        base?: DeepPartial<GetCredentialTemplateResponse>,
    ): GetCredentialTemplateResponse {
        return GetCredentialTemplateResponse.fromPartial(base ?? {});
    },
    fromPartial(
        object: DeepPartial<GetCredentialTemplateResponse>,
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
        writer: _m0.Writer = _m0.Writer.create(),
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
        length?: number,
    ): SearchCredentialTemplatesRequest {
        const reader =
            input instanceof _m0.Reader ? input : _m0.Reader.create(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseSearchCredentialTemplatesRequest();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    if (tag !== 10) {
                        break;
                    }

                    message.query = reader.string();
                    continue;
                case 2:
                    if (tag !== 18) {
                        break;
                    }

                    message.continuationToken = reader.string();
                    continue;
            }
            if ((tag & 7) === 4 || tag === 0) {
                break;
            }
            reader.skipType(tag & 7);
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
        if (message.query !== undefined && message.query !== "") {
            obj.query = message.query;
        }
        if (
            message.continuationToken !== undefined &&
            message.continuationToken !== ""
        ) {
            obj.continuationToken = message.continuationToken;
        }
        return obj;
    },

    create(
        base?: DeepPartial<SearchCredentialTemplatesRequest>,
    ): SearchCredentialTemplatesRequest {
        return SearchCredentialTemplatesRequest.fromPartial(base ?? {});
    },
    fromPartial(
        object: DeepPartial<SearchCredentialTemplatesRequest>,
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
        writer: _m0.Writer = _m0.Writer.create(),
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
        length?: number,
    ): SearchCredentialTemplatesResponse {
        const reader =
            input instanceof _m0.Reader ? input : _m0.Reader.create(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseSearchCredentialTemplatesResponse();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    if (tag !== 10) {
                        break;
                    }

                    message.itemsJson = reader.string();
                    continue;
                case 2:
                    if (tag !== 16) {
                        break;
                    }

                    message.hasMoreResults = reader.bool();
                    continue;
                case 4:
                    if (tag !== 34) {
                        break;
                    }

                    message.continuationToken = reader.string();
                    continue;
            }
            if ((tag & 7) === 4 || tag === 0) {
                break;
            }
            reader.skipType(tag & 7);
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
        if (message.itemsJson !== undefined && message.itemsJson !== "") {
            obj.itemsJson = message.itemsJson;
        }
        if (message.hasMoreResults === true) {
            obj.hasMoreResults = message.hasMoreResults;
        }
        if (
            message.continuationToken !== undefined &&
            message.continuationToken !== ""
        ) {
            obj.continuationToken = message.continuationToken;
        }
        return obj;
    },

    create(
        base?: DeepPartial<SearchCredentialTemplatesResponse>,
    ): SearchCredentialTemplatesResponse {
        return SearchCredentialTemplatesResponse.fromPartial(base ?? {});
    },
    fromPartial(
        object: DeepPartial<SearchCredentialTemplatesResponse>,
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
        writer: _m0.Writer = _m0.Writer.create(),
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
        length?: number,
    ): ListCredentialTemplatesRequest {
        const reader =
            input instanceof _m0.Reader ? input : _m0.Reader.create(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseListCredentialTemplatesRequest();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    if (tag !== 10) {
                        break;
                    }

                    message.query = reader.string();
                    continue;
                case 2:
                    if (tag !== 18) {
                        break;
                    }

                    message.continuationToken = reader.string();
                    continue;
            }
            if ((tag & 7) === 4 || tag === 0) {
                break;
            }
            reader.skipType(tag & 7);
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
        if (message.query !== undefined && message.query !== "") {
            obj.query = message.query;
        }
        if (
            message.continuationToken !== undefined &&
            message.continuationToken !== ""
        ) {
            obj.continuationToken = message.continuationToken;
        }
        return obj;
    },

    create(
        base?: DeepPartial<ListCredentialTemplatesRequest>,
    ): ListCredentialTemplatesRequest {
        return ListCredentialTemplatesRequest.fromPartial(base ?? {});
    },
    fromPartial(
        object: DeepPartial<ListCredentialTemplatesRequest>,
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
        writer: _m0.Writer = _m0.Writer.create(),
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
        length?: number,
    ): ListCredentialTemplatesResponse {
        const reader =
            input instanceof _m0.Reader ? input : _m0.Reader.create(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseListCredentialTemplatesResponse();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    if (tag !== 10) {
                        break;
                    }

                    message.templates!.push(
                        TemplateData.decode(reader, reader.uint32()),
                    );
                    continue;
                case 2:
                    if (tag !== 16) {
                        break;
                    }

                    message.hasMoreResults = reader.bool();
                    continue;
                case 3:
                    if (tag !== 26) {
                        break;
                    }

                    message.continuationToken = reader.string();
                    continue;
            }
            if ((tag & 7) === 4 || tag === 0) {
                break;
            }
            reader.skipType(tag & 7);
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
        if (message.templates?.length) {
            obj.templates = message.templates.map((e) =>
                TemplateData.toJSON(e),
            );
        }
        if (message.hasMoreResults === true) {
            obj.hasMoreResults = message.hasMoreResults;
        }
        if (
            message.continuationToken !== undefined &&
            message.continuationToken !== ""
        ) {
            obj.continuationToken = message.continuationToken;
        }
        return obj;
    },

    create(
        base?: DeepPartial<ListCredentialTemplatesResponse>,
    ): ListCredentialTemplatesResponse {
        return ListCredentialTemplatesResponse.fromPartial(base ?? {});
    },
    fromPartial(
        object: DeepPartial<ListCredentialTemplatesResponse>,
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
        writer: _m0.Writer = _m0.Writer.create(),
    ): _m0.Writer {
        if (message.id !== undefined && message.id !== "") {
            writer.uint32(10).string(message.id);
        }
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number,
    ): DeleteCredentialTemplateRequest {
        const reader =
            input instanceof _m0.Reader ? input : _m0.Reader.create(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseDeleteCredentialTemplateRequest();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    if (tag !== 10) {
                        break;
                    }

                    message.id = reader.string();
                    continue;
            }
            if ((tag & 7) === 4 || tag === 0) {
                break;
            }
            reader.skipType(tag & 7);
        }
        return message;
    },

    fromJSON(object: any): DeleteCredentialTemplateRequest {
        return { id: isSet(object.id) ? String(object.id) : "" };
    },

    toJSON(message: DeleteCredentialTemplateRequest): unknown {
        const obj: any = {};
        if (message.id !== undefined && message.id !== "") {
            obj.id = message.id;
        }
        return obj;
    },

    create(
        base?: DeepPartial<DeleteCredentialTemplateRequest>,
    ): DeleteCredentialTemplateRequest {
        return DeleteCredentialTemplateRequest.fromPartial(base ?? {});
    },
    fromPartial(
        object: DeepPartial<DeleteCredentialTemplateRequest>,
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
        writer: _m0.Writer = _m0.Writer.create(),
    ): _m0.Writer {
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number,
    ): DeleteCredentialTemplateResponse {
        const reader =
            input instanceof _m0.Reader ? input : _m0.Reader.create(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseDeleteCredentialTemplateResponse();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
            }
            if ((tag & 7) === 4 || tag === 0) {
                break;
            }
            reader.skipType(tag & 7);
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

    create(
        base?: DeepPartial<DeleteCredentialTemplateResponse>,
    ): DeleteCredentialTemplateResponse {
        return DeleteCredentialTemplateResponse.fromPartial(base ?? {});
    },
    fromPartial(
        _: DeepPartial<DeleteCredentialTemplateResponse>,
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
        writer: _m0.Writer = _m0.Writer.create(),
    ): _m0.Writer {
        if (message.name !== undefined && message.name !== "") {
            writer.uint32(10).string(message.name);
        }
        Object.entries(message.fields || {}).forEach(([key, value]) => {
            CreateCredentialTemplateRequest_FieldsEntry.encode(
                { key: key as any, value },
                writer.uint32(18).fork(),
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
                writer.uint32(50).fork(),
            ).ldelim();
        });
        if (message.appleWalletOptions !== undefined) {
            AppleWalletOptions.encode(
                message.appleWalletOptions,
                writer.uint32(58).fork(),
            ).ldelim();
        }
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number,
    ): CreateCredentialTemplateRequest {
        const reader =
            input instanceof _m0.Reader ? input : _m0.Reader.create(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseCreateCredentialTemplateRequest();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    if (tag !== 10) {
                        break;
                    }

                    message.name = reader.string();
                    continue;
                case 2:
                    if (tag !== 18) {
                        break;
                    }

                    const entry2 =
                        CreateCredentialTemplateRequest_FieldsEntry.decode(
                            reader,
                            reader.uint32(),
                        );
                    if (entry2.value !== undefined) {
                        message.fields![entry2.key] = entry2.value;
                    }
                    continue;
                case 3:
                    if (tag !== 24) {
                        break;
                    }

                    message.allowAdditionalFields = reader.bool();
                    continue;
                case 4:
                    if (tag !== 34) {
                        break;
                    }

                    message.title = reader.string();
                    continue;
                case 5:
                    if (tag !== 42) {
                        break;
                    }

                    message.description = reader.string();
                    continue;
                case 6:
                    if (tag !== 50) {
                        break;
                    }

                    const entry6 =
                        CreateCredentialTemplateRequest_FieldOrderingEntry.decode(
                            reader,
                            reader.uint32(),
                        );
                    if (entry6.value !== undefined) {
                        message.fieldOrdering![entry6.key] = entry6.value;
                    }
                    continue;
                case 7:
                    if (tag !== 58) {
                        break;
                    }

                    message.appleWalletOptions = AppleWalletOptions.decode(
                        reader,
                        reader.uint32(),
                    );
                    continue;
            }
            if ((tag & 7) === 4 || tag === 0) {
                break;
            }
            reader.skipType(tag & 7);
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
            description: isSet(object.description)
                ? String(object.description)
                : "",
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
        if (message.name !== undefined && message.name !== "") {
            obj.name = message.name;
        }
        if (message.fields) {
            const entries = Object.entries(message.fields);
            if (entries.length > 0) {
                obj.fields = {};
                entries.forEach(([k, v]) => {
                    obj.fields[k] = TemplateField.toJSON(v);
                });
            }
        }
        if (message.allowAdditionalFields === true) {
            obj.allowAdditionalFields = message.allowAdditionalFields;
        }
        if (message.title !== undefined && message.title !== "") {
            obj.title = message.title;
        }
        if (message.description !== undefined && message.description !== "") {
            obj.description = message.description;
        }
        if (message.fieldOrdering) {
            const entries = Object.entries(message.fieldOrdering);
            if (entries.length > 0) {
                obj.fieldOrdering = {};
                entries.forEach(([k, v]) => {
                    obj.fieldOrdering[k] = FieldOrdering.toJSON(v);
                });
            }
        }
        if (message.appleWalletOptions !== undefined) {
            obj.appleWalletOptions = AppleWalletOptions.toJSON(
                message.appleWalletOptions,
            );
        }
        return obj;
    },

    create(
        base?: DeepPartial<CreateCredentialTemplateRequest>,
    ): CreateCredentialTemplateRequest {
        return CreateCredentialTemplateRequest.fromPartial(base ?? {});
    },
    fromPartial(
        object: DeepPartial<CreateCredentialTemplateRequest>,
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
        message.fieldOrdering = Object.entries(
            object.fieldOrdering ?? {},
        ).reduce<{ [key: string]: FieldOrdering }>((acc, [key, value]) => {
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
        writer: _m0.Writer = _m0.Writer.create(),
    ): _m0.Writer {
        if (message.key !== "") {
            writer.uint32(10).string(message.key);
        }
        if (message.value !== undefined) {
            TemplateField.encode(
                message.value,
                writer.uint32(18).fork(),
            ).ldelim();
        }
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number,
    ): CreateCredentialTemplateRequest_FieldsEntry {
        const reader =
            input instanceof _m0.Reader ? input : _m0.Reader.create(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseCreateCredentialTemplateRequest_FieldsEntry();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    if (tag !== 10) {
                        break;
                    }

                    message.key = reader.string();
                    continue;
                case 2:
                    if (tag !== 18) {
                        break;
                    }

                    message.value = TemplateField.decode(
                        reader,
                        reader.uint32(),
                    );
                    continue;
            }
            if ((tag & 7) === 4 || tag === 0) {
                break;
            }
            reader.skipType(tag & 7);
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
        if (message.key !== "") {
            obj.key = message.key;
        }
        if (message.value !== undefined) {
            obj.value = TemplateField.toJSON(message.value);
        }
        return obj;
    },

    create(
        base?: DeepPartial<CreateCredentialTemplateRequest_FieldsEntry>,
    ): CreateCredentialTemplateRequest_FieldsEntry {
        return CreateCredentialTemplateRequest_FieldsEntry.fromPartial(
            base ?? {},
        );
    },
    fromPartial(
        object: DeepPartial<CreateCredentialTemplateRequest_FieldsEntry>,
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
        writer: _m0.Writer = _m0.Writer.create(),
    ): _m0.Writer {
        if (message.key !== "") {
            writer.uint32(10).string(message.key);
        }
        if (message.value !== undefined) {
            FieldOrdering.encode(
                message.value,
                writer.uint32(18).fork(),
            ).ldelim();
        }
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number,
    ): CreateCredentialTemplateRequest_FieldOrderingEntry {
        const reader =
            input instanceof _m0.Reader ? input : _m0.Reader.create(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message =
            createBaseCreateCredentialTemplateRequest_FieldOrderingEntry();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    if (tag !== 10) {
                        break;
                    }

                    message.key = reader.string();
                    continue;
                case 2:
                    if (tag !== 18) {
                        break;
                    }

                    message.value = FieldOrdering.decode(
                        reader,
                        reader.uint32(),
                    );
                    continue;
            }
            if ((tag & 7) === 4 || tag === 0) {
                break;
            }
            reader.skipType(tag & 7);
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

    toJSON(
        message: CreateCredentialTemplateRequest_FieldOrderingEntry,
    ): unknown {
        const obj: any = {};
        if (message.key !== "") {
            obj.key = message.key;
        }
        if (message.value !== undefined) {
            obj.value = FieldOrdering.toJSON(message.value);
        }
        return obj;
    },

    create(
        base?: DeepPartial<CreateCredentialTemplateRequest_FieldOrderingEntry>,
    ): CreateCredentialTemplateRequest_FieldOrderingEntry {
        return CreateCredentialTemplateRequest_FieldOrderingEntry.fromPartial(
            base ?? {},
        );
    },
    fromPartial(
        object: DeepPartial<CreateCredentialTemplateRequest_FieldOrderingEntry>,
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
        writer: _m0.Writer = _m0.Writer.create(),
    ): _m0.Writer {
        if (message.data !== undefined) {
            TemplateData.encode(
                message.data,
                writer.uint32(10).fork(),
            ).ldelim();
        }
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number,
    ): CreateCredentialTemplateResponse {
        const reader =
            input instanceof _m0.Reader ? input : _m0.Reader.create(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseCreateCredentialTemplateResponse();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    if (tag !== 10) {
                        break;
                    }

                    message.data = TemplateData.decode(reader, reader.uint32());
                    continue;
            }
            if ((tag & 7) === 4 || tag === 0) {
                break;
            }
            reader.skipType(tag & 7);
        }
        return message;
    },

    fromJSON(object: any): CreateCredentialTemplateResponse {
        return {
            data: isSet(object.data)
                ? TemplateData.fromJSON(object.data)
                : undefined,
        };
    },

    toJSON(message: CreateCredentialTemplateResponse): unknown {
        const obj: any = {};
        if (message.data !== undefined) {
            obj.data = TemplateData.toJSON(message.data);
        }
        return obj;
    },

    create(
        base?: DeepPartial<CreateCredentialTemplateResponse>,
    ): CreateCredentialTemplateResponse {
        return CreateCredentialTemplateResponse.fromPartial(base ?? {});
    },
    fromPartial(
        object: DeepPartial<CreateCredentialTemplateResponse>,
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
        writer: _m0.Writer = _m0.Writer.create(),
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
                writer.uint32(34).fork(),
            ).ldelim();
        });
        Object.entries(message.fieldOrdering || {}).forEach(([key, value]) => {
            UpdateCredentialTemplateRequest_FieldOrderingEntry.encode(
                { key: key as any, value },
                writer.uint32(42).fork(),
            ).ldelim();
        });
        if (message.appleWalletOptions !== undefined) {
            AppleWalletOptions.encode(
                message.appleWalletOptions,
                writer.uint32(50).fork(),
            ).ldelim();
        }
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number,
    ): UpdateCredentialTemplateRequest {
        const reader =
            input instanceof _m0.Reader ? input : _m0.Reader.create(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseUpdateCredentialTemplateRequest();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    if (tag !== 10) {
                        break;
                    }

                    message.id = reader.string();
                    continue;
                case 2:
                    if (tag !== 18) {
                        break;
                    }

                    message.title = reader.string();
                    continue;
                case 3:
                    if (tag !== 26) {
                        break;
                    }

                    message.description = reader.string();
                    continue;
                case 4:
                    if (tag !== 34) {
                        break;
                    }

                    const entry4 =
                        UpdateCredentialTemplateRequest_FieldsEntry.decode(
                            reader,
                            reader.uint32(),
                        );
                    if (entry4.value !== undefined) {
                        message.fields![entry4.key] = entry4.value;
                    }
                    continue;
                case 5:
                    if (tag !== 42) {
                        break;
                    }

                    const entry5 =
                        UpdateCredentialTemplateRequest_FieldOrderingEntry.decode(
                            reader,
                            reader.uint32(),
                        );
                    if (entry5.value !== undefined) {
                        message.fieldOrdering![entry5.key] = entry5.value;
                    }
                    continue;
                case 6:
                    if (tag !== 50) {
                        break;
                    }

                    message.appleWalletOptions = AppleWalletOptions.decode(
                        reader,
                        reader.uint32(),
                    );
                    continue;
            }
            if ((tag & 7) === 4 || tag === 0) {
                break;
            }
            reader.skipType(tag & 7);
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
        if (message.id !== undefined && message.id !== "") {
            obj.id = message.id;
        }
        if (message.title !== undefined) {
            obj.title = message.title;
        }
        if (message.description !== undefined) {
            obj.description = message.description;
        }
        if (message.fields) {
            const entries = Object.entries(message.fields);
            if (entries.length > 0) {
                obj.fields = {};
                entries.forEach(([k, v]) => {
                    obj.fields[k] = TemplateFieldPatch.toJSON(v);
                });
            }
        }
        if (message.fieldOrdering) {
            const entries = Object.entries(message.fieldOrdering);
            if (entries.length > 0) {
                obj.fieldOrdering = {};
                entries.forEach(([k, v]) => {
                    obj.fieldOrdering[k] = FieldOrdering.toJSON(v);
                });
            }
        }
        if (message.appleWalletOptions !== undefined) {
            obj.appleWalletOptions = AppleWalletOptions.toJSON(
                message.appleWalletOptions,
            );
        }
        return obj;
    },

    create(
        base?: DeepPartial<UpdateCredentialTemplateRequest>,
    ): UpdateCredentialTemplateRequest {
        return UpdateCredentialTemplateRequest.fromPartial(base ?? {});
    },
    fromPartial(
        object: DeepPartial<UpdateCredentialTemplateRequest>,
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
        message.fieldOrdering = Object.entries(
            object.fieldOrdering ?? {},
        ).reduce<{ [key: string]: FieldOrdering }>((acc, [key, value]) => {
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
        writer: _m0.Writer = _m0.Writer.create(),
    ): _m0.Writer {
        if (message.key !== "") {
            writer.uint32(10).string(message.key);
        }
        if (message.value !== undefined) {
            TemplateFieldPatch.encode(
                message.value,
                writer.uint32(18).fork(),
            ).ldelim();
        }
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number,
    ): UpdateCredentialTemplateRequest_FieldsEntry {
        const reader =
            input instanceof _m0.Reader ? input : _m0.Reader.create(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseUpdateCredentialTemplateRequest_FieldsEntry();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    if (tag !== 10) {
                        break;
                    }

                    message.key = reader.string();
                    continue;
                case 2:
                    if (tag !== 18) {
                        break;
                    }

                    message.value = TemplateFieldPatch.decode(
                        reader,
                        reader.uint32(),
                    );
                    continue;
            }
            if ((tag & 7) === 4 || tag === 0) {
                break;
            }
            reader.skipType(tag & 7);
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
        if (message.key !== "") {
            obj.key = message.key;
        }
        if (message.value !== undefined) {
            obj.value = TemplateFieldPatch.toJSON(message.value);
        }
        return obj;
    },

    create(
        base?: DeepPartial<UpdateCredentialTemplateRequest_FieldsEntry>,
    ): UpdateCredentialTemplateRequest_FieldsEntry {
        return UpdateCredentialTemplateRequest_FieldsEntry.fromPartial(
            base ?? {},
        );
    },
    fromPartial(
        object: DeepPartial<UpdateCredentialTemplateRequest_FieldsEntry>,
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
        writer: _m0.Writer = _m0.Writer.create(),
    ): _m0.Writer {
        if (message.key !== "") {
            writer.uint32(10).string(message.key);
        }
        if (message.value !== undefined) {
            FieldOrdering.encode(
                message.value,
                writer.uint32(18).fork(),
            ).ldelim();
        }
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number,
    ): UpdateCredentialTemplateRequest_FieldOrderingEntry {
        const reader =
            input instanceof _m0.Reader ? input : _m0.Reader.create(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message =
            createBaseUpdateCredentialTemplateRequest_FieldOrderingEntry();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    if (tag !== 10) {
                        break;
                    }

                    message.key = reader.string();
                    continue;
                case 2:
                    if (tag !== 18) {
                        break;
                    }

                    message.value = FieldOrdering.decode(
                        reader,
                        reader.uint32(),
                    );
                    continue;
            }
            if ((tag & 7) === 4 || tag === 0) {
                break;
            }
            reader.skipType(tag & 7);
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

    toJSON(
        message: UpdateCredentialTemplateRequest_FieldOrderingEntry,
    ): unknown {
        const obj: any = {};
        if (message.key !== "") {
            obj.key = message.key;
        }
        if (message.value !== undefined) {
            obj.value = FieldOrdering.toJSON(message.value);
        }
        return obj;
    },

    create(
        base?: DeepPartial<UpdateCredentialTemplateRequest_FieldOrderingEntry>,
    ): UpdateCredentialTemplateRequest_FieldOrderingEntry {
        return UpdateCredentialTemplateRequest_FieldOrderingEntry.fromPartial(
            base ?? {},
        );
    },
    fromPartial(
        object: DeepPartial<UpdateCredentialTemplateRequest_FieldOrderingEntry>,
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
        writer: _m0.Writer = _m0.Writer.create(),
    ): _m0.Writer {
        if (message.updatedTemplate !== undefined) {
            TemplateData.encode(
                message.updatedTemplate,
                writer.uint32(10).fork(),
            ).ldelim();
        }
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number,
    ): UpdateCredentialTemplateResponse {
        const reader =
            input instanceof _m0.Reader ? input : _m0.Reader.create(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseUpdateCredentialTemplateResponse();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    if (tag !== 10) {
                        break;
                    }

                    message.updatedTemplate = TemplateData.decode(
                        reader,
                        reader.uint32(),
                    );
                    continue;
            }
            if ((tag & 7) === 4 || tag === 0) {
                break;
            }
            reader.skipType(tag & 7);
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
        if (message.updatedTemplate !== undefined) {
            obj.updatedTemplate = TemplateData.toJSON(message.updatedTemplate);
        }
        return obj;
    },

    create(
        base?: DeepPartial<UpdateCredentialTemplateResponse>,
    ): UpdateCredentialTemplateResponse {
        return UpdateCredentialTemplateResponse.fromPartial(base ?? {});
    },
    fromPartial(
        object: DeepPartial<UpdateCredentialTemplateResponse>,
    ): UpdateCredentialTemplateResponse {
        const message = createBaseUpdateCredentialTemplateResponse();
        message.updatedTemplate =
            object.updatedTemplate !== undefined &&
            object.updatedTemplate !== null
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
        writer: _m0.Writer = _m0.Writer.create(),
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
                writer.uint32(34).fork(),
            ).ldelim();
        });
        if (message.allowAdditionalFields === true) {
            writer.uint32(40).bool(message.allowAdditionalFields);
        }
        if (message.schemaUri !== undefined && message.schemaUri !== "") {
            writer.uint32(50).string(message.schemaUri);
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
                writer.uint32(114).fork(),
            ).ldelim();
        });
        if (message.appleWalletOptions !== undefined) {
            AppleWalletOptions.encode(
                message.appleWalletOptions,
                writer.uint32(122).fork(),
            ).ldelim();
        }
        return writer;
    },

    decode(input: _m0.Reader | Uint8Array, length?: number): TemplateData {
        const reader =
            input instanceof _m0.Reader ? input : _m0.Reader.create(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseTemplateData();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    if (tag !== 10) {
                        break;
                    }

                    message.id = reader.string();
                    continue;
                case 2:
                    if (tag !== 18) {
                        break;
                    }

                    message.name = reader.string();
                    continue;
                case 3:
                    if (tag !== 24) {
                        break;
                    }

                    message.version = reader.int32();
                    continue;
                case 4:
                    if (tag !== 34) {
                        break;
                    }

                    const entry4 = TemplateData_FieldsEntry.decode(
                        reader,
                        reader.uint32(),
                    );
                    if (entry4.value !== undefined) {
                        message.fields![entry4.key] = entry4.value;
                    }
                    continue;
                case 5:
                    if (tag !== 40) {
                        break;
                    }

                    message.allowAdditionalFields = reader.bool();
                    continue;
                case 6:
                    if (tag !== 50) {
                        break;
                    }

                    message.schemaUri = reader.string();
                    continue;
                case 8:
                    if (tag !== 66) {
                        break;
                    }

                    message.ecosystemId = reader.string();
                    continue;
                case 9:
                    if (tag !== 74) {
                        break;
                    }

                    message.type = reader.string();
                    continue;
                case 10:
                    if (tag !== 82) {
                        break;
                    }

                    message.createdBy = reader.string();
                    continue;
                case 11:
                    if (tag !== 90) {
                        break;
                    }

                    message.dateCreated = reader.string();
                    continue;
                case 12:
                    if (tag !== 98) {
                        break;
                    }

                    message.title = reader.string();
                    continue;
                case 13:
                    if (tag !== 106) {
                        break;
                    }

                    message.description = reader.string();
                    continue;
                case 14:
                    if (tag !== 114) {
                        break;
                    }

                    const entry14 = TemplateData_FieldOrderingEntry.decode(
                        reader,
                        reader.uint32(),
                    );
                    if (entry14.value !== undefined) {
                        message.fieldOrdering![entry14.key] = entry14.value;
                    }
                    continue;
                case 15:
                    if (tag !== 122) {
                        break;
                    }

                    message.appleWalletOptions = AppleWalletOptions.decode(
                        reader,
                        reader.uint32(),
                    );
                    continue;
            }
            if ((tag & 7) === 4 || tag === 0) {
                break;
            }
            reader.skipType(tag & 7);
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
            ecosystemId: isSet(object.ecosystemId)
                ? String(object.ecosystemId)
                : "",
            type: isSet(object.type) ? String(object.type) : "",
            createdBy: isSet(object.createdBy) ? String(object.createdBy) : "",
            dateCreated: isSet(object.dateCreated)
                ? String(object.dateCreated)
                : "",
            title: isSet(object.title) ? String(object.title) : "",
            description: isSet(object.description)
                ? String(object.description)
                : "",
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
        if (message.id !== undefined && message.id !== "") {
            obj.id = message.id;
        }
        if (message.name !== undefined && message.name !== "") {
            obj.name = message.name;
        }
        if (message.version !== undefined && message.version !== 0) {
            obj.version = Math.round(message.version);
        }
        if (message.fields) {
            const entries = Object.entries(message.fields);
            if (entries.length > 0) {
                obj.fields = {};
                entries.forEach(([k, v]) => {
                    obj.fields[k] = TemplateField.toJSON(v);
                });
            }
        }
        if (message.allowAdditionalFields === true) {
            obj.allowAdditionalFields = message.allowAdditionalFields;
        }
        if (message.schemaUri !== undefined && message.schemaUri !== "") {
            obj.schemaUri = message.schemaUri;
        }
        if (message.ecosystemId !== undefined && message.ecosystemId !== "") {
            obj.ecosystemId = message.ecosystemId;
        }
        if (message.type !== undefined && message.type !== "") {
            obj.type = message.type;
        }
        if (message.createdBy !== undefined && message.createdBy !== "") {
            obj.createdBy = message.createdBy;
        }
        if (message.dateCreated !== undefined && message.dateCreated !== "") {
            obj.dateCreated = message.dateCreated;
        }
        if (message.title !== undefined && message.title !== "") {
            obj.title = message.title;
        }
        if (message.description !== undefined && message.description !== "") {
            obj.description = message.description;
        }
        if (message.fieldOrdering) {
            const entries = Object.entries(message.fieldOrdering);
            if (entries.length > 0) {
                obj.fieldOrdering = {};
                entries.forEach(([k, v]) => {
                    obj.fieldOrdering[k] = FieldOrdering.toJSON(v);
                });
            }
        }
        if (message.appleWalletOptions !== undefined) {
            obj.appleWalletOptions = AppleWalletOptions.toJSON(
                message.appleWalletOptions,
            );
        }
        return obj;
    },

    create(base?: DeepPartial<TemplateData>): TemplateData {
        return TemplateData.fromPartial(base ?? {});
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
        message.ecosystemId = object.ecosystemId ?? "";
        message.type = object.type ?? "";
        message.createdBy = object.createdBy ?? "";
        message.dateCreated = object.dateCreated ?? "";
        message.title = object.title ?? "";
        message.description = object.description ?? "";
        message.fieldOrdering = Object.entries(
            object.fieldOrdering ?? {},
        ).reduce<{ [key: string]: FieldOrdering }>((acc, [key, value]) => {
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
        writer: _m0.Writer = _m0.Writer.create(),
    ): _m0.Writer {
        if (message.key !== "") {
            writer.uint32(10).string(message.key);
        }
        if (message.value !== undefined) {
            TemplateField.encode(
                message.value,
                writer.uint32(18).fork(),
            ).ldelim();
        }
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number,
    ): TemplateData_FieldsEntry {
        const reader =
            input instanceof _m0.Reader ? input : _m0.Reader.create(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseTemplateData_FieldsEntry();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    if (tag !== 10) {
                        break;
                    }

                    message.key = reader.string();
                    continue;
                case 2:
                    if (tag !== 18) {
                        break;
                    }

                    message.value = TemplateField.decode(
                        reader,
                        reader.uint32(),
                    );
                    continue;
            }
            if ((tag & 7) === 4 || tag === 0) {
                break;
            }
            reader.skipType(tag & 7);
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
        if (message.key !== "") {
            obj.key = message.key;
        }
        if (message.value !== undefined) {
            obj.value = TemplateField.toJSON(message.value);
        }
        return obj;
    },

    create(
        base?: DeepPartial<TemplateData_FieldsEntry>,
    ): TemplateData_FieldsEntry {
        return TemplateData_FieldsEntry.fromPartial(base ?? {});
    },
    fromPartial(
        object: DeepPartial<TemplateData_FieldsEntry>,
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
        writer: _m0.Writer = _m0.Writer.create(),
    ): _m0.Writer {
        if (message.key !== "") {
            writer.uint32(10).string(message.key);
        }
        if (message.value !== undefined) {
            FieldOrdering.encode(
                message.value,
                writer.uint32(18).fork(),
            ).ldelim();
        }
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number,
    ): TemplateData_FieldOrderingEntry {
        const reader =
            input instanceof _m0.Reader ? input : _m0.Reader.create(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseTemplateData_FieldOrderingEntry();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    if (tag !== 10) {
                        break;
                    }

                    message.key = reader.string();
                    continue;
                case 2:
                    if (tag !== 18) {
                        break;
                    }

                    message.value = FieldOrdering.decode(
                        reader,
                        reader.uint32(),
                    );
                    continue;
            }
            if ((tag & 7) === 4 || tag === 0) {
                break;
            }
            reader.skipType(tag & 7);
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
        if (message.key !== "") {
            obj.key = message.key;
        }
        if (message.value !== undefined) {
            obj.value = FieldOrdering.toJSON(message.value);
        }
        return obj;
    },

    create(
        base?: DeepPartial<TemplateData_FieldOrderingEntry>,
    ): TemplateData_FieldOrderingEntry {
        return TemplateData_FieldOrderingEntry.fromPartial(base ?? {});
    },
    fromPartial(
        object: DeepPartial<TemplateData_FieldOrderingEntry>,
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
        writer: _m0.Writer = _m0.Writer.create(),
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

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number,
    ): AppleWalletOptions {
        const reader =
            input instanceof _m0.Reader ? input : _m0.Reader.create(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseAppleWalletOptions();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    if (tag !== 10) {
                        break;
                    }

                    message.backgroundColor = reader.string();
                    continue;
                case 2:
                    if (tag !== 18) {
                        break;
                    }

                    message.foregroundColor = reader.string();
                    continue;
                case 3:
                    if (tag !== 26) {
                        break;
                    }

                    message.labelColor = reader.string();
                    continue;
                case 4:
                    if (tag !== 34) {
                        break;
                    }

                    message.primaryField = reader.string();
                    continue;
                case 5:
                    if (tag !== 42) {
                        break;
                    }

                    message.secondaryFields!.push(reader.string());
                    continue;
                case 6:
                    if (tag !== 50) {
                        break;
                    }

                    message.auxiliaryFields!.push(reader.string());
                    continue;
            }
            if ((tag & 7) === 4 || tag === 0) {
                break;
            }
            reader.skipType(tag & 7);
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
            labelColor: isSet(object.labelColor)
                ? String(object.labelColor)
                : "",
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
        if (
            message.backgroundColor !== undefined &&
            message.backgroundColor !== ""
        ) {
            obj.backgroundColor = message.backgroundColor;
        }
        if (
            message.foregroundColor !== undefined &&
            message.foregroundColor !== ""
        ) {
            obj.foregroundColor = message.foregroundColor;
        }
        if (message.labelColor !== undefined && message.labelColor !== "") {
            obj.labelColor = message.labelColor;
        }
        if (message.primaryField !== undefined && message.primaryField !== "") {
            obj.primaryField = message.primaryField;
        }
        if (message.secondaryFields?.length) {
            obj.secondaryFields = message.secondaryFields;
        }
        if (message.auxiliaryFields?.length) {
            obj.auxiliaryFields = message.auxiliaryFields;
        }
        return obj;
    },

    create(base?: DeepPartial<AppleWalletOptions>): AppleWalletOptions {
        return AppleWalletOptions.fromPartial(base ?? {});
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
        writer: _m0.Writer = _m0.Writer.create(),
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
        const reader =
            input instanceof _m0.Reader ? input : _m0.Reader.create(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseFieldOrdering();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    if (tag !== 8) {
                        break;
                    }

                    message.order = reader.int32();
                    continue;
                case 2:
                    if (tag !== 18) {
                        break;
                    }

                    message.section = reader.string();
                    continue;
            }
            if ((tag & 7) === 4 || tag === 0) {
                break;
            }
            reader.skipType(tag & 7);
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
        if (message.order !== undefined && message.order !== 0) {
            obj.order = Math.round(message.order);
        }
        if (message.section !== undefined && message.section !== "") {
            obj.section = message.section;
        }
        return obj;
    },

    create(base?: DeepPartial<FieldOrdering>): FieldOrdering {
        return FieldOrdering.fromPartial(base ?? {});
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
        uriData: undefined,
    };
}

export const TemplateField = {
    encode(
        message: TemplateField,
        writer: _m0.Writer = _m0.Writer.create(),
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
        if (message.uriData !== undefined) {
            UriFieldData.encode(
                message.uriData,
                writer.uint32(50).fork(),
            ).ldelim();
        }
        return writer;
    },

    decode(input: _m0.Reader | Uint8Array, length?: number): TemplateField {
        const reader =
            input instanceof _m0.Reader ? input : _m0.Reader.create(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseTemplateField();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    if (tag !== 10) {
                        break;
                    }

                    message.title = reader.string();
                    continue;
                case 2:
                    if (tag !== 18) {
                        break;
                    }

                    message.description = reader.string();
                    continue;
                case 3:
                    if (tag !== 24) {
                        break;
                    }

                    message.optional = reader.bool();
                    continue;
                case 4:
                    if (tag !== 32) {
                        break;
                    }

                    message.type = reader.int32() as any;
                    continue;
                case 6:
                    if (tag !== 50) {
                        break;
                    }

                    message.uriData = UriFieldData.decode(
                        reader,
                        reader.uint32(),
                    );
                    continue;
            }
            if ((tag & 7) === 4 || tag === 0) {
                break;
            }
            reader.skipType(tag & 7);
        }
        return message;
    },

    fromJSON(object: any): TemplateField {
        return {
            title: isSet(object.title) ? String(object.title) : "",
            description: isSet(object.description)
                ? String(object.description)
                : "",
            optional: isSet(object.optional) ? Boolean(object.optional) : false,
            type: isSet(object.type) ? fieldTypeFromJSON(object.type) : 0,
            uriData: isSet(object.uriData)
                ? UriFieldData.fromJSON(object.uriData)
                : undefined,
        };
    },

    toJSON(message: TemplateField): unknown {
        const obj: any = {};
        if (message.title !== undefined && message.title !== "") {
            obj.title = message.title;
        }
        if (message.description !== undefined && message.description !== "") {
            obj.description = message.description;
        }
        if (message.optional === true) {
            obj.optional = message.optional;
        }
        if (message.type !== undefined && message.type !== 0) {
            obj.type = fieldTypeToJSON(message.type);
        }
        if (message.uriData !== undefined) {
            obj.uriData = UriFieldData.toJSON(message.uriData);
        }
        return obj;
    },

    create(base?: DeepPartial<TemplateField>): TemplateField {
        return TemplateField.fromPartial(base ?? {});
    },
    fromPartial(object: DeepPartial<TemplateField>): TemplateField {
        const message = createBaseTemplateField();
        message.title = object.title ?? "";
        message.description = object.description ?? "";
        message.optional = object.optional ?? false;
        message.type = object.type ?? 0;
        message.uriData =
            object.uriData !== undefined && object.uriData !== null
                ? UriFieldData.fromPartial(object.uriData)
                : undefined;
        return message;
    },
};

function createBaseTemplateFieldPatch(): TemplateFieldPatch {
    return { title: undefined, description: undefined, uriData: undefined };
}

export const TemplateFieldPatch = {
    encode(
        message: TemplateFieldPatch,
        writer: _m0.Writer = _m0.Writer.create(),
    ): _m0.Writer {
        if (message.title !== undefined) {
            writer.uint32(10).string(message.title);
        }
        if (message.description !== undefined) {
            writer.uint32(18).string(message.description);
        }
        if (message.uriData !== undefined) {
            UriFieldData.encode(
                message.uriData,
                writer.uint32(26).fork(),
            ).ldelim();
        }
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number,
    ): TemplateFieldPatch {
        const reader =
            input instanceof _m0.Reader ? input : _m0.Reader.create(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseTemplateFieldPatch();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    if (tag !== 10) {
                        break;
                    }

                    message.title = reader.string();
                    continue;
                case 2:
                    if (tag !== 18) {
                        break;
                    }

                    message.description = reader.string();
                    continue;
                case 3:
                    if (tag !== 26) {
                        break;
                    }

                    message.uriData = UriFieldData.decode(
                        reader,
                        reader.uint32(),
                    );
                    continue;
            }
            if ((tag & 7) === 4 || tag === 0) {
                break;
            }
            reader.skipType(tag & 7);
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
        if (message.title !== undefined) {
            obj.title = message.title;
        }
        if (message.description !== undefined) {
            obj.description = message.description;
        }
        if (message.uriData !== undefined) {
            obj.uriData = UriFieldData.toJSON(message.uriData);
        }
        return obj;
    },

    create(base?: DeepPartial<TemplateFieldPatch>): TemplateFieldPatch {
        return TemplateFieldPatch.fromPartial(base ?? {});
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
        writer: _m0.Writer = _m0.Writer.create(),
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
        const reader =
            input instanceof _m0.Reader ? input : _m0.Reader.create(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseUriFieldData();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    if (tag !== 10) {
                        break;
                    }

                    message.mimeType = reader.string();
                    continue;
                case 2:
                    if (tag !== 16) {
                        break;
                    }

                    message.renderMethod = reader.int32() as any;
                    continue;
            }
            if ((tag & 7) === 4 || tag === 0) {
                break;
            }
            reader.skipType(tag & 7);
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
        if (message.mimeType !== undefined && message.mimeType !== "") {
            obj.mimeType = message.mimeType;
        }
        if (message.renderMethod !== undefined && message.renderMethod !== 0) {
            obj.renderMethod = uriRenderMethodToJSON(message.renderMethod);
        }
        return obj;
    },

    create(base?: DeepPartial<UriFieldData>): UriFieldData {
        return UriFieldData.fromPartial(base ?? {});
    },
    fromPartial(object: DeepPartial<UriFieldData>): UriFieldData {
        const message = createBaseUriFieldData();
        message.mimeType = object.mimeType ?? "";
        message.renderMethod = object.renderMethod ?? 0;
        return message;
    },
};

function createBaseGetVerificationTemplateRequest(): GetVerificationTemplateRequest {
    return { id: "" };
}

export const GetVerificationTemplateRequest = {
    encode(
        message: GetVerificationTemplateRequest,
        writer: _m0.Writer = _m0.Writer.create(),
    ): _m0.Writer {
        if (message.id !== undefined && message.id !== "") {
            writer.uint32(10).string(message.id);
        }
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number,
    ): GetVerificationTemplateRequest {
        const reader =
            input instanceof _m0.Reader ? input : _m0.Reader.create(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseGetVerificationTemplateRequest();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    if (tag !== 10) {
                        break;
                    }

                    message.id = reader.string();
                    continue;
            }
            if ((tag & 7) === 4 || tag === 0) {
                break;
            }
            reader.skipType(tag & 7);
        }
        return message;
    },

    fromJSON(object: any): GetVerificationTemplateRequest {
        return { id: isSet(object.id) ? String(object.id) : "" };
    },

    toJSON(message: GetVerificationTemplateRequest): unknown {
        const obj: any = {};
        if (message.id !== undefined && message.id !== "") {
            obj.id = message.id;
        }
        return obj;
    },

    create(
        base?: DeepPartial<GetVerificationTemplateRequest>,
    ): GetVerificationTemplateRequest {
        return GetVerificationTemplateRequest.fromPartial(base ?? {});
    },
    fromPartial(
        object: DeepPartial<GetVerificationTemplateRequest>,
    ): GetVerificationTemplateRequest {
        const message = createBaseGetVerificationTemplateRequest();
        message.id = object.id ?? "";
        return message;
    },
};

function createBaseGetVerificationTemplateResponse(): GetVerificationTemplateResponse {
    return { template: undefined };
}

export const GetVerificationTemplateResponse = {
    encode(
        message: GetVerificationTemplateResponse,
        writer: _m0.Writer = _m0.Writer.create(),
    ): _m0.Writer {
        if (message.template !== undefined) {
            VerificationTemplateData.encode(
                message.template,
                writer.uint32(10).fork(),
            ).ldelim();
        }
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number,
    ): GetVerificationTemplateResponse {
        const reader =
            input instanceof _m0.Reader ? input : _m0.Reader.create(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseGetVerificationTemplateResponse();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    if (tag !== 10) {
                        break;
                    }

                    message.template = VerificationTemplateData.decode(
                        reader,
                        reader.uint32(),
                    );
                    continue;
            }
            if ((tag & 7) === 4 || tag === 0) {
                break;
            }
            reader.skipType(tag & 7);
        }
        return message;
    },

    fromJSON(object: any): GetVerificationTemplateResponse {
        return {
            template: isSet(object.template)
                ? VerificationTemplateData.fromJSON(object.template)
                : undefined,
        };
    },

    toJSON(message: GetVerificationTemplateResponse): unknown {
        const obj: any = {};
        if (message.template !== undefined) {
            obj.template = VerificationTemplateData.toJSON(message.template);
        }
        return obj;
    },

    create(
        base?: DeepPartial<GetVerificationTemplateResponse>,
    ): GetVerificationTemplateResponse {
        return GetVerificationTemplateResponse.fromPartial(base ?? {});
    },
    fromPartial(
        object: DeepPartial<GetVerificationTemplateResponse>,
    ): GetVerificationTemplateResponse {
        const message = createBaseGetVerificationTemplateResponse();
        message.template =
            object.template !== undefined && object.template !== null
                ? VerificationTemplateData.fromPartial(object.template)
                : undefined;
        return message;
    },
};

function createBaseCreateVerificationTemplateRequest(): CreateVerificationTemplateRequest {
    return {
        name: "",
        fields: {},
        credentialTemplateId: "",
        title: "",
        description: "",
    };
}

export const CreateVerificationTemplateRequest = {
    encode(
        message: CreateVerificationTemplateRequest,
        writer: _m0.Writer = _m0.Writer.create(),
    ): _m0.Writer {
        if (message.name !== undefined && message.name !== "") {
            writer.uint32(10).string(message.name);
        }
        Object.entries(message.fields || {}).forEach(([key, value]) => {
            CreateVerificationTemplateRequest_FieldsEntry.encode(
                { key: key as any, value },
                writer.uint32(18).fork(),
            ).ldelim();
        });
        if (
            message.credentialTemplateId !== undefined &&
            message.credentialTemplateId !== ""
        ) {
            writer.uint32(26).string(message.credentialTemplateId);
        }
        if (message.title !== undefined && message.title !== "") {
            writer.uint32(34).string(message.title);
        }
        if (message.description !== undefined && message.description !== "") {
            writer.uint32(42).string(message.description);
        }
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number,
    ): CreateVerificationTemplateRequest {
        const reader =
            input instanceof _m0.Reader ? input : _m0.Reader.create(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseCreateVerificationTemplateRequest();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    if (tag !== 10) {
                        break;
                    }

                    message.name = reader.string();
                    continue;
                case 2:
                    if (tag !== 18) {
                        break;
                    }

                    const entry2 =
                        CreateVerificationTemplateRequest_FieldsEntry.decode(
                            reader,
                            reader.uint32(),
                        );
                    if (entry2.value !== undefined) {
                        message.fields![entry2.key] = entry2.value;
                    }
                    continue;
                case 3:
                    if (tag !== 26) {
                        break;
                    }

                    message.credentialTemplateId = reader.string();
                    continue;
                case 4:
                    if (tag !== 34) {
                        break;
                    }

                    message.title = reader.string();
                    continue;
                case 5:
                    if (tag !== 42) {
                        break;
                    }

                    message.description = reader.string();
                    continue;
            }
            if ((tag & 7) === 4 || tag === 0) {
                break;
            }
            reader.skipType(tag & 7);
        }
        return message;
    },

    fromJSON(object: any): CreateVerificationTemplateRequest {
        return {
            name: isSet(object.name) ? String(object.name) : "",
            fields: isObject(object.fields)
                ? Object.entries(object.fields).reduce<{
                      [key: string]: VerificationTemplateField;
                  }>((acc, [key, value]) => {
                      acc[key] = VerificationTemplateField.fromJSON(value);
                      return acc;
                  }, {})
                : {},
            credentialTemplateId: isSet(object.credentialTemplateId)
                ? String(object.credentialTemplateId)
                : "",
            title: isSet(object.title) ? String(object.title) : "",
            description: isSet(object.description)
                ? String(object.description)
                : "",
        };
    },

    toJSON(message: CreateVerificationTemplateRequest): unknown {
        const obj: any = {};
        if (message.name !== undefined && message.name !== "") {
            obj.name = message.name;
        }
        if (message.fields) {
            const entries = Object.entries(message.fields);
            if (entries.length > 0) {
                obj.fields = {};
                entries.forEach(([k, v]) => {
                    obj.fields[k] = VerificationTemplateField.toJSON(v);
                });
            }
        }
        if (
            message.credentialTemplateId !== undefined &&
            message.credentialTemplateId !== ""
        ) {
            obj.credentialTemplateId = message.credentialTemplateId;
        }
        if (message.title !== undefined && message.title !== "") {
            obj.title = message.title;
        }
        if (message.description !== undefined && message.description !== "") {
            obj.description = message.description;
        }
        return obj;
    },

    create(
        base?: DeepPartial<CreateVerificationTemplateRequest>,
    ): CreateVerificationTemplateRequest {
        return CreateVerificationTemplateRequest.fromPartial(base ?? {});
    },
    fromPartial(
        object: DeepPartial<CreateVerificationTemplateRequest>,
    ): CreateVerificationTemplateRequest {
        const message = createBaseCreateVerificationTemplateRequest();
        message.name = object.name ?? "";
        message.fields = Object.entries(object.fields ?? {}).reduce<{
            [key: string]: VerificationTemplateField;
        }>((acc, [key, value]) => {
            if (value !== undefined) {
                acc[key] = VerificationTemplateField.fromPartial(value);
            }
            return acc;
        }, {});
        message.credentialTemplateId = object.credentialTemplateId ?? "";
        message.title = object.title ?? "";
        message.description = object.description ?? "";
        return message;
    },
};

function createBaseCreateVerificationTemplateRequest_FieldsEntry(): CreateVerificationTemplateRequest_FieldsEntry {
    return { key: "", value: undefined };
}

export const CreateVerificationTemplateRequest_FieldsEntry = {
    encode(
        message: CreateVerificationTemplateRequest_FieldsEntry,
        writer: _m0.Writer = _m0.Writer.create(),
    ): _m0.Writer {
        if (message.key !== "") {
            writer.uint32(10).string(message.key);
        }
        if (message.value !== undefined) {
            VerificationTemplateField.encode(
                message.value,
                writer.uint32(18).fork(),
            ).ldelim();
        }
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number,
    ): CreateVerificationTemplateRequest_FieldsEntry {
        const reader =
            input instanceof _m0.Reader ? input : _m0.Reader.create(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message =
            createBaseCreateVerificationTemplateRequest_FieldsEntry();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    if (tag !== 10) {
                        break;
                    }

                    message.key = reader.string();
                    continue;
                case 2:
                    if (tag !== 18) {
                        break;
                    }

                    message.value = VerificationTemplateField.decode(
                        reader,
                        reader.uint32(),
                    );
                    continue;
            }
            if ((tag & 7) === 4 || tag === 0) {
                break;
            }
            reader.skipType(tag & 7);
        }
        return message;
    },

    fromJSON(object: any): CreateVerificationTemplateRequest_FieldsEntry {
        return {
            key: isSet(object.key) ? String(object.key) : "",
            value: isSet(object.value)
                ? VerificationTemplateField.fromJSON(object.value)
                : undefined,
        };
    },

    toJSON(message: CreateVerificationTemplateRequest_FieldsEntry): unknown {
        const obj: any = {};
        if (message.key !== "") {
            obj.key = message.key;
        }
        if (message.value !== undefined) {
            obj.value = VerificationTemplateField.toJSON(message.value);
        }
        return obj;
    },

    create(
        base?: DeepPartial<CreateVerificationTemplateRequest_FieldsEntry>,
    ): CreateVerificationTemplateRequest_FieldsEntry {
        return CreateVerificationTemplateRequest_FieldsEntry.fromPartial(
            base ?? {},
        );
    },
    fromPartial(
        object: DeepPartial<CreateVerificationTemplateRequest_FieldsEntry>,
    ): CreateVerificationTemplateRequest_FieldsEntry {
        const message =
            createBaseCreateVerificationTemplateRequest_FieldsEntry();
        message.key = object.key ?? "";
        message.value =
            object.value !== undefined && object.value !== null
                ? VerificationTemplateField.fromPartial(object.value)
                : undefined;
        return message;
    },
};

function createBaseCreateVerificationTemplateResponse(): CreateVerificationTemplateResponse {
    return { data: undefined };
}

export const CreateVerificationTemplateResponse = {
    encode(
        message: CreateVerificationTemplateResponse,
        writer: _m0.Writer = _m0.Writer.create(),
    ): _m0.Writer {
        if (message.data !== undefined) {
            VerificationTemplateData.encode(
                message.data,
                writer.uint32(10).fork(),
            ).ldelim();
        }
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number,
    ): CreateVerificationTemplateResponse {
        const reader =
            input instanceof _m0.Reader ? input : _m0.Reader.create(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseCreateVerificationTemplateResponse();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    if (tag !== 10) {
                        break;
                    }

                    message.data = VerificationTemplateData.decode(
                        reader,
                        reader.uint32(),
                    );
                    continue;
            }
            if ((tag & 7) === 4 || tag === 0) {
                break;
            }
            reader.skipType(tag & 7);
        }
        return message;
    },

    fromJSON(object: any): CreateVerificationTemplateResponse {
        return {
            data: isSet(object.data)
                ? VerificationTemplateData.fromJSON(object.data)
                : undefined,
        };
    },

    toJSON(message: CreateVerificationTemplateResponse): unknown {
        const obj: any = {};
        if (message.data !== undefined) {
            obj.data = VerificationTemplateData.toJSON(message.data);
        }
        return obj;
    },

    create(
        base?: DeepPartial<CreateVerificationTemplateResponse>,
    ): CreateVerificationTemplateResponse {
        return CreateVerificationTemplateResponse.fromPartial(base ?? {});
    },
    fromPartial(
        object: DeepPartial<CreateVerificationTemplateResponse>,
    ): CreateVerificationTemplateResponse {
        const message = createBaseCreateVerificationTemplateResponse();
        message.data =
            object.data !== undefined && object.data !== null
                ? VerificationTemplateData.fromPartial(object.data)
                : undefined;
        return message;
    },
};

function createBaseUpdateVerificationTemplateRequest(): UpdateVerificationTemplateRequest {
    return { id: "", title: undefined, description: undefined, fields: {} };
}

export const UpdateVerificationTemplateRequest = {
    encode(
        message: UpdateVerificationTemplateRequest,
        writer: _m0.Writer = _m0.Writer.create(),
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
            UpdateVerificationTemplateRequest_FieldsEntry.encode(
                { key: key as any, value },
                writer.uint32(34).fork(),
            ).ldelim();
        });
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number,
    ): UpdateVerificationTemplateRequest {
        const reader =
            input instanceof _m0.Reader ? input : _m0.Reader.create(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseUpdateVerificationTemplateRequest();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    if (tag !== 10) {
                        break;
                    }

                    message.id = reader.string();
                    continue;
                case 2:
                    if (tag !== 18) {
                        break;
                    }

                    message.title = reader.string();
                    continue;
                case 3:
                    if (tag !== 26) {
                        break;
                    }

                    message.description = reader.string();
                    continue;
                case 4:
                    if (tag !== 34) {
                        break;
                    }

                    const entry4 =
                        UpdateVerificationTemplateRequest_FieldsEntry.decode(
                            reader,
                            reader.uint32(),
                        );
                    if (entry4.value !== undefined) {
                        message.fields![entry4.key] = entry4.value;
                    }
                    continue;
            }
            if ((tag & 7) === 4 || tag === 0) {
                break;
            }
            reader.skipType(tag & 7);
        }
        return message;
    },

    fromJSON(object: any): UpdateVerificationTemplateRequest {
        return {
            id: isSet(object.id) ? String(object.id) : "",
            title: isSet(object.title) ? String(object.title) : undefined,
            description: isSet(object.description)
                ? String(object.description)
                : undefined,
            fields: isObject(object.fields)
                ? Object.entries(object.fields).reduce<{
                      [key: string]: VerificationTemplateFieldPatch;
                  }>((acc, [key, value]) => {
                      acc[key] = VerificationTemplateFieldPatch.fromJSON(value);
                      return acc;
                  }, {})
                : {},
        };
    },

    toJSON(message: UpdateVerificationTemplateRequest): unknown {
        const obj: any = {};
        if (message.id !== undefined && message.id !== "") {
            obj.id = message.id;
        }
        if (message.title !== undefined) {
            obj.title = message.title;
        }
        if (message.description !== undefined) {
            obj.description = message.description;
        }
        if (message.fields) {
            const entries = Object.entries(message.fields);
            if (entries.length > 0) {
                obj.fields = {};
                entries.forEach(([k, v]) => {
                    obj.fields[k] = VerificationTemplateFieldPatch.toJSON(v);
                });
            }
        }
        return obj;
    },

    create(
        base?: DeepPartial<UpdateVerificationTemplateRequest>,
    ): UpdateVerificationTemplateRequest {
        return UpdateVerificationTemplateRequest.fromPartial(base ?? {});
    },
    fromPartial(
        object: DeepPartial<UpdateVerificationTemplateRequest>,
    ): UpdateVerificationTemplateRequest {
        const message = createBaseUpdateVerificationTemplateRequest();
        message.id = object.id ?? "";
        message.title = object.title ?? undefined;
        message.description = object.description ?? undefined;
        message.fields = Object.entries(object.fields ?? {}).reduce<{
            [key: string]: VerificationTemplateFieldPatch;
        }>((acc, [key, value]) => {
            if (value !== undefined) {
                acc[key] = VerificationTemplateFieldPatch.fromPartial(value);
            }
            return acc;
        }, {});
        return message;
    },
};

function createBaseUpdateVerificationTemplateRequest_FieldsEntry(): UpdateVerificationTemplateRequest_FieldsEntry {
    return { key: "", value: undefined };
}

export const UpdateVerificationTemplateRequest_FieldsEntry = {
    encode(
        message: UpdateVerificationTemplateRequest_FieldsEntry,
        writer: _m0.Writer = _m0.Writer.create(),
    ): _m0.Writer {
        if (message.key !== "") {
            writer.uint32(10).string(message.key);
        }
        if (message.value !== undefined) {
            VerificationTemplateFieldPatch.encode(
                message.value,
                writer.uint32(18).fork(),
            ).ldelim();
        }
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number,
    ): UpdateVerificationTemplateRequest_FieldsEntry {
        const reader =
            input instanceof _m0.Reader ? input : _m0.Reader.create(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message =
            createBaseUpdateVerificationTemplateRequest_FieldsEntry();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    if (tag !== 10) {
                        break;
                    }

                    message.key = reader.string();
                    continue;
                case 2:
                    if (tag !== 18) {
                        break;
                    }

                    message.value = VerificationTemplateFieldPatch.decode(
                        reader,
                        reader.uint32(),
                    );
                    continue;
            }
            if ((tag & 7) === 4 || tag === 0) {
                break;
            }
            reader.skipType(tag & 7);
        }
        return message;
    },

    fromJSON(object: any): UpdateVerificationTemplateRequest_FieldsEntry {
        return {
            key: isSet(object.key) ? String(object.key) : "",
            value: isSet(object.value)
                ? VerificationTemplateFieldPatch.fromJSON(object.value)
                : undefined,
        };
    },

    toJSON(message: UpdateVerificationTemplateRequest_FieldsEntry): unknown {
        const obj: any = {};
        if (message.key !== "") {
            obj.key = message.key;
        }
        if (message.value !== undefined) {
            obj.value = VerificationTemplateFieldPatch.toJSON(message.value);
        }
        return obj;
    },

    create(
        base?: DeepPartial<UpdateVerificationTemplateRequest_FieldsEntry>,
    ): UpdateVerificationTemplateRequest_FieldsEntry {
        return UpdateVerificationTemplateRequest_FieldsEntry.fromPartial(
            base ?? {},
        );
    },
    fromPartial(
        object: DeepPartial<UpdateVerificationTemplateRequest_FieldsEntry>,
    ): UpdateVerificationTemplateRequest_FieldsEntry {
        const message =
            createBaseUpdateVerificationTemplateRequest_FieldsEntry();
        message.key = object.key ?? "";
        message.value =
            object.value !== undefined && object.value !== null
                ? VerificationTemplateFieldPatch.fromPartial(object.value)
                : undefined;
        return message;
    },
};

function createBaseUpdateVerificationTemplateResponse(): UpdateVerificationTemplateResponse {
    return { template: undefined };
}

export const UpdateVerificationTemplateResponse = {
    encode(
        message: UpdateVerificationTemplateResponse,
        writer: _m0.Writer = _m0.Writer.create(),
    ): _m0.Writer {
        if (message.template !== undefined) {
            VerificationTemplateData.encode(
                message.template,
                writer.uint32(10).fork(),
            ).ldelim();
        }
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number,
    ): UpdateVerificationTemplateResponse {
        const reader =
            input instanceof _m0.Reader ? input : _m0.Reader.create(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseUpdateVerificationTemplateResponse();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    if (tag !== 10) {
                        break;
                    }

                    message.template = VerificationTemplateData.decode(
                        reader,
                        reader.uint32(),
                    );
                    continue;
            }
            if ((tag & 7) === 4 || tag === 0) {
                break;
            }
            reader.skipType(tag & 7);
        }
        return message;
    },

    fromJSON(object: any): UpdateVerificationTemplateResponse {
        return {
            template: isSet(object.template)
                ? VerificationTemplateData.fromJSON(object.template)
                : undefined,
        };
    },

    toJSON(message: UpdateVerificationTemplateResponse): unknown {
        const obj: any = {};
        if (message.template !== undefined) {
            obj.template = VerificationTemplateData.toJSON(message.template);
        }
        return obj;
    },

    create(
        base?: DeepPartial<UpdateVerificationTemplateResponse>,
    ): UpdateVerificationTemplateResponse {
        return UpdateVerificationTemplateResponse.fromPartial(base ?? {});
    },
    fromPartial(
        object: DeepPartial<UpdateVerificationTemplateResponse>,
    ): UpdateVerificationTemplateResponse {
        const message = createBaseUpdateVerificationTemplateResponse();
        message.template =
            object.template !== undefined && object.template !== null
                ? VerificationTemplateData.fromPartial(object.template)
                : undefined;
        return message;
    },
};

function createBaseDeleteVerificationTemplateRequest(): DeleteVerificationTemplateRequest {
    return { verificationTemplateId: "" };
}

export const DeleteVerificationTemplateRequest = {
    encode(
        message: DeleteVerificationTemplateRequest,
        writer: _m0.Writer = _m0.Writer.create(),
    ): _m0.Writer {
        if (
            message.verificationTemplateId !== undefined &&
            message.verificationTemplateId !== ""
        ) {
            writer.uint32(10).string(message.verificationTemplateId);
        }
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number,
    ): DeleteVerificationTemplateRequest {
        const reader =
            input instanceof _m0.Reader ? input : _m0.Reader.create(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseDeleteVerificationTemplateRequest();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    if (tag !== 10) {
                        break;
                    }

                    message.verificationTemplateId = reader.string();
                    continue;
            }
            if ((tag & 7) === 4 || tag === 0) {
                break;
            }
            reader.skipType(tag & 7);
        }
        return message;
    },

    fromJSON(object: any): DeleteVerificationTemplateRequest {
        return {
            verificationTemplateId: isSet(object.verificationTemplateId)
                ? String(object.verificationTemplateId)
                : "",
        };
    },

    toJSON(message: DeleteVerificationTemplateRequest): unknown {
        const obj: any = {};
        if (
            message.verificationTemplateId !== undefined &&
            message.verificationTemplateId !== ""
        ) {
            obj.verificationTemplateId = message.verificationTemplateId;
        }
        return obj;
    },

    create(
        base?: DeepPartial<DeleteVerificationTemplateRequest>,
    ): DeleteVerificationTemplateRequest {
        return DeleteVerificationTemplateRequest.fromPartial(base ?? {});
    },
    fromPartial(
        object: DeepPartial<DeleteVerificationTemplateRequest>,
    ): DeleteVerificationTemplateRequest {
        const message = createBaseDeleteVerificationTemplateRequest();
        message.verificationTemplateId = object.verificationTemplateId ?? "";
        return message;
    },
};

function createBaseDeleteVerificationTemplateResponse(): DeleteVerificationTemplateResponse {
    return {};
}

export const DeleteVerificationTemplateResponse = {
    encode(
        _: DeleteVerificationTemplateResponse,
        writer: _m0.Writer = _m0.Writer.create(),
    ): _m0.Writer {
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number,
    ): DeleteVerificationTemplateResponse {
        const reader =
            input instanceof _m0.Reader ? input : _m0.Reader.create(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseDeleteVerificationTemplateResponse();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
            }
            if ((tag & 7) === 4 || tag === 0) {
                break;
            }
            reader.skipType(tag & 7);
        }
        return message;
    },

    fromJSON(_: any): DeleteVerificationTemplateResponse {
        return {};
    },

    toJSON(_: DeleteVerificationTemplateResponse): unknown {
        const obj: any = {};
        return obj;
    },

    create(
        base?: DeepPartial<DeleteVerificationTemplateResponse>,
    ): DeleteVerificationTemplateResponse {
        return DeleteVerificationTemplateResponse.fromPartial(base ?? {});
    },
    fromPartial(
        _: DeepPartial<DeleteVerificationTemplateResponse>,
    ): DeleteVerificationTemplateResponse {
        const message = createBaseDeleteVerificationTemplateResponse();
        return message;
    },
};

function createBaseVerificationTemplateData(): VerificationTemplateData {
    return {
        id: "",
        name: "",
        version: 0,
        fields: {},
        credentialTemplateId: "",
        ecosystemId: "",
        type: "",
        createdBy: "",
        dateCreated: "",
        title: "",
        description: "",
    };
}

export const VerificationTemplateData = {
    encode(
        message: VerificationTemplateData,
        writer: _m0.Writer = _m0.Writer.create(),
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
            VerificationTemplateData_FieldsEntry.encode(
                { key: key as any, value },
                writer.uint32(34).fork(),
            ).ldelim();
        });
        if (
            message.credentialTemplateId !== undefined &&
            message.credentialTemplateId !== ""
        ) {
            writer.uint32(42).string(message.credentialTemplateId);
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
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number,
    ): VerificationTemplateData {
        const reader =
            input instanceof _m0.Reader ? input : _m0.Reader.create(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseVerificationTemplateData();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    if (tag !== 10) {
                        break;
                    }

                    message.id = reader.string();
                    continue;
                case 2:
                    if (tag !== 18) {
                        break;
                    }

                    message.name = reader.string();
                    continue;
                case 3:
                    if (tag !== 24) {
                        break;
                    }

                    message.version = reader.int32();
                    continue;
                case 4:
                    if (tag !== 34) {
                        break;
                    }

                    const entry4 = VerificationTemplateData_FieldsEntry.decode(
                        reader,
                        reader.uint32(),
                    );
                    if (entry4.value !== undefined) {
                        message.fields![entry4.key] = entry4.value;
                    }
                    continue;
                case 5:
                    if (tag !== 42) {
                        break;
                    }

                    message.credentialTemplateId = reader.string();
                    continue;
                case 8:
                    if (tag !== 66) {
                        break;
                    }

                    message.ecosystemId = reader.string();
                    continue;
                case 9:
                    if (tag !== 74) {
                        break;
                    }

                    message.type = reader.string();
                    continue;
                case 10:
                    if (tag !== 82) {
                        break;
                    }

                    message.createdBy = reader.string();
                    continue;
                case 11:
                    if (tag !== 90) {
                        break;
                    }

                    message.dateCreated = reader.string();
                    continue;
                case 12:
                    if (tag !== 98) {
                        break;
                    }

                    message.title = reader.string();
                    continue;
                case 13:
                    if (tag !== 106) {
                        break;
                    }

                    message.description = reader.string();
                    continue;
            }
            if ((tag & 7) === 4 || tag === 0) {
                break;
            }
            reader.skipType(tag & 7);
        }
        return message;
    },

    fromJSON(object: any): VerificationTemplateData {
        return {
            id: isSet(object.id) ? String(object.id) : "",
            name: isSet(object.name) ? String(object.name) : "",
            version: isSet(object.version) ? Number(object.version) : 0,
            fields: isObject(object.fields)
                ? Object.entries(object.fields).reduce<{
                      [key: string]: VerificationTemplateField;
                  }>((acc, [key, value]) => {
                      acc[key] = VerificationTemplateField.fromJSON(value);
                      return acc;
                  }, {})
                : {},
            credentialTemplateId: isSet(object.credentialTemplateId)
                ? String(object.credentialTemplateId)
                : "",
            ecosystemId: isSet(object.ecosystemId)
                ? String(object.ecosystemId)
                : "",
            type: isSet(object.type) ? String(object.type) : "",
            createdBy: isSet(object.createdBy) ? String(object.createdBy) : "",
            dateCreated: isSet(object.dateCreated)
                ? String(object.dateCreated)
                : "",
            title: isSet(object.title) ? String(object.title) : "",
            description: isSet(object.description)
                ? String(object.description)
                : "",
        };
    },

    toJSON(message: VerificationTemplateData): unknown {
        const obj: any = {};
        if (message.id !== undefined && message.id !== "") {
            obj.id = message.id;
        }
        if (message.name !== undefined && message.name !== "") {
            obj.name = message.name;
        }
        if (message.version !== undefined && message.version !== 0) {
            obj.version = Math.round(message.version);
        }
        if (message.fields) {
            const entries = Object.entries(message.fields);
            if (entries.length > 0) {
                obj.fields = {};
                entries.forEach(([k, v]) => {
                    obj.fields[k] = VerificationTemplateField.toJSON(v);
                });
            }
        }
        if (
            message.credentialTemplateId !== undefined &&
            message.credentialTemplateId !== ""
        ) {
            obj.credentialTemplateId = message.credentialTemplateId;
        }
        if (message.ecosystemId !== undefined && message.ecosystemId !== "") {
            obj.ecosystemId = message.ecosystemId;
        }
        if (message.type !== undefined && message.type !== "") {
            obj.type = message.type;
        }
        if (message.createdBy !== undefined && message.createdBy !== "") {
            obj.createdBy = message.createdBy;
        }
        if (message.dateCreated !== undefined && message.dateCreated !== "") {
            obj.dateCreated = message.dateCreated;
        }
        if (message.title !== undefined && message.title !== "") {
            obj.title = message.title;
        }
        if (message.description !== undefined && message.description !== "") {
            obj.description = message.description;
        }
        return obj;
    },

    create(
        base?: DeepPartial<VerificationTemplateData>,
    ): VerificationTemplateData {
        return VerificationTemplateData.fromPartial(base ?? {});
    },
    fromPartial(
        object: DeepPartial<VerificationTemplateData>,
    ): VerificationTemplateData {
        const message = createBaseVerificationTemplateData();
        message.id = object.id ?? "";
        message.name = object.name ?? "";
        message.version = object.version ?? 0;
        message.fields = Object.entries(object.fields ?? {}).reduce<{
            [key: string]: VerificationTemplateField;
        }>((acc, [key, value]) => {
            if (value !== undefined) {
                acc[key] = VerificationTemplateField.fromPartial(value);
            }
            return acc;
        }, {});
        message.credentialTemplateId = object.credentialTemplateId ?? "";
        message.ecosystemId = object.ecosystemId ?? "";
        message.type = object.type ?? "";
        message.createdBy = object.createdBy ?? "";
        message.dateCreated = object.dateCreated ?? "";
        message.title = object.title ?? "";
        message.description = object.description ?? "";
        return message;
    },
};

function createBaseVerificationTemplateData_FieldsEntry(): VerificationTemplateData_FieldsEntry {
    return { key: "", value: undefined };
}

export const VerificationTemplateData_FieldsEntry = {
    encode(
        message: VerificationTemplateData_FieldsEntry,
        writer: _m0.Writer = _m0.Writer.create(),
    ): _m0.Writer {
        if (message.key !== "") {
            writer.uint32(10).string(message.key);
        }
        if (message.value !== undefined) {
            VerificationTemplateField.encode(
                message.value,
                writer.uint32(18).fork(),
            ).ldelim();
        }
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number,
    ): VerificationTemplateData_FieldsEntry {
        const reader =
            input instanceof _m0.Reader ? input : _m0.Reader.create(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseVerificationTemplateData_FieldsEntry();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    if (tag !== 10) {
                        break;
                    }

                    message.key = reader.string();
                    continue;
                case 2:
                    if (tag !== 18) {
                        break;
                    }

                    message.value = VerificationTemplateField.decode(
                        reader,
                        reader.uint32(),
                    );
                    continue;
            }
            if ((tag & 7) === 4 || tag === 0) {
                break;
            }
            reader.skipType(tag & 7);
        }
        return message;
    },

    fromJSON(object: any): VerificationTemplateData_FieldsEntry {
        return {
            key: isSet(object.key) ? String(object.key) : "",
            value: isSet(object.value)
                ? VerificationTemplateField.fromJSON(object.value)
                : undefined,
        };
    },

    toJSON(message: VerificationTemplateData_FieldsEntry): unknown {
        const obj: any = {};
        if (message.key !== "") {
            obj.key = message.key;
        }
        if (message.value !== undefined) {
            obj.value = VerificationTemplateField.toJSON(message.value);
        }
        return obj;
    },

    create(
        base?: DeepPartial<VerificationTemplateData_FieldsEntry>,
    ): VerificationTemplateData_FieldsEntry {
        return VerificationTemplateData_FieldsEntry.fromPartial(base ?? {});
    },
    fromPartial(
        object: DeepPartial<VerificationTemplateData_FieldsEntry>,
    ): VerificationTemplateData_FieldsEntry {
        const message = createBaseVerificationTemplateData_FieldsEntry();
        message.key = object.key ?? "";
        message.value =
            object.value !== undefined && object.value !== null
                ? VerificationTemplateField.fromPartial(object.value)
                : undefined;
        return message;
    },
};

function createBaseListVerificationTemplatesRequest(): ListVerificationTemplatesRequest {
    return { query: "", continuationToken: "" };
}

export const ListVerificationTemplatesRequest = {
    encode(
        message: ListVerificationTemplatesRequest,
        writer: _m0.Writer = _m0.Writer.create(),
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
        length?: number,
    ): ListVerificationTemplatesRequest {
        const reader =
            input instanceof _m0.Reader ? input : _m0.Reader.create(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseListVerificationTemplatesRequest();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    if (tag !== 10) {
                        break;
                    }

                    message.query = reader.string();
                    continue;
                case 2:
                    if (tag !== 18) {
                        break;
                    }

                    message.continuationToken = reader.string();
                    continue;
            }
            if ((tag & 7) === 4 || tag === 0) {
                break;
            }
            reader.skipType(tag & 7);
        }
        return message;
    },

    fromJSON(object: any): ListVerificationTemplatesRequest {
        return {
            query: isSet(object.query) ? String(object.query) : "",
            continuationToken: isSet(object.continuationToken)
                ? String(object.continuationToken)
                : "",
        };
    },

    toJSON(message: ListVerificationTemplatesRequest): unknown {
        const obj: any = {};
        if (message.query !== undefined && message.query !== "") {
            obj.query = message.query;
        }
        if (
            message.continuationToken !== undefined &&
            message.continuationToken !== ""
        ) {
            obj.continuationToken = message.continuationToken;
        }
        return obj;
    },

    create(
        base?: DeepPartial<ListVerificationTemplatesRequest>,
    ): ListVerificationTemplatesRequest {
        return ListVerificationTemplatesRequest.fromPartial(base ?? {});
    },
    fromPartial(
        object: DeepPartial<ListVerificationTemplatesRequest>,
    ): ListVerificationTemplatesRequest {
        const message = createBaseListVerificationTemplatesRequest();
        message.query = object.query ?? "";
        message.continuationToken = object.continuationToken ?? "";
        return message;
    },
};

function createBaseListVerificationTemplatesResponse(): ListVerificationTemplatesResponse {
    return { templates: [], hasMoreResults: false, continuationToken: "" };
}

export const ListVerificationTemplatesResponse = {
    encode(
        message: ListVerificationTemplatesResponse,
        writer: _m0.Writer = _m0.Writer.create(),
    ): _m0.Writer {
        if (message.templates !== undefined && message.templates.length !== 0) {
            for (const v of message.templates) {
                VerificationTemplateData.encode(
                    v!,
                    writer.uint32(10).fork(),
                ).ldelim();
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
        length?: number,
    ): ListVerificationTemplatesResponse {
        const reader =
            input instanceof _m0.Reader ? input : _m0.Reader.create(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseListVerificationTemplatesResponse();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    if (tag !== 10) {
                        break;
                    }

                    message.templates!.push(
                        VerificationTemplateData.decode(
                            reader,
                            reader.uint32(),
                        ),
                    );
                    continue;
                case 2:
                    if (tag !== 16) {
                        break;
                    }

                    message.hasMoreResults = reader.bool();
                    continue;
                case 3:
                    if (tag !== 26) {
                        break;
                    }

                    message.continuationToken = reader.string();
                    continue;
            }
            if ((tag & 7) === 4 || tag === 0) {
                break;
            }
            reader.skipType(tag & 7);
        }
        return message;
    },

    fromJSON(object: any): ListVerificationTemplatesResponse {
        return {
            templates: Array.isArray(object?.templates)
                ? object.templates.map((e: any) =>
                      VerificationTemplateData.fromJSON(e),
                  )
                : [],
            hasMoreResults: isSet(object.hasMoreResults)
                ? Boolean(object.hasMoreResults)
                : false,
            continuationToken: isSet(object.continuationToken)
                ? String(object.continuationToken)
                : "",
        };
    },

    toJSON(message: ListVerificationTemplatesResponse): unknown {
        const obj: any = {};
        if (message.templates?.length) {
            obj.templates = message.templates.map((e) =>
                VerificationTemplateData.toJSON(e),
            );
        }
        if (message.hasMoreResults === true) {
            obj.hasMoreResults = message.hasMoreResults;
        }
        if (
            message.continuationToken !== undefined &&
            message.continuationToken !== ""
        ) {
            obj.continuationToken = message.continuationToken;
        }
        return obj;
    },

    create(
        base?: DeepPartial<ListVerificationTemplatesResponse>,
    ): ListVerificationTemplatesResponse {
        return ListVerificationTemplatesResponse.fromPartial(base ?? {});
    },
    fromPartial(
        object: DeepPartial<ListVerificationTemplatesResponse>,
    ): ListVerificationTemplatesResponse {
        const message = createBaseListVerificationTemplatesResponse();
        message.templates =
            object.templates?.map((e) =>
                VerificationTemplateData.fromPartial(e),
            ) || [];
        message.hasMoreResults = object.hasMoreResults ?? false;
        message.continuationToken = object.continuationToken ?? "";
        return message;
    },
};

function createBaseVerificationTemplateField(): VerificationTemplateField {
    return { fieldShareType: 0, usagePolicy: "" };
}

export const VerificationTemplateField = {
    encode(
        message: VerificationTemplateField,
        writer: _m0.Writer = _m0.Writer.create(),
    ): _m0.Writer {
        if (
            message.fieldShareType !== undefined &&
            message.fieldShareType !== 0
        ) {
            writer.uint32(8).int32(message.fieldShareType);
        }
        if (message.usagePolicy !== undefined && message.usagePolicy !== "") {
            writer.uint32(18).string(message.usagePolicy);
        }
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number,
    ): VerificationTemplateField {
        const reader =
            input instanceof _m0.Reader ? input : _m0.Reader.create(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseVerificationTemplateField();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    if (tag !== 8) {
                        break;
                    }

                    message.fieldShareType = reader.int32() as any;
                    continue;
                case 2:
                    if (tag !== 18) {
                        break;
                    }

                    message.usagePolicy = reader.string();
                    continue;
            }
            if ((tag & 7) === 4 || tag === 0) {
                break;
            }
            reader.skipType(tag & 7);
        }
        return message;
    },

    fromJSON(object: any): VerificationTemplateField {
        return {
            fieldShareType: isSet(object.fieldShareType)
                ? verificationShareTypeFromJSON(object.fieldShareType)
                : 0,
            usagePolicy: isSet(object.usagePolicy)
                ? String(object.usagePolicy)
                : "",
        };
    },

    toJSON(message: VerificationTemplateField): unknown {
        const obj: any = {};
        if (
            message.fieldShareType !== undefined &&
            message.fieldShareType !== 0
        ) {
            obj.fieldShareType = verificationShareTypeToJSON(
                message.fieldShareType,
            );
        }
        if (message.usagePolicy !== undefined && message.usagePolicy !== "") {
            obj.usagePolicy = message.usagePolicy;
        }
        return obj;
    },

    create(
        base?: DeepPartial<VerificationTemplateField>,
    ): VerificationTemplateField {
        return VerificationTemplateField.fromPartial(base ?? {});
    },
    fromPartial(
        object: DeepPartial<VerificationTemplateField>,
    ): VerificationTemplateField {
        const message = createBaseVerificationTemplateField();
        message.fieldShareType = object.fieldShareType ?? 0;
        message.usagePolicy = object.usagePolicy ?? "";
        return message;
    },
};

function createBaseVerificationTemplateFieldPatch(): VerificationTemplateFieldPatch {
    return { fieldShareType: 0, usagePolicy: "" };
}

export const VerificationTemplateFieldPatch = {
    encode(
        message: VerificationTemplateFieldPatch,
        writer: _m0.Writer = _m0.Writer.create(),
    ): _m0.Writer {
        if (
            message.fieldShareType !== undefined &&
            message.fieldShareType !== 0
        ) {
            writer.uint32(8).int32(message.fieldShareType);
        }
        if (message.usagePolicy !== undefined && message.usagePolicy !== "") {
            writer.uint32(18).string(message.usagePolicy);
        }
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number,
    ): VerificationTemplateFieldPatch {
        const reader =
            input instanceof _m0.Reader ? input : _m0.Reader.create(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseVerificationTemplateFieldPatch();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    if (tag !== 8) {
                        break;
                    }

                    message.fieldShareType = reader.int32() as any;
                    continue;
                case 2:
                    if (tag !== 18) {
                        break;
                    }

                    message.usagePolicy = reader.string();
                    continue;
            }
            if ((tag & 7) === 4 || tag === 0) {
                break;
            }
            reader.skipType(tag & 7);
        }
        return message;
    },

    fromJSON(object: any): VerificationTemplateFieldPatch {
        return {
            fieldShareType: isSet(object.fieldShareType)
                ? verificationShareTypeFromJSON(object.fieldShareType)
                : 0,
            usagePolicy: isSet(object.usagePolicy)
                ? String(object.usagePolicy)
                : "",
        };
    },

    toJSON(message: VerificationTemplateFieldPatch): unknown {
        const obj: any = {};
        if (
            message.fieldShareType !== undefined &&
            message.fieldShareType !== 0
        ) {
            obj.fieldShareType = verificationShareTypeToJSON(
                message.fieldShareType,
            );
        }
        if (message.usagePolicy !== undefined && message.usagePolicy !== "") {
            obj.usagePolicy = message.usagePolicy;
        }
        return obj;
    },

    create(
        base?: DeepPartial<VerificationTemplateFieldPatch>,
    ): VerificationTemplateFieldPatch {
        return VerificationTemplateFieldPatch.fromPartial(base ?? {});
    },
    fromPartial(
        object: DeepPartial<VerificationTemplateFieldPatch>,
    ): VerificationTemplateFieldPatch {
        const message = createBaseVerificationTemplateFieldPatch();
        message.fieldShareType = object.fieldShareType ?? 0;
        message.usagePolicy = object.usagePolicy ?? "";
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
        /** Create/update verification templates */
        createVerificationTemplate: {
            name: "CreateVerificationTemplate",
            requestType: CreateVerificationTemplateRequest,
            requestStream: false,
            responseType: CreateVerificationTemplateResponse,
            responseStream: false,
            options: {
                _unknownFields: { 480010: [new Uint8Array([4, 34, 2, 8, 1])] },
            },
        },
        listVerificationTemplates: {
            name: "ListVerificationTemplates",
            requestType: ListVerificationTemplatesRequest,
            requestStream: false,
            responseType: ListVerificationTemplatesResponse,
            responseStream: false,
            options: {
                _unknownFields: { 480010: [new Uint8Array([4, 34, 2, 8, 1])] },
            },
        },
        getVerificationTemplate: {
            name: "GetVerificationTemplate",
            requestType: GetVerificationTemplateRequest,
            requestStream: false,
            responseType: GetVerificationTemplateResponse,
            responseStream: false,
            options: {
                _unknownFields: { 480010: [new Uint8Array([4, 34, 2, 8, 1])] },
            },
        },
        updateVerificationTemplate: {
            name: "UpdateVerificationTemplate",
            requestType: UpdateVerificationTemplateRequest,
            requestStream: false,
            responseType: UpdateVerificationTemplateResponse,
            responseStream: false,
            options: {
                _unknownFields: { 480010: [new Uint8Array([4, 34, 2, 8, 1])] },
            },
        },
        deleteVerificationTemplate: {
            name: "DeleteVerificationTemplate",
            requestType: DeleteVerificationTemplateRequest,
            requestStream: false,
            responseType: DeleteVerificationTemplateResponse,
            responseStream: false,
            options: {
                _unknownFields: { 480010: [new Uint8Array([4, 34, 2, 8, 1])] },
            },
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
