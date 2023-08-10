/* eslint-disable */
import _m0 from "protobufjs/minimal";
import {
  AccountDetails,
  AccountProfile,
  ConfirmationMethod,
  confirmationMethodFromJSON,
  confirmationMethodToJSON,
  WalletAuthToken,
} from "../../account/v1/account";
import { SupportedDidMethod, supportedDidMethodFromJSON, supportedDidMethodToJSON } from "../../common/v1/common";

export enum IdentityProvider {
  /** Unknown - Identity provider is unknown */
  Unknown = 0,
  /** Email - Identity provider is email */
  Email = 1,
  /** Phone - Identity provider is phone */
  Phone = 2,
  /** Passkey - Identity provider is passkey (WebAuthn) -- for Trinsic internal use only */
  Passkey = 3,
  UNRECOGNIZED = -1,
}

export function identityProviderFromJSON(object: any): IdentityProvider {
  switch (object) {
    case 0:
    case "Unknown":
      return IdentityProvider.Unknown;
    case 1:
    case "Email":
      return IdentityProvider.Email;
    case 2:
    case "Phone":
      return IdentityProvider.Phone;
    case 3:
    case "Passkey":
      return IdentityProvider.Passkey;
    case -1:
    case "UNRECOGNIZED":
    default:
      return IdentityProvider.UNRECOGNIZED;
  }
}

export function identityProviderToJSON(object: IdentityProvider): string {
  switch (object) {
    case IdentityProvider.Unknown:
      return "Unknown";
    case IdentityProvider.Email:
      return "Email";
    case IdentityProvider.Phone:
      return "Phone";
    case IdentityProvider.Passkey:
      return "Passkey";
    case IdentityProvider.UNRECOGNIZED:
    default:
      return "UNRECOGNIZED";
  }
}

/** Details of an ecosystem */
export interface Ecosystem {
  /** URN of the ecosystem */
  id?:
    | string
    | undefined;
  /** Globally unique name for the ecosystem */
  name?:
    | string
    | undefined;
  /** Ecosystem description */
  description?: string | undefined;
}

/** Request to create an ecosystem */
export interface CreateEcosystemRequest {
  /**
   * Globally unique name for the Ecosystem. This name will be
   * part of the ecosystem-specific URLs and namespaces.
   * Allowed characters are lowercase letters, numbers, underscore and hyphen.
   * If not passed, ecosystem name will be auto-generated.
   */
  name?:
    | string
    | undefined;
  /** Ecosystem description */
  description?:
    | string
    | undefined;
  /** The account details of the owner of the ecosystem */
  details?:
    | AccountDetails
    | undefined;
  /** New domain URL */
  domain?: string | undefined;
}

/** Response to `CreateEcosystemRequest` */
export interface CreateEcosystemResponse {
  /** Details of the created ecosystem */
  ecosystem?:
    | Ecosystem
    | undefined;
  /** Account profile for auth of the owner of the ecosystem */
  profile?:
    | AccountProfile
    | undefined;
  /** Indicates if confirmation of account is required. */
  confirmationMethod?: ConfirmationMethod | undefined;
}

/** Request to fetch information about an ecosystem */
export interface EcosystemInfoRequest {
}

/** Response to `InfoRequest` */
export interface EcosystemInfoResponse {
  /** Ecosystem corresponding to current ecosystem in the account token */
  ecosystem?: Ecosystem | undefined;
}

/**
 * Request to fetch the Trinsic public key used
 * to verify authentication token validity
 */
export interface GetOberonKeyRequest {
}

/** Response to `GetOberonKeyRequest` */
export interface GetOberonKeyResponse {
  /** Oberon Public Key as RAW base64-url encoded string */
  key?: string | undefined;
}

/**
 * The below display can be removed only once the Dashboard is updating this itself - currently it uses this request
 * DEPRECATED, will be removed June 1st 2023
 *
 * @deprecated
 */
export interface RetrieveDomainVerificationRecordRequest {
}

/**
 * The below display can be removed only once the Dashboard is updating this itself - currently it uses this request
 * DEPRECATED, will be removed June 1st 2023
 *
 * @deprecated
 */
export interface RetrieveDomainVerificationRecordResponse {
  /** TXT record name to use for domain verification */
  verificationRecordName?:
    | string
    | undefined;
  /** TXT code for domain verification */
  verificationRecordValue?: string | undefined;
}

/**
 * The below display can be removed only once the Dashboard is updating this itself - currently it uses this request
 * DEPRECATED, will be removed June 1st 2023
 *
 * @deprecated
 */
export interface RefreshDomainVerificationStatusRequest {
}

/**
 * The below display can be removed only once the Dashboard is updating this itself - currently it uses this request
 * DEPRECATED, will be removed June 1st 2023
 *
 * @deprecated
 */
export interface RefreshDomainVerificationStatusResponse {
  /** Domain URL verified */
  domain?:
    | string
    | undefined;
  /** Specifies if the above `domain` was successfully verified */
  domainVerified?: boolean | undefined;
}

/** Search for issuers/holders/verifiers */
export interface SearchWalletConfigurationsRequest {
  /** SQL filter to execute. `SELECT * FROM c WHERE [**queryFilter**]` */
  queryFilter?:
    | string
    | undefined;
  /**
   * Token provided by previous `SearchResponse`
   * if more data is available for query
   */
  continuationToken?: string | undefined;
}

export interface SearchWalletConfigurationResponse {
  /** Results matching the search query */
  results?:
    | WalletConfiguration[]
    | undefined;
  /** Whether more results are available for this query via `continuation_token` */
  hasMoreResults?:
    | boolean
    | undefined;
  /** Token to fetch next set of results via `SearchRequest` */
  continuationToken?: string | undefined;
}

