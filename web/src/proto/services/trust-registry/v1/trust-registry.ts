/* eslint-disable */
import Long from "long";
import _m0 from "protobufjs/minimal";

export enum RegistrationStatus {
  /** CURRENT - Member is currently authorized, as of the time of the query */
  CURRENT = 0,
  /** EXPIRED - Member's authorization has expired */
  EXPIRED = 1,
  /** TERMINATED - Member has voluntarily ceased Issuer role under the specific EGF */
  TERMINATED = 2,
  /** REVOKED - Member authority under specific EGF was terminated by the governing authority */
  REVOKED = 3,
  /** NOT_FOUND - Member is not associated with given credential schema in the EGF */
  NOT_FOUND = 10,
  UNRECOGNIZED = -1,
}

export function registrationStatusFromJSON(object: any): RegistrationStatus {
  switch (object) {
    case 0:
    case "CURRENT":
      return RegistrationStatus.CURRENT;
    case 1:
    case "EXPIRED":
      return RegistrationStatus.EXPIRED;
    case 2:
    case "TERMINATED":
      return RegistrationStatus.TERMINATED;
    case 3:
    case "REVOKED":
      return RegistrationStatus.REVOKED;
    case 10:
    case "NOT_FOUND":
      return RegistrationStatus.NOT_FOUND;
    case -1:
    case "UNRECOGNIZED":
    default:
      return RegistrationStatus.UNRECOGNIZED;
  }
}

export function registrationStatusToJSON(object: RegistrationStatus): string {
  switch (object) {
    case RegistrationStatus.CURRENT:
      return "CURRENT";
    case RegistrationStatus.EXPIRED:
      return "EXPIRED";
    case RegistrationStatus.TERMINATED:
      return "TERMINATED";
    case RegistrationStatus.REVOKED:
      return "REVOKED";
    case RegistrationStatus.NOT_FOUND:
      return "NOT_FOUND";
    case RegistrationStatus.UNRECOGNIZED:
    default:
      return "UNRECOGNIZED";
  }
}

/** Request to register a new ecosystem governance framework in the current ecosystem */
export interface AddFrameworkRequest {
  /** URI of governance framework organization */
  governanceFrameworkUri?: string;
  /** Name of governance framework organization */
  name?: string;
  /** Description of governance framework */
  description?: string;
}

/** Response to `AddFrameworkRequest` */
export interface AddFrameworkResponse {
  /** Unique framework identifier */
  id?: string;
  /** DID URI of Trinsic account which created the governance framework */
  governingAuthority?: string;
  /** URN of trust registry for governance framework */
  trustRegistry?: string;
}

/** Request to remove a governance framework from the current ecosystem */
export interface RemoveFrameworkRequest {
  /** ID of governance framework to remove */
  id?: string;
}

/** Response to `RemoveFrameworkRequest` */
export interface RemoveFrameworkResponse {
}

/** Request to search all governance frameworks within ecosystem */
export interface SearchRegistryRequest {
  /** SQL query to execute against frameworks. Example: `SELECT c from c where c.type == 'GovernanceFramework'` */
  query?: string;
  /** Token to fetch next set of results, from previous `SearchRegistryResponse` */
  continuationToken?: string;
}

/** Response to `SearchRegistryRequest` */
export interface SearchRegistryResponse {
  /** JSON string containing array of resultant objects */
  itemsJson?: string;
  /** Whether more data is available to fetch for query */
  hasMoreResults?: boolean;
  /** Token to fetch next set of results via `SearchRegistryRequest` */
  continuationToken?: string;
}

/** Ecosystem Governance Framework */
export interface GovernanceFramework {
  /** URI of governance framework organization */
  governanceFrameworkUri?: string;
  /** URI of trust registry associated with governance framework */
  trustRegistryUri?: string;
  /** Description of governance framework */
  description?: string;
}

/**
 * Request to register a member as a valid issuer of a specific credential schema.
 * Only one of `did_uri`, `wallet_id`, or `email` may be specified.
 */
export interface RegisterMemberRequest {
  /** DID URI of member to register */
  didUri?:
    | string
    | undefined;
  /** Trinsic Wallet ID of member to register */
  walletId?:
    | string
    | undefined;
  /** Email address of member to register. Must be associated with an existing Trinsic account. */
  email?:
    | string
    | undefined;
  /** URI of credential schema to register member as authorized issuer of */
  schemaUri?: string;
  /** Unix Timestamp member is valid from. Member will not be considered valid before this timestamp. */
  validFromUtc?: number;
  /** Unix Timestamp member is valid until. Member will not be considered valid after this timestamp. */
  validUntilUtc?: number;
  /** ID of the governance framework that member is being added to */
  frameworkId?: string;
}

/** Response to `RegisterMemberRequest` */
export interface RegisterMemberResponse {
}

/**
 * Request to unregister a member as a valid issuer of a specific credential schema.
 * Only one of `did_uri`, `wallet_id`, or `email` may be specified.
 */
export interface UnregisterMemberRequest {
  /** DID URI of member to unregister */
  didUri?:
    | string
    | undefined;
  /** Trinsic Wallet ID of member to unregister */
  walletId?:
    | string
    | undefined;
  /** Email address of member to unregister. Must be associated with an existing Trinsic account. */
  email?:
    | string
    | undefined;
  /** URI of credential schema to unregister member as authorized issuer of */
  schemaUri?: string;
  /** ID of the governance framework that member is being removed from */
  frameworkId?: string;
}

