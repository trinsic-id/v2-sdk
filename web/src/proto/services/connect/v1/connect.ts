/* eslint-disable */
import Long from "long";
import _m0 from "protobufjs/minimal";
import { OrderDirection, orderDirectionFromJSON, orderDirectionToJSON } from "../../common/v1/common";

/** The type of verification to perform */
export enum VerificationType {
  /** GOVERNMENT_ID - Government-issued ID (driver's license, passport, etc) */
  GOVERNMENT_ID = 0,
  UNRECOGNIZED = -1,
}

export function verificationTypeFromJSON(object: any): VerificationType {
  switch (object) {
    case 0:
    case "GOVERNMENT_ID":
      return VerificationType.GOVERNMENT_ID;
    case -1:
    case "UNRECOGNIZED":
    default:
      return VerificationType.UNRECOGNIZED;
  }
}

export function verificationTypeToJSON(object: VerificationType): string {
  switch (object) {
    case VerificationType.GOVERNMENT_ID:
      return "GOVERNMENT_ID";
    case VerificationType.UNRECOGNIZED:
    default:
      return "UNRECOGNIZED";
  }
}

/** The states a VerificationSession can be in */
export enum IDVSessionState {
  /** IDV_CREATED - Session has been created, but not yet shown to user */
  IDV_CREATED = 0,
  /**
   * IDV_INITIATED - Session has been shown to user (iframe / popup opened), but
   * user has not yet logged in.
   */
  IDV_INITIATED = 1,
  /** IDV_AUTHENTICATING - User has entered their phone number, but not yet authenticated with the code sent via SMS */
  IDV_AUTHENTICATING = 2,
  /** IDV_IN_PROGRESS - User has been authenticated and is performing identity verification */
  IDV_IN_PROGRESS = 3,
  /** IDV_SUCCESS - Session was completed successfully and IDV data is available to RP */
  IDV_SUCCESS = 4,
  /** IDV_FAILED - The session failed; reason is present in `fail_code`. */
  IDV_FAILED = 5,
  UNRECOGNIZED = -1,
}

export function iDVSessionStateFromJSON(object: any): IDVSessionState {
  switch (object) {
    case 0:
    case "IDV_CREATED":
      return IDVSessionState.IDV_CREATED;
    case 1:
    case "IDV_INITIATED":
      return IDVSessionState.IDV_INITIATED;
    case 2:
    case "IDV_AUTHENTICATING":
      return IDVSessionState.IDV_AUTHENTICATING;
    case 3:
    case "IDV_IN_PROGRESS":
      return IDVSessionState.IDV_IN_PROGRESS;
    case 4:
    case "IDV_SUCCESS":
      return IDVSessionState.IDV_SUCCESS;
    case 5:
    case "IDV_FAILED":
      return IDVSessionState.IDV_FAILED;
    case -1:
    case "UNRECOGNIZED":
    default:
      return IDVSessionState.UNRECOGNIZED;
  }
}

export function iDVSessionStateToJSON(object: IDVSessionState): string {
  switch (object) {
    case IDVSessionState.IDV_CREATED:
      return "IDV_CREATED";
    case IDVSessionState.IDV_INITIATED:
      return "IDV_INITIATED";
    case IDVSessionState.IDV_AUTHENTICATING:
      return "IDV_AUTHENTICATING";
    case IDVSessionState.IDV_IN_PROGRESS:
      return "IDV_IN_PROGRESS";
    case IDVSessionState.IDV_SUCCESS:
      return "IDV_SUCCESS";
    case IDVSessionState.IDV_FAILED:
      return "IDV_FAILED";
    case IDVSessionState.UNRECOGNIZED:
    default:
      return "UNRECOGNIZED";
  }
}

/** The states an individual Verification can be in */
export enum VerificationState {
  /** VERIFICATION_PENDING - This verification has not yet been performed in the flow */
  VERIFICATION_PENDING = 0,
  /**
   * VERIFICATION_PENDING_REUSE - This verification has been started by the user, and can be reused from a previous verification, but the user
   * has not yet decided whether to reuse it.
   */
  VERIFICATION_PENDING_REUSE = 1,
  /** VERIFICATION_STARTED - This verification has been started by the user, but not yet completed */
  VERIFICATION_STARTED = 2,
  /** VERIFICATION_SUCCESS - This verification has been successfully completed */
  VERIFICATION_SUCCESS = 3,
  /** VERIFICATION_FAILED - This verification has failed */
  VERIFICATION_FAILED = 4,
  UNRECOGNIZED = -1,
}

export function verificationStateFromJSON(object: any): VerificationState {
  switch (object) {
    case 0:
    case "VERIFICATION_PENDING":
      return VerificationState.VERIFICATION_PENDING;
    case 1:
    case "VERIFICATION_PENDING_REUSE":
      return VerificationState.VERIFICATION_PENDING_REUSE;
    case 2:
    case "VERIFICATION_STARTED":
      return VerificationState.VERIFICATION_STARTED;
    case 3:
    case "VERIFICATION_SUCCESS":
      return VerificationState.VERIFICATION_SUCCESS;
    case 4:
    case "VERIFICATION_FAILED":
      return VerificationState.VERIFICATION_FAILED;
    case -1:
    case "UNRECOGNIZED":
    default:
      return VerificationState.UNRECOGNIZED;
  }
}

