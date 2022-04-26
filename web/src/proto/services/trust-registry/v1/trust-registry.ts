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

export interface AddFrameworkRequest {
  governanceFramework: GovernanceFramework | undefined;
}

export interface AddFrameworkResponse {}

export interface RemoveFrameworkRequest {
  governanceFramework: GovernanceFramework | undefined;
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
  count: number;
  continuationToken: string;
}

export interface GovernanceFramework {
  governanceFrameworkUri: string;
  trustRegistryUri: string;
  description: string;
}

export interface RegisterIssuerRequest {
  didUri: string | undefined;
  x509Cert: string | undefined;
  credentialTypeUri: string;
  validFromUtc: number;
  validUntilUtc: number;
  governanceFrameworkUri: string;
}

export interface RegisterIssuerResponse {}

export interface RegisterVerifierRequest {
  didUri: string | undefined;
  x509Cert: string | undefined;
  presentationTypeUri: string;
  validFromUtc: number;
  validUntilUtc: number;
  governanceFrameworkUri: string;
}

export interface RegisterVerifierResponse {}

export interface UnregisterIssuerRequest {
  didUri: string | undefined;
  x509Cert: string | undefined;
  credentialTypeUri: string;
  governanceFrameworkUri: string;
}

export interface UnregisterIssuerResponse {}

export interface UnregisterVerifierRequest {
  didUri: string | undefined;
  x509Cert: string | undefined;
  presentationTypeUri: string;
  governanceFrameworkUri: string;
}

export interface UnregisterVerifierResponse {}

export interface CheckIssuerStatusRequest {
  governanceFrameworkUri: string;
  didUri: string | undefined;
  x509Cert: string | undefined;
  credentialTypeUri: string;
}

export interface CheckIssuerStatusResponse {
  status: RegistrationStatus;
}

export interface CheckVerifierStatusRequest {
  governanceFrameworkUri: string;
  didUri: string | undefined;
  x509Cert: string | undefined;
  presentationTypeUri: string;
}

export interface CheckVerifierStatusResponse {
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
  return { governanceFramework: undefined };
}