/** Response to `UnregisterMemberRequest` */
export interface UnregisterMemberResponse {
}

/** Request to fetch membership status in governance framework for a specific credential schema. */
export interface GetMembershipStatusRequest {
  /**
   * The ID of the ecosystem governance framework.
   * This ID may be found in the 'trustRegistry' field in the
   * verifiable credential model
   */
  frameworkId?: string;
  /** DID URI of member */
  didUri?: string;
  /** URI of credential schema associated with membership */
  schemaUri?: string;
}

/** Response to `GetMembershipStatusRequest` */
export interface GetMembershipStatusResponse {
  /** Status of member for given credential schema */
  status?: RegistrationStatus;
}

export interface ListAuthorizedMembersRequest {
  /**
   * The ID of the ecosystem governance framework.
   * This ID may be found in the 'trustRegistry' field in the
   * verifiable credential model
   */
  frameworkId?: string;
  /** id of schema that needs to be checked */
  schemaUri?:
    | string
    | undefined;
  /** Token to fetch next set of results, from previous `SearchRegistryResponse` */
  continuationToken?: string | undefined;
}

/** Response to `ListAuthorizedMembersRequest` */
export interface ListAuthorizedMembersResponse {
  /** JSON string containing array of resultant objects */
  authorizedMembers?: AuthorizedMember[];
  /** Whether more data is available to fetch for query */
  hasMoreResults?: boolean;
  /** Token to fetch next set of results via `ListAuthorizedMembersRequest` */
  continuationToken?: string;
}

export interface AuthorizedMember {
  did?: string;
  authorizedMemberSchemas?: AuthorizedMemberSchema[];
}

export interface AuthorizedMemberSchema {
  schemaUri?: string;
  status?: string;
  statusDetails?: string;
  validFrom?: number;
  validUntil?: number;
}

function createBaseAddFrameworkRequest(): AddFrameworkRequest {
  return { governanceFrameworkUri: "", name: "", description: "" };
}

export const AddFrameworkRequest = {
  encode(message: AddFrameworkRequest, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.governanceFrameworkUri !== undefined && message.governanceFrameworkUri !== "") {
      writer.uint32(10).string(message.governanceFrameworkUri);
    }
    if (message.name !== undefined && message.name !== "") {
      writer.uint32(18).string(message.name);
    }
    if (message.description !== undefined && message.description !== "") {
      writer.uint32(26).string(message.description);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): AddFrameworkRequest {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseAddFrameworkRequest();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag != 10) {
            break;
          }

          message.governanceFrameworkUri = reader.string();
          continue;
        case 2:
          if (tag != 18) {
            break;
          }

          message.name = reader.string();
          continue;
        case 3:
          if (tag != 26) {
            break;
          }

          message.description = reader.string();
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): AddFrameworkRequest {
    return {
      governanceFrameworkUri: isSet(object.governanceFrameworkUri) ? String(object.governanceFrameworkUri) : "",
      name: isSet(object.name) ? String(object.name) : "",
      description: isSet(object.description) ? String(object.description) : "",
    };
  },

  toJSON(message: AddFrameworkRequest): unknown {
    const obj: any = {};
    message.governanceFrameworkUri !== undefined && (obj.governanceFrameworkUri = message.governanceFrameworkUri);
    message.name !== undefined && (obj.name = message.name);
    message.description !== undefined && (obj.description = message.description);
    return obj;
  },

  create(base?: DeepPartial<AddFrameworkRequest>): AddFrameworkRequest {
    return AddFrameworkRequest.fromPartial(base ?? {});
  },

  fromPartial(object: DeepPartial<AddFrameworkRequest>): AddFrameworkRequest {
    const message = createBaseAddFrameworkRequest();
    message.governanceFrameworkUri = object.governanceFrameworkUri ?? "";
    message.name = object.name ?? "";
    message.description = object.description ?? "";
    return message;
  },
};

function createBaseAddFrameworkResponse(): AddFrameworkResponse {
  return { id: "", governingAuthority: "", trustRegistry: "" };
}

export const AddFrameworkResponse = {
  encode(message: AddFrameworkResponse, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.id !== undefined && message.id !== "") {
      writer.uint32(10).string(message.id);
    }
    if (message.governingAuthority !== undefined && message.governingAuthority !== "") {
      writer.uint32(18).string(message.governingAuthority);
    }
    if (message.trustRegistry !== undefined && message.trustRegistry !== "") {
      writer.uint32(26).string(message.trustRegistry);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): AddFrameworkResponse {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseAddFrameworkResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag != 10) {
            break;
          }

          message.id = reader.string();
          continue;
        case 2:
          if (tag != 18) {
            break;
          }

          message.governingAuthority = reader.string();
          continue;
        case 3:
          if (tag != 26) {
            break;
          }

          message.trustRegistry = reader.string();
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): AddFrameworkResponse {
    return {
      id: isSet(object.id) ? String(object.id) : "",
      governingAuthority: isSet(object.governingAuthority) ? String(object.governingAuthority) : "",
      trustRegistry: isSet(object.trustRegistry) ? String(object.trustRegistry) : "",
    };
  },

  toJSON(message: AddFrameworkResponse): unknown {
    const obj: any = {};
    message.id !== undefined && (obj.id = message.id);
    message.governingAuthority !== undefined && (obj.governingAuthority = message.governingAuthority);
    message.trustRegistry !== undefined && (obj.trustRegistry = message.trustRegistry);
    return obj;
  },

  create(base?: DeepPartial<AddFrameworkResponse>): AddFrameworkResponse {
    return AddFrameworkResponse.fromPartial(base ?? {});
  },

  fromPartial(object: DeepPartial<AddFrameworkResponse>): AddFrameworkResponse {
    const message = createBaseAddFrameworkResponse();
    message.id = object.id ?? "";
    message.governingAuthority = object.governingAuthority ?? "";
    message.trustRegistry = object.trustRegistry ?? "";
    return message;
  },
};