export function verificationStateToJSON(object: VerificationState): string {
  switch (object) {
    case VerificationState.VERIFICATION_PENDING:
      return "VERIFICATION_PENDING";
    case VerificationState.VERIFICATION_PENDING_REUSE:
      return "VERIFICATION_PENDING_REUSE";
    case VerificationState.VERIFICATION_STARTED:
      return "VERIFICATION_STARTED";
    case VerificationState.VERIFICATION_SUCCESS:
      return "VERIFICATION_SUCCESS";
    case VerificationState.VERIFICATION_FAILED:
      return "VERIFICATION_FAILED";
    case VerificationState.UNRECOGNIZED:
    default:
      return "UNRECOGNIZED";
  }
}

/** The specific reason an IDVSession is in the `Failed` state */
export enum SessionFailCode {
  /** SESSION_FAIL_INTERNAL - An internal Trinsic error caused this session to fail */
  SESSION_FAIL_INTERNAL = 0,
  /**
   * SESSION_FAIL_VERIFICATION_FAILED - The session failed because one or more of the verifications failed.
   * The reason for the failure is present in the `fail_reason` field of the relevant `Verification` object(s).
   */
  SESSION_FAIL_VERIFICATION_FAILED = 1,
  /** SESSION_FAIL_AUTHENTICATION - The session failed because the user failed to authenticate with their phone number too many times. */
  SESSION_FAIL_AUTHENTICATION = 2,
  /** SESSION_FAIL_EXPIRED - The session expired */
  SESSION_FAIL_EXPIRED = 3,
  /** SESSION_FAIL_USER_CANCELED - The user canceled / rejected the session */
  SESSION_FAIL_USER_CANCELED = 4,
  /** SESSION_FAIL_RP_CANCELED - The RP canceled the session */
  SESSION_FAIL_RP_CANCELED = 5,
  UNRECOGNIZED = -1,
}

export function sessionFailCodeFromJSON(object: any): SessionFailCode {
  switch (object) {
    case 0:
    case "SESSION_FAIL_INTERNAL":
      return SessionFailCode.SESSION_FAIL_INTERNAL;
    case 1:
    case "SESSION_FAIL_VERIFICATION_FAILED":
      return SessionFailCode.SESSION_FAIL_VERIFICATION_FAILED;
    case 2:
    case "SESSION_FAIL_AUTHENTICATION":
      return SessionFailCode.SESSION_FAIL_AUTHENTICATION;
    case 3:
    case "SESSION_FAIL_EXPIRED":
      return SessionFailCode.SESSION_FAIL_EXPIRED;
    case 4:
    case "SESSION_FAIL_USER_CANCELED":
      return SessionFailCode.SESSION_FAIL_USER_CANCELED;
    case 5:
    case "SESSION_FAIL_RP_CANCELED":
      return SessionFailCode.SESSION_FAIL_RP_CANCELED;
    case -1:
    case "UNRECOGNIZED":
    default:
      return SessionFailCode.UNRECOGNIZED;
  }
}

export function sessionFailCodeToJSON(object: SessionFailCode): string {
  switch (object) {
    case SessionFailCode.SESSION_FAIL_INTERNAL:
      return "SESSION_FAIL_INTERNAL";
    case SessionFailCode.SESSION_FAIL_VERIFICATION_FAILED:
      return "SESSION_FAIL_VERIFICATION_FAILED";
    case SessionFailCode.SESSION_FAIL_AUTHENTICATION:
      return "SESSION_FAIL_AUTHENTICATION";
    case SessionFailCode.SESSION_FAIL_EXPIRED:
      return "SESSION_FAIL_EXPIRED";
    case SessionFailCode.SESSION_FAIL_USER_CANCELED:
      return "SESSION_FAIL_USER_CANCELED";
    case SessionFailCode.SESSION_FAIL_RP_CANCELED:
      return "SESSION_FAIL_RP_CANCELED";
    case SessionFailCode.UNRECOGNIZED:
    default:
      return "UNRECOGNIZED";
  }
}

/** The specific reason a Verification is in the `Failed` state */
export enum VerificationFailCode {
  /** VERIFICATION_FAIL_INTERNAL - An internal Trinsic error caused this verification to fail */
  VERIFICATION_FAIL_INTERNAL = 0,
  /**
   * VERIFICATION_FAIL_INVALID_IMAGE - The image(s) provided for this verification were either too low-quality, not of the correct type, or otherwise
   * unable to be processed.
   */
  VERIFICATION_FAIL_INVALID_IMAGE = 1,
  /** VERIFICATION_FAIL_INAUTHENTIC - The identity data/images provided are suspected to be inauthentic, fraudulent, or forged. */
  VERIFICATION_FAIL_INAUTHENTIC = 2,
  /** VERIFICATION_FAIL_UNSUPPORTED_DOCUMENT - The document provided is either of an unsupported type, or from an unsupported country. */
  VERIFICATION_FAIL_UNSUPPORTED_DOCUMENT = 3,
  UNRECOGNIZED = -1,
}

export function verificationFailCodeFromJSON(object: any): VerificationFailCode {
  switch (object) {
    case 0:
    case "VERIFICATION_FAIL_INTERNAL":
      return VerificationFailCode.VERIFICATION_FAIL_INTERNAL;
    case 1:
    case "VERIFICATION_FAIL_INVALID_IMAGE":
      return VerificationFailCode.VERIFICATION_FAIL_INVALID_IMAGE;
    case 2:
    case "VERIFICATION_FAIL_INAUTHENTIC":
      return VerificationFailCode.VERIFICATION_FAIL_INAUTHENTIC;
    case 3:
    case "VERIFICATION_FAIL_UNSUPPORTED_DOCUMENT":
      return VerificationFailCode.VERIFICATION_FAIL_UNSUPPORTED_DOCUMENT;
    case -1:
    case "UNRECOGNIZED":
    default:
      return VerificationFailCode.UNRECOGNIZED;
  }
}

