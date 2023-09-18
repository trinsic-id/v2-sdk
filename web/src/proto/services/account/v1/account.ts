/* eslint-disable */
import _m0 from "protobufjs/minimal";

/** Confirmation method type for two-factor workflows */
export enum ConfirmationMethod {
  /** None - No confirmation required */
  None = 0,
  /** Email - Email confirmation required */
  Email = 1,
  /** Sms - SMS confirmation required */
  Sms = 2,
  /** ConnectedDevice - Confirmation from a connected device is required */
  ConnectedDevice = 3,
  /** Other - Third-party method of confirmation is required */
  Other = 10,
  UNRECOGNIZED = -1,
}

export function confirmationMethodFromJSON(object: any): ConfirmationMethod {
  switch (object) {
    case 0:
    case "None":
      return ConfirmationMethod.None;
    case 1:
    case "Email":
      return ConfirmationMethod.Email;
    case 2:
    case "Sms":
      return ConfirmationMethod.Sms;
    case 3:
    case "ConnectedDevice":
      return ConfirmationMethod.ConnectedDevice;
    case 10:
    case "Other":
      return ConfirmationMethod.Other;
    case -1:
    case "UNRECOGNIZED":
    default:
      return ConfirmationMethod.UNRECOGNIZED;
  }
}

export function confirmationMethodToJSON(object: ConfirmationMethod): string {
  switch (object) {
    case ConfirmationMethod.None:
      return "None";
    case ConfirmationMethod.Email:
      return "Email";
    case ConfirmationMethod.Sms:
      return "Sms";
    case ConfirmationMethod.ConnectedDevice:
      return "ConnectedDevice";
    case ConfirmationMethod.Other:
      return "Other";
    case ConfirmationMethod.UNRECOGNIZED:
    default:
      return "UNRECOGNIZED";
  }
}

/** Account registration details */
export interface AccountDetails {
  /** Account name */
  name?:
    | string
    | undefined;
  /**
   * Email address of account.
   *
   * @deprecated
   */
  email?:
    | string
    | undefined;
  /**
   * SMS number including country code
   *
   * @deprecated
   */
  sms?: string | undefined;
}

/** Token protection info */
export interface TokenProtection {
  /**
   * Indicates if token is protected using a PIN,
   * security code, HSM secret, etc.
   */
  enabled?:
    | boolean
    | undefined;
  /** The method used to protect the token */
  method?: ConfirmationMethod | undefined;
}

/**
 * Device profile containing sensitive authentication data.
 * This information should be stored securely
 */
export interface AccountProfile {
  /**
   * The type of profile, used to differentiate between
   * protocol schemes or versions
   */
  profileType?:
    | string
    | undefined;
  /** Auth data containg information about the current device access */
  authData?:
    | Uint8Array
    | undefined;
  /** Secure token issued by server used to generate zero-knowledge proofs */
  authToken?:
    | Uint8Array
    | undefined;
  /**
   * Token security information about the token.
   * If token protection is enabled, implementations must supply
   * protection secret before using the token for authentication.
   */
  protection?: TokenProtection | undefined;
}

/** Information about authentication tokens for a wallet */
export interface WalletAuthToken {
  /**
   * Unique identifier for the token.
   * This field will match the `DeviceId` in the WalletAuthData
   */
  id?:
    | string
    | undefined;
  /** Device name/description */
  description?:
    | string
    | undefined;
  /** Date when the token was created in ISO 8601 format */
  dateCreated?: string | undefined;
}

function createBaseAccountDetails(): AccountDetails {
  return { name: "", email: "", sms: "" };
}

