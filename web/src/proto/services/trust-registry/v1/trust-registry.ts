/* eslint-disable */
import Long from "long";
import * as _m0 from "protobufjs/minimal";

export enum RegistrationStatus {
  /** CURRENT - - the entity is currently authorized, as of time of the query. */
  CURRENT = 0,
  /** EXPIRED - - entity rights have expired. */
  EXPIRED = 1,
  /** TERMINATED - - entity has voluntarily ceased Issuer role under the specific EGF. */
  TERMINATED = 2,
  /** REVOKED - - entity authority under specific EGF was terminated by the governing authority. */
  REVOKED = 3,
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
    default:
      return "UNKNOWN";
  }
}

/** Register new ecosystem governance framework */
export interface AddFrameworkRequest {
  governanceFrameworkUri: string;
  name: string;
  description: string;
}

export interface AddFrameworkResponse {
  /** Unique framework identifier */
  id: string;
  governingAuthority: string;
  trustRegistry: string;
}

export interface RemoveFrameworkRequest {
  id: string;
}

export interface RemoveFrameworkResponse {}

export interface SearchRegistryRequest {
  /** SELECT c from c where c.type == 'GovernanceFramework' */
  query: string;
  continuationToken: string;
}

export interface SearchRegistryResponse {
  itemsJson: string;
  hasMore: boolean;
  continuationToken: string;
}

export interface GovernanceFramework {
  governanceFrameworkUri: string;
  trustRegistryUri: string;
  description: string;
}

export interface RegisterMemberRequest {
  didUri: string | undefined;
  walletId: string | undefined;
  email: string | undefined;
  schemaUri: string;
  validFromUtc: number;
  validUntilUtc: number;
  /** the id of the governance framework */
  frameworkId: string;
}

export interface RegisterMemberResponse {}

export interface UnregisterMemberRequest {
  didUri: string | undefined;
  walletId: string | undefined;
  email: string | undefined;
  schemaUri: string;
  frameworkId: string;
}

export interface UnregisterMemberResponse {}

export interface GetMembershipStatusRequest {
  governanceFrameworkUri: string;
  didUri: string | undefined;
  x509Cert: string | undefined;
  schemaUri: string;
}

export interface GetMembershipStatusResponse {
  status: RegistrationStatus;
}

export interface FetchDataRequest {
  governanceFrameworkUri: string;
  query: string;
}

export interface FetchDataResponse {
  responseJson: string;
  hasMoreResults: boolean;
  continuationToken: string;
}

function createBaseAddFrameworkRequest(): AddFrameworkRequest {
  return { governanceFrameworkUri: "", name: "", description: "" };
}