export function verificationFailCodeToJSON(object: VerificationFailCode): string {
  switch (object) {
    case VerificationFailCode.VERIFICATION_FAIL_INTERNAL:
      return "VERIFICATION_FAIL_INTERNAL";
    case VerificationFailCode.VERIFICATION_FAIL_INVALID_IMAGE:
      return "VERIFICATION_FAIL_INVALID_IMAGE";
    case VerificationFailCode.VERIFICATION_FAIL_INAUTHENTIC:
      return "VERIFICATION_FAIL_INAUTHENTIC";
    case VerificationFailCode.VERIFICATION_FAIL_UNSUPPORTED_DOCUMENT:
      return "VERIFICATION_FAIL_UNSUPPORTED_DOCUMENT";
    case VerificationFailCode.UNRECOGNIZED:
    default:
      return "UNRECOGNIZED";
  }
}

/** Controls how sessions are ordered in `ListSessions` */
export enum SessionOrdering {
  /** CREATED - Order sessions according to when they were created */
  CREATED = 0,
  /** UPDATED - Order sessions according to when they last changed state */
  UPDATED = 1,
  /** STATE - Order sessions according to their numerical state */
  STATE = 2,
  UNRECOGNIZED = -1,
}

export function sessionOrderingFromJSON(object: any): SessionOrdering {
  switch (object) {
    case 0:
    case "CREATED":
      return SessionOrdering.CREATED;
    case 1:
    case "UPDATED":
      return SessionOrdering.UPDATED;
    case 2:
    case "STATE":
      return SessionOrdering.STATE;
    case -1:
    case "UNRECOGNIZED":
    default:
      return SessionOrdering.UNRECOGNIZED;
  }
}

export function sessionOrderingToJSON(object: SessionOrdering): string {
  switch (object) {
    case SessionOrdering.CREATED:
      return "CREATED";
    case SessionOrdering.UPDATED:
      return "UPDATED";
    case SessionOrdering.STATE:
      return "STATE";
    case SessionOrdering.UNRECOGNIZED:
    default:
      return "UNRECOGNIZED";
  }
}

/** An Identity Verification Session */
export interface IDVSession {
  /** The ID of the IDVSession. */
  id?:
    | string
    | undefined;
  /**
   * The Client Token for this IDVSession. This should be passed to your frontend to initiate
   * the IDV flow using Trinsic's Web SDK.
   */
  clientToken?:
    | string
    | undefined;
  /** State of the IDVSession */
  state?:
    | IDVSessionState
    | undefined;
  /** The actual Verifications to perform in this IDV flow */
  verifications?:
    | { [key: string]: Verification }
    | undefined;
  /**
   * The reason for the IDVSession's failure.
   * Only set if `state` is `IDV_FAILED`.
   */
  failCode?:
    | SessionFailCode
    | undefined;
  /** The resultant signed VP combining the results of all verifications */
  resultVp?:
    | string
    | undefined;
  /** The unix timestamp, in seconds, that this IDVSession was created */
  created?:
    | number
    | undefined;
  /** The unix timestamp, in seconds, that this IDVSession's `state` was last updated */
  updated?: number | undefined;
}

export interface IDVSession_VerificationsEntry {
  key: string;
  value?: Verification | undefined;
}

/** A Verification that is part of an IDVSession */
export interface Verification {
  /** The ID of the verification */
  id?:
    | string
    | undefined;
  /** The type of verification (driver's license, passport, proof of address, etc) */
  type?:
    | VerificationType
    | undefined;
  /** The state of the verification */
  state?:
    | VerificationState
    | undefined;
  /**
   * The reason for the Verification's failure.
   * Only set if `state` is `VERIFICATION_FAILED`.
   */
  failCode?:
    | VerificationFailCode
    | undefined;
  /**
   * Whether this was a reused (true) or fresh (false) verification.
   * If `state` is not `VERIFICATION_SUCCESS`, this field is `false` and does not convey useful information.
   */
  reused?:
    | boolean
    | undefined;
  /**
   * The unix timestamp, in seconds, when this verification was begun
   * by the user -- or `0` if not yet begun.
   */
  begun?:
    | number
    | undefined;
  /** The unix timestamp, in seconds, when this verification last changed state -- o */
  updated?: number | undefined;
}

/** Request to create an Identity Verification Session */
export interface CreateSessionRequest {
  /** Array of verifications to perform */
  verifications?: RequestedVerification[] | undefined;
}

/** A verification to perform in an IDV flow */
export interface RequestedVerification {
  /** The type of verification to perform */
  type?: VerificationType | undefined;
}

/** Response to `CreateIDVSessionRequest` */
export interface CreateSessionResponse {
  /** The created IDVSession */
  session?: IDVSession | undefined;
}

/** Request to cancel an Identity Verification Session */
export interface CancelSessionRequest {
  /** The ID of the IDVSession to cancel */
  idvSessionId?: string | undefined;
}

/** Response to `CancelIDVSessionRequest` */
export interface CancelSessionResponse {
  /** The IDVSession in its current state after cancellation */
  session?: IDVSession | undefined;
}