function createBaseRemoveFrameworkRequest(): RemoveFrameworkRequest {
  return { id: "" };
}

export const RemoveFrameworkRequest = {
  encode(message: RemoveFrameworkRequest, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.id !== undefined && message.id !== "") {
      writer.uint32(10).string(message.id);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): RemoveFrameworkRequest {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseRemoveFrameworkRequest();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag != 10) {
            break;
          }

          message.id = reader.string();
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): RemoveFrameworkRequest {
    return { id: isSet(object.id) ? String(object.id) : "" };
  },

  toJSON(message: RemoveFrameworkRequest): unknown {
    const obj: any = {};
    message.id !== undefined && (obj.id = message.id);
    return obj;
  },

  create(base?: DeepPartial<RemoveFrameworkRequest>): RemoveFrameworkRequest {
    return RemoveFrameworkRequest.fromPartial(base ?? {});
  },

  fromPartial(object: DeepPartial<RemoveFrameworkRequest>): RemoveFrameworkRequest {
    const message = createBaseRemoveFrameworkRequest();
    message.id = object.id ?? "";
    return message;
  },
};

function createBaseRemoveFrameworkResponse(): RemoveFrameworkResponse {
  return {};
}

export const RemoveFrameworkResponse = {
  encode(_: RemoveFrameworkResponse, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): RemoveFrameworkResponse {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseRemoveFrameworkResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(_: any): RemoveFrameworkResponse {
    return {};
  },

  toJSON(_: RemoveFrameworkResponse): unknown {
    const obj: any = {};
    return obj;
  },

  create(base?: DeepPartial<RemoveFrameworkResponse>): RemoveFrameworkResponse {
    return RemoveFrameworkResponse.fromPartial(base ?? {});
  },

  fromPartial(_: DeepPartial<RemoveFrameworkResponse>): RemoveFrameworkResponse {
    const message = createBaseRemoveFrameworkResponse();
    return message;
  },
};

function createBaseSearchRegistryRequest(): SearchRegistryRequest {
  return { query: "", continuationToken: "" };
}

export const SearchRegistryRequest = {
  encode(message: SearchRegistryRequest, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.query !== undefined && message.query !== "") {
      writer.uint32(10).string(message.query);
    }
    if (message.continuationToken !== undefined && message.continuationToken !== "") {
      writer.uint32(18).string(message.continuationToken);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): SearchRegistryRequest {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseSearchRegistryRequest();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag != 10) {
            break;
          }

          message.query = reader.string();
          continue;
        case 2:
          if (tag != 18) {
            break;
          }

          message.continuationToken = reader.string();
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): SearchRegistryRequest {
    return {
      query: isSet(object.query) ? String(object.query) : "",
      continuationToken: isSet(object.continuationToken) ? String(object.continuationToken) : "",
    };
  },

  toJSON(message: SearchRegistryRequest): unknown {
    const obj: any = {};
    message.query !== undefined && (obj.query = message.query);
    message.continuationToken !== undefined && (obj.continuationToken = message.continuationToken);
    return obj;
  },

  create(base?: DeepPartial<SearchRegistryRequest>): SearchRegistryRequest {
    return SearchRegistryRequest.fromPartial(base ?? {});
  },

  fromPartial(object: DeepPartial<SearchRegistryRequest>): SearchRegistryRequest {
    const message = createBaseSearchRegistryRequest();
    message.query = object.query ?? "";
    message.continuationToken = object.continuationToken ?? "";
    return message;
  },
};

function createBaseSearchRegistryResponse(): SearchRegistryResponse {
  return { itemsJson: "", hasMoreResults: false, continuationToken: "" };
}

export const SearchRegistryResponse = {
  encode(message: SearchRegistryResponse, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.itemsJson !== undefined && message.itemsJson !== "") {
      writer.uint32(10).string(message.itemsJson);
    }
    if (message.hasMoreResults === true) {
      writer.uint32(16).bool(message.hasMoreResults);
    }
    if (message.continuationToken !== undefined && message.continuationToken !== "") {
      writer.uint32(34).string(message.continuationToken);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): SearchRegistryResponse {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseSearchRegistryResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag != 10) {
            break;
          }

          message.itemsJson = reader.string();
          continue;
        case 2:
          if (tag != 16) {
            break;
          }

          message.hasMoreResults = reader.bool();
          continue;
        case 4:
          if (tag != 34) {
            break;
          }

          message.continuationToken = reader.string();
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): SearchRegistryResponse {
    return {
      itemsJson: isSet(object.itemsJson) ? String(object.itemsJson) : "",
      hasMoreResults: isSet(object.hasMoreResults) ? Boolean(object.hasMoreResults) : false,
      continuationToken: isSet(object.continuationToken) ? String(object.continuationToken) : "",
    };
  },

  toJSON(message: SearchRegistryResponse): unknown {
    const obj: any = {};
    message.itemsJson !== undefined && (obj.itemsJson = message.itemsJson);
    message.hasMoreResults !== undefined && (obj.hasMoreResults = message.hasMoreResults);
    message.continuationToken !== undefined && (obj.continuationToken = message.continuationToken);
    return obj;
  },

  create(base?: DeepPartial<SearchRegistryResponse>): SearchRegistryResponse {
    return SearchRegistryResponse.fromPartial(base ?? {});
  },

  fromPartial(object: DeepPartial<SearchRegistryResponse>): SearchRegistryResponse {
    const message = createBaseSearchRegistryResponse();
    message.itemsJson = object.itemsJson ?? "";
    message.hasMoreResults = object.hasMoreResults ?? false;
    message.continuationToken = object.continuationToken ?? "";
    return message;
  },
};

