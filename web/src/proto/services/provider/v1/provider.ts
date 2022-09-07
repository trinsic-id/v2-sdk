/* eslint-disable */
import {
  ConfirmationMethod,
  AccountDetails,
  AccountProfile,
  confirmationMethodFromJSON,
  confirmationMethodToJSON,
} from "../../account/v1/account";
import _m0 from "protobufjs/minimal";

/** Type of participant being invited to ecosystem */
export enum ParticipantType {
  /** participant_type_individual - Participant is an individual */
  participant_type_individual = 0,
  /** participant_type_organization - Participant is an organization */
  participant_type_organization = 1,
  UNRECOGNIZED = -1,
}

export function participantTypeFromJSON(object: any): ParticipantType {
  switch (object) {
    case 0:
    case "participant_type_individual":
      return ParticipantType.participant_type_individual;
    case 1:
    case "participant_type_organization":
      return ParticipantType.participant_type_organization;
    case -1:
    case "UNRECOGNIZED":
    default:
      return ParticipantType.UNRECOGNIZED;
  }
}

export function participantTypeToJSON(object: ParticipantType): string {
  switch (object) {
    case ParticipantType.participant_type_individual:
      return "participant_type_individual";
    case ParticipantType.participant_type_organization:
      return "participant_type_organization";
    case ParticipantType.UNRECOGNIZED:
    default:
      return "UNRECOGNIZED";
  }
}

/** Request to invite a participant to an ecosystem */
export interface InviteRequest {
  /** Type of participant being invited (individual/organization) */
  participant: ParticipantType;
  /** Description of invitation */
  description: string;
  /** Account details of invitee */
  details: AccountDetails | undefined;
}

export interface InviteRequest_DidCommInvitation {}

/** Response to `InviteRequest` */
export interface InviteResponse {
  /** ID of created invitation */
  invitationId: string;
  /** Invitation code -- must be passed back in `LoginRequest` */
  invitationCode: string;
}

/** Request details for the status of an invitation */
export interface InvitationStatusRequest {
  /** ID of invitation, received from `InviteResponse` */
  invitationId: string;
}

/** Response to `InvitationStatusRequest` */
export interface InvitationStatusResponse {
  /** Status of invitation */
  status: InvitationStatusResponse_Status;
  /** Human-readable string with details about invitation status */
  statusDetails: string;
}

export enum InvitationStatusResponse_Status {
  /** Error - Onboarding resulted in error */
  Error = 0,
  /** InvitationSent - The participant has been invited */
  InvitationSent = 1,
  /** Completed - The participant has been onboarded */
  Completed = 2,
  /** Expired - The invite has expired */
  Expired = 3,
  UNRECOGNIZED = -1,
}

export function invitationStatusResponse_StatusFromJSON(
  object: any
): InvitationStatusResponse_Status {
  switch (object) {
    case 0:
    case "Error":
      return InvitationStatusResponse_Status.Error;
    case 1:
    case "InvitationSent":
      return InvitationStatusResponse_Status.InvitationSent;
    case 2:
    case "Completed":
      return InvitationStatusResponse_Status.Completed;
    case 3:
    case "Expired":
      return InvitationStatusResponse_Status.Expired;
    case -1:
    case "UNRECOGNIZED":
    default:
      return InvitationStatusResponse_Status.UNRECOGNIZED;
  }
}

export function invitationStatusResponse_StatusToJSON(
  object: InvitationStatusResponse_Status
): string {
  switch (object) {
    case InvitationStatusResponse_Status.Error:
      return "Error";
    case InvitationStatusResponse_Status.InvitationSent:
      return "InvitationSent";
    case InvitationStatusResponse_Status.Completed:
      return "Completed";
    case InvitationStatusResponse_Status.Expired:
      return "Expired";
    case InvitationStatusResponse_Status.UNRECOGNIZED:
    default:
      return "UNRECOGNIZED";
  }
}

/** Details of an ecosystem */
export interface Ecosystem {
  /** URN of the ecosystem */
  id: string;
  /** Globally unique name for the ecosystem */
  name: string;
  /** Ecosystem description */
  description: string;
  /**
   * External URL associated with the organization or ecosystem entity
   *
   * @deprecated
   */
  uri: string;
  /** Configured webhooks, if any */
  webhooks: WebhookConfig[];
  /** Display details */
  display: EcosystemDisplay | undefined;
  /** Domain */
  domain: string;
}

/** Webhook configured on an ecosystem */
export interface WebhookConfig {
  /** UUID of the webhook */
  id: string;
  /** HTTPS URL to POST webhook calls to */
  destinationUrl: string;
  /** Events the webhook is subscribed to */
  events: string[];
  /** Last known status of webhook (whether or not Trinsic can successfully reach destination) */
  status: string;
}

/** A grant authorizing `actions` on a `resourceId` */
export interface Grant {
  /** the urn of the resource */
  resourceId: string;
  /** list of actions that are allowed */
  actions: string[];
  /** any child grants */
  childGrants: Grant[];
}

/** Request to create an ecosystem */
export interface CreateEcosystemRequest {
  /**
   * Globally unique name for the Ecosystem. This name will be
   * part of the ecosystem-specific URLs and namespaces.
   * Allowed characters are lowercase letters, numbers, underscore and hyphen.
   * If not passed, ecosystem name will be auto-generated.
   */
  name: string;
  /** Ecosystem description */
  description: string;
  /**
   * External URL associated with your organization or ecosystem entity
   *
   * @deprecated
   */
  uri: string;
  /** The account details of the owner of the ecosystem */
  details: AccountDetails | undefined;
  /** New domain URL */
  domain: string;
}

/** Response to `CreateEcosystemRequest` */
export interface CreateEcosystemResponse {
  /** Details of the created ecosystem */
  ecosystem: Ecosystem | undefined;
  /** Account profile for auth of the owner of the ecosystem */
  profile: AccountProfile | undefined;
  /** Indicates if confirmation of account is required. */
  confirmationMethod: ConfirmationMethod;
}

/** Request to update an ecosystem's metadata */
export interface UpdateEcosystemRequest {
  /** New description of the ecosystem */
  description: string;
  /**
   * New external URL associated with the organization or ecosystem entity
   *
   * @deprecated
   */
  uri: string;
  /** New domain URL */
  domain: string;
  /** New name */
  name: string;
  /** Display details */
  display: EcosystemDisplay | undefined;
}

export interface EcosystemDisplay {
  dark: EcosystemDisplayDetails | undefined;
  light: EcosystemDisplayDetails | undefined;
}

export interface EcosystemDisplayDetails {
  /**
   * string id = 1;
   * string name = 2;
   */
  logoUrl: string;
  color: string;
}

/** Response to `UpdateEcosystemRequest` */
export interface UpdateEcosystemResponse {
  /** Current ecosystem metadata, post-update */
  Ecosystem: Ecosystem | undefined;
}

/** Request to add a webhook to an ecosystem */
export interface AddWebhookRequest {
  /**
   * Destination to post webhook calls to.
   * Must be a reachable HTTPS URL.
   */
  destinationUrl: string;
  /**
   * Secret string used for HMAC-SHA256 signing of webhook payloads
   * to verify that a webhook comes from Trinsic
   */
  secret: string;
  /** Events to subscribe to. Default is "*" (all events) */
  events: string[];
}

/** Response to `AddWebhookRequest` */
export interface AddWebhookResponse {
  /** Ecosystem data with new webhook */
  ecosystem: Ecosystem | undefined;
}

/** Request to delete a webhook from an ecosystem */
export interface DeleteWebhookRequest {
  /** ID of webhook to delete */
  webhookId: string;
}

/** Response to `DeleteWebhookRequest` */
export interface DeleteWebhookResponse {
  /** Ecosystem data after removal of webhook */
  ecosystem: Ecosystem | undefined;
}

/** Request to fetch information about an ecosystem */
export interface EcosystemInfoRequest {}

/** Response to `InfoRequest` */
export interface EcosystemInfoResponse {
  /** Ecosystem corresponding to requested `ecosystem_id` */
  ecosystem: Ecosystem | undefined;
}