export const AddFrameworkRequest = {
  encode(
    message: AddFrameworkRequest,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.governanceFrameworkUri !== "") {
      writer.uint32(10).string(message.governanceFrameworkUri);
    }
    if (message.name !== "") {
      writer.uint32(18).string(message.name);
    }
    if (message.description !== "") {
      writer.uint32(26).string(message.description);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): AddFrameworkRequest {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseAddFrameworkRequest();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.governanceFrameworkUri = reader.string();
          break;
        case 2:
          message.name = reader.string();
          break;
        case 3:
          message.description = reader.string();
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): AddFrameworkRequest {
    return {
      governanceFrameworkUri: isSet(object.governanceFrameworkUri)
        ? String(object.governanceFrameworkUri)
        : "",
      name: isSet(object.name) ? String(object.name) : "",
      description: isSet(object.description) ? String(object.description) : "",
    };
  },

  toJSON(message: AddFrameworkRequest): unknown {
    const obj: any = {};
    message.governanceFrameworkUri !== undefined &&
      (obj.governanceFrameworkUri = message.governanceFrameworkUri);
    message.name !== undefined && (obj.name = message.name);
    message.description !== undefined &&
      (obj.description = message.description);
    return obj;
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
  encode(
    message: AddFrameworkResponse,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.id !== "") {
      writer.uint32(10).string(message.id);
    }
    if (message.governingAuthority !== "") {
      writer.uint32(18).string(message.governingAuthority);
    }
    if (message.trustRegistry !== "") {
      writer.uint32(26).string(message.trustRegistry);
    }
    return writer;
  },

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): AddFrameworkResponse {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseAddFrameworkResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.id = reader.string();
          break;
        case 2:
          message.governingAuthority = reader.string();
          break;
        case 3:
          message.trustRegistry = reader.string();
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): AddFrameworkResponse {
    return {
      id: isSet(object.id) ? String(object.id) : "",
      governingAuthority: isSet(object.governingAuthority)
        ? String(object.governingAuthority)
        : "",
      trustRegistry: isSet(object.trustRegistry)
        ? String(object.trustRegistry)
        : "",
    };
  },

  toJSON(message: AddFrameworkResponse): unknown {
    const obj: any = {};
    message.id !== undefined && (obj.id = message.id);
    message.governingAuthority !== undefined &&
      (obj.governingAuthority = message.governingAuthority);
    message.trustRegistry !== undefined &&
      (obj.trustRegistry = message.trustRegistry);
    return obj;
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
  encode(
    message: RemoveFrameworkRequest,
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
  ): RemoveFrameworkRequest {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseRemoveFrameworkRequest();
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

  fromJSON(object: any): RemoveFrameworkRequest {
    return {
      id: isSet(object.id) ? String(object.id) : "",
    };
  },

  toJSON(message: RemoveFrameworkRequest): unknown {
    const obj: any = {};
    message.id !== undefined && (obj.id = message.id);
    return obj;
  },

  fromPartial(
    object: DeepPartial<RemoveFrameworkRequest>
  ): RemoveFrameworkRequest {
    const message = createBaseRemoveFrameworkRequest();
    message.id = object.id ?? "";
    return message;
  },
};

function createBaseRemoveFrameworkResponse(): RemoveFrameworkResponse {
  return {};
}

export const RemoveFrameworkResponse = {
  encode(
    _: RemoveFrameworkResponse,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    return writer;
  },

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): RemoveFrameworkResponse {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseRemoveFrameworkResponse();
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

  fromJSON(_: any): RemoveFrameworkResponse {
    return {};
  },

  toJSON(_: RemoveFrameworkResponse): unknown {
    const obj: any = {};
    return obj;
  },

  fromPartial(
    _: DeepPartial<RemoveFrameworkResponse>
  ): RemoveFrameworkResponse {
    const message = createBaseRemoveFrameworkResponse();
    return message;
  },
};

function createBaseSearchRegistryRequest(): SearchRegistryRequest {
  return { query: "", continuationToken: "" };
}

export const SearchRegistryRequest = {
  encode(
    message: SearchRegistryRequest,
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
  ): SearchRegistryRequest {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseSearchRegistryRequest();
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

  fromJSON(object: any): SearchRegistryRequest {
    return {
      query: isSet(object.query) ? String(object.query) : "",
      continuationToken: isSet(object.continuationToken)
        ? String(object.continuationToken)
        : "",
    };
  },

  toJSON(message: SearchRegistryRequest): unknown {
    const obj: any = {};
    message.query !== undefined && (obj.query = message.query);
    message.continuationToken !== undefined &&
      (obj.continuationToken = message.continuationToken);
    return obj;
  },

  fromPartial(
    object: DeepPartial<SearchRegistryRequest>
  ): SearchRegistryRequest {
    const message = createBaseSearchRegistryRequest();
    message.query = object.query ?? "";
    message.continuationToken = object.continuationToken ?? "";
    return message;
  },
};

function createBaseSearchRegistryResponse(): SearchRegistryResponse {
  return { itemsJson: "", hasMore: false, continuationToken: "" };
}

export const SearchRegistryResponse = {
  encode(
    message: SearchRegistryResponse,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.itemsJson !== "") {
      writer.uint32(10).string(message.itemsJson);
    }
    if (message.hasMore === true) {
      writer.uint32(16).bool(message.hasMore);
    }
    if (message.continuationToken !== "") {
      writer.uint32(34).string(message.continuationToken);
    }
    return writer;
  },

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): SearchRegistryResponse {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseSearchRegistryResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.itemsJson = reader.string();
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

  fromJSON(object: any): SearchRegistryResponse {
    return {
      itemsJson: isSet(object.itemsJson) ? String(object.itemsJson) : "",
      hasMore: isSet(object.hasMore) ? Boolean(object.hasMore) : false,
      continuationToken: isSet(object.continuationToken)
        ? String(object.continuationToken)
        : "",
    };
  },

  toJSON(message: SearchRegistryResponse): unknown {
    const obj: any = {};
    message.itemsJson !== undefined && (obj.itemsJson = message.itemsJson);
    message.hasMore !== undefined && (obj.hasMore = message.hasMore);
    message.continuationToken !== undefined &&
      (obj.continuationToken = message.continuationToken);
    return obj;
  },

  fromPartial(
    object: DeepPartial<SearchRegistryResponse>
  ): SearchRegistryResponse {
    const message = createBaseSearchRegistryResponse();
    message.itemsJson = object.itemsJson ?? "";
    message.hasMore = object.hasMore ?? false;
    message.continuationToken = object.continuationToken ?? "";
    return message;
  },
};

function createBaseGovernanceFramework(): GovernanceFramework {
  return { governanceFrameworkUri: "", trustRegistryUri: "", description: "" };
}

export const GovernanceFramework = {
  encode(
    message: GovernanceFramework,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.governanceFrameworkUri !== "") {
      writer.uint32(10).string(message.governanceFrameworkUri);
    }
    if (message.trustRegistryUri !== "") {
      writer.uint32(18).string(message.trustRegistryUri);
    }
    if (message.description !== "") {
      writer.uint32(26).string(message.description);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): GovernanceFramework {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseGovernanceFramework();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.governanceFrameworkUri = reader.string();
          break;
        case 2:
          message.trustRegistryUri = reader.string();
          break;
        case 3:
          message.description = reader.string();
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): GovernanceFramework {
    return {
      governanceFrameworkUri: isSet(object.governanceFrameworkUri)
        ? String(object.governanceFrameworkUri)
        : "",
      trustRegistryUri: isSet(object.trustRegistryUri)
        ? String(object.trustRegistryUri)
        : "",
      description: isSet(object.description) ? String(object.description) : "",
    };
  },

  toJSON(message: GovernanceFramework): unknown {
    const obj: any = {};
    message.governanceFrameworkUri !== undefined &&
      (obj.governanceFrameworkUri = message.governanceFrameworkUri);
    message.trustRegistryUri !== undefined &&
      (obj.trustRegistryUri = message.trustRegistryUri);
    message.description !== undefined &&
      (obj.description = message.description);
    return obj;
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
  encode(
    message: RegisterMemberRequest,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.didUri !== undefined) {
      writer.uint32(10).string(message.didUri);
    }
    if (message.walletId !== undefined) {
      writer.uint32(26).string(message.walletId);
    }
    if (message.email !== undefined) {
      writer.uint32(34).string(message.email);
    }
    if (message.schemaUri !== "") {
      writer.uint32(82).string(message.schemaUri);
    }
    if (message.validFromUtc !== 0) {
      writer.uint32(88).uint64(message.validFromUtc);
    }
    if (message.validUntilUtc !== 0) {
      writer.uint32(96).uint64(message.validUntilUtc);
    }
    if (message.frameworkId !== "") {
      writer.uint32(242).string(message.frameworkId);
    }
    return writer;
  },

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): RegisterMemberRequest {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseRegisterMemberRequest();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.didUri = reader.string();
          break;
        case 3:
          message.walletId = reader.string();
          break;
        case 4:
          message.email = reader.string();
          break;
        case 10:
          message.schemaUri = reader.string();
          break;
        case 11:
          message.validFromUtc = longToNumber(reader.uint64() as Long);
          break;
        case 12:
          message.validUntilUtc = longToNumber(reader.uint64() as Long);
          break;
        case 30:
          message.frameworkId = reader.string();
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): RegisterMemberRequest {
    return {
      didUri: isSet(object.didUri) ? String(object.didUri) : undefined,
      walletId: isSet(object.walletId) ? String(object.walletId) : undefined,
      email: isSet(object.email) ? String(object.email) : undefined,
      schemaUri: isSet(object.schemaUri) ? String(object.schemaUri) : "",
      validFromUtc: isSet(object.validFromUtc)
        ? Number(object.validFromUtc)
        : 0,
      validUntilUtc: isSet(object.validUntilUtc)
        ? Number(object.validUntilUtc)
        : 0,
      frameworkId: isSet(object.frameworkId) ? String(object.frameworkId) : "",
    };
  },

  toJSON(message: RegisterMemberRequest): unknown {
    const obj: any = {};
    message.didUri !== undefined && (obj.didUri = message.didUri);
    message.walletId !== undefined && (obj.walletId = message.walletId);
    message.email !== undefined && (obj.email = message.email);
    message.schemaUri !== undefined && (obj.schemaUri = message.schemaUri);
    message.validFromUtc !== undefined &&
      (obj.validFromUtc = Math.round(message.validFromUtc));
    message.validUntilUtc !== undefined &&
      (obj.validUntilUtc = Math.round(message.validUntilUtc));
    message.frameworkId !== undefined &&
      (obj.frameworkId = message.frameworkId);
    return obj;
  },

  fromPartial(
    object: DeepPartial<RegisterMemberRequest>
  ): RegisterMemberRequest {
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
  encode(
    _: RegisterMemberResponse,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    return writer;
  },

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): RegisterMemberResponse {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseRegisterMemberResponse();
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

  fromJSON(_: any): RegisterMemberResponse {
    return {};
  },

  toJSON(_: RegisterMemberResponse): unknown {
    const obj: any = {};
    return obj;
  },

  fromPartial(_: DeepPartial<RegisterMemberResponse>): RegisterMemberResponse {
    const message = createBaseRegisterMemberResponse();
    return message;
  },
};

function createBaseUnregisterMemberRequest(): UnregisterMemberRequest {
  return {
    didUri: undefined,
    walletId: undefined,
    email: undefined,
    schemaUri: "",
    frameworkId: "",
  };
}

export const UnregisterMemberRequest = {
  encode(
    message: UnregisterMemberRequest,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.didUri !== undefined) {
      writer.uint32(10).string(message.didUri);
    }
    if (message.walletId !== undefined) {
      writer.uint32(26).string(message.walletId);
    }
    if (message.email !== undefined) {
      writer.uint32(34).string(message.email);
    }
    if (message.schemaUri !== "") {
      writer.uint32(82).string(message.schemaUri);
    }
    if (message.frameworkId !== "") {
      writer.uint32(162).string(message.frameworkId);
    }
    return writer;
  },

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): UnregisterMemberRequest {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseUnregisterMemberRequest();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.didUri = reader.string();
          break;
        case 3:
          message.walletId = reader.string();
          break;
        case 4:
          message.email = reader.string();
          break;
        case 10:
          message.schemaUri = reader.string();
          break;
        case 20:
          message.frameworkId = reader.string();
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
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
    message.frameworkId !== undefined &&
      (obj.frameworkId = message.frameworkId);
    return obj;
  },

  fromPartial(
    object: DeepPartial<UnregisterMemberRequest>
  ): UnregisterMemberRequest {
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
  encode(
    _: UnregisterMemberResponse,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    return writer;
  },

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): UnregisterMemberResponse {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseUnregisterMemberResponse();
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

  fromJSON(_: any): UnregisterMemberResponse {
    return {};
  },

  toJSON(_: UnregisterMemberResponse): unknown {
    const obj: any = {};
    return obj;
  },

  fromPartial(
    _: DeepPartial<UnregisterMemberResponse>
  ): UnregisterMemberResponse {
    const message = createBaseUnregisterMemberResponse();
    return message;
  },
};