function createBaseGovernanceFramework(): GovernanceFramework {
  return { governanceFrameworkUri: "", trustRegistryUri: "", description: "" };
}

export const GovernanceFramework = {
  encode(message: GovernanceFramework, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.governanceFrameworkUri !== undefined && message.governanceFrameworkUri !== "") {
      writer.uint32(10).string(message.governanceFrameworkUri);
    }
    if (message.trustRegistryUri !== undefined && message.trustRegistryUri !== "") {
      writer.uint32(18).string(message.trustRegistryUri);
    }
    if (message.description !== undefined && message.description !== "") {
      writer.uint32(26).string(message.description);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): GovernanceFramework {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseGovernanceFramework();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag != 10) {
            break;
          }

          message.governanceFrameworkUri = reader.string();
          continue;
        case 2:
          if (tag != 18) {
            break;
          }

          message.trustRegistryUri = reader.string();
          continue;
        case 3:
          if (tag != 26) {
            break;
          }

          message.description = reader.string();
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): GovernanceFramework {
    return {
      governanceFrameworkUri: isSet(object.governanceFrameworkUri) ? String(object.governanceFrameworkUri) : "",
      trustRegistryUri: isSet(object.trustRegistryUri) ? String(object.trustRegistryUri) : "",
      description: isSet(object.description) ? String(object.description) : "",
    };
  },

  toJSON(message: GovernanceFramework): unknown {
    const obj: any = {};
    message.governanceFrameworkUri !== undefined && (obj.governanceFrameworkUri = message.governanceFrameworkUri);
    message.trustRegistryUri !== undefined && (obj.trustRegistryUri = message.trustRegistryUri);
    message.description !== undefined && (obj.description = message.description);
    return obj;
  },

  create(base?: DeepPartial<GovernanceFramework>): GovernanceFramework {
    return GovernanceFramework.fromPartial(base ?? {});
  },

  fromPartial(object: DeepPartial<GovernanceFramework>): GovernanceFramework {
    const message = createBaseGovernanceFramework();
    message.governanceFrameworkUri = object.governanceFrameworkUri ?? "";
    message.trustRegistryUri = object.trustRegistryUri ?? "";
    message.description = object.description ?? "";
    return message;
  },
};

function createBaseRegisterMemberRequest(): RegisterMemberRequest {
  return {
    didUri: undefined,
    walletId: undefined,
    email: undefined,
    schemaUri: "",
    validFromUtc: 0,
    validUntilUtc: 0,
    frameworkId: "",
  };
}

export const RegisterMemberRequest = {
  encode(message: RegisterMemberRequest, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.didUri !== undefined) {
      writer.uint32(10).string(message.didUri);
    }
    if (message.walletId !== undefined) {
      writer.uint32(26).string(message.walletId);
    }
    if (message.email !== undefined) {
      writer.uint32(34).string(message.email);
    }
    if (message.schemaUri !== undefined && message.schemaUri !== "") {
      writer.uint32(82).string(message.schemaUri);
    }
    if (message.validFromUtc !== undefined && message.validFromUtc !== 0) {
      writer.uint32(88).uint64(message.validFromUtc);
    }
    if (message.validUntilUtc !== undefined && message.validUntilUtc !== 0) {
      writer.uint32(96).uint64(message.validUntilUtc);
    }
    if (message.frameworkId !== undefined && message.frameworkId !== "") {
      writer.uint32(242).string(message.frameworkId);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): RegisterMemberRequest {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseRegisterMemberRequest();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag != 10) {
            break;
          }

          message.didUri = reader.string();
          continue;
        case 3:
          if (tag != 26) {
            break;
          }

          message.walletId = reader.string();
          continue;
        case 4:
          if (tag != 34) {
            break;
          }

          message.email = reader.string();
          continue;
        case 10:
          if (tag != 82) {
            break;
          }

          message.schemaUri = reader.string();
          continue;
        case 11:
          if (tag != 88) {
            break;
          }

          message.validFromUtc = longToNumber(reader.uint64() as Long);
          continue;
        case 12:
          if (tag != 96) {
            break;
          }

          message.validUntilUtc = longToNumber(reader.uint64() as Long);
          continue;
        case 30:
          if (tag != 242) {
            break;
          }

          message.frameworkId = reader.string();
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): RegisterMemberRequest {
    return {
      didUri: isSet(object.didUri) ? String(object.didUri) : undefined,
      walletId: isSet(object.walletId) ? String(object.walletId) : undefined,
      email: isSet(object.email) ? String(object.email) : undefined,
      schemaUri: isSet(object.schemaUri) ? String(object.schemaUri) : "",
      validFromUtc: isSet(object.validFromUtc) ? Number(object.validFromUtc) : 0,
      validUntilUtc: isSet(object.validUntilUtc) ? Number(object.validUntilUtc) : 0,
      frameworkId: isSet(object.frameworkId) ? String(object.frameworkId) : "",
    };
  },

  toJSON(message: RegisterMemberRequest): unknown {
    const obj: any = {};
    message.didUri !== undefined && (obj.didUri = message.didUri);
    message.walletId !== undefined && (obj.walletId = message.walletId);
    message.email !== undefined && (obj.email = message.email);
    message.schemaUri !== undefined && (obj.schemaUri = message.schemaUri);
    message.validFromUtc !== undefined && (obj.validFromUtc = Math.round(message.validFromUtc));
    message.validUntilUtc !== undefined && (obj.validUntilUtc = Math.round(message.validUntilUtc));
    message.frameworkId !== undefined && (obj.frameworkId = message.frameworkId);
    return obj;
  },

  create(base?: DeepPartial<RegisterMemberRequest>): RegisterMemberRequest {
    return RegisterMemberRequest.fromPartial(base ?? {});
  },

  fromPartial(object: DeepPartial<RegisterMemberRequest>): RegisterMemberRequest {
    const message = createBaseRegisterMemberRequest();
    message.didUri = object.didUri ?? undefined;
    message.walletId = object.walletId ?? undefined;
    message.email = object.email ?? undefined;
    message.schemaUri = object.schemaUri ?? "";
    message.validFromUtc = object.validFromUtc ?? 0;
    message.validUntilUtc = object.validUntilUtc ?? 0;
    message.frameworkId = object.frameworkId ?? "";
    return message;
  },
};