/** Request to generate an authentication token for the current account */
export interface GenerateTokenRequest {
  /** Description to identify this token */
  description: string;
}

/** Response to `GenerateTokenRequest` */
export interface GenerateTokenResponse {
  /** Account authentication profile that contains unprotected token */
  profile: AccountProfile | undefined;
}

/**
 * Request to fetch the Trinsic public key used
 * to verify authentication token validity
 */
export interface GetOberonKeyRequest {}

/** Response to `GetOberonKeyRequest` */
export interface GetOberonKeyResponse {
  /** Oberon Public Key as RAW base64-url encoded string */
  key: string;
}

/** Generates an events token bound to the provided ed25519 public key. */
export interface GetEventTokenRequest {
  /** Raw public key to generate event token for */
  pk: Uint8Array;
}

/**
 * Response message containing a token (JWT) that can be used
 * to connect directly to the message streaming architecture
 */
export interface GetEventTokenResponse {
  /** JWT bound to the public key provided in `GetEventTokenRequest` */
  token: string;
}

export interface RetrieveDomainVerificationRecordRequest {}

/** Response message containing a TXT record content for domain url verification */
export interface RetrieveDomainVerificationRecordResponse {
  /** TXT code to use for domain verification */
  verificationTxt: string;
}

export interface RefreshDomainVerificationStatusRequest {}

export interface RefreshDomainVerificationStatusResponse {
  /** Domain URL verified */
  domain: string;
  /** Specifies if the above `domain` was successfully verified */
  domainVerified: boolean;
}

/** Grant permissions to a resource or path in the ecosystem */
export interface GrantAuthorizationRequest {
  /**
   * Email address of account being granted permission.
   * Mutually exclusive with `walletId`.
   */
  email: string | undefined;
  /**
   * Wallet ID of account being granted permission.
   * Mutually exclusive with `email`.
   */
  walletId: string | undefined;
  /**
   * Resource string that account is receiving permissions for.
   * Resources are specified as a RESTful path: /{ecoId}/{resource type}/{resource id}. `ecoId` may be omitted.
   */
  resource: string;
  /** Action to authorize. Default is "*" (all) */
  action: string;
}

/** Response to `GrantAuthorizationRequest` */
export interface GrantAuthorizationResponse {}

/** Revoke permissions to a resource or path in the ecosystem */
export interface RevokeAuthorizationRequest {
  /**
   * Email address of account having permission revoked.
   * Mutually exclusive with `walletId`.
   */
  email: string | undefined;
  /**
   * Wallet ID of account having permission revoked.
   * Mutually exclusive with `email`.
   */
  walletId: string | undefined;
  /**
   * Resource string that account is losing permissions for.
   * Resources are specified as a RESTful path: /{ecoId}/{resource type}/{resource id}. `ecoId` may be omitted.
   */
  resource: string;
  /** Action to revoke. Default is "*" (all) */
  action: string;
}

/** Response to `RevokeAuthorizationRequest` */
export interface RevokeAuthorizationResponse {}

/**
 * Fetch list of grants that the current account has access to
 * in its ecosystem
 */
export interface GetAuthorizationsRequest {}

/** Response to `GetAuthorizationsRequest` */
export interface GetAuthorizationsResponse {
  /** Grants attached to account */
  grants: Grant[];
}

function createBaseInviteRequest(): InviteRequest {
  return { participant: 0, description: "", details: undefined };
}

export const InviteRequest = {
  encode(
    message: InviteRequest,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.participant !== 0) {
      writer.uint32(8).int32(message.participant);
    }
    if (message.description !== "") {
      writer.uint32(18).string(message.description);
    }
    if (message.details !== undefined) {
      AccountDetails.encode(message.details, writer.uint32(26).fork()).ldelim();
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): InviteRequest {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseInviteRequest();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.participant = reader.int32() as any;
          break;
        case 2:
          message.description = reader.string();
          break;
        case 3:
          message.details = AccountDetails.decode(reader, reader.uint32());
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): InviteRequest {
    return {
      participant: isSet(object.participant)
        ? participantTypeFromJSON(object.participant)
        : 0,
      description: isSet(object.description) ? String(object.description) : "",
      details: isSet(object.details)
        ? AccountDetails.fromJSON(object.details)
        : undefined,
    };
  },

  toJSON(message: InviteRequest): unknown {
    const obj: any = {};
    message.participant !== undefined &&
      (obj.participant = participantTypeToJSON(message.participant));
    message.description !== undefined &&
      (obj.description = message.description);
    message.details !== undefined &&
      (obj.details = message.details
        ? AccountDetails.toJSON(message.details)
        : undefined);
    return obj;
  },

  fromPartial(object: DeepPartial<InviteRequest>): InviteRequest {
    const message = createBaseInviteRequest();
    message.participant = object.participant ?? 0;
    message.description = object.description ?? "";
    message.details =
      object.details !== undefined && object.details !== null
        ? AccountDetails.fromPartial(object.details)
        : undefined;
    return message;
  },
};

function createBaseInviteRequest_DidCommInvitation(): InviteRequest_DidCommInvitation {
  return {};
}

export const InviteRequest_DidCommInvitation = {
  encode(
    _: InviteRequest_DidCommInvitation,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    return writer;
  },

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): InviteRequest_DidCommInvitation {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseInviteRequest_DidCommInvitation();
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

  fromJSON(_: any): InviteRequest_DidCommInvitation {
    return {};
  },

  toJSON(_: InviteRequest_DidCommInvitation): unknown {
    const obj: any = {};
    return obj;
  },

  fromPartial(
    _: DeepPartial<InviteRequest_DidCommInvitation>
  ): InviteRequest_DidCommInvitation {
    const message = createBaseInviteRequest_DidCommInvitation();
    return message;
  },
};

function createBaseInviteResponse(): InviteResponse {
  return { invitationId: "", invitationCode: "" };
}

export const InviteResponse = {
  encode(
    message: InviteResponse,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.invitationId !== "") {
      writer.uint32(82).string(message.invitationId);
    }
    if (message.invitationCode !== "") {
      writer.uint32(90).string(message.invitationCode);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): InviteResponse {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseInviteResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 10:
          message.invitationId = reader.string();
          break;
        case 11:
          message.invitationCode = reader.string();
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): InviteResponse {
    return {
      invitationId: isSet(object.invitationId)
        ? String(object.invitationId)
        : "",
      invitationCode: isSet(object.invitationCode)
        ? String(object.invitationCode)
        : "",
    };
  },

  toJSON(message: InviteResponse): unknown {
    const obj: any = {};
    message.invitationId !== undefined &&
      (obj.invitationId = message.invitationId);
    message.invitationCode !== undefined &&
      (obj.invitationCode = message.invitationCode);
    return obj;
  },

  fromPartial(object: DeepPartial<InviteResponse>): InviteResponse {
    const message = createBaseInviteResponse();
    message.invitationId = object.invitationId ?? "";
    message.invitationCode = object.invitationCode ?? "";
    return message;
  },
};

function createBaseInvitationStatusRequest(): InvitationStatusRequest {
  return { invitationId: "" };
}

export const InvitationStatusRequest = {
  encode(
    message: InvitationStatusRequest,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.invitationId !== "") {
      writer.uint32(10).string(message.invitationId);
    }
    return writer;
  },

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): InvitationStatusRequest {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseInvitationStatusRequest();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.invitationId = reader.string();
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): InvitationStatusRequest {
    return {
      invitationId: isSet(object.invitationId)
        ? String(object.invitationId)
        : "",
    };
  },

  toJSON(message: InvitationStatusRequest): unknown {
    const obj: any = {};
    message.invitationId !== undefined &&
      (obj.invitationId = message.invitationId);
    return obj;
  },

  fromPartial(
    object: DeepPartial<InvitationStatusRequest>
  ): InvitationStatusRequest {
    const message = createBaseInvitationStatusRequest();
    message.invitationId = object.invitationId ?? "";
    return message;
  },
};

function createBaseInvitationStatusResponse(): InvitationStatusResponse {
  return { status: 0, statusDetails: "" };
}