/** Request to get an IDVSession */
export interface GetSessionRequest {
  /** The ID of the IDVSession to get */
  idvSessionId?: string | undefined;
}

/** Response to `GetIDVSessionRequest` */
export interface GetSessionResponse {
  /** The IDVSession */
  session?: IDVSession | undefined;
}

/** Request to list all IDVSessions you've created */
export interface ListSessionsRequest {
  /** The field by which sessions should be sorted. Defaults to `CREATED`. */
  orderBy?:
    | SessionOrdering
    | undefined;
  /** The order in which sessions should be sorted. Defaults to `ASCENDING`. */
  orderDirection?:
    | OrderDirection
    | undefined;
  /**
   * The number of results to return per page.
   * Must be between `1` and `10`, inclusive.
   * Defaults to `10`.
   */
  pageSize?:
    | number
    | undefined;
  /**
   * The page index of results to return.
   * Starts at `1`.
   * Defaults to `1`.
   */
  page?: number | undefined;
}

/** Response to `ListIDVSessionsRequest` */
export interface ListSessionsResponse {
  /** The sessions you've created */
  sessions?:
    | IDVSession[]
    | undefined;
  /** The total number of sessions you've created */
  total?:
    | number
    | undefined;
  /**
   * If `true`, this is not the last page of results.
   * If `false`, this is the last page of results.
   */
  more?: boolean | undefined;
}

function createBaseIDVSession(): IDVSession {
  return {
    id: "",
    clientToken: "",
    state: 0,
    verifications: {},
    failCode: undefined,
    resultVp: undefined,
    created: 0,
    updated: 0,
  };
}

export const IDVSession = {
  encode(message: IDVSession, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.id !== undefined && message.id !== "") {
      writer.uint32(10).string(message.id);
    }
    if (message.clientToken !== undefined && message.clientToken !== "") {
      writer.uint32(18).string(message.clientToken);
    }
    if (message.state !== undefined && message.state !== 0) {
      writer.uint32(24).int32(message.state);
    }
    Object.entries(message.verifications || {}).forEach(([key, value]) => {
      IDVSession_VerificationsEntry.encode({ key: key as any, value }, writer.uint32(34).fork()).ldelim();
    });
    if (message.failCode !== undefined) {
      writer.uint32(40).int32(message.failCode);
    }
    if (message.resultVp !== undefined) {
      writer.uint32(50).string(message.resultVp);
    }
    if (message.created !== undefined && message.created !== 0) {
      writer.uint32(57).fixed64(message.created);
    }
    if (message.updated !== undefined && message.updated !== 0) {
      writer.uint32(65).fixed64(message.updated);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): IDVSession {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseIDVSession();
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

          message.clientToken = reader.string();
          continue;
        case 3:
          if (tag !== 24) {
            break;
          }

          message.state = reader.int32() as any;
          continue;
        case 4:
          if (tag !== 34) {
            break;
          }

          const entry4 = IDVSession_VerificationsEntry.decode(reader, reader.uint32());
          if (entry4.value !== undefined) {
            message.verifications![entry4.key] = entry4.value;
          }
          continue;
        case 5:
          if (tag !== 40) {
            break;
          }

          message.failCode = reader.int32() as any;
          continue;
        case 6:
          if (tag !== 50) {
            break;
          }

          message.resultVp = reader.string();
          continue;
        case 7:
          if (tag !== 57) {
            break;
          }

          message.created = longToNumber(reader.fixed64() as Long);
          continue;
        case 8:
          if (tag !== 65) {
            break;
          }

          message.updated = longToNumber(reader.fixed64() as Long);
          continue;
      }
      if ((tag & 7) === 4 || tag === 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): IDVSession {
    return {
      id: isSet(object.id) ? String(object.id) : "",
      clientToken: isSet(object.clientToken) ? String(object.clientToken) : "",
      state: isSet(object.state) ? iDVSessionStateFromJSON(object.state) : 0,
      verifications: isObject(object.verifications)
        ? Object.entries(object.verifications).reduce<{ [key: string]: Verification }>((acc, [key, value]) => {
          acc[key] = Verification.fromJSON(value);
          return acc;
        }, {})
        : {},
      failCode: isSet(object.failCode) ? sessionFailCodeFromJSON(object.failCode) : undefined,
      resultVp: isSet(object.resultVp) ? String(object.resultVp) : undefined,
      created: isSet(object.created) ? Number(object.created) : 0,
      updated: isSet(object.updated) ? Number(object.updated) : 0,
    };
  },

  toJSON(message: IDVSession): unknown {
    const obj: any = {};
    if (message.id !== undefined && message.id !== "") {
      obj.id = message.id;
    }
    if (message.clientToken !== undefined && message.clientToken !== "") {
      obj.clientToken = message.clientToken;
    }
    if (message.state !== undefined && message.state !== 0) {
      obj.state = iDVSessionStateToJSON(message.state);
    }
    if (message.verifications) {
      const entries = Object.entries(message.verifications);
      if (entries.length > 0) {
        obj.verifications = {};
        entries.forEach(([k, v]) => {
          obj.verifications[k] = Verification.toJSON(v);
        });
      }
    }
    if (message.failCode !== undefined) {
      obj.failCode = sessionFailCodeToJSON(message.failCode);
    }
    if (message.resultVp !== undefined) {
      obj.resultVp = message.resultVp;
    }
    if (message.created !== undefined && message.created !== 0) {
      obj.created = Math.round(message.created);
    }
    if (message.updated !== undefined && message.updated !== 0) {
      obj.updated = Math.round(message.updated);
    }
    return obj;
  },

  create(base?: DeepPartial<IDVSession>): IDVSession {
    return IDVSession.fromPartial(base ?? {});
  },
  fromPartial(object: DeepPartial<IDVSession>): IDVSession {
    const message = createBaseIDVSession();
    message.id = object.id ?? "";
    message.clientToken = object.clientToken ?? "";
    message.state = object.state ?? 0;
    message.verifications = Object.entries(object.verifications ?? {}).reduce<{ [key: string]: Verification }>(
      (acc, [key, value]) => {
        if (value !== undefined) {
          acc[key] = Verification.fromPartial(value);
        }
        return acc;
      },
      {},
    );
    message.failCode = object.failCode ?? undefined;
    message.resultVp = object.resultVp ?? undefined;
    message.created = object.created ?? 0;
    message.updated = object.updated ?? 0;
    return message;
  },
};