function createBaseRegisterMemberResponse(): RegisterMemberResponse {
  return {};
}

export const RegisterMemberResponse = {
  encode(_: RegisterMemberResponse, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): RegisterMemberResponse {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseRegisterMemberResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(_: any): RegisterMemberResponse {
    return {};
  },

  toJSON(_: RegisterMemberResponse): unknown {
    const obj: any = {};
    return obj;
  },

  create(base?: DeepPartial<RegisterMemberResponse>): RegisterMemberResponse {
    return RegisterMemberResponse.fromPartial(base ?? {});
  },

  fromPartial(_: DeepPartial<RegisterMemberResponse>): RegisterMemberResponse {
    const message = createBaseRegisterMemberResponse();
    return message;
  },
};

function createBaseUnregisterMemberRequest(): UnregisterMemberRequest {
  return { didUri: undefined, walletId: undefined, email: undefined, schemaUri: "", frameworkId: "" };
}

export const UnregisterMemberRequest = {
  encode(message: UnregisterMemberRequest, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.didUri !== undefined) {
      writer.uint32(10).string(message.didUri);
    }
    if (message.walletId !== undefined) {
      writer.uint32(26).string(message.walletId);
    }
    if (message.email !== undefined) {
      writer.uint32(34).string(message.email);
    }
    if (message.schemaUri !== undefined && message.schemaUri !== "") {
      writer.uint32(82).string(message.schemaUri);
    }
    if (message.frameworkId !== undefined && message.frameworkId !== "") {
      writer.uint32(162).string(message.frameworkId);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): UnregisterMemberRequest {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseUnregisterMemberRequest();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag != 10) {
            break;
          }

          message.didUri = reader.string();
          continue;
        case 3:
          if (tag != 26) {
            break;
          }

          message.walletId = reader.string();
          continue;
        case 4:
          if (tag != 34) {
            break;
          }

          message.email = reader.string();
          continue;
        case 10:
          if (tag != 82) {
            break;
          }

          message.schemaUri = reader.string();
          continue;
        case 20:
          if (tag != 162) {
            break;
          }

          message.frameworkId = reader.string();
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): UnregisterMemberRequest {
    return {
      didUri: isSet(object.didUri) ? String(object.didUri) : undefined,
      walletId: isSet(object.walletId) ? String(object.walletId) : undefined,
      email: isSet(object.email) ? String(object.email) : undefined,
      schemaUri: isSet(object.schemaUri) ? String(object.schemaUri) : "",
      frameworkId: isSet(object.frameworkId) ? String(object.frameworkId) : "",
    };
  },

  toJSON(message: UnregisterMemberRequest): unknown {
    const obj: any = {};
    message.didUri !== undefined && (obj.didUri = message.didUri);
    message.walletId !== undefined && (obj.walletId = message.walletId);
    message.email !== undefined && (obj.email = message.email);
    message.schemaUri !== undefined && (obj.schemaUri = message.schemaUri);
    message.frameworkId !== undefined && (obj.frameworkId = message.frameworkId);
    return obj;
  },

  create(base?: DeepPartial<UnregisterMemberRequest>): UnregisterMemberRequest {
    return UnregisterMemberRequest.fromPartial(base ?? {});
  },

  fromPartial(object: DeepPartial<UnregisterMemberRequest>): UnregisterMemberRequest {
    const message = createBaseUnregisterMemberRequest();
    message.didUri = object.didUri ?? undefined;
    message.walletId = object.walletId ?? undefined;
    message.email = object.email ?? undefined;
    message.schemaUri = object.schemaUri ?? "";
    message.frameworkId = object.frameworkId ?? "";
    return message;
  },
};

function createBaseUnregisterMemberResponse(): UnregisterMemberResponse {
  return {};
}