export const InvitationStatusResponse = {
  encode(
    message: InvitationStatusResponse,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.status !== 0) {
      writer.uint32(8).int32(message.status);
    }
    if (message.statusDetails !== "") {
      writer.uint32(18).string(message.statusDetails);
    }
    return writer;
  },

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): InvitationStatusResponse {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseInvitationStatusResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.status = reader.int32() as any;
          break;
        case 2:
          message.statusDetails = reader.string();
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): InvitationStatusResponse {
    return {
      status: isSet(object.status)
        ? invitationStatusResponse_StatusFromJSON(object.status)
        : 0,
      statusDetails: isSet(object.statusDetails)
        ? String(object.statusDetails)
        : "",
    };
  },

  toJSON(message: InvitationStatusResponse): unknown {
    const obj: any = {};
    message.status !== undefined &&
      (obj.status = invitationStatusResponse_StatusToJSON(message.status));
    message.statusDetails !== undefined &&
      (obj.statusDetails = message.statusDetails);
    return obj;
  },

  fromPartial(
    object: DeepPartial<InvitationStatusResponse>
  ): InvitationStatusResponse {
    const message = createBaseInvitationStatusResponse();
    message.status = object.status ?? 0;
    message.statusDetails = object.statusDetails ?? "";
    return message;
  },
};

function createBaseEcosystem(): Ecosystem {
  return {
    id: "",
    name: "",
    description: "",
    uri: "",
    webhooks: [],
    display: undefined,
    domain: "",
  };
}

export const Ecosystem = {
  encode(
    message: Ecosystem,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.id !== "") {
      writer.uint32(10).string(message.id);
    }
    if (message.name !== "") {
      writer.uint32(18).string(message.name);
    }
    if (message.description !== "") {
      writer.uint32(26).string(message.description);
    }
    if (message.uri !== "") {
      writer.uint32(34).string(message.uri);
    }
    for (const v of message.webhooks) {
      WebhookConfig.encode(v!, writer.uint32(42).fork()).ldelim();
    }
    if (message.display !== undefined) {
      EcosystemDisplay.encode(
        message.display,
        writer.uint32(50).fork()
      ).ldelim();
    }
    if (message.domain !== "") {
      writer.uint32(58).string(message.domain);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): Ecosystem {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseEcosystem();
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
          message.description = reader.string();
          break;
        case 4:
          message.uri = reader.string();
          break;
        case 5:
          message.webhooks.push(WebhookConfig.decode(reader, reader.uint32()));
          break;
        case 6:
          message.display = EcosystemDisplay.decode(reader, reader.uint32());
          break;
        case 7:
          message.domain = reader.string();
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): Ecosystem {
    return {
      id: isSet(object.id) ? String(object.id) : "",
      name: isSet(object.name) ? String(object.name) : "",
      description: isSet(object.description) ? String(object.description) : "",
      uri: isSet(object.uri) ? String(object.uri) : "",
      webhooks: Array.isArray(object?.webhooks)
        ? object.webhooks.map((e: any) => WebhookConfig.fromJSON(e))
        : [],
      display: isSet(object.display)
        ? EcosystemDisplay.fromJSON(object.display)
        : undefined,
      domain: isSet(object.domain) ? String(object.domain) : "",
    };
  },

  toJSON(message: Ecosystem): unknown {
    const obj: any = {};
    message.id !== undefined && (obj.id = message.id);
    message.name !== undefined && (obj.name = message.name);
    message.description !== undefined &&
      (obj.description = message.description);
    message.uri !== undefined && (obj.uri = message.uri);
    if (message.webhooks) {
      obj.webhooks = message.webhooks.map((e) =>
        e ? WebhookConfig.toJSON(e) : undefined
      );
    } else {
      obj.webhooks = [];
    }
    message.display !== undefined &&
      (obj.display = message.display
        ? EcosystemDisplay.toJSON(message.display)
        : undefined);
    message.domain !== undefined && (obj.domain = message.domain);
    return obj;
  },

  fromPartial(object: DeepPartial<Ecosystem>): Ecosystem {
    const message = createBaseEcosystem();
    message.id = object.id ?? "";
    message.name = object.name ?? "";
    message.description = object.description ?? "";
    message.uri = object.uri ?? "";
    message.webhooks =
      object.webhooks?.map((e) => WebhookConfig.fromPartial(e)) || [];
    message.display =
      object.display !== undefined && object.display !== null
        ? EcosystemDisplay.fromPartial(object.display)
        : undefined;
    message.domain = object.domain ?? "";
    return message;
  },
};

function createBaseWebhookConfig(): WebhookConfig {
  return { id: "", destinationUrl: "", events: [], status: "" };
}

export const WebhookConfig = {
  encode(
    message: WebhookConfig,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.id !== "") {
      writer.uint32(10).string(message.id);
    }
    if (message.destinationUrl !== "") {
      writer.uint32(18).string(message.destinationUrl);
    }
    for (const v of message.events) {
      writer.uint32(34).string(v!);
    }
    if (message.status !== "") {
      writer.uint32(42).string(message.status);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): WebhookConfig {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseWebhookConfig();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.id = reader.string();
          break;
        case 2:
          message.destinationUrl = reader.string();
          break;
        case 4:
          message.events.push(reader.string());
          break;
        case 5:
          message.status = reader.string();
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): WebhookConfig {
    return {
      id: isSet(object.id) ? String(object.id) : "",
      destinationUrl: isSet(object.destinationUrl)
        ? String(object.destinationUrl)
        : "",
      events: Array.isArray(object?.events)
        ? object.events.map((e: any) => String(e))
        : [],
      status: isSet(object.status) ? String(object.status) : "",
    };
  },

  toJSON(message: WebhookConfig): unknown {
    const obj: any = {};
    message.id !== undefined && (obj.id = message.id);
    message.destinationUrl !== undefined &&
      (obj.destinationUrl = message.destinationUrl);
    if (message.events) {
      obj.events = message.events.map((e) => e);
    } else {
      obj.events = [];
    }
    message.status !== undefined && (obj.status = message.status);
    return obj;
  },

  fromPartial(object: DeepPartial<WebhookConfig>): WebhookConfig {
    const message = createBaseWebhookConfig();
    message.id = object.id ?? "";
    message.destinationUrl = object.destinationUrl ?? "";
    message.events = object.events?.map((e) => e) || [];
    message.status = object.status ?? "";
    return message;
  },
};

function createBaseGrant(): Grant {
  return { resourceId: "", actions: [], childGrants: [] };
}

export const Grant = {
  encode(message: Grant, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.resourceId !== "") {
      writer.uint32(10).string(message.resourceId);
    }
    for (const v of message.actions) {
      writer.uint32(18).string(v!);
    }
    for (const v of message.childGrants) {
      Grant.encode(v!, writer.uint32(26).fork()).ldelim();
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): Grant {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseGrant();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.resourceId = reader.string();
          break;
        case 2:
          message.actions.push(reader.string());
          break;
        case 3:
          message.childGrants.push(Grant.decode(reader, reader.uint32()));
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): Grant {
    return {
      resourceId: isSet(object.resourceId) ? String(object.resourceId) : "",
      actions: Array.isArray(object?.actions)
        ? object.actions.map((e: any) => String(e))
        : [],
      childGrants: Array.isArray(object?.childGrants)
        ? object.childGrants.map((e: any) => Grant.fromJSON(e))
        : [],
    };
  },

  toJSON(message: Grant): unknown {
    const obj: any = {};
    message.resourceId !== undefined && (obj.resourceId = message.resourceId);
    if (message.actions) {
      obj.actions = message.actions.map((e) => e);
    } else {
      obj.actions = [];
    }
    if (message.childGrants) {
      obj.childGrants = message.childGrants.map((e) =>
        e ? Grant.toJSON(e) : undefined
      );
    } else {
      obj.childGrants = [];
    }
    return obj;
  },

  fromPartial(object: DeepPartial<Grant>): Grant {
    const message = createBaseGrant();
    message.resourceId = object.resourceId ?? "";
    message.actions = object.actions?.map((e) => e) || [];
    message.childGrants =
      object.childGrants?.map((e) => Grant.fromPartial(e)) || [];
    return message;
  },
};