function createBaseIDVSession_VerificationsEntry(): IDVSession_VerificationsEntry {
  return { key: "", value: undefined };
}

export const IDVSession_VerificationsEntry = {
  encode(message: IDVSession_VerificationsEntry, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.key !== "") {
      writer.uint32(10).string(message.key);
    }
    if (message.value !== undefined) {
      Verification.encode(message.value, writer.uint32(18).fork()).ldelim();
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): IDVSession_VerificationsEntry {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseIDVSession_VerificationsEntry();
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

          message.value = Verification.decode(reader, reader.uint32());
          continue;
      }
      if ((tag & 7) === 4 || tag === 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): IDVSession_VerificationsEntry {
    return {
      key: isSet(object.key) ? String(object.key) : "",
      value: isSet(object.value) ? Verification.fromJSON(object.value) : undefined,
    };
  },

  toJSON(message: IDVSession_VerificationsEntry): unknown {
    const obj: any = {};
    if (message.key !== "") {
      obj.key = message.key;
    }
    if (message.value !== undefined) {
      obj.value = Verification.toJSON(message.value);
    }
    return obj;
  },

  create(base?: DeepPartial<IDVSession_VerificationsEntry>): IDVSession_VerificationsEntry {
    return IDVSession_VerificationsEntry.fromPartial(base ?? {});
  },
  fromPartial(object: DeepPartial<IDVSession_VerificationsEntry>): IDVSession_VerificationsEntry {
    const message = createBaseIDVSession_VerificationsEntry();
    message.key = object.key ?? "";
    message.value = (object.value !== undefined && object.value !== null)
      ? Verification.fromPartial(object.value)
      : undefined;
    return message;
  },
};

function createBaseVerification(): Verification {
  return { id: "", type: 0, state: 0, failCode: undefined, reused: false, begun: 0, updated: 0 };
}

export const Verification = {
  encode(message: Verification, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.id !== undefined && message.id !== "") {
      writer.uint32(10).string(message.id);
    }
    if (message.type !== undefined && message.type !== 0) {
      writer.uint32(16).int32(message.type);
    }
    if (message.state !== undefined && message.state !== 0) {
      writer.uint32(24).int32(message.state);
    }
    if (message.failCode !== undefined) {
      writer.uint32(32).int32(message.failCode);
    }
    if (message.reused === true) {
      writer.uint32(40).bool(message.reused);
    }
    if (message.begun !== undefined && message.begun !== 0) {
      writer.uint32(49).fixed64(message.begun);
    }
    if (message.updated !== undefined && message.updated !== 0) {
      writer.uint32(57).fixed64(message.updated);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): Verification {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseVerification();
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
          if (tag !== 16) {
            break;
          }

          message.type = reader.int32() as any;
          continue;
        case 3:
          if (tag !== 24) {
            break;
          }

          message.state = reader.int32() as any;
          continue;
        case 4:
          if (tag !== 32) {
            break;
          }

          message.failCode = reader.int32() as any;
          continue;
        case 5:
          if (tag !== 40) {
            break;
          }

          message.reused = reader.bool();
          continue;
        case 6:
          if (tag !== 49) {
            break;
          }

          message.begun = longToNumber(reader.fixed64() as Long);
          continue;
        case 7:
          if (tag !== 57) {
            break;
          }

          message.updated = longToNumber(reader.fixed64() as Long);
          continue;
      }
      if ((tag & 7) === 4 || tag === 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): Verification {
    return {
      id: isSet(object.id) ? String(object.id) : "",
      type: isSet(object.type) ? verificationTypeFromJSON(object.type) : 0,
      state: isSet(object.state) ? verificationStateFromJSON(object.state) : 0,
      failCode: isSet(object.failCode) ? verificationFailCodeFromJSON(object.failCode) : undefined,
      reused: isSet(object.reused) ? Boolean(object.reused) : false,
      begun: isSet(object.begun) ? Number(object.begun) : 0,
      updated: isSet(object.updated) ? Number(object.updated) : 0,
    };
  },

  toJSON(message: Verification): unknown {
    const obj: any = {};
    if (message.id !== undefined && message.id !== "") {
      obj.id = message.id;
    }
    if (message.type !== undefined && message.type !== 0) {
      obj.type = verificationTypeToJSON(message.type);
    }
    if (message.state !== undefined && message.state !== 0) {
      obj.state = verificationStateToJSON(message.state);
    }
    if (message.failCode !== undefined) {
      obj.failCode = verificationFailCodeToJSON(message.failCode);
    }
    if (message.reused === true) {
      obj.reused = message.reused;
    }
    if (message.begun !== undefined && message.begun !== 0) {
      obj.begun = Math.round(message.begun);
    }
    if (message.updated !== undefined && message.updated !== 0) {
      obj.updated = Math.round(message.updated);
    }
    return obj;
  },

  create(base?: DeepPartial<Verification>): Verification {
    return Verification.fromPartial(base ?? {});
  },
  fromPartial(object: DeepPartial<Verification>): Verification {
    const message = createBaseVerification();
    message.id = object.id ?? "";
    message.type = object.type ?? 0;
    message.state = object.state ?? 0;
    message.failCode = object.failCode ?? undefined;
    message.reused = object.reused ?? false;
    message.begun = object.begun ?? 0;
    message.updated = object.updated ?? 0;
    return message;
  },
};

