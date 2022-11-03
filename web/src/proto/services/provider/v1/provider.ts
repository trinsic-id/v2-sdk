/* eslint-disable */
import {
    ConfirmationMethod,
    AccountDetails,
    AccountProfile,
    confirmationMethodFromJSON,
    confirmationMethodToJSON,
} from "../../account/v1/account";
import {
    SupportedDidMethod,
    supportedDidMethodFromJSON,
    supportedDidMethodToJSON,
} from "../../common/v1/common";
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
    /**
     * New name
     * string name = 4;
     * Display details
     */
    display: EcosystemDisplayRequest | undefined;
}

export interface EcosystemDisplayRequest {
    dark: EcosystemDisplayDetailsRequest | undefined;
    light: EcosystemDisplayDetailsRequest | undefined;
}

export interface EcosystemDisplayDetailsRequest {
    /**
     * string id = 1;
     * string name = 2;
     *    string logo_url = 3;
     */
    color: string;
    logoData: Uint8Array;
    /** MIME type of the file */
    logoFormat: string;
}

/** Response to `UpdateEcosystemRequest` */
export interface UpdateEcosystemResponse {
    /** Current ecosystem metadata, post-update */
    Ecosystem: Ecosystem | undefined;
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
    /** Ecosystem corresponding to current ecosystem in the account token */
    ecosystem: Ecosystem | undefined;
}

/** Request to fetch information about an ecosystem */
export interface GetPublicEcosystemInfoRequest {
    ecosystemId: string;
}

/** Response to `InfoRequest` */
export interface GetPublicEcosystemInfoResponse {
    /** Ecosystem corresponding to requested `ecosystem_id` */
    ecosystem: PublicEcosystemInformation | undefined;
}