/** Strongly typed information about wallet configurations */
export interface WalletConfiguration {
  /** Name/description of the wallet */
  name?:
    | string
    | undefined;
  /**
   * Deprecated and will be removed on August 1, 2023 -- use external_identities.
   * This field is set to the first email address present in `external_identities`, if any.
   *
   * @deprecated
   */
  email?:
    | string
    | undefined;
  /**
   * Deprecated -- use external_identities
   *
   * @deprecated
   */
  sms?: string | undefined;
  walletId?:
    | string
    | undefined;
  /** The DID of the wallet */
  publicDid?: string | undefined;
  configType?:
    | string
    | undefined;
  /**
   * List of active authentication tokens for this wallet.
   * This list does not contain the issued token, only metadata
   * such as ID, description, and creation date.
   */
  authTokens?:
    | WalletAuthToken[]
    | undefined;
  /**
   * List of external identity IDs (email addresses, phone numbers, etc.) associated with this wallet.
   * This is deprecated; use `external_identities` instead.
   *
   * @deprecated
   */
  externalIdentityIds?:
    | string[]
    | undefined;
  /** Ecosystem in which this wallet is contained. */
  ecosystemId?: string | undefined;
  description?:
    | string
    | undefined;
  /** List of external identities associated with this wallet. */
  externalIdentities?: WalletExternalIdentity[] | undefined;
}

/** An external identity (email address, phone number, etc.) associated with a wallet for authentication purposes. */
export interface WalletExternalIdentity {
  /** The type of this identity (whether this identity is an email address, phone number, etc.) */
  provider?:
    | IdentityProvider
    | undefined;
  /** The actual email address/phone number/etc. for this identity */
  id?: string | undefined;
}

/** Options for creation of DID on the ION network */
export interface IonOptions {
  /** ION network on which DID should be published */
  network?: IonOptions_IonNetwork | undefined;
}

export enum IonOptions_IonNetwork {
  TestNet = 0,
  MainNet = 1,
  UNRECOGNIZED = -1,
}

export function ionOptions_IonNetworkFromJSON(object: any): IonOptions_IonNetwork {
  switch (object) {
    case 0:
    case "TestNet":
      return IonOptions_IonNetwork.TestNet;
    case 1:
    case "MainNet":
      return IonOptions_IonNetwork.MainNet;
    case -1:
    case "UNRECOGNIZED":
    default:
      return IonOptions_IonNetwork.UNRECOGNIZED;
  }
}

export function ionOptions_IonNetworkToJSON(object: IonOptions_IonNetwork): string {
  switch (object) {
    case IonOptions_IonNetwork.TestNet:
      return "TestNet";
    case IonOptions_IonNetwork.MainNet:
      return "MainNet";
    case IonOptions_IonNetwork.UNRECOGNIZED:
    default:
      return "UNRECOGNIZED";
  }
}

/** Options for creation of DID on the SOV network */
export interface IndyOptions {
  /** SOV network on which DID should be published */
  network?: IndyOptions_IndyNetwork | undefined;
}

export enum IndyOptions_IndyNetwork {
  Danube = 0,
  SovrinBuilder = 1,
  SovrinStaging = 2,
  Sovrin = 3,
  IdUnionTest = 4,
  IdUnion = 5,
  IndicioTest = 6,
  IndicioDemo = 7,
  Indicio = 8,
  UNRECOGNIZED = -1,
}

export function indyOptions_IndyNetworkFromJSON(object: any): IndyOptions_IndyNetwork {
  switch (object) {
    case 0:
    case "Danube":
      return IndyOptions_IndyNetwork.Danube;
    case 1:
    case "SovrinBuilder":
      return IndyOptions_IndyNetwork.SovrinBuilder;
    case 2:
    case "SovrinStaging":
      return IndyOptions_IndyNetwork.SovrinStaging;
    case 3:
    case "Sovrin":
      return IndyOptions_IndyNetwork.Sovrin;
    case 4:
    case "IdUnionTest":
      return IndyOptions_IndyNetwork.IdUnionTest;
    case 5:
    case "IdUnion":
      return IndyOptions_IndyNetwork.IdUnion;
    case 6:
    case "IndicioTest":
      return IndyOptions_IndyNetwork.IndicioTest;
    case 7:
    case "IndicioDemo":
      return IndyOptions_IndyNetwork.IndicioDemo;
    case 8:
    case "Indicio":
      return IndyOptions_IndyNetwork.Indicio;
    case -1:
    case "UNRECOGNIZED":
    default:
      return IndyOptions_IndyNetwork.UNRECOGNIZED;
  }
}

export function indyOptions_IndyNetworkToJSON(object: IndyOptions_IndyNetwork): string {
  switch (object) {
    case IndyOptions_IndyNetwork.Danube:
      return "Danube";
    case IndyOptions_IndyNetwork.SovrinBuilder:
      return "SovrinBuilder";
    case IndyOptions_IndyNetwork.SovrinStaging:
      return "SovrinStaging";
    case IndyOptions_IndyNetwork.Sovrin:
      return "Sovrin";
    case IndyOptions_IndyNetwork.IdUnionTest:
      return "IdUnionTest";
    case IndyOptions_IndyNetwork.IdUnion:
      return "IdUnion";
    case IndyOptions_IndyNetwork.IndicioTest:
      return "IndicioTest";
    case IndyOptions_IndyNetwork.IndicioDemo:
      return "IndicioDemo";
    case IndyOptions_IndyNetwork.Indicio:
      return "Indicio";
    case IndyOptions_IndyNetwork.UNRECOGNIZED:
    default:
      return "UNRECOGNIZED";
  }
}

/** Request to upgrade a wallet */
export interface UpgradeDidRequest {
  /**
   * Email address of account to upgrade.
   * Mutually exclusive with `walletId` and `didUri`.
   */
  email?:
    | string
    | undefined;
  /**
   * Wallet ID of account to upgrade.
   * Mutually exclusive with `email` and `didUri`.
   */
  walletId?:
    | string
    | undefined;
  /**
   * DID URI of the account to upgrade.
   * Mutually exclusive with `email` and `walletId`.
   */
  didUri?:
    | string
    | undefined;
  /** DID Method to which wallet should be upgraded */
  method?:
    | SupportedDidMethod
    | undefined;
  /** Configuration for creation of DID on ION network */
  ionOptions?:
    | IonOptions
    | undefined;
  /** Configuration for creation of DID on INDY network */
  indyOptions?: IndyOptions | undefined;
}

/** Response to `UpgradeDIDRequest` */
export interface UpgradeDidResponse {
  /** New DID of wallet */
  did?: string | undefined;
}

function createBaseEcosystem(): Ecosystem {
  return { id: "", name: "", description: "" };
}