export const UnregisterMemberResponse = {
  encode(_: UnregisterMemberResponse, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): UnregisterMemberResponse {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseUnregisterMemberResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(_: any): UnregisterMemberResponse {
    return {};
  },

  toJSON(_: UnregisterMemberResponse): unknown {
    const obj: any = {};
    return obj;
  },

  create(base?: DeepPartial<UnregisterMemberResponse>): UnregisterMemberResponse {
    return UnregisterMemberResponse.fromPartial(base ?? {});
  },

  fromPartial(_: DeepPartial<UnregisterMemberResponse>): UnregisterMemberResponse {
    const message = createBaseUnregisterMemberResponse();
    return message;
  },
};

function createBaseGetMembershipStatusRequest(): GetMembershipStatusRequest {
  return { frameworkId: "", didUri: "", schemaUri: "" };
}

export const GetMembershipStatusRequest = {
  encode(message: GetMembershipStatusRequest, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.frameworkId !== undefined && message.frameworkId !== "") {
      writer.uint32(10).string(message.frameworkId);
    }
    if (message.didUri !== undefined && message.didUri !== "") {
      writer.uint32(18).string(message.didUri);
    }
    if (message.schemaUri !== undefined && message.schemaUri !== "") {
      writer.uint32(34).string(message.schemaUri);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): GetMembershipStatusRequest {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseGetMembershipStatusRequest();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag != 10) {
            break;
          }

          message.frameworkId = reader.string();
          continue;
        case 2:
          if (tag != 18) {
            break;
          }

          message.didUri = reader.string();
          continue;
        case 4:
          if (tag != 34) {
            break;
          }

          message.schemaUri = reader.string();
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): GetMembershipStatusRequest {
    return {
      frameworkId: isSet(object.frameworkId) ? String(object.frameworkId) : "",
      didUri: isSet(object.didUri) ? String(object.didUri) : "",
      schemaUri: isSet(object.schemaUri) ? String(object.schemaUri) : "",
    };
  },

  toJSON(message: GetMembershipStatusRequest): unknown {
    const obj: any = {};
    message.frameworkId !== undefined && (obj.frameworkId = message.frameworkId);
    message.didUri !== undefined && (obj.didUri = message.didUri);
    message.schemaUri !== undefined && (obj.schemaUri = message.schemaUri);
    return obj;
  },

  create(base?: DeepPartial<GetMembershipStatusRequest>): GetMembershipStatusRequest {
    return GetMembershipStatusRequest.fromPartial(base ?? {});
  },

  fromPartial(object: DeepPartial<GetMembershipStatusRequest>): GetMembershipStatusRequest {
    const message = createBaseGetMembershipStatusRequest();
    message.frameworkId = object.frameworkId ?? "";
    message.didUri = object.didUri ?? "";
    message.schemaUri = object.schemaUri ?? "";
    return message;
  },
};

function createBaseGetMembershipStatusResponse(): GetMembershipStatusResponse {
  return { status: 0 };
}

export const GetMembershipStatusResponse = {
  encode(message: GetMembershipStatusResponse, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.status !== undefined && message.status !== 0) {
      writer.uint32(8).int32(message.status);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): GetMembershipStatusResponse {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseGetMembershipStatusResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag != 8) {
            break;
          }

          message.status = reader.int32() as any;
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): GetMembershipStatusResponse {
    return { status: isSet(object.status) ? registrationStatusFromJSON(object.status) : 0 };
  },

  toJSON(message: GetMembershipStatusResponse): unknown {
    const obj: any = {};
    message.status !== undefined && (obj.status = registrationStatusToJSON(message.status));
    return obj;
  },

  create(base?: DeepPartial<GetMembershipStatusResponse>): GetMembershipStatusResponse {
    return GetMembershipStatusResponse.fromPartial(base ?? {});
  },

  fromPartial(object: DeepPartial<GetMembershipStatusResponse>): GetMembershipStatusResponse {
    const message = createBaseGetMembershipStatusResponse();
    message.status = object.status ?? 0;
    return message;
  },
};

function createBaseListAuthorizedMembersRequest(): ListAuthorizedMembersRequest {
  return { frameworkId: "", schemaUri: undefined, continuationToken: undefined };
}

export const ListAuthorizedMembersRequest = {
  encode(message: ListAuthorizedMembersRequest, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.frameworkId !== undefined && message.frameworkId !== "") {
      writer.uint32(10).string(message.frameworkId);
    }
    if (message.schemaUri !== undefined) {
      writer.uint32(18).string(message.schemaUri);
    }
    if (message.continuationToken !== undefined) {
      writer.uint32(26).string(message.continuationToken);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): ListAuthorizedMembersRequest {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseListAuthorizedMembersRequest();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag != 10) {
            break;
          }

          message.frameworkId = reader.string();
          continue;
        case 2:
          if (tag != 18) {
            break;
          }

          message.schemaUri = reader.string();
          continue;
        case 3:
          if (tag != 26) {
            break;
          }

          message.continuationToken = reader.string();
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): ListAuthorizedMembersRequest {
    return {
      frameworkId: isSet(object.frameworkId) ? String(object.frameworkId) : "",
      schemaUri: isSet(object.schemaUri) ? String(object.schemaUri) : undefined,
      continuationToken: isSet(object.continuationToken) ? String(object.continuationToken) : undefined,
    };
  },

  toJSON(message: ListAuthorizedMembersRequest): unknown {
    const obj: any = {};
    message.frameworkId !== undefined && (obj.frameworkId = message.frameworkId);
    message.schemaUri !== undefined && (obj.schemaUri = message.schemaUri);
    message.continuationToken !== undefined && (obj.continuationToken = message.continuationToken);
    return obj;
  },

  create(base?: DeepPartial<ListAuthorizedMembersRequest>): ListAuthorizedMembersRequest {
    return ListAuthorizedMembersRequest.fromPartial(base ?? {});
  },

  fromPartial(object: DeepPartial<ListAuthorizedMembersRequest>): ListAuthorizedMembersRequest {
    const message = createBaseListAuthorizedMembersRequest();
    message.frameworkId = object.frameworkId ?? "";
    message.schemaUri = object.schemaUri ?? undefined;
    message.continuationToken = object.continuationToken ?? undefined;
    return message;
  },
};