function createBaseCreateEcosystemRequest(): CreateEcosystemRequest {
  return { name: "", description: "", uri: "", details: undefined, domain: "" };
}

export const CreateEcosystemRequest = {
  encode(
    message: CreateEcosystemRequest,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.name !== "") {
      writer.uint32(10).string(message.name);
    }
    if (message.description !== "") {
      writer.uint32(18).string(message.description);
    }
    if (message.uri !== "") {
      writer.uint32(26).string(message.uri);
    }
    if (message.details !== undefined) {
      AccountDetails.encode(message.details, writer.uint32(34).fork()).ldelim();
    }
    if (message.domain !== "") {
      writer.uint32(42).string(message.domain);
    }
    return writer;
  },

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): CreateEcosystemRequest {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseCreateEcosystemRequest();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.name = reader.string();
          break;
        case 2:
          message.description = reader.string();
          break;
        case 3:
          message.uri = reader.string();
          break;
        case 4:
          message.details = AccountDetails.decode(reader, reader.uint32());
          break;
        case 5:
          message.domain = reader.string();
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): CreateEcosystemRequest {
    return {
      name: isSet(object.name) ? String(object.name) : "",
      description: isSet(object.description) ? String(object.description) : "",
      uri: isSet(object.uri) ? String(object.uri) : "",
      details: isSet(object.details)
        ? AccountDetails.fromJSON(object.details)
        : undefined,
      domain: isSet(object.domain) ? String(object.domain) : "",
    };
  },

  toJSON(message: CreateEcosystemRequest): unknown {
    const obj: any = {};
    message.name !== undefined && (obj.name = message.name);
    message.description !== undefined &&
      (obj.description = message.description);
    message.uri !== undefined && (obj.uri = message.uri);
    message.details !== undefined &&
      (obj.details = message.details
        ? AccountDetails.toJSON(message.details)
        : undefined);
    message.domain !== undefined && (obj.domain = message.domain);
    return obj;
  },

  fromPartial(
    object: DeepPartial<CreateEcosystemRequest>
  ): CreateEcosystemRequest {
    const message = createBaseCreateEcosystemRequest();
    message.name = object.name ?? "";
    message.description = object.description ?? "";
    message.uri = object.uri ?? "";
    message.details =
      object.details !== undefined && object.details !== null
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
  encode(
    message: CreateEcosystemResponse,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.ecosystem !== undefined) {
      Ecosystem.encode(message.ecosystem, writer.uint32(10).fork()).ldelim();
    }
    if (message.profile !== undefined) {
      AccountProfile.encode(message.profile, writer.uint32(18).fork()).ldelim();
    }
    if (message.confirmationMethod !== 0) {
      writer.uint32(24).int32(message.confirmationMethod);
    }
    return writer;
  },

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): CreateEcosystemResponse {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseCreateEcosystemResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.ecosystem = Ecosystem.decode(reader, reader.uint32());
          break;
        case 2:
          message.profile = AccountProfile.decode(reader, reader.uint32());
          break;
        case 3:
          message.confirmationMethod = reader.int32() as any;
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): CreateEcosystemResponse {
    return {
      ecosystem: isSet(object.ecosystem)
        ? Ecosystem.fromJSON(object.ecosystem)
        : undefined,
      profile: isSet(object.profile)
        ? AccountProfile.fromJSON(object.profile)
        : undefined,
      confirmationMethod: isSet(object.confirmationMethod)
        ? confirmationMethodFromJSON(object.confirmationMethod)
        : 0,
    };
  },

  toJSON(message: CreateEcosystemResponse): unknown {
    const obj: any = {};
    message.ecosystem !== undefined &&
      (obj.ecosystem = message.ecosystem
        ? Ecosystem.toJSON(message.ecosystem)
        : undefined);
    message.profile !== undefined &&
      (obj.profile = message.profile
        ? AccountProfile.toJSON(message.profile)
        : undefined);
    message.confirmationMethod !== undefined &&
      (obj.confirmationMethod = confirmationMethodToJSON(
        message.confirmationMethod
      ));
    return obj;
  },

  fromPartial(
    object: DeepPartial<CreateEcosystemResponse>
  ): CreateEcosystemResponse {
    const message = createBaseCreateEcosystemResponse();
    message.ecosystem =
      object.ecosystem !== undefined && object.ecosystem !== null
        ? Ecosystem.fromPartial(object.ecosystem)
        : undefined;
    message.profile =
      object.profile !== undefined && object.profile !== null
        ? AccountProfile.fromPartial(object.profile)
        : undefined;
    message.confirmationMethod = object.confirmationMethod ?? 0;
    return message;
  },
};

function createBaseUpdateEcosystemRequest(): UpdateEcosystemRequest {
  return { description: "", uri: "", domain: "", name: "", display: undefined };
}

export const UpdateEcosystemRequest = {
  encode(
    message: UpdateEcosystemRequest,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.description !== "") {
      writer.uint32(10).string(message.description);
    }
    if (message.uri !== "") {
      writer.uint32(18).string(message.uri);
    }
    if (message.domain !== "") {
      writer.uint32(26).string(message.domain);
    }
    if (message.name !== "") {
      writer.uint32(34).string(message.name);
    }
    if (message.display !== undefined) {
      EcosystemDisplay.encode(
        message.display,
        writer.uint32(42).fork()
      ).ldelim();
    }
    return writer;
  },

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): UpdateEcosystemRequest {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseUpdateEcosystemRequest();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.description = reader.string();
          break;
        case 2:
          message.uri = reader.string();
          break;
        case 3:
          message.domain = reader.string();
          break;
        case 4:
          message.name = reader.string();
          break;
        case 5:
          message.display = EcosystemDisplay.decode(reader, reader.uint32());
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): UpdateEcosystemRequest {
    return {
      description: isSet(object.description) ? String(object.description) : "",
      uri: isSet(object.uri) ? String(object.uri) : "",
      domain: isSet(object.domain) ? String(object.domain) : "",
      name: isSet(object.name) ? String(object.name) : "",
      display: isSet(object.display)
        ? EcosystemDisplay.fromJSON(object.display)
        : undefined,
    };
  },

  toJSON(message: UpdateEcosystemRequest): unknown {
    const obj: any = {};
    message.description !== undefined &&
      (obj.description = message.description);
    message.uri !== undefined && (obj.uri = message.uri);
    message.domain !== undefined && (obj.domain = message.domain);
    message.name !== undefined && (obj.name = message.name);
    message.display !== undefined &&
      (obj.display = message.display
        ? EcosystemDisplay.toJSON(message.display)
        : undefined);
    return obj;
  },

  fromPartial(
    object: DeepPartial<UpdateEcosystemRequest>
  ): UpdateEcosystemRequest {
    const message = createBaseUpdateEcosystemRequest();
    message.description = object.description ?? "";
    message.uri = object.uri ?? "";
    message.domain = object.domain ?? "";
    message.name = object.name ?? "";
    message.display =
      object.display !== undefined && object.display !== null
        ? EcosystemDisplay.fromPartial(object.display)
        : undefined;
    return message;
  },
};

function createBaseEcosystemDisplay(): EcosystemDisplay {
  return { dark: undefined, light: undefined };
}