export const AddFrameworkRequest = {
  encode(
    message: AddFrameworkRequest,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.governanceFramework !== undefined) {
      GovernanceFramework.encode(
        message.governanceFramework,
        writer.uint32(10).fork()
      ).ldelim();
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
          message.governanceFramework = GovernanceFramework.decode(
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

  fromPartial(object: DeepPartial<AddFrameworkRequest>): AddFrameworkRequest {
    const message = createBaseAddFrameworkRequest();
    message.governanceFramework =
      object.governanceFramework !== undefined &&
      object.governanceFramework !== null
        ? GovernanceFramework.fromPartial(object.governanceFramework)
        : undefined;
    return message;
  },
};

function createBaseAddFrameworkResponse(): AddFrameworkResponse {
  return {};
}

export const AddFrameworkResponse = {
  encode(
    _: AddFrameworkResponse,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
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
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromPartial(_: DeepPartial<AddFrameworkResponse>): AddFrameworkResponse {
    const message = createBaseAddFrameworkResponse();
    return message;
  },
};

function createBaseRemoveFrameworkRequest(): RemoveFrameworkRequest {
  return { governanceFramework: undefined };
}

export const RemoveFrameworkRequest = {
  encode(
    message: RemoveFrameworkRequest,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.governanceFramework !== undefined) {
      GovernanceFramework.encode(
        message.governanceFramework,
        writer.uint32(10).fork()
      ).ldelim();
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
          message.governanceFramework = GovernanceFramework.decode(
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

  fromPartial(
    object: DeepPartial<RemoveFrameworkRequest>
  ): RemoveFrameworkRequest {
    const message = createBaseRemoveFrameworkRequest();
    message.governanceFramework =
      object.governanceFramework !== undefined &&
      object.governanceFramework !== null
        ? GovernanceFramework.fromPartial(object.governanceFramework)
        : undefined;
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
  return { itemsJson: "", hasMore: false, count: 0, continuationToken: "" };
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

  fromPartial(
    object: DeepPartial<SearchRegistryResponse>
  ): SearchRegistryResponse {
    const message = createBaseSearchRegistryResponse();
    message.itemsJson = object.itemsJson ?? "";
    message.hasMore = object.hasMore ?? false;
    message.count = object.count ?? 0;
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

  fromPartial(object: DeepPartial<GovernanceFramework>): GovernanceFramework {
    const message = createBaseGovernanceFramework();
    message.governanceFrameworkUri = object.governanceFrameworkUri ?? "";
    message.trustRegistryUri = object.trustRegistryUri ?? "";
    message.description = object.description ?? "";
    return message;
  },
};

function createBaseRegisterIssuerRequest(): RegisterIssuerRequest {
  return {
    didUri: undefined,
    x509Cert: undefined,
    credentialTypeUri: "",
    validFromUtc: 0,
    validUntilUtc: 0,
    governanceFrameworkUri: "",
  };
}

export const RegisterIssuerRequest = {
  encode(
    message: RegisterIssuerRequest,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.didUri !== undefined) {
      writer.uint32(10).string(message.didUri);
    }
    if (message.x509Cert !== undefined) {
      writer.uint32(18).string(message.x509Cert);
    }
    if (message.credentialTypeUri !== "") {
      writer.uint32(82).string(message.credentialTypeUri);
    }
    if (message.validFromUtc !== 0) {
      writer.uint32(88).uint64(message.validFromUtc);
    }
    if (message.validUntilUtc !== 0) {
      writer.uint32(96).uint64(message.validUntilUtc);
    }
    if (message.governanceFrameworkUri !== "") {
      writer.uint32(162).string(message.governanceFrameworkUri);
    }
    return writer;
  },

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): RegisterIssuerRequest {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseRegisterIssuerRequest();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.didUri = reader.string();
          break;
        case 2:
          message.x509Cert = reader.string();
          break;
        case 10:
          message.credentialTypeUri = reader.string();
          break;
        case 11:
          message.validFromUtc = longToNumber(reader.uint64() as Long);
          break;
        case 12:
          message.validUntilUtc = longToNumber(reader.uint64() as Long);
          break;
        case 20:
          message.governanceFrameworkUri = reader.string();
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromPartial(
    object: DeepPartial<RegisterIssuerRequest>
  ): RegisterIssuerRequest {
    const message = createBaseRegisterIssuerRequest();
    message.didUri = object.didUri ?? undefined;
    message.x509Cert = object.x509Cert ?? undefined;
    message.credentialTypeUri = object.credentialTypeUri ?? "";
    message.validFromUtc = object.validFromUtc ?? 0;
    message.validUntilUtc = object.validUntilUtc ?? 0;
    message.governanceFrameworkUri = object.governanceFrameworkUri ?? "";
    return message;
  },
};

function createBaseRegisterIssuerResponse(): RegisterIssuerResponse {
  return {};
}

export const RegisterIssuerResponse = {
  encode(
    _: RegisterIssuerResponse,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    return writer;
  },

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): RegisterIssuerResponse {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseRegisterIssuerResponse();
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

  fromPartial(_: DeepPartial<RegisterIssuerResponse>): RegisterIssuerResponse {
    const message = createBaseRegisterIssuerResponse();
    return message;
  },
};

function createBaseRegisterVerifierRequest(): RegisterVerifierRequest {
  return {
    didUri: undefined,
    x509Cert: undefined,
    presentationTypeUri: "",
    validFromUtc: 0,
    validUntilUtc: 0,
    governanceFrameworkUri: "",
  };
}

export const RegisterVerifierRequest = {
  encode(
    message: RegisterVerifierRequest,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.didUri !== undefined) {
      writer.uint32(10).string(message.didUri);
    }
    if (message.x509Cert !== undefined) {
      writer.uint32(18).string(message.x509Cert);
    }
    if (message.presentationTypeUri !== "") {
      writer.uint32(82).string(message.presentationTypeUri);
    }
    if (message.validFromUtc !== 0) {
      writer.uint32(88).uint64(message.validFromUtc);
    }
    if (message.validUntilUtc !== 0) {
      writer.uint32(96).uint64(message.validUntilUtc);
    }
    if (message.governanceFrameworkUri !== "") {
      writer.uint32(162).string(message.governanceFrameworkUri);
    }
    return writer;
  },

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): RegisterVerifierRequest {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseRegisterVerifierRequest();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.didUri = reader.string();
          break;
        case 2:
          message.x509Cert = reader.string();
          break;
        case 10:
          message.presentationTypeUri = reader.string();
          break;
        case 11:
          message.validFromUtc = longToNumber(reader.uint64() as Long);
          break;
        case 12:
          message.validUntilUtc = longToNumber(reader.uint64() as Long);
          break;
        case 20:
          message.governanceFrameworkUri = reader.string();
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromPartial(
    object: DeepPartial<RegisterVerifierRequest>
  ): RegisterVerifierRequest {
    const message = createBaseRegisterVerifierRequest();
    message.didUri = object.didUri ?? undefined;
    message.x509Cert = object.x509Cert ?? undefined;
    message.presentationTypeUri = object.presentationTypeUri ?? "";
    message.validFromUtc = object.validFromUtc ?? 0;
    message.validUntilUtc = object.validUntilUtc ?? 0;
    message.governanceFrameworkUri = object.governanceFrameworkUri ?? "";
    return message;
  },
};

function createBaseRegisterVerifierResponse(): RegisterVerifierResponse {
  return {};
}

export const RegisterVerifierResponse = {
  encode(
    _: RegisterVerifierResponse,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    return writer;
  },

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): RegisterVerifierResponse {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseRegisterVerifierResponse();
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

  fromPartial(
    _: DeepPartial<RegisterVerifierResponse>
  ): RegisterVerifierResponse {
    const message = createBaseRegisterVerifierResponse();
    return message;
  },
};

function createBaseUnregisterIssuerRequest(): UnregisterIssuerRequest {
  return {
    didUri: undefined,
    x509Cert: undefined,
    credentialTypeUri: "",
    governanceFrameworkUri: "",
  };
}

export const UnregisterIssuerRequest = {
  encode(
    message: UnregisterIssuerRequest,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.didUri !== undefined) {
      writer.uint32(10).string(message.didUri);
    }
    if (message.x509Cert !== undefined) {
      writer.uint32(18).string(message.x509Cert);
    }
    if (message.credentialTypeUri !== "") {
      writer.uint32(82).string(message.credentialTypeUri);
    }
    if (message.governanceFrameworkUri !== "") {
      writer.uint32(162).string(message.governanceFrameworkUri);
    }
    return writer;
  },

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): UnregisterIssuerRequest {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseUnregisterIssuerRequest();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.didUri = reader.string();
          break;
        case 2:
          message.x509Cert = reader.string();
          break;
        case 10:
          message.credentialTypeUri = reader.string();
          break;
        case 20:
          message.governanceFrameworkUri = reader.string();
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromPartial(
    object: DeepPartial<UnregisterIssuerRequest>
  ): UnregisterIssuerRequest {
    const message = createBaseUnregisterIssuerRequest();
    message.didUri = object.didUri ?? undefined;
    message.x509Cert = object.x509Cert ?? undefined;
    message.credentialTypeUri = object.credentialTypeUri ?? "";
    message.governanceFrameworkUri = object.governanceFrameworkUri ?? "";
    return message;
  },
};

function createBaseUnregisterIssuerResponse(): UnregisterIssuerResponse {
  return {};
}

export const UnregisterIssuerResponse = {
  encode(
    _: UnregisterIssuerResponse,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    return writer;
  },

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): UnregisterIssuerResponse {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseUnregisterIssuerResponse();
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

  fromPartial(
    _: DeepPartial<UnregisterIssuerResponse>
  ): UnregisterIssuerResponse {
    const message = createBaseUnregisterIssuerResponse();
    return message;
  },
};

function createBaseUnregisterVerifierRequest(): UnregisterVerifierRequest {
  return {
    didUri: undefined,
    x509Cert: undefined,
    presentationTypeUri: "",
    governanceFrameworkUri: "",
  };
}

export const UnregisterVerifierRequest = {
  encode(
    message: UnregisterVerifierRequest,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.didUri !== undefined) {
      writer.uint32(10).string(message.didUri);
    }
    if (message.x509Cert !== undefined) {
      writer.uint32(18).string(message.x509Cert);
    }
    if (message.presentationTypeUri !== "") {
      writer.uint32(82).string(message.presentationTypeUri);
    }
    if (message.governanceFrameworkUri !== "") {
      writer.uint32(162).string(message.governanceFrameworkUri);
    }
    return writer;
  },

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): UnregisterVerifierRequest {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseUnregisterVerifierRequest();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.didUri = reader.string();
          break;
        case 2:
          message.x509Cert = reader.string();
          break;
        case 10:
          message.presentationTypeUri = reader.string();
          break;
        case 20:
          message.governanceFrameworkUri = reader.string();
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromPartial(
    object: DeepPartial<UnregisterVerifierRequest>
  ): UnregisterVerifierRequest {
    const message = createBaseUnregisterVerifierRequest();
    message.didUri = object.didUri ?? undefined;
    message.x509Cert = object.x509Cert ?? undefined;
    message.presentationTypeUri = object.presentationTypeUri ?? "";
    message.governanceFrameworkUri = object.governanceFrameworkUri ?? "";
    return message;
  },
};

function createBaseUnregisterVerifierResponse(): UnregisterVerifierResponse {
  return {};
}

export const UnregisterVerifierResponse = {
  encode(
    _: UnregisterVerifierResponse,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    return writer;
  },

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): UnregisterVerifierResponse {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseUnregisterVerifierResponse();
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

  fromPartial(
    _: DeepPartial<UnregisterVerifierResponse>
  ): UnregisterVerifierResponse {
    const message = createBaseUnregisterVerifierResponse();
    return message;
  },
};

function createBaseCheckIssuerStatusRequest(): CheckIssuerStatusRequest {
  return {
    governanceFrameworkUri: "",
    didUri: undefined,
    x509Cert: undefined,
    credentialTypeUri: "",
  };
}

export const CheckIssuerStatusRequest = {
  encode(
    message: CheckIssuerStatusRequest,
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
    if (message.credentialTypeUri !== "") {
      writer.uint32(34).string(message.credentialTypeUri);
    }
    return writer;
  },

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): CheckIssuerStatusRequest {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseCheckIssuerStatusRequest();
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
          message.credentialTypeUri = reader.string();
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromPartial(
    object: DeepPartial<CheckIssuerStatusRequest>
  ): CheckIssuerStatusRequest {
    const message = createBaseCheckIssuerStatusRequest();
    message.governanceFrameworkUri = object.governanceFrameworkUri ?? "";
    message.didUri = object.didUri ?? undefined;
    message.x509Cert = object.x509Cert ?? undefined;
    message.credentialTypeUri = object.credentialTypeUri ?? "";
    return message;
  },
};

function createBaseCheckIssuerStatusResponse(): CheckIssuerStatusResponse {
  return { status: 0 };
}

export const CheckIssuerStatusResponse = {
  encode(
    message: CheckIssuerStatusResponse,
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
  ): CheckIssuerStatusResponse {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseCheckIssuerStatusResponse();
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

  fromPartial(
    object: DeepPartial<CheckIssuerStatusResponse>
  ): CheckIssuerStatusResponse {
    const message = createBaseCheckIssuerStatusResponse();
    message.status = object.status ?? 0;
    return message;
  },
};

function createBaseCheckVerifierStatusRequest(): CheckVerifierStatusRequest {
  return {
    governanceFrameworkUri: "",
    didUri: undefined,
    x509Cert: undefined,
    presentationTypeUri: "",
  };
}

export const CheckVerifierStatusRequest = {
  encode(
    message: CheckVerifierStatusRequest,
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
    if (message.presentationTypeUri !== "") {
      writer.uint32(34).string(message.presentationTypeUri);
    }
    return writer;
  },

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): CheckVerifierStatusRequest {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseCheckVerifierStatusRequest();
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
          message.presentationTypeUri = reader.string();
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromPartial(
    object: DeepPartial<CheckVerifierStatusRequest>
  ): CheckVerifierStatusRequest {
    const message = createBaseCheckVerifierStatusRequest();
    message.governanceFrameworkUri = object.governanceFrameworkUri ?? "";
    message.didUri = object.didUri ?? undefined;
    message.x509Cert = object.x509Cert ?? undefined;
    message.presentationTypeUri = object.presentationTypeUri ?? "";
    return message;
  },
};

function createBaseCheckVerifierStatusResponse(): CheckVerifierStatusResponse {
  return { status: 0 };
}

export const CheckVerifierStatusResponse = {
  encode(
    message: CheckVerifierStatusResponse,
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
  ): CheckVerifierStatusResponse {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseCheckVerifierStatusResponse();
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

  fromPartial(
    object: DeepPartial<CheckVerifierStatusResponse>
  ): CheckVerifierStatusResponse {
    const message = createBaseCheckVerifierStatusResponse();
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
    registerIssuer: {
      name: "RegisterIssuer",
      requestType: RegisterIssuerRequest,
      requestStream: false,
      responseType: RegisterIssuerResponse,
      responseStream: false,
      options: {},
    },
    /** Registers an authoritative verifier with a credential template */
    registerVerifier: {
      name: "RegisterVerifier",
      requestType: RegisterVerifierRequest,
      requestStream: false,
      responseType: RegisterVerifierResponse,
      responseStream: false,
      options: {},
    },
    /** Removes an authoritative issuer with a credential template from the trust registry */
    unregisterIssuer: {
      name: "UnregisterIssuer",
      requestType: UnregisterIssuerRequest,
      requestStream: false,
      responseType: UnregisterIssuerResponse,
      responseStream: false,
      options: {},
    },
    /** Removes an authoritative verifier with a presentation template from the trust registry */
    unregisterVerifier: {
      name: "UnregisterVerifier",
      requestType: UnregisterVerifierRequest,
      requestStream: false,
      responseType: UnregisterVerifierResponse,
      responseStream: false,
      options: {},
    },
    checkIssuerStatus: {
      name: "CheckIssuerStatus",
      requestType: CheckIssuerStatusRequest,
      requestStream: false,
      responseType: CheckIssuerStatusResponse,
      responseStream: false,
      options: {},
    },
    checkVerifierStatus: {
      name: "CheckVerifierStatus",
      requestType: CheckVerifierStatusRequest,
      requestStream: false,
      responseType: CheckVerifierStatusResponse,
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