function createBaseCreateSessionRequest(): CreateSessionRequest {
  return { verifications: [] };
}

export const CreateSessionRequest = {
  encode(message: CreateSessionRequest, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.verifications !== undefined && message.verifications.length !== 0) {
      for (const v of message.verifications) {
        RequestedVerification.encode(v!, writer.uint32(10).fork()).ldelim();
      }
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): CreateSessionRequest {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseCreateSessionRequest();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag !== 10) {
            break;
          }

          message.verifications!.push(RequestedVerification.decode(reader, reader.uint32()));
          continue;
      }
      if ((tag & 7) === 4 || tag === 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): CreateSessionRequest {
    return {
      verifications: Array.isArray(object?.verifications)
        ? object.verifications.map((e: any) => RequestedVerification.fromJSON(e))
        : [],
    };
  },

  toJSON(message: CreateSessionRequest): unknown {
    const obj: any = {};
    if (message.verifications?.length) {
      obj.verifications = message.verifications.map((e) => RequestedVerification.toJSON(e));
    }
    return obj;
  },

  create(base?: DeepPartial<CreateSessionRequest>): CreateSessionRequest {
    return CreateSessionRequest.fromPartial(base ?? {});
  },
  fromPartial(object: DeepPartial<CreateSessionRequest>): CreateSessionRequest {
    const message = createBaseCreateSessionRequest();
    message.verifications = object.verifications?.map((e) => RequestedVerification.fromPartial(e)) || [];
    return message;
  },
};

function createBaseRequestedVerification(): RequestedVerification {
  return { type: 0 };
}

export const RequestedVerification = {
  encode(message: RequestedVerification, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.type !== undefined && message.type !== 0) {
      writer.uint32(8).int32(message.type);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): RequestedVerification {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseRequestedVerification();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag !== 8) {
            break;
          }

          message.type = reader.int32() as any;
          continue;
      }
      if ((tag & 7) === 4 || tag === 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): RequestedVerification {
    return { type: isSet(object.type) ? verificationTypeFromJSON(object.type) : 0 };
  },

  toJSON(message: RequestedVerification): unknown {
    const obj: any = {};
    if (message.type !== undefined && message.type !== 0) {
      obj.type = verificationTypeToJSON(message.type);
    }
    return obj;
  },

  create(base?: DeepPartial<RequestedVerification>): RequestedVerification {
    return RequestedVerification.fromPartial(base ?? {});
  },
  fromPartial(object: DeepPartial<RequestedVerification>): RequestedVerification {
    const message = createBaseRequestedVerification();
    message.type = object.type ?? 0;
    return message;
  },
};

function createBaseCreateSessionResponse(): CreateSessionResponse {
  return { session: undefined };
}

export const CreateSessionResponse = {
  encode(message: CreateSessionResponse, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.session !== undefined) {
      IDVSession.encode(message.session, writer.uint32(10).fork()).ldelim();
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): CreateSessionResponse {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseCreateSessionResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag !== 10) {
            break;
          }

          message.session = IDVSession.decode(reader, reader.uint32());
          continue;
      }
      if ((tag & 7) === 4 || tag === 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): CreateSessionResponse {
    return { session: isSet(object.session) ? IDVSession.fromJSON(object.session) : undefined };
  },

  toJSON(message: CreateSessionResponse): unknown {
    const obj: any = {};
    if (message.session !== undefined) {
      obj.session = IDVSession.toJSON(message.session);
    }
    return obj;
  },

  create(base?: DeepPartial<CreateSessionResponse>): CreateSessionResponse {
    return CreateSessionResponse.fromPartial(base ?? {});
  },
  fromPartial(object: DeepPartial<CreateSessionResponse>): CreateSessionResponse {
    const message = createBaseCreateSessionResponse();
    message.session = (object.session !== undefined && object.session !== null)
      ? IDVSession.fromPartial(object.session)
      : undefined;
    return message;
  },
};

function createBaseCancelSessionRequest(): CancelSessionRequest {
  return { idvSessionId: "" };
}

export const CancelSessionRequest = {
  encode(message: CancelSessionRequest, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.idvSessionId !== undefined && message.idvSessionId !== "") {
      writer.uint32(10).string(message.idvSessionId);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): CancelSessionRequest {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseCancelSessionRequest();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag !== 10) {
            break;
          }

          message.idvSessionId = reader.string();
          continue;
      }
      if ((tag & 7) === 4 || tag === 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): CancelSessionRequest {
    return { idvSessionId: isSet(object.idvSessionId) ? String(object.idvSessionId) : "" };
  },

  toJSON(message: CancelSessionRequest): unknown {
    const obj: any = {};
    if (message.idvSessionId !== undefined && message.idvSessionId !== "") {
      obj.idvSessionId = message.idvSessionId;
    }
    return obj;
  },

  create(base?: DeepPartial<CancelSessionRequest>): CancelSessionRequest {
    return CancelSessionRequest.fromPartial(base ?? {});
  },
  fromPartial(object: DeepPartial<CancelSessionRequest>): CancelSessionRequest {
    const message = createBaseCancelSessionRequest();
    message.idvSessionId = object.idvSessionId ?? "";
    return message;
  },
};