export const EcosystemDisplay = {
  encode(
    message: EcosystemDisplay,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.dark !== undefined) {
      EcosystemDisplayDetails.encode(
        message.dark,
        writer.uint32(10).fork()
      ).ldelim();
    }
    if (message.light !== undefined) {
      EcosystemDisplayDetails.encode(
        message.light,
        writer.uint32(18).fork()
      ).ldelim();
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): EcosystemDisplay {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseEcosystemDisplay();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.dark = EcosystemDisplayDetails.decode(
            reader,
            reader.uint32()
          );
          break;
        case 2:
          message.light = EcosystemDisplayDetails.decode(
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

  fromJSON(object: any): EcosystemDisplay {
    return {
      dark: isSet(object.dark)
        ? EcosystemDisplayDetails.fromJSON(object.dark)
        : undefined,
      light: isSet(object.light)
        ? EcosystemDisplayDetails.fromJSON(object.light)
        : undefined,
    };
  },

  toJSON(message: EcosystemDisplay): unknown {
    const obj: any = {};
    message.dark !== undefined &&
      (obj.dark = message.dark
        ? EcosystemDisplayDetails.toJSON(message.dark)
        : undefined);
    message.light !== undefined &&
      (obj.light = message.light
        ? EcosystemDisplayDetails.toJSON(message.light)
        : undefined);
    return obj;
  },

  fromPartial(object: DeepPartial<EcosystemDisplay>): EcosystemDisplay {
    const message = createBaseEcosystemDisplay();
    message.dark =
      object.dark !== undefined && object.dark !== null
        ? EcosystemDisplayDetails.fromPartial(object.dark)
        : undefined;
    message.light =
      object.light !== undefined && object.light !== null
        ? EcosystemDisplayDetails.fromPartial(object.light)
        : undefined;
    return message;
  },
};

function createBaseEcosystemDisplayDetails(): EcosystemDisplayDetails {
  return { logoUrl: "", color: "" };
}

export const EcosystemDisplayDetails = {
  encode(
    message: EcosystemDisplayDetails,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.logoUrl !== "") {
      writer.uint32(26).string(message.logoUrl);
    }
    if (message.color !== "") {
      writer.uint32(34).string(message.color);
    }
    return writer;
  },

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): EcosystemDisplayDetails {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseEcosystemDisplayDetails();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 3:
          message.logoUrl = reader.string();
          break;
        case 4:
          message.color = reader.string();
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): EcosystemDisplayDetails {
    return {
      logoUrl: isSet(object.logoUrl) ? String(object.logoUrl) : "",
      color: isSet(object.color) ? String(object.color) : "",
    };
  },

  toJSON(message: EcosystemDisplayDetails): unknown {
    const obj: any = {};
    message.logoUrl !== undefined && (obj.logoUrl = message.logoUrl);
    message.color !== undefined && (obj.color = message.color);
    return obj;
  },

  fromPartial(
    object: DeepPartial<EcosystemDisplayDetails>
  ): EcosystemDisplayDetails {
    const message = createBaseEcosystemDisplayDetails();
    message.logoUrl = object.logoUrl ?? "";
    message.color = object.color ?? "";
    return message;
  },
};

function createBaseUpdateEcosystemResponse(): UpdateEcosystemResponse {
  return { Ecosystem: undefined };
}

export const UpdateEcosystemResponse = {
  encode(
    message: UpdateEcosystemResponse,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.Ecosystem !== undefined) {
      Ecosystem.encode(message.Ecosystem, writer.uint32(10).fork()).ldelim();
    }
    return writer;
  },

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): UpdateEcosystemResponse {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseUpdateEcosystemResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.Ecosystem = Ecosystem.decode(reader, reader.uint32());
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): UpdateEcosystemResponse {
    return {
      Ecosystem: isSet(object.Ecosystem)
        ? Ecosystem.fromJSON(object.Ecosystem)
        : undefined,
    };
  },

  toJSON(message: UpdateEcosystemResponse): unknown {
    const obj: any = {};
    message.Ecosystem !== undefined &&
      (obj.Ecosystem = message.Ecosystem
        ? Ecosystem.toJSON(message.Ecosystem)
        : undefined);
    return obj;
  },

  fromPartial(
    object: DeepPartial<UpdateEcosystemResponse>
  ): UpdateEcosystemResponse {
    const message = createBaseUpdateEcosystemResponse();
    message.Ecosystem =
      object.Ecosystem !== undefined && object.Ecosystem !== null
        ? Ecosystem.fromPartial(object.Ecosystem)
        : undefined;
    return message;
  },
};

function createBaseAddWebhookRequest(): AddWebhookRequest {
  return { destinationUrl: "", secret: "", events: [] };
}

export const AddWebhookRequest = {
  encode(
    message: AddWebhookRequest,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.destinationUrl !== "") {
      writer.uint32(10).string(message.destinationUrl);
    }
    if (message.secret !== "") {
      writer.uint32(18).string(message.secret);
    }
    for (const v of message.events) {
      writer.uint32(26).string(v!);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): AddWebhookRequest {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseAddWebhookRequest();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.destinationUrl = reader.string();
          break;
        case 2:
          message.secret = reader.string();
          break;
        case 3:
          message.events.push(reader.string());
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): AddWebhookRequest {
    return {
      destinationUrl: isSet(object.destinationUrl)
        ? String(object.destinationUrl)
        : "",
      secret: isSet(object.secret) ? String(object.secret) : "",
      events: Array.isArray(object?.events)
        ? object.events.map((e: any) => String(e))
        : [],
    };
  },

  toJSON(message: AddWebhookRequest): unknown {
    const obj: any = {};
    message.destinationUrl !== undefined &&
      (obj.destinationUrl = message.destinationUrl);
    message.secret !== undefined && (obj.secret = message.secret);
    if (message.events) {
      obj.events = message.events.map((e) => e);
    } else {
      obj.events = [];
    }
    return obj;
  },

  fromPartial(object: DeepPartial<AddWebhookRequest>): AddWebhookRequest {
    const message = createBaseAddWebhookRequest();
    message.destinationUrl = object.destinationUrl ?? "";
    message.secret = object.secret ?? "";
    message.events = object.events?.map((e) => e) || [];
    return message;
  },
};

function createBaseAddWebhookResponse(): AddWebhookResponse {
  return { ecosystem: undefined };
}

export const AddWebhookResponse = {
  encode(
    message: AddWebhookResponse,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.ecosystem !== undefined) {
      Ecosystem.encode(message.ecosystem, writer.uint32(10).fork()).ldelim();
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): AddWebhookResponse {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseAddWebhookResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.ecosystem = Ecosystem.decode(reader, reader.uint32());
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): AddWebhookResponse {
    return {
      ecosystem: isSet(object.ecosystem)
        ? Ecosystem.fromJSON(object.ecosystem)
        : undefined,
    };
  },

  toJSON(message: AddWebhookResponse): unknown {
    const obj: any = {};
    message.ecosystem !== undefined &&
      (obj.ecosystem = message.ecosystem
        ? Ecosystem.toJSON(message.ecosystem)
        : undefined);
    return obj;
  },

  fromPartial(object: DeepPartial<AddWebhookResponse>): AddWebhookResponse {
    const message = createBaseAddWebhookResponse();
    message.ecosystem =
      object.ecosystem !== undefined && object.ecosystem !== null
        ? Ecosystem.fromPartial(object.ecosystem)
        : undefined;
    return message;
  },
};

function createBaseDeleteWebhookRequest(): DeleteWebhookRequest {
  return { webhookId: "" };
}

export const DeleteWebhookRequest = {
  encode(
    message: DeleteWebhookRequest,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.webhookId !== "") {
      writer.uint32(10).string(message.webhookId);
    }
    return writer;
  },

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): DeleteWebhookRequest {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseDeleteWebhookRequest();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.webhookId = reader.string();
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): DeleteWebhookRequest {
    return {
      webhookId: isSet(object.webhookId) ? String(object.webhookId) : "",
    };
  },

  toJSON(message: DeleteWebhookRequest): unknown {
    const obj: any = {};
    message.webhookId !== undefined && (obj.webhookId = message.webhookId);
    return obj;
  },

  fromPartial(object: DeepPartial<DeleteWebhookRequest>): DeleteWebhookRequest {
    const message = createBaseDeleteWebhookRequest();
    message.webhookId = object.webhookId ?? "";
    return message;
  },
};

function createBaseDeleteWebhookResponse(): DeleteWebhookResponse {
  return { ecosystem: undefined };
}