export const AccountDetails = {
  encode(message: AccountDetails, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.name !== undefined && message.name !== "") {
      writer.uint32(10).string(message.name);
    }
    if (message.email !== undefined && message.email !== "") {
      writer.uint32(18).string(message.email);
    }
    if (message.sms !== undefined && message.sms !== "") {
      writer.uint32(26).string(message.sms);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): AccountDetails {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseAccountDetails();
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

          message.email = reader.string();
          continue;
        case 3:
          if (tag !== 26) {
            break;
          }

          message.sms = reader.string();
          continue;
      }
      if ((tag & 7) === 4 || tag === 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): AccountDetails {
    return {
      name: isSet(object.name) ? String(object.name) : "",
      email: isSet(object.email) ? String(object.email) : "",
      sms: isSet(object.sms) ? String(object.sms) : "",
    };
  },

  toJSON(message: AccountDetails): unknown {
    const obj: any = {};
    if (message.name !== undefined && message.name !== "") {
      obj.name = message.name;
    }
    if (message.email !== undefined && message.email !== "") {
      obj.email = message.email;
    }
    if (message.sms !== undefined && message.sms !== "") {
      obj.sms = message.sms;
    }
    return obj;
  },

  create(base?: DeepPartial<AccountDetails>): AccountDetails {
    return AccountDetails.fromPartial(base ?? {});
  },
  fromPartial(object: DeepPartial<AccountDetails>): AccountDetails {
    const message = createBaseAccountDetails();
    message.name = object.name ?? "";
    message.email = object.email ?? "";
    message.sms = object.sms ?? "";
    return message;
  },
};

function createBaseTokenProtection(): TokenProtection {
  return { enabled: false, method: 0 };
}

export const TokenProtection = {
  encode(message: TokenProtection, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.enabled === true) {
      writer.uint32(8).bool(message.enabled);
    }
    if (message.method !== undefined && message.method !== 0) {
      writer.uint32(16).int32(message.method);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): TokenProtection {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseTokenProtection();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag !== 8) {
            break;
          }

          message.enabled = reader.bool();
          continue;
        case 2:
          if (tag !== 16) {
            break;
          }

          message.method = reader.int32() as any;
          continue;
      }
      if ((tag & 7) === 4 || tag === 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): TokenProtection {
    return {
      enabled: isSet(object.enabled) ? Boolean(object.enabled) : false,
      method: isSet(object.method) ? confirmationMethodFromJSON(object.method) : 0,
    };
  },

  toJSON(message: TokenProtection): unknown {
    const obj: any = {};
    if (message.enabled === true) {
      obj.enabled = message.enabled;
    }
    if (message.method !== undefined && message.method !== 0) {
      obj.method = confirmationMethodToJSON(message.method);
    }
    return obj;
  },

  create(base?: DeepPartial<TokenProtection>): TokenProtection {
    return TokenProtection.fromPartial(base ?? {});
  },
  fromPartial(object: DeepPartial<TokenProtection>): TokenProtection {
    const message = createBaseTokenProtection();
    message.enabled = object.enabled ?? false;
    message.method = object.method ?? 0;
    return message;
  },
};

function createBaseAccountProfile(): AccountProfile {
  return { profileType: "", authData: new Uint8Array(0), authToken: new Uint8Array(0), protection: undefined };
}

export const AccountProfile = {
  encode(message: AccountProfile, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.profileType !== undefined && message.profileType !== "") {
      writer.uint32(10).string(message.profileType);
    }
    if (message.authData !== undefined && message.authData.length !== 0) {
      writer.uint32(18).bytes(message.authData);
    }
    if (message.authToken !== undefined && message.authToken.length !== 0) {
      writer.uint32(26).bytes(message.authToken);
    }
    if (message.protection !== undefined) {
      TokenProtection.encode(message.protection, writer.uint32(34).fork()).ldelim();
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): AccountProfile {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseAccountProfile();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag !== 10) {
            break;
          }

          message.profileType = reader.string();
          continue;
        case 2:
          if (tag !== 18) {
            break;
          }

          message.authData = reader.bytes();
          continue;
        case 3:
          if (tag !== 26) {
            break;
          }

          message.authToken = reader.bytes();
          continue;
        case 4:
          if (tag !== 34) {
            break;
          }

          message.protection = TokenProtection.decode(reader, reader.uint32());
          continue;
      }
      if ((tag & 7) === 4 || tag === 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): AccountProfile {
    return {
      profileType: isSet(object.profileType) ? String(object.profileType) : "",
      authData: isSet(object.authData) ? bytesFromBase64(object.authData) : new Uint8Array(0),
      authToken: isSet(object.authToken) ? bytesFromBase64(object.authToken) : new Uint8Array(0),
      protection: isSet(object.protection) ? TokenProtection.fromJSON(object.protection) : undefined,
    };
  },

  toJSON(message: AccountProfile): unknown {
    const obj: any = {};
    if (message.profileType !== undefined && message.profileType !== "") {
      obj.profileType = message.profileType;
    }
    if (message.authData !== undefined && message.authData.length !== 0) {
      obj.authData = base64FromBytes(message.authData);
    }
    if (message.authToken !== undefined && message.authToken.length !== 0) {
      obj.authToken = base64FromBytes(message.authToken);
    }
    if (message.protection !== undefined) {
      obj.protection = TokenProtection.toJSON(message.protection);
    }
    return obj;
  },

  create(base?: DeepPartial<AccountProfile>): AccountProfile {
    return AccountProfile.fromPartial(base ?? {});
  },
  fromPartial(object: DeepPartial<AccountProfile>): AccountProfile {
    const message = createBaseAccountProfile();
    message.profileType = object.profileType ?? "";
    message.authData = object.authData ?? new Uint8Array(0);
    message.authToken = object.authToken ?? new Uint8Array(0);
    message.protection = (object.protection !== undefined && object.protection !== null)
      ? TokenProtection.fromPartial(object.protection)
      : undefined;
    return message;
  },
};