export const Ecosystem = {
  encode(message: Ecosystem, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.id !== undefined && message.id !== "") {
      writer.uint32(10).string(message.id);
    }
    if (message.name !== undefined && message.name !== "") {
      writer.uint32(18).string(message.name);
    }
    if (message.description !== undefined && message.description !== "") {
      writer.uint32(26).string(message.description);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): Ecosystem {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseEcosystem();
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
          if (tag !== 26) {
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

  fromJSON(object: any): Ecosystem {
    return {
      id: isSet(object.id) ? String(object.id) : "",
      name: isSet(object.name) ? String(object.name) : "",
      description: isSet(object.description) ? String(object.description) : "",
    };
  },

  toJSON(message: Ecosystem): unknown {
    const obj: any = {};
    if (message.id !== undefined && message.id !== "") {
      obj.id = message.id;
    }
    if (message.name !== undefined && message.name !== "") {
      obj.name = message.name;
    }
    if (message.description !== undefined && message.description !== "") {
      obj.description = message.description;
    }
    return obj;
  },

  create(base?: DeepPartial<Ecosystem>): Ecosystem {
    return Ecosystem.fromPartial(base ?? {});
  },
  fromPartial(object: DeepPartial<Ecosystem>): Ecosystem {
    const message = createBaseEcosystem();
    message.id = object.id ?? "";
    message.name = object.name ?? "";
    message.description = object.description ?? "";
    return message;
  },
};

function createBaseCreateEcosystemRequest(): CreateEcosystemRequest {
  return { name: "", description: "", details: undefined, domain: "" };
}

export const CreateEcosystemRequest = {
  encode(message: CreateEcosystemRequest, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.name !== undefined && message.name !== "") {
      writer.uint32(10).string(message.name);
    }
    if (message.description !== undefined && message.description !== "") {
      writer.uint32(18).string(message.description);
    }
    if (message.details !== undefined) {
      AccountDetails.encode(message.details, writer.uint32(34).fork()).ldelim();
    }
    if (message.domain !== undefined && message.domain !== "") {
      writer.uint32(42).string(message.domain);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): CreateEcosystemRequest {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseCreateEcosystemRequest();
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

          message.description = reader.string();
          continue;
        case 4:
          if (tag !== 34) {
            break;
          }

          message.details = AccountDetails.decode(reader, reader.uint32());
          continue;
        case 5:
          if (tag !== 42) {
            break;
          }

          message.domain = reader.string();
          continue;
      }
      if ((tag & 7) === 4 || tag === 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): CreateEcosystemRequest {
    return {
      name: isSet(object.name) ? String(object.name) : "",
      description: isSet(object.description) ? String(object.description) : "",
      details: isSet(object.details) ? AccountDetails.fromJSON(object.details) : undefined,
      domain: isSet(object.domain) ? String(object.domain) : "",
    };
  },

  toJSON(message: CreateEcosystemRequest): unknown {
    const obj: any = {};
    if (message.name !== undefined && message.name !== "") {
      obj.name = message.name;
    }
    if (message.description !== undefined && message.description !== "") {
      obj.description = message.description;
    }
    if (message.details !== undefined) {
      obj.details = AccountDetails.toJSON(message.details);
    }
    if (message.domain !== undefined && message.domain !== "") {
      obj.domain = message.domain;
    }
    return obj;
  },

  create(base?: DeepPartial<CreateEcosystemRequest>): CreateEcosystemRequest {
    return CreateEcosystemRequest.fromPartial(base ?? {});
  },
  fromPartial(object: DeepPartial<CreateEcosystemRequest>): CreateEcosystemRequest {
    const message = createBaseCreateEcosystemRequest();
    message.name = object.name ?? "";
    message.description = object.description ?? "";
    message.details = (object.details !== undefined && object.details !== null)
      ? AccountDetails.fromPartial(object.details)
      : undefined;
    message.domain = object.domain ?? "";
    return message;
  },
};

function createBaseCreateEcosystemResponse(): CreateEcosystemResponse {
  return { ecosystem: undefined, profile: undefined, confirmationMethod: 0 };
}

export const CreateEcosystemResponse = {
  encode(message: CreateEcosystemResponse, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.ecosystem !== undefined) {
      Ecosystem.encode(message.ecosystem, writer.uint32(10).fork()).ldelim();
    }
    if (message.profile !== undefined) {
      AccountProfile.encode(message.profile, writer.uint32(18).fork()).ldelim();
    }
    if (message.confirmationMethod !== undefined && message.confirmationMethod !== 0) {
      writer.uint32(24).int32(message.confirmationMethod);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): CreateEcosystemResponse {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseCreateEcosystemResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag !== 10) {
            break;
          }

          message.ecosystem = Ecosystem.decode(reader, reader.uint32());
          continue;
        case 2:
          if (tag !== 18) {
            break;
          }

          message.profile = AccountProfile.decode(reader, reader.uint32());
          continue;
        case 3:
          if (tag !== 24) {
            break;
          }

          message.confirmationMethod = reader.int32() as any;
          continue;
      }
      if ((tag & 7) === 4 || tag === 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): CreateEcosystemResponse {
    return {
      ecosystem: isSet(object.ecosystem) ? Ecosystem.fromJSON(object.ecosystem) : undefined,
      profile: isSet(object.profile) ? AccountProfile.fromJSON(object.profile) : undefined,
      confirmationMethod: isSet(object.confirmationMethod) ? confirmationMethodFromJSON(object.confirmationMethod) : 0,
    };
  },

  toJSON(message: CreateEcosystemResponse): unknown {
    const obj: any = {};
    if (message.ecosystem !== undefined) {
      obj.ecosystem = Ecosystem.toJSON(message.ecosystem);
    }
    if (message.profile !== undefined) {
      obj.profile = AccountProfile.toJSON(message.profile);
    }
    if (message.confirmationMethod !== undefined && message.confirmationMethod !== 0) {
      obj.confirmationMethod = confirmationMethodToJSON(message.confirmationMethod);
    }
    return obj;
  },

  create(base?: DeepPartial<CreateEcosystemResponse>): CreateEcosystemResponse {
    return CreateEcosystemResponse.fromPartial(base ?? {});
  },
  fromPartial(object: DeepPartial<CreateEcosystemResponse>): CreateEcosystemResponse {
    const message = createBaseCreateEcosystemResponse();
    message.ecosystem = (object.ecosystem !== undefined && object.ecosystem !== null)
      ? Ecosystem.fromPartial(object.ecosystem)
      : undefined;
    message.profile = (object.profile !== undefined && object.profile !== null)
      ? AccountProfile.fromPartial(object.profile)
      : undefined;
    message.confirmationMethod = object.confirmationMethod ?? 0;
    return message;
  },
};

function createBaseEcosystemInfoRequest(): EcosystemInfoRequest {
  return {};
}

export const EcosystemInfoRequest = {
  encode(_: EcosystemInfoRequest, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): EcosystemInfoRequest {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseEcosystemInfoRequest();
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

  fromJSON(_: any): EcosystemInfoRequest {
    return {};
  },

  toJSON(_: EcosystemInfoRequest): unknown {
    const obj: any = {};
    return obj;
  },

  create(base?: DeepPartial<EcosystemInfoRequest>): EcosystemInfoRequest {
    return EcosystemInfoRequest.fromPartial(base ?? {});
  },
  fromPartial(_: DeepPartial<EcosystemInfoRequest>): EcosystemInfoRequest {
    const message = createBaseEcosystemInfoRequest();
    return message;
  },
};

function createBaseEcosystemInfoResponse(): EcosystemInfoResponse {
  return { ecosystem: undefined };
}

export const EcosystemInfoResponse = {
  encode(message: EcosystemInfoResponse, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.ecosystem !== undefined) {
      Ecosystem.encode(message.ecosystem, writer.uint32(10).fork()).ldelim();
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): EcosystemInfoResponse {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseEcosystemInfoResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag !== 10) {
            break;
          }

          message.ecosystem = Ecosystem.decode(reader, reader.uint32());
          continue;
      }
      if ((tag & 7) === 4 || tag === 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): EcosystemInfoResponse {
    return { ecosystem: isSet(object.ecosystem) ? Ecosystem.fromJSON(object.ecosystem) : undefined };
  },

  toJSON(message: EcosystemInfoResponse): unknown {
    const obj: any = {};
    if (message.ecosystem !== undefined) {
      obj.ecosystem = Ecosystem.toJSON(message.ecosystem);
    }
    return obj;
  },

  create(base?: DeepPartial<EcosystemInfoResponse>): EcosystemInfoResponse {
    return EcosystemInfoResponse.fromPartial(base ?? {});
  },
  fromPartial(object: DeepPartial<EcosystemInfoResponse>): EcosystemInfoResponse {
    const message = createBaseEcosystemInfoResponse();
    message.ecosystem = (object.ecosystem !== undefined && object.ecosystem !== null)
      ? Ecosystem.fromPartial(object.ecosystem)
      : undefined;
    return message;
  },
};

function createBaseGetOberonKeyRequest(): GetOberonKeyRequest {
  return {};
}

export const GetOberonKeyRequest = {
  encode(_: GetOberonKeyRequest, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): GetOberonKeyRequest {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseGetOberonKeyRequest();
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

  fromJSON(_: any): GetOberonKeyRequest {
    return {};
  },

  toJSON(_: GetOberonKeyRequest): unknown {
    const obj: any = {};
    return obj;
  },

  create(base?: DeepPartial<GetOberonKeyRequest>): GetOberonKeyRequest {
    return GetOberonKeyRequest.fromPartial(base ?? {});
  },
  fromPartial(_: DeepPartial<GetOberonKeyRequest>): GetOberonKeyRequest {
    const message = createBaseGetOberonKeyRequest();
    return message;
  },
};

function createBaseGetOberonKeyResponse(): GetOberonKeyResponse {
  return { key: "" };
}

export const GetOberonKeyResponse = {
  encode(message: GetOberonKeyResponse, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.key !== undefined && message.key !== "") {
      writer.uint32(10).string(message.key);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): GetOberonKeyResponse {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseGetOberonKeyResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag !== 10) {
            break;
          }

          message.key = reader.string();
          continue;
      }
      if ((tag & 7) === 4 || tag === 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): GetOberonKeyResponse {
    return { key: isSet(object.key) ? String(object.key) : "" };
  },

  toJSON(message: GetOberonKeyResponse): unknown {
    const obj: any = {};
    if (message.key !== undefined && message.key !== "") {
      obj.key = message.key;
    }
    return obj;
  },

  create(base?: DeepPartial<GetOberonKeyResponse>): GetOberonKeyResponse {
    return GetOberonKeyResponse.fromPartial(base ?? {});
  },
  fromPartial(object: DeepPartial<GetOberonKeyResponse>): GetOberonKeyResponse {
    const message = createBaseGetOberonKeyResponse();
    message.key = object.key ?? "";
    return message;
  },
};

function createBaseRetrieveDomainVerificationRecordRequest(): RetrieveDomainVerificationRecordRequest {
  return {};
}

export const RetrieveDomainVerificationRecordRequest = {
  encode(_: RetrieveDomainVerificationRecordRequest, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): RetrieveDomainVerificationRecordRequest {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseRetrieveDomainVerificationRecordRequest();
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

  fromJSON(_: any): RetrieveDomainVerificationRecordRequest {
    return {};
  },

  toJSON(_: RetrieveDomainVerificationRecordRequest): unknown {
    const obj: any = {};
    return obj;
  },

  create(base?: DeepPartial<RetrieveDomainVerificationRecordRequest>): RetrieveDomainVerificationRecordRequest {
    return RetrieveDomainVerificationRecordRequest.fromPartial(base ?? {});
  },
  fromPartial(_: DeepPartial<RetrieveDomainVerificationRecordRequest>): RetrieveDomainVerificationRecordRequest {
    const message = createBaseRetrieveDomainVerificationRecordRequest();
    return message;
  },
};

function createBaseRetrieveDomainVerificationRecordResponse(): RetrieveDomainVerificationRecordResponse {
  return { verificationRecordName: "", verificationRecordValue: "" };
}

export const RetrieveDomainVerificationRecordResponse = {
  encode(message: RetrieveDomainVerificationRecordResponse, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.verificationRecordName !== undefined && message.verificationRecordName !== "") {
      writer.uint32(10).string(message.verificationRecordName);
    }
    if (message.verificationRecordValue !== undefined && message.verificationRecordValue !== "") {
      writer.uint32(18).string(message.verificationRecordValue);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): RetrieveDomainVerificationRecordResponse {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseRetrieveDomainVerificationRecordResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag !== 10) {
            break;
          }

          message.verificationRecordName = reader.string();
          continue;
        case 2:
          if (tag !== 18) {
            break;
          }

          message.verificationRecordValue = reader.string();
          continue;
      }
      if ((tag & 7) === 4 || tag === 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): RetrieveDomainVerificationRecordResponse {
    return {
      verificationRecordName: isSet(object.verificationRecordName) ? String(object.verificationRecordName) : "",
      verificationRecordValue: isSet(object.verificationRecordValue) ? String(object.verificationRecordValue) : "",
    };
  },

  toJSON(message: RetrieveDomainVerificationRecordResponse): unknown {
    const obj: any = {};
    if (message.verificationRecordName !== undefined && message.verificationRecordName !== "") {
      obj.verificationRecordName = message.verificationRecordName;
    }
    if (message.verificationRecordValue !== undefined && message.verificationRecordValue !== "") {
      obj.verificationRecordValue = message.verificationRecordValue;
    }
    return obj;
  },

  create(base?: DeepPartial<RetrieveDomainVerificationRecordResponse>): RetrieveDomainVerificationRecordResponse {
    return RetrieveDomainVerificationRecordResponse.fromPartial(base ?? {});
  },
  fromPartial(object: DeepPartial<RetrieveDomainVerificationRecordResponse>): RetrieveDomainVerificationRecordResponse {
    const message = createBaseRetrieveDomainVerificationRecordResponse();
    message.verificationRecordName = object.verificationRecordName ?? "";
    message.verificationRecordValue = object.verificationRecordValue ?? "";
    return message;
  },
};

function createBaseRefreshDomainVerificationStatusRequest(): RefreshDomainVerificationStatusRequest {
  return {};
}

export const RefreshDomainVerificationStatusRequest = {
  encode(_: RefreshDomainVerificationStatusRequest, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): RefreshDomainVerificationStatusRequest {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseRefreshDomainVerificationStatusRequest();
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

  fromJSON(_: any): RefreshDomainVerificationStatusRequest {
    return {};
  },

  toJSON(_: RefreshDomainVerificationStatusRequest): unknown {
    const obj: any = {};
    return obj;
  },

  create(base?: DeepPartial<RefreshDomainVerificationStatusRequest>): RefreshDomainVerificationStatusRequest {
    return RefreshDomainVerificationStatusRequest.fromPartial(base ?? {});
  },
  fromPartial(_: DeepPartial<RefreshDomainVerificationStatusRequest>): RefreshDomainVerificationStatusRequest {
    const message = createBaseRefreshDomainVerificationStatusRequest();
    return message;
  },
};

function createBaseRefreshDomainVerificationStatusResponse(): RefreshDomainVerificationStatusResponse {
  return { domain: "", domainVerified: false };
}

export const RefreshDomainVerificationStatusResponse = {
  encode(message: RefreshDomainVerificationStatusResponse, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.domain !== undefined && message.domain !== "") {
      writer.uint32(10).string(message.domain);
    }
    if (message.domainVerified === true) {
      writer.uint32(16).bool(message.domainVerified);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): RefreshDomainVerificationStatusResponse {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseRefreshDomainVerificationStatusResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag !== 10) {
            break;
          }

          message.domain = reader.string();
          continue;
        case 2:
          if (tag !== 16) {
            break;
          }

          message.domainVerified = reader.bool();
          continue;
      }
      if ((tag & 7) === 4 || tag === 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): RefreshDomainVerificationStatusResponse {
    return {
      domain: isSet(object.domain) ? String(object.domain) : "",
      domainVerified: isSet(object.domainVerified) ? Boolean(object.domainVerified) : false,
    };
  },

  toJSON(message: RefreshDomainVerificationStatusResponse): unknown {
    const obj: any = {};
    if (message.domain !== undefined && message.domain !== "") {
      obj.domain = message.domain;
    }
    if (message.domainVerified === true) {
      obj.domainVerified = message.domainVerified;
    }
    return obj;
  },

  create(base?: DeepPartial<RefreshDomainVerificationStatusResponse>): RefreshDomainVerificationStatusResponse {
    return RefreshDomainVerificationStatusResponse.fromPartial(base ?? {});
  },
  fromPartial(object: DeepPartial<RefreshDomainVerificationStatusResponse>): RefreshDomainVerificationStatusResponse {
    const message = createBaseRefreshDomainVerificationStatusResponse();
    message.domain = object.domain ?? "";
    message.domainVerified = object.domainVerified ?? false;
    return message;
  },
};

function createBaseSearchWalletConfigurationsRequest(): SearchWalletConfigurationsRequest {
  return { queryFilter: "", continuationToken: "" };
}

export const SearchWalletConfigurationsRequest = {
  encode(message: SearchWalletConfigurationsRequest, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.queryFilter !== undefined && message.queryFilter !== "") {
      writer.uint32(10).string(message.queryFilter);
    }
    if (message.continuationToken !== undefined && message.continuationToken !== "") {
      writer.uint32(18).string(message.continuationToken);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): SearchWalletConfigurationsRequest {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseSearchWalletConfigurationsRequest();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag !== 10) {
            break;
          }

          message.queryFilter = reader.string();
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

  fromJSON(object: any): SearchWalletConfigurationsRequest {
    return {
      queryFilter: isSet(object.queryFilter) ? String(object.queryFilter) : "",
      continuationToken: isSet(object.continuationToken) ? String(object.continuationToken) : "",
    };
  },

  toJSON(message: SearchWalletConfigurationsRequest): unknown {
    const obj: any = {};
    if (message.queryFilter !== undefined && message.queryFilter !== "") {
      obj.queryFilter = message.queryFilter;
    }
    if (message.continuationToken !== undefined && message.continuationToken !== "") {
      obj.continuationToken = message.continuationToken;
    }
    return obj;
  },

  create(base?: DeepPartial<SearchWalletConfigurationsRequest>): SearchWalletConfigurationsRequest {
    return SearchWalletConfigurationsRequest.fromPartial(base ?? {});
  },
  fromPartial(object: DeepPartial<SearchWalletConfigurationsRequest>): SearchWalletConfigurationsRequest {
    const message = createBaseSearchWalletConfigurationsRequest();
    message.queryFilter = object.queryFilter ?? "";
    message.continuationToken = object.continuationToken ?? "";
    return message;
  },
};

function createBaseSearchWalletConfigurationResponse(): SearchWalletConfigurationResponse {
  return { results: [], hasMoreResults: false, continuationToken: "" };
}

export const SearchWalletConfigurationResponse = {
  encode(message: SearchWalletConfigurationResponse, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.results !== undefined && message.results.length !== 0) {
      for (const v of message.results) {
        WalletConfiguration.encode(v!, writer.uint32(10).fork()).ldelim();
      }
    }
    if (message.hasMoreResults === true) {
      writer.uint32(16).bool(message.hasMoreResults);
    }
    if (message.continuationToken !== undefined && message.continuationToken !== "") {
      writer.uint32(34).string(message.continuationToken);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): SearchWalletConfigurationResponse {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseSearchWalletConfigurationResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag !== 10) {
            break;
          }

          message.results!.push(WalletConfiguration.decode(reader, reader.uint32()));
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

  fromJSON(object: any): SearchWalletConfigurationResponse {
    return {
      results: Array.isArray(object?.results) ? object.results.map((e: any) => WalletConfiguration.fromJSON(e)) : [],
      hasMoreResults: isSet(object.hasMoreResults) ? Boolean(object.hasMoreResults) : false,
      continuationToken: isSet(object.continuationToken) ? String(object.continuationToken) : "",
    };
  },

  toJSON(message: SearchWalletConfigurationResponse): unknown {
    const obj: any = {};
    if (message.results?.length) {
      obj.results = message.results.map((e) => WalletConfiguration.toJSON(e));
    }
    if (message.hasMoreResults === true) {
      obj.hasMoreResults = message.hasMoreResults;
    }
    if (message.continuationToken !== undefined && message.continuationToken !== "") {
      obj.continuationToken = message.continuationToken;
    }
    return obj;
  },

  create(base?: DeepPartial<SearchWalletConfigurationResponse>): SearchWalletConfigurationResponse {
    return SearchWalletConfigurationResponse.fromPartial(base ?? {});
  },
  fromPartial(object: DeepPartial<SearchWalletConfigurationResponse>): SearchWalletConfigurationResponse {
    const message = createBaseSearchWalletConfigurationResponse();
    message.results = object.results?.map((e) => WalletConfiguration.fromPartial(e)) || [];
    message.hasMoreResults = object.hasMoreResults ?? false;
    message.continuationToken = object.continuationToken ?? "";
    return message;
  },
};

function createBaseWalletConfiguration(): WalletConfiguration {
  return {
    name: "",
    email: "",
    sms: "",
    walletId: "",
    publicDid: "",
    configType: "",
    authTokens: [],
    externalIdentityIds: [],
    ecosystemId: "",
    description: "",
    externalIdentities: [],
  };
}

export const WalletConfiguration = {
  encode(message: WalletConfiguration, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.name !== undefined && message.name !== "") {
      writer.uint32(10).string(message.name);
    }
    if (message.email !== undefined && message.email !== "") {
      writer.uint32(18).string(message.email);
    }
    if (message.sms !== undefined && message.sms !== "") {
      writer.uint32(26).string(message.sms);
    }
    if (message.walletId !== undefined && message.walletId !== "") {
      writer.uint32(34).string(message.walletId);
    }
    if (message.publicDid !== undefined && message.publicDid !== "") {
      writer.uint32(42).string(message.publicDid);
    }
    if (message.configType !== undefined && message.configType !== "") {
      writer.uint32(50).string(message.configType);
    }
    if (message.authTokens !== undefined && message.authTokens.length !== 0) {
      for (const v of message.authTokens) {
        WalletAuthToken.encode(v!, writer.uint32(58).fork()).ldelim();
      }
    }
    if (message.externalIdentityIds !== undefined && message.externalIdentityIds.length !== 0) {
      for (const v of message.externalIdentityIds) {
        writer.uint32(66).string(v!);
      }
    }
    if (message.ecosystemId !== undefined && message.ecosystemId !== "") {
      writer.uint32(74).string(message.ecosystemId);
    }
    if (message.description !== undefined && message.description !== "") {
      writer.uint32(82).string(message.description);
    }
    if (message.externalIdentities !== undefined && message.externalIdentities.length !== 0) {
      for (const v of message.externalIdentities) {
        WalletExternalIdentity.encode(v!, writer.uint32(90).fork()).ldelim();
      }
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): WalletConfiguration {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseWalletConfiguration();
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
        case 4:
          if (tag !== 34) {
            break;
          }

          message.walletId = reader.string();
          continue;
        case 5:
          if (tag !== 42) {
            break;
          }

          message.publicDid = reader.string();
          continue;
        case 6:
          if (tag !== 50) {
            break;
          }

          message.configType = reader.string();
          continue;
        case 7:
          if (tag !== 58) {
            break;
          }

          message.authTokens!.push(WalletAuthToken.decode(reader, reader.uint32()));
          continue;
        case 8:
          if (tag !== 66) {
            break;
          }

          message.externalIdentityIds!.push(reader.string());
          continue;
        case 9:
          if (tag !== 74) {
            break;
          }

          message.ecosystemId = reader.string();
          continue;
        case 10:
          if (tag !== 82) {
            break;
          }

          message.description = reader.string();
          continue;
        case 11:
          if (tag !== 90) {
            break;
          }

          message.externalIdentities!.push(WalletExternalIdentity.decode(reader, reader.uint32()));
          continue;
      }
      if ((tag & 7) === 4 || tag === 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): WalletConfiguration {
    return {
      name: isSet(object.name) ? String(object.name) : "",
      email: isSet(object.email) ? String(object.email) : "",
      sms: isSet(object.sms) ? String(object.sms) : "",
      walletId: isSet(object.walletId) ? String(object.walletId) : "",
      publicDid: isSet(object.publicDid) ? String(object.publicDid) : "",
      configType: isSet(object.configType) ? String(object.configType) : "",
      authTokens: Array.isArray(object?.authTokens)
        ? object.authTokens.map((e: any) => WalletAuthToken.fromJSON(e))
        : [],
      externalIdentityIds: Array.isArray(object?.externalIdentityIds)
        ? object.externalIdentityIds.map((e: any) => String(e))
        : [],
      ecosystemId: isSet(object.ecosystemId) ? String(object.ecosystemId) : "",
      description: isSet(object.description) ? String(object.description) : "",
      externalIdentities: Array.isArray(object?.externalIdentities)
        ? object.externalIdentities.map((e: any) => WalletExternalIdentity.fromJSON(e))
        : [],
    };
  },

  toJSON(message: WalletConfiguration): unknown {
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
    if (message.walletId !== undefined && message.walletId !== "") {
      obj.walletId = message.walletId;
    }
    if (message.publicDid !== undefined && message.publicDid !== "") {
      obj.publicDid = message.publicDid;
    }
    if (message.configType !== undefined && message.configType !== "") {
      obj.configType = message.configType;
    }
    if (message.authTokens?.length) {
      obj.authTokens = message.authTokens.map((e) => WalletAuthToken.toJSON(e));
    }
    if (message.externalIdentityIds?.length) {
      obj.externalIdentityIds = message.externalIdentityIds;
    }
    if (message.ecosystemId !== undefined && message.ecosystemId !== "") {
      obj.ecosystemId = message.ecosystemId;
    }
    if (message.description !== undefined && message.description !== "") {
      obj.description = message.description;
    }
    if (message.externalIdentities?.length) {
      obj.externalIdentities = message.externalIdentities.map((e) => WalletExternalIdentity.toJSON(e));
    }
    return obj;
  },

  create(base?: DeepPartial<WalletConfiguration>): WalletConfiguration {
    return WalletConfiguration.fromPartial(base ?? {});
  },
  fromPartial(object: DeepPartial<WalletConfiguration>): WalletConfiguration {
    const message = createBaseWalletConfiguration();
    message.name = object.name ?? "";
    message.email = object.email ?? "";
    message.sms = object.sms ?? "";
    message.walletId = object.walletId ?? "";
    message.publicDid = object.publicDid ?? "";
    message.configType = object.configType ?? "";
    message.authTokens = object.authTokens?.map((e) => WalletAuthToken.fromPartial(e)) || [];
    message.externalIdentityIds = object.externalIdentityIds?.map((e) => e) || [];
    message.ecosystemId = object.ecosystemId ?? "";
    message.description = object.description ?? "";
    message.externalIdentities = object.externalIdentities?.map((e) => WalletExternalIdentity.fromPartial(e)) || [];
    return message;
  },
};

function createBaseWalletExternalIdentity(): WalletExternalIdentity {
  return { provider: 0, id: "" };
}

export const WalletExternalIdentity = {
  encode(message: WalletExternalIdentity, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.provider !== undefined && message.provider !== 0) {
      writer.uint32(8).int32(message.provider);
    }
    if (message.id !== undefined && message.id !== "") {
      writer.uint32(18).string(message.id);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): WalletExternalIdentity {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseWalletExternalIdentity();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag !== 8) {
            break;
          }

          message.provider = reader.int32() as any;
          continue;
        case 2:
          if (tag !== 18) {
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

  fromJSON(object: any): WalletExternalIdentity {
    return {
      provider: isSet(object.provider) ? identityProviderFromJSON(object.provider) : 0,
      id: isSet(object.id) ? String(object.id) : "",
    };
  },

  toJSON(message: WalletExternalIdentity): unknown {
    const obj: any = {};
    if (message.provider !== undefined && message.provider !== 0) {
      obj.provider = identityProviderToJSON(message.provider);
    }
    if (message.id !== undefined && message.id !== "") {
      obj.id = message.id;
    }
    return obj;
  },

  create(base?: DeepPartial<WalletExternalIdentity>): WalletExternalIdentity {
    return WalletExternalIdentity.fromPartial(base ?? {});
  },
  fromPartial(object: DeepPartial<WalletExternalIdentity>): WalletExternalIdentity {
    const message = createBaseWalletExternalIdentity();
    message.provider = object.provider ?? 0;
    message.id = object.id ?? "";
    return message;
  },
};

function createBaseIonOptions(): IonOptions {
  return { network: 0 };
}

export const IonOptions = {
  encode(message: IonOptions, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.network !== undefined && message.network !== 0) {
      writer.uint32(8).int32(message.network);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): IonOptions {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseIonOptions();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag !== 8) {
            break;
          }

          message.network = reader.int32() as any;
          continue;
      }
      if ((tag & 7) === 4 || tag === 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): IonOptions {
    return { network: isSet(object.network) ? ionOptions_IonNetworkFromJSON(object.network) : 0 };
  },

  toJSON(message: IonOptions): unknown {
    const obj: any = {};
    if (message.network !== undefined && message.network !== 0) {
      obj.network = ionOptions_IonNetworkToJSON(message.network);
    }
    return obj;
  },

  create(base?: DeepPartial<IonOptions>): IonOptions {
    return IonOptions.fromPartial(base ?? {});
  },
  fromPartial(object: DeepPartial<IonOptions>): IonOptions {
    const message = createBaseIonOptions();
    message.network = object.network ?? 0;
    return message;
  },
};

function createBaseIndyOptions(): IndyOptions {
  return { network: 0 };
}

export const IndyOptions = {
  encode(message: IndyOptions, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.network !== undefined && message.network !== 0) {
      writer.uint32(8).int32(message.network);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): IndyOptions {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseIndyOptions();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag !== 8) {
            break;
          }

          message.network = reader.int32() as any;
          continue;
      }
      if ((tag & 7) === 4 || tag === 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): IndyOptions {
    return { network: isSet(object.network) ? indyOptions_IndyNetworkFromJSON(object.network) : 0 };
  },

  toJSON(message: IndyOptions): unknown {
    const obj: any = {};
    if (message.network !== undefined && message.network !== 0) {
      obj.network = indyOptions_IndyNetworkToJSON(message.network);
    }
    return obj;
  },

  create(base?: DeepPartial<IndyOptions>): IndyOptions {
    return IndyOptions.fromPartial(base ?? {});
  },
  fromPartial(object: DeepPartial<IndyOptions>): IndyOptions {
    const message = createBaseIndyOptions();
    message.network = object.network ?? 0;
    return message;
  },
};

