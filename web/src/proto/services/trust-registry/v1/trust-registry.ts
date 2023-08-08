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
}

/** Response to `UnregisterMemberRequest` */
export interface UnregisterMemberResponse {
}

/** Request to fetch member status in Trust Registry for a specific credential schema. */
export interface GetMemberAuthorizationStatusRequest {
  /** DID URI of member */
  didUri?: string;
  /** URI of credential schema associated with member */
  schemaUri?: string;
}

/** Response to `GetMemberAuthorizationStatusRequest` */
export interface GetMemberAuthorizationStatusResponse {
  /** Status of member for given credential schema */
  status?: RegistrationStatus;
}

export interface ListAuthorizedMembersRequest {
  /** id of schema that needs to be checked */
  schemaUri?:
  | string
  | undefined;
  /** Token to fetch next set of results, from previous `ListAuthorizedMembersResponse` */
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

/** Request to get a member of the Trust Registry */
export interface GetMemberRequest {
  /** DID URI of member to get */
  didUri?:
  | string
  | undefined;
  /** Trinsic Wallet ID of member to get */
  walletId?:
  | string
  | undefined;
  /** Email address of member to get. Must be associated with an existing Trinsic account. */
  email?: string | undefined;
}

/** Response to `GetMemberAuthorizationStatusRequest` */
export interface GetMemberResponse {
  /** Member for given did in given framework */
  authorizedMember?: AuthorizedMember;
}

function createBaseRegisterMemberRequest(): RegisterMemberRequest {
  return { didUri: undefined, walletId: undefined, email: undefined, schemaUri: "", validFromUtc: 0, validUntilUtc: 0 };
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
  return { didUri: undefined, walletId: undefined, email: undefined, schemaUri: "" };
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
    };
  },

  toJSON(message: UnregisterMemberRequest): unknown {
    const obj: any = {};
    message.didUri !== undefined && (obj.didUri = message.didUri);
    message.walletId !== undefined && (obj.walletId = message.walletId);
    message.email !== undefined && (obj.email = message.email);
    message.schemaUri !== undefined && (obj.schemaUri = message.schemaUri);
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

function createBaseGetMemberAuthorizationStatusRequest(): GetMemberAuthorizationStatusRequest {
  return { didUri: "", schemaUri: "" };
}

export const GetMemberAuthorizationStatusRequest = {
  encode(message: GetMemberAuthorizationStatusRequest, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.didUri !== undefined && message.didUri !== "") {
      writer.uint32(10).string(message.didUri);
    }
    if (message.schemaUri !== undefined && message.schemaUri !== "") {
      writer.uint32(18).string(message.schemaUri);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): GetMemberAuthorizationStatusRequest {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseGetMemberAuthorizationStatusRequest();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag != 10) {
            break;
          }

          message.didUri = reader.string();
          continue;
        case 2:
          if (tag != 18) {
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

  fromJSON(object: any): GetMemberAuthorizationStatusRequest {
    return {
      didUri: isSet(object.didUri) ? String(object.didUri) : "",
      schemaUri: isSet(object.schemaUri) ? String(object.schemaUri) : "",
    };
  },

  toJSON(message: GetMemberAuthorizationStatusRequest): unknown {
    const obj: any = {};
    message.didUri !== undefined && (obj.didUri = message.didUri);
    message.schemaUri !== undefined && (obj.schemaUri = message.schemaUri);
    return obj;
  },

  create(base?: DeepPartial<GetMemberAuthorizationStatusRequest>): GetMemberAuthorizationStatusRequest {
    return GetMemberAuthorizationStatusRequest.fromPartial(base ?? {});
  },

  fromPartial(object: DeepPartial<GetMemberAuthorizationStatusRequest>): GetMemberAuthorizationStatusRequest {
    const message = createBaseGetMemberAuthorizationStatusRequest();
    message.didUri = object.didUri ?? "";
    message.schemaUri = object.schemaUri ?? "";
    return message;
  },
};

function createBaseGetMemberAuthorizationStatusResponse(): GetMemberAuthorizationStatusResponse {
  return { status: 0 };
}

export const GetMemberAuthorizationStatusResponse = {
  encode(message: GetMemberAuthorizationStatusResponse, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.status !== undefined && message.status !== 0) {
      writer.uint32(8).int32(message.status);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): GetMemberAuthorizationStatusResponse {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseGetMemberAuthorizationStatusResponse();
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

  fromJSON(object: any): GetMemberAuthorizationStatusResponse {
    return { status: isSet(object.status) ? registrationStatusFromJSON(object.status) : 0 };
  },

  toJSON(message: GetMemberAuthorizationStatusResponse): unknown {
    const obj: any = {};
    message.status !== undefined && (obj.status = registrationStatusToJSON(message.status));
    return obj;
  },

  create(base?: DeepPartial<GetMemberAuthorizationStatusResponse>): GetMemberAuthorizationStatusResponse {
    return GetMemberAuthorizationStatusResponse.fromPartial(base ?? {});
  },

  fromPartial(object: DeepPartial<GetMemberAuthorizationStatusResponse>): GetMemberAuthorizationStatusResponse {
    const message = createBaseGetMemberAuthorizationStatusResponse();
    message.status = object.status ?? 0;
    return message;
  },
};

function createBaseListAuthorizedMembersRequest(): ListAuthorizedMembersRequest {
  return { schemaUri: undefined, continuationToken: undefined };
}

export const ListAuthorizedMembersRequest = {
  encode(message: ListAuthorizedMembersRequest, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.schemaUri !== undefined) {
      writer.uint32(10).string(message.schemaUri);
    }
    if (message.continuationToken !== undefined) {
      writer.uint32(18).string(message.continuationToken);
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

          message.schemaUri = reader.string();
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

  fromJSON(object: any): ListAuthorizedMembersRequest {
    return {
      schemaUri: isSet(object.schemaUri) ? String(object.schemaUri) : undefined,
      continuationToken: isSet(object.continuationToken) ? String(object.continuationToken) : undefined,
    };
  },

  toJSON(message: ListAuthorizedMembersRequest): unknown {
    const obj: any = {};
    message.schemaUri !== undefined && (obj.schemaUri = message.schemaUri);
    message.continuationToken !== undefined && (obj.continuationToken = message.continuationToken);
    return obj;
  },

  create(base?: DeepPartial<ListAuthorizedMembersRequest>): ListAuthorizedMembersRequest {
    return ListAuthorizedMembersRequest.fromPartial(base ?? {});
  },

  fromPartial(object: DeepPartial<ListAuthorizedMembersRequest>): ListAuthorizedMembersRequest {
    const message = createBaseListAuthorizedMembersRequest();
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

function createBaseGetMemberRequest(): GetMemberRequest {
  return { didUri: undefined, walletId: undefined, email: undefined };
}

export const GetMemberRequest = {
  encode(message: GetMemberRequest, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.didUri !== undefined) {
      writer.uint32(10).string(message.didUri);
    }
    if (message.walletId !== undefined) {
      writer.uint32(26).string(message.walletId);
    }
    if (message.email !== undefined) {
      writer.uint32(34).string(message.email);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): GetMemberRequest {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseGetMemberRequest();
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
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): GetMemberRequest {
    return {
      didUri: isSet(object.didUri) ? String(object.didUri) : undefined,
      walletId: isSet(object.walletId) ? String(object.walletId) : undefined,
      email: isSet(object.email) ? String(object.email) : undefined,
    };
  },

  toJSON(message: GetMemberRequest): unknown {
    const obj: any = {};
    message.didUri !== undefined && (obj.didUri = message.didUri);
    message.walletId !== undefined && (obj.walletId = message.walletId);
    message.email !== undefined && (obj.email = message.email);
    return obj;
  },

  create(base?: DeepPartial<GetMemberRequest>): GetMemberRequest {
    return GetMemberRequest.fromPartial(base ?? {});
  },

  fromPartial(object: DeepPartial<GetMemberRequest>): GetMemberRequest {
    const message = createBaseGetMemberRequest();
    message.didUri = object.didUri ?? undefined;
    message.walletId = object.walletId ?? undefined;
    message.email = object.email ?? undefined;
    return message;
  },
};

function createBaseGetMemberResponse(): GetMemberResponse {
  return { authorizedMember: undefined };
}

export const GetMemberResponse = {
  encode(message: GetMemberResponse, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.authorizedMember !== undefined) {
      AuthorizedMember.encode(message.authorizedMember, writer.uint32(10).fork()).ldelim();
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): GetMemberResponse {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseGetMemberResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag != 10) {
            break;
          }

          message.authorizedMember = AuthorizedMember.decode(reader, reader.uint32());
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): GetMemberResponse {
    return {
      authorizedMember: isSet(object.authorizedMember) ? AuthorizedMember.fromJSON(object.authorizedMember) : undefined,
    };
  },

  toJSON(message: GetMemberResponse): unknown {
    const obj: any = {};
    message.authorizedMember !== undefined &&
      (obj.authorizedMember = message.authorizedMember ? AuthorizedMember.toJSON(message.authorizedMember) : undefined);
    return obj;
  },

  create(base?: DeepPartial<GetMemberResponse>): GetMemberResponse {
    return GetMemberResponse.fromPartial(base ?? {});
  },

  fromPartial(object: DeepPartial<GetMemberResponse>): GetMemberResponse {
    const message = createBaseGetMemberResponse();
    message.authorizedMember = (object.authorizedMember !== undefined && object.authorizedMember !== null)
      ? AuthorizedMember.fromPartial(object.authorizedMember)
      : undefined;
    return message;
  },
};

export type TrustRegistryDefinition = typeof TrustRegistryDefinition;
export const TrustRegistryDefinition = {
  name: "TrustRegistry",
  fullName: "services.trustregistry.v1.TrustRegistry",
  methods: {
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
    /** Fetch the status of a member for a given credential schema in a trust registry */
    getMemberAuthorizationStatus: {
      name: "GetMemberAuthorizationStatus",
      requestType: GetMemberAuthorizationStatusRequest,
      requestStream: false,
      responseType: GetMemberAuthorizationStatusResponse,
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
    /** Get member for a given did in a trust registry */
    getMember: {
      name: "GetMember",
      requestType: GetMemberRequest,
      requestStream: false,
      responseType: GetMemberResponse,
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
