/* eslint-disable */
import Long from "long";
import * as _m0 from "protobufjs/minimal";
import {
  ConfirmationMethod,
  AccountDetails,
  AccountProfile,
  confirmationMethodFromJSON,
  confirmationMethodToJSON,
} from "../../../services/account/v1/account";

export enum ParticipantType {
  participant_type_individual = 0,
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

export interface Invite {
  id: string;
  code: string;
  created: string;
  accepted: string;
  expires: string;
}

export interface InviteRequest {
  /** Type of participant being invited (individual/organization) */
  participant: ParticipantType;
  /** Description of invitation */
  description: string;
  /** Account details of invitee */
  details: AccountDetails | undefined;
}

export interface InviteRequest_DidCommInvitation {}

export interface InviteResponse {
  /** ID of created invitation */
  invitationId: string;
  /**
   * Invitation Code that must be passed with the account 'SignIn' request
   * to correlate this user with the invitation sent.
   */
  invitationCode: string;
}

/**
 * Request details for the status of onboarding
 * an individual or organization.
 * The reference_id passed is the response from the
 * `Onboard` method call
 */
export interface InvitationStatusRequest {
  /** ID of invitation */
  invitationId: string;
}

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

export interface Ecosystem {
  /** URN of the ecosystem */
  id: string;
  /** Globally unique name for the ecosystem */
  name: string;
  /** Ecosystem description */
  description: string;
  /** External URL associated with the organization or ecosystem entity */
  uri: string;
  /** Configured webhooks, if any */
  webhooks: WebhookConfig[];
}

export interface WebhookConfig {
  /** UUID of the webhook */
  id: string;
  /** Destination to post webhook calls to */
  destinationUrl: string;
  /** Events the webhook is subscribed to */
  events: string[];
  /** Whether we are able to sucessfully send events to the webhook */
  status: string;
}

export interface CreateEcosystemRequest {
  /**
   * Globally unique name for the Ecosystem. This name will be
   * part of the ecosystem specific URLs and namespaces.
   * Allowed characters are lowercase letters, numbers, underscore and hyphen.
   */
  name: string;
  /** Ecosystem description */
  description: string;
  /** External URL associated with your organization or ecosystem entity */
  uri: string;
  /** The account details of the owner of the ecosystem */
  details: AccountDetails | undefined;
}

export interface CreateEcosystemResponse {
  /** Details of the created ecosystem */
  ecosystem: Ecosystem | undefined;
  /** Account profile for auth of the owner of the ecosystem */
  profile: AccountProfile | undefined;
  /**
   * Indicates if confirmation of account is required.
   * This setting is configured globally by the server administrator.
   */
  confirmationMethod: ConfirmationMethod;
}

/** Request to update an ecosystem */
export interface UpdateEcosystemRequest {
  /** ID of the ecosystem to update */
  ecosystemId: string;
  /** Description of the ecosystem */
  description: string;
  /** External URL associated with the organization or ecosystem entity */
  uri: string;
}

/** Response to `UpdateEcosystemRequest` */
export interface UpdateEcosystemResponse {
  Ecosystem: Ecosystem | undefined;
}

/** Request to add a webhook to an ecosystem */
export interface AddWebhookRequest {
  /** ID of ecosystem to add webhook to */
  ecosystemId: string;
  /** Destination to post webhook calls to */
  destinationUrl: string;
  /** HMAC secret for webhook validation */
  secret: string;
  /** Events to subscribe to. Default is "*" (all events) */
  events: string[];
}

/** Response to `AddWebhookRequest` */
export interface AddWebhookResponse {
  /** Ecosystem with new webhook */
  ecosystem: Ecosystem | undefined;
}

/** Request to delete a webhook from an ecosystem */
export interface DeleteWebhookRequest {
  /** ID of ecosystem from which to delete webhook */
  ecosystemId: string;
  /** ID of webhook to delete */
  webhookId: string;
}

/** Response to `DeleteWebhookRequest` */
export interface DeleteWebhookResponse {
  /** Ecosystem after removal of webhook */
  ecosystem: Ecosystem | undefined;
}

/** Request to fetch information about an ecosystem */
export interface EcosystemInfoRequest {
  /** ID of ecosystem to fetch information about */
  ecosystemId: string;
}

/** Response to `InfoRequest` */
export interface EcosystemInfoResponse {
  /** Ecosystem corresponding to requested `ecosystem_id` */
  ecosystem: Ecosystem | undefined;
}

export interface GenerateTokenRequest {
  /** Description to identify this token */
  description: string;
}

export interface GenerateTokenResponse {
  /** Account authentication profile that contains unprotected token */
  profile: AccountProfile | undefined;
}

/** request message for GetOberonKey */
export interface GetOberonKeyRequest {}

/** response message for GetOberonKey */
export interface GetOberonKeyResponse {
  /** Oberon Public Key as RAW base64 URL encoded string */
  key: string;
}

/** generates an events token bound to the provided ed25519 pk */
export interface GetEventTokenRequest {
  /**  */
  pk: Uint8Array;
}

/**
 * response message containing a token (JWT) that can be used
 * to connect directly to the message streaming architecture
 */
export interface GetEventTokenResponse {
  /** a JWT bound to the PK provided in the request */
  token: string;
}

function createBaseInvite(): Invite {
  return { id: "", code: "", created: "", accepted: "", expires: "" };
}

export const Invite = {
  encode(
    message: Invite,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.id !== "") {
      writer.uint32(10).string(message.id);
    }
    if (message.code !== "") {
      writer.uint32(18).string(message.code);
    }
    if (message.created !== "") {
      writer.uint32(26).string(message.created);
    }
    if (message.accepted !== "") {
      writer.uint32(34).string(message.accepted);
    }
    if (message.expires !== "") {
      writer.uint32(42).string(message.expires);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): Invite {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseInvite();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.id = reader.string();
          break;
        case 2:
          message.code = reader.string();
          break;
        case 3:
          message.created = reader.string();
          break;
        case 4:
          message.accepted = reader.string();
          break;
        case 5:
          message.expires = reader.string();
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): Invite {
    return {
      id: isSet(object.id) ? String(object.id) : "",
      code: isSet(object.code) ? String(object.code) : "",
      created: isSet(object.created) ? String(object.created) : "",
      accepted: isSet(object.accepted) ? String(object.accepted) : "",
      expires: isSet(object.expires) ? String(object.expires) : "",
    };
  },

  toJSON(message: Invite): unknown {
    const obj: any = {};
    message.id !== undefined && (obj.id = message.id);
    message.code !== undefined && (obj.code = message.code);
    message.created !== undefined && (obj.created = message.created);
    message.accepted !== undefined && (obj.accepted = message.accepted);
    message.expires !== undefined && (obj.expires = message.expires);
    return obj;
  },

  fromPartial(object: DeepPartial<Invite>): Invite {
    const message = createBaseInvite();
    message.id = object.id ?? "";
    message.code = object.code ?? "";
    message.created = object.created ?? "";
    message.accepted = object.accepted ?? "";
    message.expires = object.expires ?? "";
    return message;
  },
};

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
  return { id: "", name: "", description: "", uri: "", webhooks: [] };
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

function createBaseCreateEcosystemRequest(): CreateEcosystemRequest {
  return { name: "", description: "", uri: "", details: undefined };
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
  return { ecosystemId: "", description: "", uri: "" };
}

export const UpdateEcosystemRequest = {
  encode(
    message: UpdateEcosystemRequest,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.ecosystemId !== "") {
      writer.uint32(10).string(message.ecosystemId);
    }
    if (message.description !== "") {
      writer.uint32(18).string(message.description);
    }
    if (message.uri !== "") {
      writer.uint32(26).string(message.uri);
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
          message.ecosystemId = reader.string();
          break;
        case 2:
          message.description = reader.string();
          break;
        case 3:
          message.uri = reader.string();
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
      ecosystemId: isSet(object.ecosystemId) ? String(object.ecosystemId) : "",
      description: isSet(object.description) ? String(object.description) : "",
      uri: isSet(object.uri) ? String(object.uri) : "",
    };
  },