function createBaseUpgradeDidRequest(): UpgradeDidRequest {
  return {
    email: undefined,
    walletId: undefined,
    didUri: undefined,
    method: 0,
    ionOptions: undefined,
    indyOptions: undefined,
  };
}

export const UpgradeDidRequest = {
  encode(message: UpgradeDidRequest, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.email !== undefined) {
      writer.uint32(10).string(message.email);
    }
    if (message.walletId !== undefined) {
      writer.uint32(18).string(message.walletId);
    }
    if (message.didUri !== undefined) {
      writer.uint32(50).string(message.didUri);
    }
    if (message.method !== undefined && message.method !== 0) {
      writer.uint32(24).int32(message.method);
    }
    if (message.ionOptions !== undefined) {
      IonOptions.encode(message.ionOptions, writer.uint32(34).fork()).ldelim();
    }
    if (message.indyOptions !== undefined) {
      IndyOptions.encode(message.indyOptions, writer.uint32(42).fork()).ldelim();
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): UpgradeDidRequest {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseUpgradeDidRequest();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag !== 10) {
            break;
          }

          message.email = reader.string();
          continue;
        case 2:
          if (tag !== 18) {
            break;
          }

          message.walletId = reader.string();
          continue;
        case 6:
          if (tag !== 50) {
            break;
          }

          message.didUri = reader.string();
          continue;
        case 3:
          if (tag !== 24) {
            break;
          }

          message.method = reader.int32() as any;
          continue;
        case 4:
          if (tag !== 34) {
            break;
          }

          message.ionOptions = IonOptions.decode(reader, reader.uint32());
          continue;
        case 5:
          if (tag !== 42) {
            break;
          }

          message.indyOptions = IndyOptions.decode(reader, reader.uint32());
          continue;
      }
      if ((tag & 7) === 4 || tag === 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): UpgradeDidRequest {
    return {
      email: isSet(object.email) ? String(object.email) : undefined,
      walletId: isSet(object.walletId) ? String(object.walletId) : undefined,
      didUri: isSet(object.didUri) ? String(object.didUri) : undefined,
      method: isSet(object.method) ? supportedDidMethodFromJSON(object.method) : 0,
      ionOptions: isSet(object.ionOptions) ? IonOptions.fromJSON(object.ionOptions) : undefined,
      indyOptions: isSet(object.indyOptions) ? IndyOptions.fromJSON(object.indyOptions) : undefined,
    };
  },

  toJSON(message: UpgradeDidRequest): unknown {
    const obj: any = {};
    if (message.email !== undefined) {
      obj.email = message.email;
    }
    if (message.walletId !== undefined) {
      obj.walletId = message.walletId;
    }
    if (message.didUri !== undefined) {
      obj.didUri = message.didUri;
    }
    if (message.method !== undefined && message.method !== 0) {
      obj.method = supportedDidMethodToJSON(message.method);
    }
    if (message.ionOptions !== undefined) {
      obj.ionOptions = IonOptions.toJSON(message.ionOptions);
    }
    if (message.indyOptions !== undefined) {
      obj.indyOptions = IndyOptions.toJSON(message.indyOptions);
    }
    return obj;
  },

  create(base?: DeepPartial<UpgradeDidRequest>): UpgradeDidRequest {
    return UpgradeDidRequest.fromPartial(base ?? {});
  },
  fromPartial(object: DeepPartial<UpgradeDidRequest>): UpgradeDidRequest {
    const message = createBaseUpgradeDidRequest();
    message.email = object.email ?? undefined;
    message.walletId = object.walletId ?? undefined;
    message.didUri = object.didUri ?? undefined;
    message.method = object.method ?? 0;
    message.ionOptions = (object.ionOptions !== undefined && object.ionOptions !== null)
      ? IonOptions.fromPartial(object.ionOptions)
      : undefined;
    message.indyOptions = (object.indyOptions !== undefined && object.indyOptions !== null)
      ? IndyOptions.fromPartial(object.indyOptions)
      : undefined;
    return message;
  },
};