function createBaseGetMembershipStatusRequest(): GetMembershipStatusRequest {
  return {
    governanceFrameworkUri: "",
    didUri: undefined,
    x509Cert: undefined,
    schemaUri: "",
  };
}

export const GetMembershipStatusRequest = {
  encode(
    message: GetMembershipStatusRequest,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.governanceFrameworkUri !== "") {
      writer.uint32(10).string(message.governanceFrameworkUri);
    }
    if (message.didUri !== undefined) {
      writer.uint32(18).string(message.didUri);
    }
    if (message.x509Cert !== undefined) {
      writer.uint32(26).string(message.x509Cert);
    }
    if (message.schemaUri !== "") {
      writer.uint32(34).string(message.schemaUri);
    }
    return writer;
  },

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): GetMembershipStatusRequest {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseGetMembershipStatusRequest();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.governanceFrameworkUri = reader.string();
          break;
        case 2:
          message.didUri = reader.string();
          break;
        case 3:
          message.x509Cert = reader.string();
          break;
        case 4:
          message.schemaUri = reader.string();
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): GetMembershipStatusRequest {
    return {
      governanceFrameworkUri: isSet(object.governanceFrameworkUri)
        ? String(object.governanceFrameworkUri)
        : "",
      didUri: isSet(object.didUri) ? String(object.didUri) : undefined,
      x509Cert: isSet(object.x509Cert) ? String(object.x509Cert) : undefined,
      schemaUri: isSet(object.schemaUri) ? String(object.schemaUri) : "",
    };
  },

  toJSON(message: GetMembershipStatusRequest): unknown {
    const obj: any = {};
    message.governanceFrameworkUri !== undefined &&
      (obj.governanceFrameworkUri = message.governanceFrameworkUri);
    message.didUri !== undefined && (obj.didUri = message.didUri);
    message.x509Cert !== undefined && (obj.x509Cert = message.x509Cert);
    message.schemaUri !== undefined && (obj.schemaUri = message.schemaUri);
    return obj;
  },

  fromPartial(
    object: DeepPartial<GetMembershipStatusRequest>
  ): GetMembershipStatusRequest {
    const message = createBaseGetMembershipStatusRequest();
    message.governanceFrameworkUri = object.governanceFrameworkUri ?? "";
    message.didUri = object.didUri ?? undefined;
    message.x509Cert = object.x509Cert ?? undefined;
    message.schemaUri = object.schemaUri ?? "";
    return message;
  },
};