export const DeleteWebhookResponse = {
  encode(
    message: DeleteWebhookResponse,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.ecosystem !== undefined) {
      Ecosystem.encode(message.ecosystem, writer.uint32(10).fork()).ldelim();
    }
    return writer;
  },

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): DeleteWebhookResponse {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseDeleteWebhookResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.ecosystem = Ecosystem.decode(reader, reader.uint32());
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): DeleteWebhookResponse {
    return {
      ecosystem: isSet(object.ecosystem)
        ? Ecosystem.fromJSON(object.ecosystem)
        : undefined,
    };
  },

  toJSON(message: DeleteWebhookResponse): unknown {
    const obj: any = {};
    message.ecosystem !== undefined &&
      (obj.ecosystem = message.ecosystem
        ? Ecosystem.toJSON(message.ecosystem)
        : undefined);
    return obj;
  },

  fromPartial(
    object: DeepPartial<DeleteWebhookResponse>
  ): DeleteWebhookResponse {
    const message = createBaseDeleteWebhookResponse();
    message.ecosystem =
      object.ecosystem !== undefined && object.ecosystem !== null
        ? Ecosystem.fromPartial(object.ecosystem)
        : undefined;
    return message;
  },
};

function createBaseEcosystemInfoRequest(): EcosystemInfoRequest {
  return {};
}

export const EcosystemInfoRequest = {
  encode(
    _: EcosystemInfoRequest,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    return writer;
  },

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): EcosystemInfoRequest {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseEcosystemInfoRequest();
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

  fromJSON(_: any): EcosystemInfoRequest {
    return {};
  },

  toJSON(_: EcosystemInfoRequest): unknown {
    const obj: any = {};
    return obj;
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
  encode(
    message: EcosystemInfoResponse,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.ecosystem !== undefined) {
      Ecosystem.encode(message.ecosystem, writer.uint32(10).fork()).ldelim();
    }
    return writer;
  },

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): EcosystemInfoResponse {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseEcosystemInfoResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.ecosystem = Ecosystem.decode(reader, reader.uint32());
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): EcosystemInfoResponse {
    return {
      ecosystem: isSet(object.ecosystem)
        ? Ecosystem.fromJSON(object.ecosystem)
        : undefined,
    };
  },

  toJSON(message: EcosystemInfoResponse): unknown {
    const obj: any = {};
    message.ecosystem !== undefined &&
      (obj.ecosystem = message.ecosystem
        ? Ecosystem.toJSON(message.ecosystem)
        : undefined);
    return obj;
  },

  fromPartial(
    object: DeepPartial<EcosystemInfoResponse>
  ): EcosystemInfoResponse {
    const message = createBaseEcosystemInfoResponse();
    message.ecosystem =
      object.ecosystem !== undefined && object.ecosystem !== null
        ? Ecosystem.fromPartial(object.ecosystem)
        : undefined;
    return message;
  },
};

function createBaseGenerateTokenRequest(): GenerateTokenRequest {
  return { description: "" };
}

export const GenerateTokenRequest = {
  encode(
    message: GenerateTokenRequest,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.description !== "") {
      writer.uint32(10).string(message.description);
    }
    return writer;
  },

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): GenerateTokenRequest {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseGenerateTokenRequest();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.description = reader.string();
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): GenerateTokenRequest {
    return {
      description: isSet(object.description) ? String(object.description) : "",
    };
  },

  toJSON(message: GenerateTokenRequest): unknown {
    const obj: any = {};
    message.description !== undefined &&
      (obj.description = message.description);
    return obj;
  },

  fromPartial(object: DeepPartial<GenerateTokenRequest>): GenerateTokenRequest {
    const message = createBaseGenerateTokenRequest();
    message.description = object.description ?? "";
    return message;
  },
};

function createBaseGenerateTokenResponse(): GenerateTokenResponse {
  return { profile: undefined };
}

export const GenerateTokenResponse = {
  encode(
    message: GenerateTokenResponse,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.profile !== undefined) {
      AccountProfile.encode(message.profile, writer.uint32(10).fork()).ldelim();
    }
    return writer;
  },

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): GenerateTokenResponse {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseGenerateTokenResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.profile = AccountProfile.decode(reader, reader.uint32());
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): GenerateTokenResponse {
    return {
      profile: isSet(object.profile)
        ? AccountProfile.fromJSON(object.profile)
        : undefined,
    };
  },

  toJSON(message: GenerateTokenResponse): unknown {
    const obj: any = {};
    message.profile !== undefined &&
      (obj.profile = message.profile
        ? AccountProfile.toJSON(message.profile)
        : undefined);
    return obj;
  },

  fromPartial(
    object: DeepPartial<GenerateTokenResponse>
  ): GenerateTokenResponse {
    const message = createBaseGenerateTokenResponse();
    message.profile =
      object.profile !== undefined && object.profile !== null
        ? AccountProfile.fromPartial(object.profile)
        : undefined;
    return message;
  },
};

function createBaseGetOberonKeyRequest(): GetOberonKeyRequest {
  return {};
}

export const GetOberonKeyRequest = {
  encode(
    _: GetOberonKeyRequest,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): GetOberonKeyRequest {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseGetOberonKeyRequest();
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

  fromJSON(_: any): GetOberonKeyRequest {
    return {};
  },

  toJSON(_: GetOberonKeyRequest): unknown {
    const obj: any = {};
    return obj;
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
  encode(
    message: GetOberonKeyResponse,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.key !== "") {
      writer.uint32(10).string(message.key);
    }
    return writer;
  },

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): GetOberonKeyResponse {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseGetOberonKeyResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.key = reader.string();
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): GetOberonKeyResponse {
    return {
      key: isSet(object.key) ? String(object.key) : "",
    };
  },

  toJSON(message: GetOberonKeyResponse): unknown {
    const obj: any = {};
    message.key !== undefined && (obj.key = message.key);
    return obj;
  },

  fromPartial(object: DeepPartial<GetOberonKeyResponse>): GetOberonKeyResponse {
    const message = createBaseGetOberonKeyResponse();
    message.key = object.key ?? "";
    return message;
  },
};

function createBaseGetEventTokenRequest(): GetEventTokenRequest {
  return { pk: new Uint8Array() };
}

export const GetEventTokenRequest = {
  encode(
    message: GetEventTokenRequest,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.pk.length !== 0) {
      writer.uint32(10).bytes(message.pk);
    }
    return writer;
  },

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): GetEventTokenRequest {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseGetEventTokenRequest();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.pk = reader.bytes();
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): GetEventTokenRequest {
    return {
      pk: isSet(object.pk) ? bytesFromBase64(object.pk) : new Uint8Array(),
    };
  },

  toJSON(message: GetEventTokenRequest): unknown {
    const obj: any = {};
    message.pk !== undefined &&
      (obj.pk = base64FromBytes(
        message.pk !== undefined ? message.pk : new Uint8Array()
      ));
    return obj;
  },

  fromPartial(object: DeepPartial<GetEventTokenRequest>): GetEventTokenRequest {
    const message = createBaseGetEventTokenRequest();
    message.pk = object.pk ?? new Uint8Array();
    return message;
  },
};

function createBaseGetEventTokenResponse(): GetEventTokenResponse {
  return { token: "" };
}

export const GetEventTokenResponse = {
  encode(
    message: GetEventTokenResponse,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.token !== "") {
      writer.uint32(10).string(message.token);
    }
    return writer;
  },

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): GetEventTokenResponse {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseGetEventTokenResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.token = reader.string();
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): GetEventTokenResponse {
    return {
      token: isSet(object.token) ? String(object.token) : "",
    };
  },

  toJSON(message: GetEventTokenResponse): unknown {
    const obj: any = {};
    message.token !== undefined && (obj.token = message.token);
    return obj;
  },

  fromPartial(
    object: DeepPartial<GetEventTokenResponse>
  ): GetEventTokenResponse {
    const message = createBaseGetEventTokenResponse();
    message.token = object.token ?? "";
    return message;
  },
};

function createBaseRetrieveDomainVerificationRecordRequest(): RetrieveDomainVerificationRecordRequest {
  return {};
}