function createBaseCancelSessionResponse(): CancelSessionResponse {
  return { session: undefined };
}

export const CancelSessionResponse = {
  encode(message: CancelSessionResponse, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.session !== undefined) {
      IDVSession.encode(message.session, writer.uint32(10).fork()).ldelim();
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): CancelSessionResponse {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseCancelSessionResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag !== 10) {
            break;
          }

          message.session = IDVSession.decode(reader, reader.uint32());
          continue;
      }
      if ((tag & 7) === 4 || tag === 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): CancelSessionResponse {
    return { session: isSet(object.session) ? IDVSession.fromJSON(object.session) : undefined };
  },

  toJSON(message: CancelSessionResponse): unknown {
    const obj: any = {};
    if (message.session !== undefined) {
      obj.session = IDVSession.toJSON(message.session);
    }
    return obj;
  },

  create(base?: DeepPartial<CancelSessionResponse>): CancelSessionResponse {
    return CancelSessionResponse.fromPartial(base ?? {});
  },
  fromPartial(object: DeepPartial<CancelSessionResponse>): CancelSessionResponse {
    const message = createBaseCancelSessionResponse();
    message.session = (object.session !== undefined && object.session !== null)
      ? IDVSession.fromPartial(object.session)
      : undefined;
    return message;
  },
};

function createBaseGetSessionRequest(): GetSessionRequest {
  return { idvSessionId: "" };
}

export const GetSessionRequest = {
  encode(message: GetSessionRequest, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.idvSessionId !== undefined && message.idvSessionId !== "") {
      writer.uint32(10).string(message.idvSessionId);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): GetSessionRequest {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseGetSessionRequest();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag !== 10) {
            break;
          }

          message.idvSessionId = reader.string();
          continue;
      }
      if ((tag & 7) === 4 || tag === 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): GetSessionRequest {
    return { idvSessionId: isSet(object.idvSessionId) ? String(object.idvSessionId) : "" };
  },

  toJSON(message: GetSessionRequest): unknown {
    const obj: any = {};
    if (message.idvSessionId !== undefined && message.idvSessionId !== "") {
      obj.idvSessionId = message.idvSessionId;
    }
    return obj;
  },

  create(base?: DeepPartial<GetSessionRequest>): GetSessionRequest {
    return GetSessionRequest.fromPartial(base ?? {});
  },
  fromPartial(object: DeepPartial<GetSessionRequest>): GetSessionRequest {
    const message = createBaseGetSessionRequest();
    message.idvSessionId = object.idvSessionId ?? "";
    return message;
  },
};

function createBaseGetSessionResponse(): GetSessionResponse {
  return { session: undefined };
}

export const GetSessionResponse = {
  encode(message: GetSessionResponse, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.session !== undefined) {
      IDVSession.encode(message.session, writer.uint32(10).fork()).ldelim();
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): GetSessionResponse {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseGetSessionResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag !== 10) {
            break;
          }

          message.session = IDVSession.decode(reader, reader.uint32());
          continue;
      }
      if ((tag & 7) === 4 || tag === 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): GetSessionResponse {
    return { session: isSet(object.session) ? IDVSession.fromJSON(object.session) : undefined };
  },

  toJSON(message: GetSessionResponse): unknown {
    const obj: any = {};
    if (message.session !== undefined) {
      obj.session = IDVSession.toJSON(message.session);
    }
    return obj;
  },

  create(base?: DeepPartial<GetSessionResponse>): GetSessionResponse {
    return GetSessionResponse.fromPartial(base ?? {});
  },
  fromPartial(object: DeepPartial<GetSessionResponse>): GetSessionResponse {
    const message = createBaseGetSessionResponse();
    message.session = (object.session !== undefined && object.session !== null)
      ? IDVSession.fromPartial(object.session)
      : undefined;
    return message;
  },
};

function createBaseListSessionsRequest(): ListSessionsRequest {
  return { orderBy: 0, orderDirection: 0, pageSize: undefined, page: undefined };
}