function createBaseGetMembershipStatusResponse(): GetMembershipStatusResponse {
  return { status: 0 };
}

export const GetMembershipStatusResponse = {
  encode(
    message: GetMembershipStatusResponse,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.status !== 0) {
      writer.uint32(8).int32(message.status);
    }
    return writer;
  },

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): GetMembershipStatusResponse {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseGetMembershipStatusResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.status = reader.int32() as any;
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): GetMembershipStatusResponse {
    return {
      status: isSet(object.status)
        ? registrationStatusFromJSON(object.status)
        : 0,
    };
  },

  toJSON(message: GetMembershipStatusResponse): unknown {
    const obj: any = {};
    message.status !== undefined &&
      (obj.status = registrationStatusToJSON(message.status));
    return obj;
  },

  fromPartial(
    object: DeepPartial<GetMembershipStatusResponse>
  ): GetMembershipStatusResponse {
    const message = createBaseGetMembershipStatusResponse();
    message.status = object.status ?? 0;
    return message;
  },
};

function createBaseFetchDataRequest(): FetchDataRequest {
  return { governanceFrameworkUri: "", query: "" };
}

export const FetchDataRequest = {
  encode(
    message: FetchDataRequest,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.governanceFrameworkUri !== "") {
      writer.uint32(10).string(message.governanceFrameworkUri);
    }
    if (message.query !== "") {
      writer.uint32(18).string(message.query);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): FetchDataRequest {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseFetchDataRequest();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.governanceFrameworkUri = reader.string();
          break;
        case 2:
          message.query = reader.string();
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): FetchDataRequest {
    return {
      governanceFrameworkUri: isSet(object.governanceFrameworkUri)
        ? String(object.governanceFrameworkUri)
        : "",
      query: isSet(object.query) ? String(object.query) : "",
    };
  },

  toJSON(message: FetchDataRequest): unknown {
    const obj: any = {};
    message.governanceFrameworkUri !== undefined &&
      (obj.governanceFrameworkUri = message.governanceFrameworkUri);
    message.query !== undefined && (obj.query = message.query);
    return obj;
  },

  fromPartial(object: DeepPartial<FetchDataRequest>): FetchDataRequest {
    const message = createBaseFetchDataRequest();
    message.governanceFrameworkUri = object.governanceFrameworkUri ?? "";
    message.query = object.query ?? "";
    return message;
  },
};