export const RetrieveDomainVerificationRecordRequest = {
  encode(
    _: RetrieveDomainVerificationRecordRequest,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    return writer;
  },

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): RetrieveDomainVerificationRecordRequest {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseRetrieveDomainVerificationRecordRequest();
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

  fromJSON(_: any): RetrieveDomainVerificationRecordRequest {
    return {};
  },

  toJSON(_: RetrieveDomainVerificationRecordRequest): unknown {
    const obj: any = {};
    return obj;
  },

  fromPartial(
    _: DeepPartial<RetrieveDomainVerificationRecordRequest>
  ): RetrieveDomainVerificationRecordRequest {
    const message = createBaseRetrieveDomainVerificationRecordRequest();
    return message;
  },
};

function createBaseRetrieveDomainVerificationRecordResponse(): RetrieveDomainVerificationRecordResponse {
  return { verificationTxt: "" };
}

export const RetrieveDomainVerificationRecordResponse = {
  encode(
    message: RetrieveDomainVerificationRecordResponse,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.verificationTxt !== "") {
      writer.uint32(10).string(message.verificationTxt);
    }
    return writer;
  },

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): RetrieveDomainVerificationRecordResponse {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseRetrieveDomainVerificationRecordResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.verificationTxt = reader.string();
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): RetrieveDomainVerificationRecordResponse {
    return {
      verificationTxt: isSet(object.verificationTxt)
        ? String(object.verificationTxt)
        : "",
    };
  },

  toJSON(message: RetrieveDomainVerificationRecordResponse): unknown {
    const obj: any = {};
    message.verificationTxt !== undefined &&
      (obj.verificationTxt = message.verificationTxt);
    return obj;
  },

  fromPartial(
    object: DeepPartial<RetrieveDomainVerificationRecordResponse>
  ): RetrieveDomainVerificationRecordResponse {
    const message = createBaseRetrieveDomainVerificationRecordResponse();
    message.verificationTxt = object.verificationTxt ?? "";
    return message;
  },
};

function createBaseRefreshDomainVerificationStatusRequest(): RefreshDomainVerificationStatusRequest {
  return {};
}

export const RefreshDomainVerificationStatusRequest = {
  encode(
    _: RefreshDomainVerificationStatusRequest,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    return writer;
  },

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): RefreshDomainVerificationStatusRequest {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseRefreshDomainVerificationStatusRequest();
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

  fromJSON(_: any): RefreshDomainVerificationStatusRequest {
    return {};
  },

  toJSON(_: RefreshDomainVerificationStatusRequest): unknown {
    const obj: any = {};
    return obj;
  },

  fromPartial(
    _: DeepPartial<RefreshDomainVerificationStatusRequest>
  ): RefreshDomainVerificationStatusRequest {
    const message = createBaseRefreshDomainVerificationStatusRequest();
    return message;
  },
};

function createBaseRefreshDomainVerificationStatusResponse(): RefreshDomainVerificationStatusResponse {
  return { domain: "", domainVerified: false };
}

export const RefreshDomainVerificationStatusResponse = {
  encode(
    message: RefreshDomainVerificationStatusResponse,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.domain !== "") {
      writer.uint32(10).string(message.domain);
    }
    if (message.domainVerified === true) {
      writer.uint32(16).bool(message.domainVerified);
    }
    return writer;
  },

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): RefreshDomainVerificationStatusResponse {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseRefreshDomainVerificationStatusResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.domain = reader.string();
          break;
        case 2:
          message.domainVerified = reader.bool();
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): RefreshDomainVerificationStatusResponse {
    return {
      domain: isSet(object.domain) ? String(object.domain) : "",
      domainVerified: isSet(object.domainVerified)
        ? Boolean(object.domainVerified)
        : false,
    };
  },

  toJSON(message: RefreshDomainVerificationStatusResponse): unknown {
    const obj: any = {};
    message.domain !== undefined && (obj.domain = message.domain);
    message.domainVerified !== undefined &&
      (obj.domainVerified = message.domainVerified);
    return obj;
  },

  fromPartial(
    object: DeepPartial<RefreshDomainVerificationStatusResponse>
  ): RefreshDomainVerificationStatusResponse {
    const message = createBaseRefreshDomainVerificationStatusResponse();
    message.domain = object.domain ?? "";
    message.domainVerified = object.domainVerified ?? false;
    return message;
  },
};

function createBaseGrantAuthorizationRequest(): GrantAuthorizationRequest {
  return { email: undefined, walletId: undefined, resource: "", action: "" };
}

export const GrantAuthorizationRequest = {
  encode(
    message: GrantAuthorizationRequest,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.email !== undefined) {
      writer.uint32(10).string(message.email);
    }
    if (message.walletId !== undefined) {
      writer.uint32(18).string(message.walletId);
    }
    if (message.resource !== "") {
      writer.uint32(26).string(message.resource);
    }
    if (message.action !== "") {
      writer.uint32(34).string(message.action);
    }
    return writer;
  },

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): GrantAuthorizationRequest {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseGrantAuthorizationRequest();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.email = reader.string();
          break;
        case 2:
          message.walletId = reader.string();
          break;
        case 3:
          message.resource = reader.string();
          break;
        case 4:
          message.action = reader.string();
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): GrantAuthorizationRequest {
    return {
      email: isSet(object.email) ? String(object.email) : undefined,
      walletId: isSet(object.walletId) ? String(object.walletId) : undefined,
      resource: isSet(object.resource) ? String(object.resource) : "",
      action: isSet(object.action) ? String(object.action) : "",
    };
  },

  toJSON(message: GrantAuthorizationRequest): unknown {
    const obj: any = {};
    message.email !== undefined && (obj.email = message.email);
    message.walletId !== undefined && (obj.walletId = message.walletId);
    message.resource !== undefined && (obj.resource = message.resource);
    message.action !== undefined && (obj.action = message.action);
    return obj;
  },

  fromPartial(
    object: DeepPartial<GrantAuthorizationRequest>
  ): GrantAuthorizationRequest {
    const message = createBaseGrantAuthorizationRequest();
    message.email = object.email ?? undefined;
    message.walletId = object.walletId ?? undefined;
    message.resource = object.resource ?? "";
    message.action = object.action ?? "";
    return message;
  },
};

function createBaseGrantAuthorizationResponse(): GrantAuthorizationResponse {
  return {};
}

export const GrantAuthorizationResponse = {
  encode(
    _: GrantAuthorizationResponse,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    return writer;
  },

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): GrantAuthorizationResponse {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseGrantAuthorizationResponse();
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

  fromJSON(_: any): GrantAuthorizationResponse {
    return {};
  },

  toJSON(_: GrantAuthorizationResponse): unknown {
    const obj: any = {};
    return obj;
  },

  fromPartial(
    _: DeepPartial<GrantAuthorizationResponse>
  ): GrantAuthorizationResponse {
    const message = createBaseGrantAuthorizationResponse();
    return message;
  },
};

function createBaseRevokeAuthorizationRequest(): RevokeAuthorizationRequest {
  return { email: undefined, walletId: undefined, resource: "", action: "" };
}

export const RevokeAuthorizationRequest = {
  encode(
    message: RevokeAuthorizationRequest,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.email !== undefined) {
      writer.uint32(10).string(message.email);
    }
    if (message.walletId !== undefined) {
      writer.uint32(18).string(message.walletId);
    }
    if (message.resource !== "") {
      writer.uint32(26).string(message.resource);
    }
    if (message.action !== "") {
      writer.uint32(34).string(message.action);
    }
    return writer;
  },

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): RevokeAuthorizationRequest {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseRevokeAuthorizationRequest();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.email = reader.string();
          break;
        case 2:
          message.walletId = reader.string();
          break;
        case 3:
          message.resource = reader.string();
          break;
        case 4:
          message.action = reader.string();
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): RevokeAuthorizationRequest {
    return {
      email: isSet(object.email) ? String(object.email) : undefined,
      walletId: isSet(object.walletId) ? String(object.walletId) : undefined,
      resource: isSet(object.resource) ? String(object.resource) : "",
      action: isSet(object.action) ? String(object.action) : "",
    };
  },

  toJSON(message: RevokeAuthorizationRequest): unknown {
    const obj: any = {};
    message.email !== undefined && (obj.email = message.email);
    message.walletId !== undefined && (obj.walletId = message.walletId);
    message.resource !== undefined && (obj.resource = message.resource);
    message.action !== undefined && (obj.action = message.action);
    return obj;
  },

  fromPartial(
    object: DeepPartial<RevokeAuthorizationRequest>
  ): RevokeAuthorizationRequest {
    const message = createBaseRevokeAuthorizationRequest();
    message.email = object.email ?? undefined;
    message.walletId = object.walletId ?? undefined;
    message.resource = object.resource ?? "";
    message.action = object.action ?? "";
    return message;
  },
};