export const ListSessionsRequest = {
  encode(message: ListSessionsRequest, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.orderBy !== undefined && message.orderBy !== 0) {
      writer.uint32(8).int32(message.orderBy);
    }
    if (message.orderDirection !== undefined && message.orderDirection !== 0) {
      writer.uint32(16).int32(message.orderDirection);
    }
    if (message.pageSize !== undefined) {
      writer.uint32(24).int32(message.pageSize);
    }
    if (message.page !== undefined) {
      writer.uint32(32).int32(message.page);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): ListSessionsRequest {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseListSessionsRequest();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag !== 8) {
            break;
          }

          message.orderBy = reader.int32() as any;
          continue;
        case 2:
          if (tag !== 16) {
            break;
          }

          message.orderDirection = reader.int32() as any;
          continue;
        case 3:
          if (tag !== 24) {
            break;
          }

          message.pageSize = reader.int32();
          continue;
        case 4:
          if (tag !== 32) {
            break;
          }

          message.page = reader.int32();
          continue;
      }
      if ((tag & 7) === 4 || tag === 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): ListSessionsRequest {
    return {
      orderBy: isSet(object.orderBy) ? sessionOrderingFromJSON(object.orderBy) : 0,
      orderDirection: isSet(object.orderDirection) ? orderDirectionFromJSON(object.orderDirection) : 0,
      pageSize: isSet(object.pageSize) ? Number(object.pageSize) : undefined,
      page: isSet(object.page) ? Number(object.page) : undefined,
    };
  },

  toJSON(message: ListSessionsRequest): unknown {
    const obj: any = {};
    if (message.orderBy !== undefined && message.orderBy !== 0) {
      obj.orderBy = sessionOrderingToJSON(message.orderBy);
    }
    if (message.orderDirection !== undefined && message.orderDirection !== 0) {
      obj.orderDirection = orderDirectionToJSON(message.orderDirection);
    }
    if (message.pageSize !== undefined) {
      obj.pageSize = Math.round(message.pageSize);
    }
    if (message.page !== undefined) {
      obj.page = Math.round(message.page);
    }
    return obj;
  },

  create(base?: DeepPartial<ListSessionsRequest>): ListSessionsRequest {
    return ListSessionsRequest.fromPartial(base ?? {});
  },
  fromPartial(object: DeepPartial<ListSessionsRequest>): ListSessionsRequest {
    const message = createBaseListSessionsRequest();
    message.orderBy = object.orderBy ?? 0;
    message.orderDirection = object.orderDirection ?? 0;
    message.pageSize = object.pageSize ?? undefined;
    message.page = object.page ?? undefined;
    return message;
  },
};

function createBaseListSessionsResponse(): ListSessionsResponse {
  return { sessions: [], total: 0, more: false };
}

export const ListSessionsResponse = {
  encode(message: ListSessionsResponse, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.sessions !== undefined && message.sessions.length !== 0) {
      for (const v of message.sessions) {
        IDVSession.encode(v!, writer.uint32(10).fork()).ldelim();
      }
    }
    if (message.total !== undefined && message.total !== 0) {
      writer.uint32(16).int32(message.total);
    }
    if (message.more === true) {
      writer.uint32(24).bool(message.more);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): ListSessionsResponse {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseListSessionsResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag !== 10) {
            break;
          }

          message.sessions!.push(IDVSession.decode(reader, reader.uint32()));
          continue;
        case 2:
          if (tag !== 16) {
            break;
          }

          message.total = reader.int32();
          continue;
        case 3:
          if (tag !== 24) {
            break;
          }

          message.more = reader.bool();
          continue;
      }
      if ((tag & 7) === 4 || tag === 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): ListSessionsResponse {
    return {
      sessions: Array.isArray(object?.sessions) ? object.sessions.map((e: any) => IDVSession.fromJSON(e)) : [],
      total: isSet(object.total) ? Number(object.total) : 0,
      more: isSet(object.more) ? Boolean(object.more) : false,
    };
  },

  toJSON(message: ListSessionsResponse): unknown {
    const obj: any = {};
    if (message.sessions?.length) {
      obj.sessions = message.sessions.map((e) => IDVSession.toJSON(e));
    }
    if (message.total !== undefined && message.total !== 0) {
      obj.total = Math.round(message.total);
    }
    if (message.more === true) {
      obj.more = message.more;
    }
    return obj;
  },

  create(base?: DeepPartial<ListSessionsResponse>): ListSessionsResponse {
    return ListSessionsResponse.fromPartial(base ?? {});
  },
  fromPartial(object: DeepPartial<ListSessionsResponse>): ListSessionsResponse {
    const message = createBaseListSessionsResponse();
    message.sessions = object.sessions?.map((e) => IDVSession.fromPartial(e)) || [];
    message.total = object.total ?? 0;
    message.more = object.more ?? false;
    return message;
  },
};

/** The Connect service provides access to Trinsic Connect, a reusable identity verification service. */
export type ConnectDefinition = typeof ConnectDefinition;
export const ConnectDefinition = {
  name: "Connect",
  fullName: "services.connect.v1.Connect",
  methods: {
    /** Create an IDVSession */
    createSession: {
      name: "CreateSession",
      requestType: CreateSessionRequest,
      requestStream: false,
      responseType: CreateSessionResponse,
      responseStream: false,
      options: {},
    },
    /** Cancel an IDVSession */
    cancelSession: {
      name: "CancelSession",
      requestType: CancelSessionRequest,
      requestStream: false,
      responseType: CancelSessionResponse,
      responseStream: false,
      options: {},
    },
    /** Get an IDVSession */
    getSession: {
      name: "GetSession",
      requestType: GetSessionRequest,
      requestStream: false,
      responseType: GetSessionResponse,
      responseStream: false,
      options: {},
    },
    /** List IDVSessions created by the calling wallet */
    listSessions: {
      name: "ListSessions",
      requestType: ListSessionsRequest,
      requestStream: false,
      responseType: ListSessionsResponse,
      responseStream: false,
      options: {},
    },
  },
} as const;

declare const self: any | undefined;
declare const window: any | undefined;
declare const global: any | undefined;
const tsProtoGlobalThis: any = (() => {
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

function isObject(value: any): boolean {
  return typeof value === "object" && value !== null;
}

function isSet(value: any): boolean {
  return value !== null && value !== undefined;
}