function createBaseFetchDataResponse(): FetchDataResponse {
  return { responseJson: "", hasMoreResults: false, continuationToken: "" };
}

export const FetchDataResponse = {
  encode(
    message: FetchDataResponse,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.responseJson !== "") {
      writer.uint32(10).string(message.responseJson);
    }
    if (message.hasMoreResults === true) {
      writer.uint32(16).bool(message.hasMoreResults);
    }
    if (message.continuationToken !== "") {
      writer.uint32(26).string(message.continuationToken);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): FetchDataResponse {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseFetchDataResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.responseJson = reader.string();
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

  fromJSON(object: any): FetchDataResponse {
    return {
      responseJson: isSet(object.responseJson)
        ? String(object.responseJson)
        : "",
      hasMoreResults: isSet(object.hasMoreResults)
        ? Boolean(object.hasMoreResults)
        : false,
      continuationToken: isSet(object.continuationToken)
        ? String(object.continuationToken)
        : "",
    };
  },

  toJSON(message: FetchDataResponse): unknown {
    const obj: any = {};
    message.responseJson !== undefined &&
      (obj.responseJson = message.responseJson);
    message.hasMoreResults !== undefined &&
      (obj.hasMoreResults = message.hasMoreResults);
    message.continuationToken !== undefined &&
      (obj.continuationToken = message.continuationToken);
    return obj;
  },

  fromPartial(object: DeepPartial<FetchDataResponse>): FetchDataResponse {
    const message = createBaseFetchDataResponse();
    message.responseJson = object.responseJson ?? "";
    message.hasMoreResults = object.hasMoreResults ?? false;
    message.continuationToken = object.continuationToken ?? "";
    return message;
  },
};

export const TrustRegistryDefinition = {
  name: "TrustRegistry",
  fullName: "services.trustregistry.v1.TrustRegistry",
  methods: {
    /** Adds a trust registry defintion to the ecosystem */
    addFramework: {
      name: "AddFramework",
      requestType: AddFrameworkRequest,
      requestStream: false,
      responseType: AddFrameworkResponse,
      responseStream: false,
      options: {},
    },
    removeFramework: {
      name: "RemoveFramework",
      requestType: RemoveFrameworkRequest,
      requestStream: false,
      responseType: RemoveFrameworkResponse,
      responseStream: false,
      options: {},
    },
    searchRegistry: {
      name: "SearchRegistry",
      requestType: SearchRegistryRequest,
      requestStream: false,
      responseType: SearchRegistryResponse,
      responseStream: false,
      options: {},
    },
    /** Registers an authoritative issuer with a credential template */
    registerMember: {
      name: "RegisterMember",
      requestType: RegisterMemberRequest,
      requestStream: false,
      responseType: RegisterMemberResponse,
      responseStream: false,
      options: {},
    },
    /** Removes an authoritative issuer with a credential template from the trust registry */
    unregisterMember: {
      name: "UnregisterMember",
      requestType: UnregisterMemberRequest,
      requestStream: false,
      responseType: UnregisterMemberResponse,
      responseStream: false,
      options: {},
    },
    getMembershipStatus: {
      name: "GetMembershipStatus",
      requestType: GetMembershipStatusRequest,
      requestStream: false,
      responseType: GetMembershipStatusResponse,
      responseStream: false,
      options: {},
    },
    fetchData: {
      name: "FetchData",
      requestType: FetchDataRequest,
      requestStream: false,
      responseType: FetchDataResponse,
      responseStream: true,
      options: {},
    },
  },
} as const;

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

function longToNumber(long: Long): number {
  if (long.gt(Number.MAX_SAFE_INTEGER)) {
    throw new globalThis.Error("Value is larger than Number.MAX_SAFE_INTEGER");
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