function createBaseRevokeAuthorizationResponse(): RevokeAuthorizationResponse {
  return {};
}

export const RevokeAuthorizationResponse = {
  encode(
    _: RevokeAuthorizationResponse,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    return writer;
  },

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): RevokeAuthorizationResponse {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseRevokeAuthorizationResponse();
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

  fromJSON(_: any): RevokeAuthorizationResponse {
    return {};
  },

  toJSON(_: RevokeAuthorizationResponse): unknown {
    const obj: any = {};
    return obj;
  },

  fromPartial(
    _: DeepPartial<RevokeAuthorizationResponse>
  ): RevokeAuthorizationResponse {
    const message = createBaseRevokeAuthorizationResponse();
    return message;
  },
};

function createBaseGetAuthorizationsRequest(): GetAuthorizationsRequest {
  return {};
}

export const GetAuthorizationsRequest = {
  encode(
    _: GetAuthorizationsRequest,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    return writer;
  },

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): GetAuthorizationsRequest {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseGetAuthorizationsRequest();
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

  fromJSON(_: any): GetAuthorizationsRequest {
    return {};
  },

  toJSON(_: GetAuthorizationsRequest): unknown {
    const obj: any = {};
    return obj;
  },

  fromPartial(
    _: DeepPartial<GetAuthorizationsRequest>
  ): GetAuthorizationsRequest {
    const message = createBaseGetAuthorizationsRequest();
    return message;
  },
};

function createBaseGetAuthorizationsResponse(): GetAuthorizationsResponse {
  return { grants: [] };
}

export const GetAuthorizationsResponse = {
  encode(
    message: GetAuthorizationsResponse,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    for (const v of message.grants) {
      Grant.encode(v!, writer.uint32(10).fork()).ldelim();
    }
    return writer;
  },

  decode(
    input: _m0.Reader | Uint8Array,
    length?: number
  ): GetAuthorizationsResponse {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseGetAuthorizationsResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.grants.push(Grant.decode(reader, reader.uint32()));
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): GetAuthorizationsResponse {
    return {
      grants: Array.isArray(object?.grants)
        ? object.grants.map((e: any) => Grant.fromJSON(e))
        : [],
    };
  },

  toJSON(message: GetAuthorizationsResponse): unknown {
    const obj: any = {};
    if (message.grants) {
      obj.grants = message.grants.map((e) => (e ? Grant.toJSON(e) : undefined));
    } else {
      obj.grants = [];
    }
    return obj;
  },

  fromPartial(
    object: DeepPartial<GetAuthorizationsResponse>
  ): GetAuthorizationsResponse {
    const message = createBaseGetAuthorizationsResponse();
    message.grants = object.grants?.map((e) => Grant.fromPartial(e)) || [];
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
      options: {},
    },
    /** Update an existing ecosystem */
    updateEcosystem: {
      name: "UpdateEcosystem",
      requestType: UpdateEcosystemRequest,
      requestStream: false,
      responseType: UpdateEcosystemResponse,
      responseStream: false,
      options: {},
    },
    /** Grant user authorization to ecosystem resources */
    grantAuthorization: {
      name: "GrantAuthorization",
      requestType: GrantAuthorizationRequest,
      requestStream: false,
      responseType: GrantAuthorizationResponse,
      responseStream: false,
      options: {},
    },
    /** Revoke user authorization to ecosystem resources */
    revokeAuthorization: {
      name: "RevokeAuthorization",
      requestType: RevokeAuthorizationRequest,
      requestStream: false,
      responseType: RevokeAuthorizationResponse,
      responseStream: false,
      options: {},
    },
    /** Retreive the list of permissions for this particular account/ecosystem */
    getAuthorizations: {
      name: "GetAuthorizations",
      requestType: GetAuthorizationsRequest,
      requestStream: false,
      responseType: GetAuthorizationsResponse,
      responseStream: false,
      options: {},
    },
    /** Add a webhook endpoint to the ecosystem */
    addWebhook: {
      name: "AddWebhook",
      requestType: AddWebhookRequest,
      requestStream: false,
      responseType: AddWebhookResponse,
      responseStream: false,
      options: {},
    },
    /** Delete a webhook endpoint from the ecosystem */
    deleteWebhook: {
      name: "DeleteWebhook",
      requestType: DeleteWebhookRequest,
      requestStream: false,
      responseType: DeleteWebhookResponse,
      responseStream: false,
      options: {},
    },
    /** Get ecosystem information */
    ecosystemInfo: {
      name: "EcosystemInfo",
      requestType: EcosystemInfoRequest,
      requestStream: false,
      responseType: EcosystemInfoResponse,
      responseStream: false,
      options: {},
    },
    /**
     * Generates an unprotected authentication token that can be used to
     * configure server side applications
     */
    generateToken: {
      name: "GenerateToken",
      requestType: GenerateTokenRequest,
      requestStream: false,
      responseType: GenerateTokenResponse,
      responseStream: false,
      options: {},
    },
    /** Invite a user to the ecosystem */
    invite: {
      name: "Invite",
      requestType: InviteRequest,
      requestStream: false,
      responseType: InviteResponse,
      responseStream: false,
      options: {},
    },
    /** Check the status of an invitation */
    invitationStatus: {
      name: "InvitationStatus",
      requestType: InvitationStatusRequest,
      requestStream: false,
      responseType: InvitationStatusResponse,
      responseStream: false,
      options: {},
    },
    /** Returns the public key being used to create/verify oberon tokens */
    getOberonKey: {
      name: "GetOberonKey",
      requestType: GetOberonKeyRequest,
      requestStream: false,
      responseType: GetOberonKeyResponse,
      responseStream: false,
      options: {},
    },
    /** Generate a signed token (JWT) that can be used to connect to the message bus */
    getEventToken: {
      name: "GetEventToken",
      requestType: GetEventTokenRequest,
      requestStream: false,
      responseType: GetEventTokenResponse,
      responseStream: false,
      options: {},
    },
    /** Retrieve a random hash TXT that can be used to verify domain ownership */
    retrieveDomainVerificationRecord: {
      name: "RetrieveDomainVerificationRecord",
      requestType: RetrieveDomainVerificationRecordRequest,
      requestStream: false,
      responseType: RetrieveDomainVerificationRecordResponse,
      responseStream: false,
      options: {},
    },
    /** Call to verif */
    refreshDomainVerificationStatus: {
      name: "RefreshDomainVerificationStatus",
      requestType: RefreshDomainVerificationStatusRequest,
      requestStream: false,
      responseType: RefreshDomainVerificationStatusResponse,
      responseStream: false,
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

function bytesFromBase64(b64: string): Uint8Array {
  if (globalThis.Buffer) {
    return Uint8Array.from(globalThis.Buffer.from(b64, "base64"));
  } else {
    const bin = globalThis.atob(b64);
    const arr = new Uint8Array(bin.length);
    for (let i = 0; i < bin.length; ++i) {
      arr[i] = bin.charCodeAt(i);
    }
    return arr;
  }
}

function base64FromBytes(arr: Uint8Array): string {
  if (globalThis.Buffer) {
    return globalThis.Buffer.from(arr).toString("base64");
  } else {
    const bin: string[] = [];
    arr.forEach((byte) => {
      bin.push(String.fromCharCode(byte));
    });
    return globalThis.btoa(bin.join(""));
  }
}

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

function isSet(value: any): boolean {
  return value !== null && value !== undefined;
}