function createBaseListAuthorizedMembersResponse(): ListAuthorizedMembersResponse {
  return { authorizedMembers: [], hasMoreResults: false, continuationToken: "" };
}

export const ListAuthorizedMembersResponse = {
  encode(message: ListAuthorizedMembersResponse, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.authorizedMembers !== undefined && message.authorizedMembers.length !== 0) {
      for (const v of message.authorizedMembers) {
        AuthorizedMember.encode(v!, writer.uint32(10).fork()).ldelim();
      }
    }
    if (message.hasMoreResults === true) {
      writer.uint32(16).bool(message.hasMoreResults);
    }
    if (message.continuationToken !== undefined && message.continuationToken !== "") {
      writer.uint32(26).string(message.continuationToken);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): ListAuthorizedMembersResponse {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseListAuthorizedMembersResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag != 10) {
            break;
          }

          message.authorizedMembers!.push(AuthorizedMember.decode(reader, reader.uint32()));
          continue;
        case 2:
          if (tag != 16) {
            break;
          }

          message.hasMoreResults = reader.bool();
          continue;
        case 3:
          if (tag != 26) {
            break;
          }

          message.continuationToken = reader.string();
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): ListAuthorizedMembersResponse {
    return {
      authorizedMembers: Array.isArray(object?.authorizedMembers)
        ? object.authorizedMembers.map((e: any) => AuthorizedMember.fromJSON(e))
        : [],
      hasMoreResults: isSet(object.hasMoreResults) ? Boolean(object.hasMoreResults) : false,
      continuationToken: isSet(object.continuationToken) ? String(object.continuationToken) : "",
    };
  },

  toJSON(message: ListAuthorizedMembersResponse): unknown {
    const obj: any = {};
    if (message.authorizedMembers) {
      obj.authorizedMembers = message.authorizedMembers.map((e) => e ? AuthorizedMember.toJSON(e) : undefined);
    } else {
      obj.authorizedMembers = [];
    }
    message.hasMoreResults !== undefined && (obj.hasMoreResults = message.hasMoreResults);
    message.continuationToken !== undefined && (obj.continuationToken = message.continuationToken);
    return obj;
  },

  create(base?: DeepPartial<ListAuthorizedMembersResponse>): ListAuthorizedMembersResponse {
    return ListAuthorizedMembersResponse.fromPartial(base ?? {});
  },

  fromPartial(object: DeepPartial<ListAuthorizedMembersResponse>): ListAuthorizedMembersResponse {
    const message = createBaseListAuthorizedMembersResponse();
    message.authorizedMembers = object.authorizedMembers?.map((e) => AuthorizedMember.fromPartial(e)) || [];
    message.hasMoreResults = object.hasMoreResults ?? false;
    message.continuationToken = object.continuationToken ?? "";
    return message;
  },
};

function createBaseAuthorizedMember(): AuthorizedMember {
  return { did: "", authorizedMemberSchemas: [] };
}

export const AuthorizedMember = {
  encode(message: AuthorizedMember, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.did !== undefined && message.did !== "") {
      writer.uint32(10).string(message.did);
    }
    if (message.authorizedMemberSchemas !== undefined && message.authorizedMemberSchemas.length !== 0) {
      for (const v of message.authorizedMemberSchemas) {
        AuthorizedMemberSchema.encode(v!, writer.uint32(18).fork()).ldelim();
      }
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): AuthorizedMember {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseAuthorizedMember();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag != 10) {
            break;
          }

          message.did = reader.string();
          continue;
        case 2:
          if (tag != 18) {
            break;
          }

          message.authorizedMemberSchemas!.push(AuthorizedMemberSchema.decode(reader, reader.uint32()));
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): AuthorizedMember {
    return {
      did: isSet(object.did) ? String(object.did) : "",
      authorizedMemberSchemas: Array.isArray(object?.authorizedMemberSchemas)
        ? object.authorizedMemberSchemas.map((e: any) => AuthorizedMemberSchema.fromJSON(e))
        : [],
    };
  },

  toJSON(message: AuthorizedMember): unknown {
    const obj: any = {};
    message.did !== undefined && (obj.did = message.did);
    if (message.authorizedMemberSchemas) {
      obj.authorizedMemberSchemas = message.authorizedMemberSchemas.map((e) =>
        e ? AuthorizedMemberSchema.toJSON(e) : undefined
      );
    } else {
      obj.authorizedMemberSchemas = [];
    }
    return obj;
  },

  create(base?: DeepPartial<AuthorizedMember>): AuthorizedMember {
    return AuthorizedMember.fromPartial(base ?? {});
  },

  fromPartial(object: DeepPartial<AuthorizedMember>): AuthorizedMember {
    const message = createBaseAuthorizedMember();
    message.did = object.did ?? "";
    message.authorizedMemberSchemas =
      object.authorizedMemberSchemas?.map((e) => AuthorizedMemberSchema.fromPartial(e)) || [];
    return message;
  },
};