function createBaseUpgradeDidResponse(): UpgradeDidResponse {
  return { did: "" };
}

export const UpgradeDidResponse = {
  encode(message: UpgradeDidResponse, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.did !== undefined && message.did !== "") {
      writer.uint32(10).string(message.did);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): UpgradeDidResponse {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseUpgradeDidResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag !== 10) {
            break;
          }

          message.did = reader.string();
          continue;
      }
      if ((tag & 7) === 4 || tag === 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): UpgradeDidResponse {
    return { did: isSet(object.did) ? String(object.did) : "" };
  },

  toJSON(message: UpgradeDidResponse): unknown {
    const obj: any = {};
    if (message.did !== undefined && message.did !== "") {
      obj.did = message.did;
    }
    return obj;
  },

  create(base?: DeepPartial<UpgradeDidResponse>): UpgradeDidResponse {
    return UpgradeDidResponse.fromPartial(base ?? {});
  },
  fromPartial(object: DeepPartial<UpgradeDidResponse>): UpgradeDidResponse {
    const message = createBaseUpgradeDidResponse();
    message.did = object.did ?? "";
    return message;
  },
};

export type ProviderDefinition = typeof ProviderDefinition;
export const ProviderDefinition = {
  name: "Provider",
  fullName: "services.provider.v1.Provider",
  methods: {
    /** Create new ecosystem and assign the authenticated user as owner */
    createEcosystem: {
      name: "CreateEcosystem",
      requestType: CreateEcosystemRequest,
      requestStream: false,
      responseType: CreateEcosystemResponse,
      responseStream: false,
      options: { _unknownFields: { 480010: [new Uint8Array([2, 16, 1])] } },
    },
    /** Returns the public key being used to create/verify oberon tokens */
    getOberonKey: {
      name: "GetOberonKey",
      requestType: GetOberonKeyRequest,
      requestStream: false,
      responseType: GetOberonKeyResponse,
      responseStream: false,
      options: { _unknownFields: { 480010: [new Uint8Array([2, 8, 1]), new Uint8Array([2, 24, 1])] } },
    },
    /** Upgrade a wallet's DID from `did:key` to another method */
    upgradeDID: {
      name: "UpgradeDID",
      requestType: UpgradeDidRequest,
      requestStream: false,
      responseType: UpgradeDidResponse,
      responseStream: false,
      options: {},
    },
    /** Search for issuers/providers/verifiers in the current ecosystem */
    searchWalletConfigurations: {
      name: "SearchWalletConfigurations",
      requestType: SearchWalletConfigurationsRequest,
      requestStream: false,
      responseType: SearchWalletConfigurationResponse,
      responseStream: false,
      options: {},
    },
  },
} as const;

type Builtin = Date | Function | Uint8Array | string | number | boolean | undefined;

type DeepPartial<T> = T extends Builtin ? T
  : T extends Array<infer U> ? Array<DeepPartial<U>> : T extends ReadonlyArray<infer U> ? ReadonlyArray<DeepPartial<U>>
  : T extends {} ? { [K in keyof T]?: DeepPartial<T[K]> }
  : Partial<T>;

function isSet(value: any): boolean {
  return value !== null && value !== undefined;
}