export interface PublicEcosystemInformation {
    /** Public name of this ecosystem */
    name: string;
    /** Public domain for the owner of this ecosystem */
    domain: string;
    /** Trinsic verified the domain is owned by the owner of this ecosystem */
    domainVerified: boolean;
    /** Style display information */
    styleDisplay: EcosystemDisplay | undefined;
    /** Description of the ecosystem */
    description: string;
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
    /** TXT record name to use for domain verification */
    verificationRecordName: string;
    /** TXT code for domain verification */
    verificationRecordValue: string;
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

/** Search for issuers/holders/verifiers */
export interface SearchWalletConfigurationsRequest {
    /** SQL filter to execute. `SELECT * FROM _ WHERE [**queryFilter**]` */
    queryFilter: string;
    /**
     * Token provided by previous `SearchResponse`
     * if more data is available for query
     */
    continuationToken: string;
}

export interface SearchWalletConfigurationResponse {
    /** Results matching the search query */
    results: WalletConfiguration[];
    /** Whether more results are available for this query via `continuation_token` */
    hasMore: boolean;
    /** Token to fetch next set of results via `SearchRequest` */
    continuationToken: string;
}

/** Strongly typed information about wallet configurations */
export interface WalletConfiguration {
    name: string;
    email: string;
    sms: string;
    walletId: string;
    publicDid: string;
}

/** Options for creation of DID on the ION network */
export interface IonOptions {
    /** ION network on which DID should be published */
    network: IonOptions_IonNetwork;
}

export enum IonOptions_IonNetwork {
    TestNet = 0,
    MainNet = 1,
    UNRECOGNIZED = -1,
}

export function ionOptions_IonNetworkFromJSON(
    object: any
): IonOptions_IonNetwork {
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

export function ionOptions_IonNetworkToJSON(
    object: IonOptions_IonNetwork
): string {
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

/** Request to upgrade a wallet */
export interface UpgradeDidRequest {
    /**
     * Email address of account to upgrade.
     * Mutually exclusive with `walletId`.
     */
    email: string | undefined;
    /**
     * Wallet ID of account to upgrade.
     * Mutually exclusive with `email`.
     */
    walletId: string | undefined;
    /** DID Method to which wallet should be upgraded */
    method: SupportedDidMethod;
    /** Configuration for creation of DID on ION network */
    ionOptions: IonOptions | undefined;
}

/** Response to `UpgradeDIDRequest` */
export interface UpgradeDidResponse {
    /** New DID of wallet */
    did: string;
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
            AccountDetails.encode(
                message.details,
                writer.uint32(26).fork()
            ).ldelim();
        }
        return writer;
    },

    decode(input: _m0.Reader | Uint8Array, length?: number): InviteRequest {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
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
                    message.details = AccountDetails.decode(
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

    fromJSON(object: any): InviteRequest {
        return {
            participant: isSet(object.participant)
                ? participantTypeFromJSON(object.participant)
                : 0,
            description: isSet(object.description)
                ? String(object.description)
                : "",
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
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
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
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
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
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
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
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
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
            (obj.status = invitationStatusResponse_StatusToJSON(
                message.status
            ));
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
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
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
                    message.webhooks.push(
                        WebhookConfig.decode(reader, reader.uint32())
                    );
                    break;
                case 6:
                    message.display = EcosystemDisplay.decode(
                        reader,
                        reader.uint32()
                    );
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
            description: isSet(object.description)
                ? String(object.description)
                : "",
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
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
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
    encode(
        message: Grant,
        writer: _m0.Writer = _m0.Writer.create()
    ): _m0.Writer {
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
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
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
                    message.childGrants.push(
                        Grant.decode(reader, reader.uint32())
                    );
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
            resourceId: isSet(object.resourceId)
                ? String(object.resourceId)
                : "",
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
        message.resourceId !== undefined &&
            (obj.resourceId = message.resourceId);
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
    return {
        name: "",
        description: "",
        uri: "",
        details: undefined,
        domain: "",
    };
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
            AccountDetails.encode(
                message.details,
                writer.uint32(34).fork()
            ).ldelim();
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
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
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
                    message.details = AccountDetails.decode(
                        reader,
                        reader.uint32()
                    );
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
            description: isSet(object.description)
                ? String(object.description)
                : "",
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
            Ecosystem.encode(
                message.ecosystem,
                writer.uint32(10).fork()
            ).ldelim();
        }
        if (message.profile !== undefined) {
            AccountProfile.encode(
                message.profile,
                writer.uint32(18).fork()
            ).ldelim();
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
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseCreateEcosystemResponse();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.ecosystem = Ecosystem.decode(
                        reader,
                        reader.uint32()
                    );
                    break;
                case 2:
                    message.profile = AccountProfile.decode(
                        reader,
                        reader.uint32()
                    );
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
    return { description: "", uri: "", domain: "", display: undefined };
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
        if (message.display !== undefined) {
            EcosystemDisplayRequest.encode(
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
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
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
                case 5:
                    message.display = EcosystemDisplayRequest.decode(
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

    fromJSON(object: any): UpdateEcosystemRequest {
        return {
            description: isSet(object.description)
                ? String(object.description)
                : "",
            uri: isSet(object.uri) ? String(object.uri) : "",
            domain: isSet(object.domain) ? String(object.domain) : "",
            display: isSet(object.display)
                ? EcosystemDisplayRequest.fromJSON(object.display)
                : undefined,
        };
    },

    toJSON(message: UpdateEcosystemRequest): unknown {
        const obj: any = {};
        message.description !== undefined &&
            (obj.description = message.description);
        message.uri !== undefined && (obj.uri = message.uri);
        message.domain !== undefined && (obj.domain = message.domain);
        message.display !== undefined &&
            (obj.display = message.display
                ? EcosystemDisplayRequest.toJSON(message.display)
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
        message.display =
            object.display !== undefined && object.display !== null
                ? EcosystemDisplayRequest.fromPartial(object.display)
                : undefined;
        return message;
    },
};

function createBaseEcosystemDisplayRequest(): EcosystemDisplayRequest {
    return { dark: undefined, light: undefined };
}

export const EcosystemDisplayRequest = {
    encode(
        message: EcosystemDisplayRequest,
        writer: _m0.Writer = _m0.Writer.create()
    ): _m0.Writer {
        if (message.dark !== undefined) {
            EcosystemDisplayDetailsRequest.encode(
                message.dark,
                writer.uint32(10).fork()
            ).ldelim();
        }
        if (message.light !== undefined) {
            EcosystemDisplayDetailsRequest.encode(
                message.light,
                writer.uint32(18).fork()
            ).ldelim();
        }
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number
    ): EcosystemDisplayRequest {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseEcosystemDisplayRequest();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.dark = EcosystemDisplayDetailsRequest.decode(
                        reader,
                        reader.uint32()
                    );
                    break;
                case 2:
                    message.light = EcosystemDisplayDetailsRequest.decode(
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

    fromJSON(object: any): EcosystemDisplayRequest {
        return {
            dark: isSet(object.dark)
                ? EcosystemDisplayDetailsRequest.fromJSON(object.dark)
                : undefined,
            light: isSet(object.light)
                ? EcosystemDisplayDetailsRequest.fromJSON(object.light)
                : undefined,
        };
    },

    toJSON(message: EcosystemDisplayRequest): unknown {
        const obj: any = {};
        message.dark !== undefined &&
            (obj.dark = message.dark
                ? EcosystemDisplayDetailsRequest.toJSON(message.dark)
                : undefined);
        message.light !== undefined &&
            (obj.light = message.light
                ? EcosystemDisplayDetailsRequest.toJSON(message.light)
                : undefined);
        return obj;
    },

    fromPartial(
        object: DeepPartial<EcosystemDisplayRequest>
    ): EcosystemDisplayRequest {
        const message = createBaseEcosystemDisplayRequest();
        message.dark =
            object.dark !== undefined && object.dark !== null
                ? EcosystemDisplayDetailsRequest.fromPartial(object.dark)
                : undefined;
        message.light =
            object.light !== undefined && object.light !== null
                ? EcosystemDisplayDetailsRequest.fromPartial(object.light)
                : undefined;
        return message;
    },
};

function createBaseEcosystemDisplayDetailsRequest(): EcosystemDisplayDetailsRequest {
    return { color: "", logoData: new Uint8Array(), logoFormat: "" };
}

export const EcosystemDisplayDetailsRequest = {
    encode(
        message: EcosystemDisplayDetailsRequest,
        writer: _m0.Writer = _m0.Writer.create()
    ): _m0.Writer {
        if (message.color !== "") {
            writer.uint32(34).string(message.color);
        }
        if (message.logoData.length !== 0) {
            writer.uint32(42).bytes(message.logoData);
        }
        if (message.logoFormat !== "") {
            writer.uint32(50).string(message.logoFormat);
        }
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number
    ): EcosystemDisplayDetailsRequest {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseEcosystemDisplayDetailsRequest();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 4:
                    message.color = reader.string();
                    break;
                case 5:
                    message.logoData = reader.bytes();
                    break;
                case 6:
                    message.logoFormat = reader.string();
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },

    fromJSON(object: any): EcosystemDisplayDetailsRequest {
        return {
            color: isSet(object.color) ? String(object.color) : "",
            logoData: isSet(object.logoData)
                ? bytesFromBase64(object.logoData)
                : new Uint8Array(),
            logoFormat: isSet(object.logoFormat)
                ? String(object.logoFormat)
                : "",
        };
    },

    toJSON(message: EcosystemDisplayDetailsRequest): unknown {
        const obj: any = {};
        message.color !== undefined && (obj.color = message.color);
        message.logoData !== undefined &&
            (obj.logoData = base64FromBytes(
                message.logoData !== undefined
                    ? message.logoData
                    : new Uint8Array()
            ));
        message.logoFormat !== undefined &&
            (obj.logoFormat = message.logoFormat);
        return obj;
    },

    fromPartial(
        object: DeepPartial<EcosystemDisplayDetailsRequest>
    ): EcosystemDisplayDetailsRequest {
        const message = createBaseEcosystemDisplayDetailsRequest();
        message.color = object.color ?? "";
        message.logoData = object.logoData ?? new Uint8Array();
        message.logoFormat = object.logoFormat ?? "";
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
            Ecosystem.encode(
                message.Ecosystem,
                writer.uint32(10).fork()
            ).ldelim();
        }
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number
    ): UpdateEcosystemResponse {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseUpdateEcosystemResponse();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.Ecosystem = Ecosystem.decode(
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
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
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
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
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
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
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
            Ecosystem.encode(
                message.ecosystem,
                writer.uint32(10).fork()
            ).ldelim();
        }
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number
    ): AddWebhookResponse {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseAddWebhookResponse();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.ecosystem = Ecosystem.decode(
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
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
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

    fromPartial(
        object: DeepPartial<DeleteWebhookRequest>
    ): DeleteWebhookRequest {
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
            Ecosystem.encode(
                message.ecosystem,
                writer.uint32(10).fork()
            ).ldelim();
        }
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number
    ): DeleteWebhookResponse {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseDeleteWebhookResponse();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.ecosystem = Ecosystem.decode(
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
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
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
            Ecosystem.encode(
                message.ecosystem,
                writer.uint32(10).fork()
            ).ldelim();
        }
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number
    ): EcosystemInfoResponse {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseEcosystemInfoResponse();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.ecosystem = Ecosystem.decode(
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

function createBaseGetPublicEcosystemInfoRequest(): GetPublicEcosystemInfoRequest {
    return { ecosystemId: "" };
}

export const GetPublicEcosystemInfoRequest = {
    encode(
        message: GetPublicEcosystemInfoRequest,
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
    ): GetPublicEcosystemInfoRequest {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseGetPublicEcosystemInfoRequest();
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

    fromJSON(object: any): GetPublicEcosystemInfoRequest {
        return {
            ecosystemId: isSet(object.ecosystemId)
                ? String(object.ecosystemId)
                : "",
        };
    },

    toJSON(message: GetPublicEcosystemInfoRequest): unknown {
        const obj: any = {};
        message.ecosystemId !== undefined &&
            (obj.ecosystemId = message.ecosystemId);
        return obj;
    },

    fromPartial(
        object: DeepPartial<GetPublicEcosystemInfoRequest>
    ): GetPublicEcosystemInfoRequest {
        const message = createBaseGetPublicEcosystemInfoRequest();
        message.ecosystemId = object.ecosystemId ?? "";
        return message;
    },
};

function createBaseGetPublicEcosystemInfoResponse(): GetPublicEcosystemInfoResponse {
    return { ecosystem: undefined };
}

export const GetPublicEcosystemInfoResponse = {
    encode(
        message: GetPublicEcosystemInfoResponse,
        writer: _m0.Writer = _m0.Writer.create()
    ): _m0.Writer {
        if (message.ecosystem !== undefined) {
            PublicEcosystemInformation.encode(
                message.ecosystem,
                writer.uint32(10).fork()
            ).ldelim();
        }
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number
    ): GetPublicEcosystemInfoResponse {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseGetPublicEcosystemInfoResponse();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.ecosystem = PublicEcosystemInformation.decode(
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

    fromJSON(object: any): GetPublicEcosystemInfoResponse {
        return {
            ecosystem: isSet(object.ecosystem)
                ? PublicEcosystemInformation.fromJSON(object.ecosystem)
                : undefined,
        };
    },

    toJSON(message: GetPublicEcosystemInfoResponse): unknown {
        const obj: any = {};
        message.ecosystem !== undefined &&
            (obj.ecosystem = message.ecosystem
                ? PublicEcosystemInformation.toJSON(message.ecosystem)
                : undefined);
        return obj;
    },

    fromPartial(
        object: DeepPartial<GetPublicEcosystemInfoResponse>
    ): GetPublicEcosystemInfoResponse {
        const message = createBaseGetPublicEcosystemInfoResponse();
        message.ecosystem =
            object.ecosystem !== undefined && object.ecosystem !== null
                ? PublicEcosystemInformation.fromPartial(object.ecosystem)
                : undefined;
        return message;
    },
};

function createBasePublicEcosystemInformation(): PublicEcosystemInformation {
    return {
        name: "",
        domain: "",
        domainVerified: false,
        styleDisplay: undefined,
        description: "",
    };
}

export const PublicEcosystemInformation = {
    encode(
        message: PublicEcosystemInformation,
        writer: _m0.Writer = _m0.Writer.create()
    ): _m0.Writer {
        if (message.name !== "") {
            writer.uint32(10).string(message.name);
        }
        if (message.domain !== "") {
            writer.uint32(18).string(message.domain);
        }
        if (message.domainVerified === true) {
            writer.uint32(24).bool(message.domainVerified);
        }
        if (message.styleDisplay !== undefined) {
            EcosystemDisplay.encode(
                message.styleDisplay,
                writer.uint32(34).fork()
            ).ldelim();
        }
        if (message.description !== "") {
            writer.uint32(42).string(message.description);
        }
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number
    ): PublicEcosystemInformation {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBasePublicEcosystemInformation();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.name = reader.string();
                    break;
                case 2:
                    message.domain = reader.string();
                    break;
                case 3:
                    message.domainVerified = reader.bool();
                    break;
                case 4:
                    message.styleDisplay = EcosystemDisplay.decode(
                        reader,
                        reader.uint32()
                    );
                    break;
                case 5:
                    message.description = reader.string();
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },

    fromJSON(object: any): PublicEcosystemInformation {
        return {
            name: isSet(object.name) ? String(object.name) : "",
            domain: isSet(object.domain) ? String(object.domain) : "",
            domainVerified: isSet(object.domainVerified)
                ? Boolean(object.domainVerified)
                : false,
            styleDisplay: isSet(object.styleDisplay)
                ? EcosystemDisplay.fromJSON(object.styleDisplay)
                : undefined,
            description: isSet(object.description)
                ? String(object.description)
                : "",
        };
    },

    toJSON(message: PublicEcosystemInformation): unknown {
        const obj: any = {};
        message.name !== undefined && (obj.name = message.name);
        message.domain !== undefined && (obj.domain = message.domain);
        message.domainVerified !== undefined &&
            (obj.domainVerified = message.domainVerified);
        message.styleDisplay !== undefined &&
            (obj.styleDisplay = message.styleDisplay
                ? EcosystemDisplay.toJSON(message.styleDisplay)
                : undefined);
        message.description !== undefined &&
            (obj.description = message.description);
        return obj;
    },

    fromPartial(
        object: DeepPartial<PublicEcosystemInformation>
    ): PublicEcosystemInformation {
        const message = createBasePublicEcosystemInformation();
        message.name = object.name ?? "";
        message.domain = object.domain ?? "";
        message.domainVerified = object.domainVerified ?? false;
        message.styleDisplay =
            object.styleDisplay !== undefined && object.styleDisplay !== null
                ? EcosystemDisplay.fromPartial(object.styleDisplay)
                : undefined;
        message.description = object.description ?? "";
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
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
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
            description: isSet(object.description)
                ? String(object.description)
                : "",
        };
    },

    toJSON(message: GenerateTokenRequest): unknown {
        const obj: any = {};
        message.description !== undefined &&
            (obj.description = message.description);
        return obj;
    },

    fromPartial(
        object: DeepPartial<GenerateTokenRequest>
    ): GenerateTokenRequest {
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
            AccountProfile.encode(
                message.profile,
                writer.uint32(10).fork()
            ).ldelim();
        }
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number
    ): GenerateTokenResponse {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseGenerateTokenResponse();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.profile = AccountProfile.decode(
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

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number
    ): GetOberonKeyRequest {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
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
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
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

    fromPartial(
        object: DeepPartial<GetOberonKeyResponse>
    ): GetOberonKeyResponse {
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
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
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
            pk: isSet(object.pk)
                ? bytesFromBase64(object.pk)
                : new Uint8Array(),
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

    fromPartial(
        object: DeepPartial<GetEventTokenRequest>
    ): GetEventTokenRequest {
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
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
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
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
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
    return { verificationRecordName: "", verificationRecordValue: "" };
}

export const RetrieveDomainVerificationRecordResponse = {
    encode(
        message: RetrieveDomainVerificationRecordResponse,
        writer: _m0.Writer = _m0.Writer.create()
    ): _m0.Writer {
        if (message.verificationRecordName !== "") {
            writer.uint32(10).string(message.verificationRecordName);
        }
        if (message.verificationRecordValue !== "") {
            writer.uint32(18).string(message.verificationRecordValue);
        }
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number
    ): RetrieveDomainVerificationRecordResponse {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseRetrieveDomainVerificationRecordResponse();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.verificationRecordName = reader.string();
                    break;
                case 2:
                    message.verificationRecordValue = reader.string();
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
            verificationRecordName: isSet(object.verificationRecordName)
                ? String(object.verificationRecordName)
                : "",
            verificationRecordValue: isSet(object.verificationRecordValue)
                ? String(object.verificationRecordValue)
                : "",
        };
    },

    toJSON(message: RetrieveDomainVerificationRecordResponse): unknown {
        const obj: any = {};
        message.verificationRecordName !== undefined &&
            (obj.verificationRecordName = message.verificationRecordName);
        message.verificationRecordValue !== undefined &&
            (obj.verificationRecordValue = message.verificationRecordValue);
        return obj;
    },

    fromPartial(
        object: DeepPartial<RetrieveDomainVerificationRecordResponse>
    ): RetrieveDomainVerificationRecordResponse {
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
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
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
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
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
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
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
            walletId: isSet(object.walletId)
                ? String(object.walletId)
                : undefined,
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
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
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
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
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
            walletId: isSet(object.walletId)
                ? String(object.walletId)
                : undefined,
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
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
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
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
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
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
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
            obj.grants = message.grants.map((e) =>
                e ? Grant.toJSON(e) : undefined
            );
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

function createBaseSearchWalletConfigurationsRequest(): SearchWalletConfigurationsRequest {
    return { queryFilter: "", continuationToken: "" };
}

export const SearchWalletConfigurationsRequest = {
    encode(
        message: SearchWalletConfigurationsRequest,
        writer: _m0.Writer = _m0.Writer.create()
    ): _m0.Writer {
        if (message.queryFilter !== "") {
            writer.uint32(10).string(message.queryFilter);
        }
        if (message.continuationToken !== "") {
            writer.uint32(18).string(message.continuationToken);
        }
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number
    ): SearchWalletConfigurationsRequest {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseSearchWalletConfigurationsRequest();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.queryFilter = reader.string();
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

    fromJSON(object: any): SearchWalletConfigurationsRequest {
        return {
            queryFilter: isSet(object.queryFilter)
                ? String(object.queryFilter)
                : "",
            continuationToken: isSet(object.continuationToken)
                ? String(object.continuationToken)
                : "",
        };
    },

    toJSON(message: SearchWalletConfigurationsRequest): unknown {
        const obj: any = {};
        message.queryFilter !== undefined &&
            (obj.queryFilter = message.queryFilter);
        message.continuationToken !== undefined &&
            (obj.continuationToken = message.continuationToken);
        return obj;
    },

    fromPartial(
        object: DeepPartial<SearchWalletConfigurationsRequest>
    ): SearchWalletConfigurationsRequest {
        const message = createBaseSearchWalletConfigurationsRequest();
        message.queryFilter = object.queryFilter ?? "";
        message.continuationToken = object.continuationToken ?? "";
        return message;
    },
};

function createBaseSearchWalletConfigurationResponse(): SearchWalletConfigurationResponse {
    return { results: [], hasMore: false, continuationToken: "" };
}

export const SearchWalletConfigurationResponse = {
    encode(
        message: SearchWalletConfigurationResponse,
        writer: _m0.Writer = _m0.Writer.create()
    ): _m0.Writer {
        for (const v of message.results) {
            WalletConfiguration.encode(v!, writer.uint32(10).fork()).ldelim();
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
    ): SearchWalletConfigurationResponse {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseSearchWalletConfigurationResponse();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.results.push(
                        WalletConfiguration.decode(reader, reader.uint32())
                    );
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

    fromJSON(object: any): SearchWalletConfigurationResponse {
        return {
            results: Array.isArray(object?.results)
                ? object.results.map((e: any) =>
                      WalletConfiguration.fromJSON(e)
                  )
                : [],
            hasMore: isSet(object.hasMore) ? Boolean(object.hasMore) : false,
            continuationToken: isSet(object.continuationToken)
                ? String(object.continuationToken)
                : "",
        };
    },

    toJSON(message: SearchWalletConfigurationResponse): unknown {
        const obj: any = {};
        if (message.results) {
            obj.results = message.results.map((e) =>
                e ? WalletConfiguration.toJSON(e) : undefined
            );
        } else {
            obj.results = [];
        }
        message.hasMore !== undefined && (obj.hasMore = message.hasMore);
        message.continuationToken !== undefined &&
            (obj.continuationToken = message.continuationToken);
        return obj;
    },

    fromPartial(
        object: DeepPartial<SearchWalletConfigurationResponse>
    ): SearchWalletConfigurationResponse {
        const message = createBaseSearchWalletConfigurationResponse();
        message.results =
            object.results?.map((e) => WalletConfiguration.fromPartial(e)) ||
            [];
        message.hasMore = object.hasMore ?? false;
        message.continuationToken = object.continuationToken ?? "";
        return message;
    },
};

function createBaseWalletConfiguration(): WalletConfiguration {
    return { name: "", email: "", sms: "", walletId: "", publicDid: "" };
}

export const WalletConfiguration = {
    encode(
        message: WalletConfiguration,
        writer: _m0.Writer = _m0.Writer.create()
    ): _m0.Writer {
        if (message.name !== "") {
            writer.uint32(10).string(message.name);
        }
        if (message.email !== "") {
            writer.uint32(18).string(message.email);
        }
        if (message.sms !== "") {
            writer.uint32(26).string(message.sms);
        }
        if (message.walletId !== "") {
            writer.uint32(34).string(message.walletId);
        }
        if (message.publicDid !== "") {
            writer.uint32(42).string(message.publicDid);
        }
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number
    ): WalletConfiguration {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseWalletConfiguration();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.name = reader.string();
                    break;
                case 2:
                    message.email = reader.string();
                    break;
                case 3:
                    message.sms = reader.string();
                    break;
                case 4:
                    message.walletId = reader.string();
                    break;
                case 5:
                    message.publicDid = reader.string();
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
            }
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
        };
    },

    toJSON(message: WalletConfiguration): unknown {
        const obj: any = {};
        message.name !== undefined && (obj.name = message.name);
        message.email !== undefined && (obj.email = message.email);
        message.sms !== undefined && (obj.sms = message.sms);
        message.walletId !== undefined && (obj.walletId = message.walletId);
        message.publicDid !== undefined && (obj.publicDid = message.publicDid);
        return obj;
    },

    fromPartial(object: DeepPartial<WalletConfiguration>): WalletConfiguration {
        const message = createBaseWalletConfiguration();
        message.name = object.name ?? "";
        message.email = object.email ?? "";
        message.sms = object.sms ?? "";
        message.walletId = object.walletId ?? "";
        message.publicDid = object.publicDid ?? "";
        return message;
    },
};

function createBaseIonOptions(): IonOptions {
    return { network: 0 };
}

export const IonOptions = {
    encode(
        message: IonOptions,
        writer: _m0.Writer = _m0.Writer.create()
    ): _m0.Writer {
        if (message.network !== 0) {
            writer.uint32(8).int32(message.network);
        }
        return writer;
    },

    decode(input: _m0.Reader | Uint8Array, length?: number): IonOptions {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseIonOptions();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.network = reader.int32() as any;
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },

    fromJSON(object: any): IonOptions {
        return {
            network: isSet(object.network)
                ? ionOptions_IonNetworkFromJSON(object.network)
                : 0,
        };
    },

    toJSON(message: IonOptions): unknown {
        const obj: any = {};
        message.network !== undefined &&
            (obj.network = ionOptions_IonNetworkToJSON(message.network));
        return obj;
    },

    fromPartial(object: DeepPartial<IonOptions>): IonOptions {
        const message = createBaseIonOptions();
        message.network = object.network ?? 0;
        return message;
    },
};

function createBaseUpgradeDidRequest(): UpgradeDidRequest {
    return {
        email: undefined,
        walletId: undefined,
        method: 0,
        ionOptions: undefined,
    };
}

export const UpgradeDidRequest = {
    encode(
        message: UpgradeDidRequest,
        writer: _m0.Writer = _m0.Writer.create()
    ): _m0.Writer {
        if (message.email !== undefined) {
            writer.uint32(10).string(message.email);
        }
        if (message.walletId !== undefined) {
            writer.uint32(18).string(message.walletId);
        }
        if (message.method !== 0) {
            writer.uint32(24).int32(message.method);
        }
        if (message.ionOptions !== undefined) {
            IonOptions.encode(
                message.ionOptions,
                writer.uint32(34).fork()
            ).ldelim();
        }
        return writer;
    },

    decode(input: _m0.Reader | Uint8Array, length?: number): UpgradeDidRequest {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseUpgradeDidRequest();
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
                    message.method = reader.int32() as any;
                    break;
                case 4:
                    message.ionOptions = IonOptions.decode(
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

    fromJSON(object: any): UpgradeDidRequest {
        return {
            email: isSet(object.email) ? String(object.email) : undefined,
            walletId: isSet(object.walletId)
                ? String(object.walletId)
                : undefined,
            method: isSet(object.method)
                ? supportedDidMethodFromJSON(object.method)
                : 0,
            ionOptions: isSet(object.ionOptions)
                ? IonOptions.fromJSON(object.ionOptions)
                : undefined,
        };
    },

    toJSON(message: UpgradeDidRequest): unknown {
        const obj: any = {};
        message.email !== undefined && (obj.email = message.email);
        message.walletId !== undefined && (obj.walletId = message.walletId);
        message.method !== undefined &&
            (obj.method = supportedDidMethodToJSON(message.method));
        message.ionOptions !== undefined &&
            (obj.ionOptions = message.ionOptions
                ? IonOptions.toJSON(message.ionOptions)
                : undefined);
        return obj;
    },

    fromPartial(object: DeepPartial<UpgradeDidRequest>): UpgradeDidRequest {
        const message = createBaseUpgradeDidRequest();
        message.email = object.email ?? undefined;
        message.walletId = object.walletId ?? undefined;
        message.method = object.method ?? 0;
        message.ionOptions =
            object.ionOptions !== undefined && object.ionOptions !== null
                ? IonOptions.fromPartial(object.ionOptions)
                : undefined;
        return message;
    },
};

function createBaseUpgradeDidResponse(): UpgradeDidResponse {
    return { did: "" };
}

export const UpgradeDidResponse = {
    encode(
        message: UpgradeDidResponse,
        writer: _m0.Writer = _m0.Writer.create()
    ): _m0.Writer {
        if (message.did !== "") {
            writer.uint32(10).string(message.did);
        }
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number
    ): UpgradeDidResponse {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseUpgradeDidResponse();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.did = reader.string();
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },

    fromJSON(object: any): UpgradeDidResponse {
        return {
            did: isSet(object.did) ? String(object.did) : "",
        };
    },

    toJSON(message: UpgradeDidResponse): unknown {
        const obj: any = {};
        message.did !== undefined && (obj.did = message.did);
        return obj;
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
        /** Retrieve the list of permissions for this particular account/ecosystem */
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
        /** Get public ecosystem information about *any* ecosystem */
        getPublicEcosystemInfo: {
            name: "GetPublicEcosystemInfo",
            requestType: GetPublicEcosystemInfoRequest,
            requestStream: false,
            responseType: GetPublicEcosystemInfoResponse,
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
        /** Upgrade a wallet's DID from `did:key` to another method */
        upgradeDID: {
            name: "UpgradeDID",
            requestType: UpgradeDidRequest,
            requestStream: false,
            responseType: UpgradeDidResponse,
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
        /** Call to verify domain */
        refreshDomainVerificationStatus: {
            name: "RefreshDomainVerificationStatus",
            requestType: RefreshDomainVerificationStatusRequest,
            requestStream: false,
            responseType: RefreshDomainVerificationStatusResponse,
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