function createBaseAuthorizedMemberSchema(): AuthorizedMemberSchema {
  return { schemaUri: "", status: "", statusDetails: "", validFrom: 0, validUntil: 0 };
}

export const AuthorizedMemberSchema = {
  encode(message: AuthorizedMemberSchema, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.schemaUri !== undefined && message.schemaUri !== "") {
      writer.uint32(10).string(message.schemaUri);
    }
    if (message.status !== undefined && message.status !== "") {
      writer.uint32(18).string(message.status);
    }
    if (message.statusDetails !== undefined && message.statusDetails !== "") {
      writer.uint32(26).string(message.statusDetails);
    }
    if (message.validFrom !== undefined && message.validFrom !== 0) {
      writer.uint32(32).uint64(message.validFrom);
    }
    if (message.validUntil !== undefined && message.validUntil !== 0) {
      writer.uint32(40).uint64(message.validUntil);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): AuthorizedMemberSchema {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseAuthorizedMemberSchema();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag != 10) {
            break;
          }

          message.schemaUri = reader.string();
          continue;
        case 2:
          if (tag != 18) {
            break;
          }

          message.status = reader.string();
          continue;
        case 3:
          if (tag != 26) {
            break;
          }

          message.statusDetails = reader.string();
          continue;
        case 4:
          if (tag != 32) {
            break;
          }

          message.validFrom = longToNumber(reader.uint64() as Long);
          continue;
        case 5:
          if (tag != 40) {
            break;
          }

          message.validUntil = longToNumber(reader.uint64() as Long);
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): AuthorizedMemberSchema {
    return {
      schemaUri: isSet(object.schemaUri) ? String(object.schemaUri) : "",
      status: isSet(object.status) ? String(object.status) : "",
      statusDetails: isSet(object.statusDetails) ? String(object.statusDetails) : "",
      validFrom: isSet(object.validFrom) ? Number(object.validFrom) : 0,
      validUntil: isSet(object.validUntil) ? Number(object.validUntil) : 0,
    };
  },

  toJSON(message: AuthorizedMemberSchema): unknown {
    const obj: any = {};
    message.schemaUri !== undefined && (obj.schemaUri = message.schemaUri);
    message.status !== undefined && (obj.status = message.status);
    message.statusDetails !== undefined && (obj.statusDetails = message.statusDetails);
    message.validFrom !== undefined && (obj.validFrom = Math.round(message.validFrom));
    message.validUntil !== undefined && (obj.validUntil = Math.round(message.validUntil));
    return obj;
  },

  create(base?: DeepPartial<AuthorizedMemberSchema>): AuthorizedMemberSchema {
    return AuthorizedMemberSchema.fromPartial(base ?? {});
  },

  fromPartial(object: DeepPartial<AuthorizedMemberSchema>): AuthorizedMemberSchema {
    const message = createBaseAuthorizedMemberSchema();
    message.schemaUri = object.schemaUri ?? "";
    message.status = object.status ?? "";
    message.statusDetails = object.statusDetails ?? "";
    message.validFrom = object.validFrom ?? 0;
    message.validUntil = object.validUntil ?? 0;
    return message;
  },
};

export type TrustRegistryDefinition = typeof TrustRegistryDefinition;
export const TrustRegistryDefinition = {
  name: "TrustRegistry",
  fullName: "services.trustregistry.v1.TrustRegistry",
  methods: {
    /** Add a governance framework to the ecosystem */
    addFramework: {
      name: "AddFramework",
      requestType: AddFrameworkRequest,
      requestStream: false,
      responseType: AddFrameworkResponse,
      responseStream: false,
      options: {},
    },
    /** Remove a governance framework from the ecosystem */
    removeFramework: {
      name: "RemoveFramework",
      requestType: RemoveFrameworkRequest,
      requestStream: false,
      responseType: RemoveFrameworkResponse,
      responseStream: false,
      options: {},
    },
    /** Search the ecosystem's governance frameworks */
    searchRegistry: {
      name: "SearchRegistry",
      requestType: SearchRegistryRequest,
      requestStream: false,
      responseType: SearchRegistryResponse,
      responseStream: false,
      options: {},
    },
    /** Register an authoritative issuer for a credential schema */
    registerMember: {
      name: "RegisterMember",
      requestType: RegisterMemberRequest,
      requestStream: false,
      responseType: RegisterMemberResponse,
      responseStream: false,
      options: {},
    },
    /** Removes an authoritative issuer for a credential schema from the trust registry */
    unregisterMember: {
      name: "UnregisterMember",
      requestType: UnregisterMemberRequest,
      requestStream: false,
      responseType: UnregisterMemberResponse,
      responseStream: false,
      options: {},
    },
    /** Fetch the membership status of an issuer for a given credential schema in a trust registry */
    getMembershipStatus: {
      name: "GetMembershipStatus",
      requestType: GetMembershipStatusRequest,
      requestStream: false,
      responseType: GetMembershipStatusResponse,
      responseStream: false,
      options: {},
    },
    /** Fetch the ecosystem's authorized issuers and the respective templates against which it can issue */
    listAuthorizedMembers: {
      name: "ListAuthorizedMembers",
      requestType: ListAuthorizedMembersRequest,
      requestStream: false,
      responseType: ListAuthorizedMembersResponse,
      responseStream: false,
      options: {},
    },
  },
} as const;

declare var self: any | undefined;
declare var window: any | undefined;
declare var global: any | undefined;
var tsProtoGlobalThis: any = (() => {
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