  toJSON(message: UpdateEcosystemRequest): unknown {
    const obj: any = {};
    message.ecosystemId !== undefined &&
      (obj.ecosystemId = message.ecosystemId);
    message.description !== undefined &&
      (obj.description = message.description);
    message.uri !== undefined && (obj.uri = message.uri);
    return obj;
  },

  fromPartial(
    object: DeepPartial<UpdateEcosystemRequest>
  ): UpdateEcosystemRequest {
    const message = createBaseUpdateEcosystemRequest();
    message.ecosystemId = object.ecosystemId ?? "";
    message.description = object.description ?? "";
    message.uri = object.uri ?? "";
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
  return { ecosystemId: "", destinationUrl: "", secret: "", events: [] };
}

export const AddWebhookRequest = {
  encode(
    message: AddWebhookRequest,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.ecosystemId !== "") {
      writer.uint32(10).string(message.ecosystemId);
    }
    if (message.destinationUrl !== "") {
      writer.uint32(18).string(message.destinationUrl);
    }
    if (message.secret !== "") {
      writer.uint32(26).string(message.secret);
    }
    for (const v of message.events) {
      writer.uint32(34).string(v!);
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
          message.ecosystemId = reader.string();
          break;
        case 2:
          message.destinationUrl = reader.string();
          break;
        case 3:
          message.secret = reader.string();
          break;
        case 4:
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
      ecosystemId: isSet(object.ecosystemId) ? String(object.ecosystemId) : "",
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
    message.ecosystemId !== undefined &&
      (obj.ecosystemId = message.ecosystemId);
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
    message.ecosystemId = object.ecosystemId ?? "";
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
  return { ecosystemId: "", webhookId: "" };
}

export const DeleteWebhookRequest = {
  encode(
    message: DeleteWebhookRequest,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.ecosystemId !== "") {
      writer.uint32(10).string(message.ecosystemId);
    }
    if (message.webhookId !== "") {
      writer.uint32(18).string(message.webhookId);
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
          message.ecosystemId = reader.string();
          break;
        case 2:
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
      ecosystemId: isSet(object.ecosystemId) ? String(object.ecosystemId) : "",
      webhookId: isSet(object.webhookId) ? String(object.webhookId) : "",
    };
  },

  toJSON(message: DeleteWebhookRequest): unknown {
    const obj: any = {};
    message.ecosystemId !== undefined &&
      (obj.ecosystemId = message.ecosystemId);
    message.webhookId !== undefined && (obj.webhookId = message.webhookId);
    return obj;
  },

  fromPartial(object: DeepPartial<DeleteWebhookRequest>): DeleteWebhookRequest {
    const message = createBaseDeleteWebhookRequest();
    message.ecosystemId = object.ecosystemId ?? "";
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
  return { ecosystemId: "" };
}

export const EcosystemInfoRequest = {
  encode(
    message: EcosystemInfoRequest,
    writer: _m0.Writer = _m0.Writer.create()
  ): _m0.Writer {
    if (message.ecosystemId !== "") {
      writer.uint32(10).string(message.ecosystemId);
    }
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
        case 1:
          message.ecosystemId = reader.string();
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): EcosystemInfoRequest {
    return {
      ecosystemId: isSet(object.ecosystemId) ? String(object.ecosystemId) : "",
    };
  },

  toJSON(message: EcosystemInfoRequest): unknown {
    const obj: any = {};
    message.ecosystemId !== undefined &&
      (obj.ecosystemId = message.ecosystemId);
    return obj;
  },

  fromPartial(object: DeepPartial<EcosystemInfoRequest>): EcosystemInfoRequest {
    const message = createBaseEcosystemInfoRequest();
    message.ecosystemId = object.ecosystemId ?? "";
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
    /** Check the invitation status */
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

const atob: (b64: string) => string =
  globalThis.atob ||
  ((b64) => globalThis.Buffer.from(b64, "base64").toString("binary"));
function bytesFromBase64(b64: string): Uint8Array {
  const bin = atob(b64);
  const arr = new Uint8Array(bin.length);
  for (let i = 0; i < bin.length; ++i) {
    arr[i] = bin.charCodeAt(i);
  }
  return arr;
}

const btoa: (bin: string) => string =
  globalThis.btoa ||
  ((bin) => globalThis.Buffer.from(bin, "binary").toString("base64"));
function base64FromBytes(arr: Uint8Array): string {
  const bin: string[] = [];
  arr.forEach((byte) => {
    bin.push(String.fromCharCode(byte));
  });
  return btoa(bin.join(""));
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

if (_m0.util.Long !== Long) {
  _m0.util.Long = Long as any;
  _m0.configure();
}

function isSet(value: any): boolean {
  return value !== null && value !== undefined;
}