function createBaseWalletAuthToken(): WalletAuthToken {
  return { id: "", description: undefined, dateCreated: "" };
}

export const WalletAuthToken = {
  encode(message: WalletAuthToken, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.id !== undefined && message.id !== "") {
      writer.uint32(10).string(message.id);
    }
    if (message.description !== undefined) {
      writer.uint32(18).string(message.description);
    }
    if (message.dateCreated !== undefined && message.dateCreated !== "") {
      writer.uint32(26).string(message.dateCreated);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): WalletAuthToken {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseWalletAuthToken();
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

          message.description = reader.string();
          continue;
        case 3:
          if (tag !== 26) {
            break;
          }

          message.dateCreated = reader.string();
          continue;
      }
      if ((tag & 7) === 4 || tag === 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): WalletAuthToken {
    return {
      id: isSet(object.id) ? String(object.id) : "",
      description: isSet(object.description) ? String(object.description) : undefined,
      dateCreated: isSet(object.dateCreated) ? String(object.dateCreated) : "",
    };
  },

  toJSON(message: WalletAuthToken): unknown {
    const obj: any = {};
    if (message.id !== undefined && message.id !== "") {
      obj.id = message.id;
    }
    if (message.description !== undefined) {
      obj.description = message.description;
    }
    if (message.dateCreated !== undefined && message.dateCreated !== "") {
      obj.dateCreated = message.dateCreated;
    }
    return obj;
  },

  create(base?: DeepPartial<WalletAuthToken>): WalletAuthToken {
    return WalletAuthToken.fromPartial(base ?? {});
  },
  fromPartial(object: DeepPartial<WalletAuthToken>): WalletAuthToken {
    const message = createBaseWalletAuthToken();
    message.id = object.id ?? "";
    message.description = object.description ?? undefined;
    message.dateCreated = object.dateCreated ?? "";
    return message;
  },
};

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

function bytesFromBase64(b64: string): Uint8Array {
  if (tsProtoGlobalThis.Buffer) {
    return Uint8Array.from(tsProtoGlobalThis.Buffer.from(b64, "base64"));
  } else {
    const bin = tsProtoGlobalThis.atob(b64);
    const arr = new Uint8Array(bin.length);
    for (let i = 0; i < bin.length; ++i) {
      arr[i] = bin.charCodeAt(i);
    }
    return arr;
  }
}

function base64FromBytes(arr: Uint8Array): string {
  if (tsProtoGlobalThis.Buffer) {
    return tsProtoGlobalThis.Buffer.from(arr).toString("base64");
  } else {
    const bin: string[] = [];
    arr.forEach((byte) => {
      bin.push(String.fromCharCode(byte));
    });
    return tsProtoGlobalThis.btoa(bin.join(""));
  }
}

type Builtin = Date | Function | Uint8Array | string | number | boolean | undefined;

type DeepPartial<T> = T extends Builtin ? T
  : T extends Array<infer U> ? Array<DeepPartial<U>> : T extends ReadonlyArray<infer U> ? ReadonlyArray<DeepPartial<U>>
  : T extends {} ? { [K in keyof T]?: DeepPartial<T[K]> }
  : Partial<T>;

function isSet(value: any): boolean {
  return value !== null && value !== undefined;
}
