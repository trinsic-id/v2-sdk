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

/** Request for creating or signing into an account */
export interface SignInRequest {
    /** Account registration details */
    details?: AccountDetails;
    /**
     * DEPRECATED, will be removed April 1st 2023
     * Invitation code associated with this registration
     *
     * @deprecated
     */
    invitationCode?: string;
    /**
     * ID of Ecosystem to use
     * Ignored if `invitation_code` is passed
     */
    ecosystemId?: string;
}

/** Account registration details */
export interface AccountDetails {
    /** Account name */
    name?: string;
    /** Email address of account */
    email?: string;
    /** SMS number including country code */
    sms?: string;
}

/**
 * Response for creating new account
 * This object will indicate if a confirmation code
 * was sent to one of the users two-factor methods
 * like email, SMS, etc.
 */
export interface SignInResponse {
    /** Indicates if confirmation of account is required. */
    confirmationMethod?: ConfirmationMethod;
    /**
     * Contains authentication data for use with the current device.
     * This object must be stored in a secure place. It can also be
     * protected with a PIN, but this is optional.
     * See the docs at https://docs.trinsic.id for more information
     * on working with authentication data.
     */
    profile?: AccountProfile;
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
    profileType?: string;
    /** Auth data containg information about the current device access */
    authData?: Uint8Array;
    /** Secure token issued by server used to generate zero-knowledge proofs */
    authToken?: Uint8Array;
    /**
     * Token security information about the token.
     * If token protection is enabled, implementations must supply
     * protection secret before using the token for authentication.
     */
    protection?: TokenProtection;
}

/** Token protection info */
export interface TokenProtection {
    /**
     * Indicates if token is protected using a PIN,
     * security code, HSM secret, etc.
     */
    enabled?: boolean;
    /** The method used to protect the token */
    method?: ConfirmationMethod;
}

/** Request for information about the account used to make the request */
export interface AccountInfoRequest {}

/** Information about the account used to make the request */
export interface AccountInfoResponse {
    /**
     * The account details associated with
     * the calling request context
     */
    details?: AccountDetails;
    /**
     * Use `ecosystem_id` instead
     *
     * @deprecated
     */
    ecosystems?: AccountEcosystem[];
    /** The wallet ID associated with this account */
    walletId?: string;
    /** The device ID associated with this account session */
    deviceId?: string;
    /** The ecosystem ID within which this account resides */
    ecosystemId?: string;
    /**
     * The public DID associated with this account.
     * This DID is used as the `issuer` when signing verifiable credentials
     */
    publicDid?: string;
    /**
     * List of active authentication tokens for this wallet.
     * This list does not contain the issued token, only metadata
     * such as ID, description, and creation date.
     */
    authTokens?: WalletAuthToken[];
}

/** Deprecated */
export interface AccountEcosystem {
    id?: string;
    name?: string;
    description?: string;
    uri?: string;
}

/** Request to begin login flow */
export interface LoginRequest {
    /** Email address of account. If unspecified, an anonymous account will be created. */
    email?: string;
    /**
     * DEPRECATED, will be removed April 1st 2023
     * Invitation code associated with this registration
     *
     * @deprecated
     */
    invitationCode?: string;
    /**
     * ID of Ecosystem to sign into.
     * Ignored if `invitation_code` is passed.
     */
    ecosystemId?: string;
}

/** Response to `LoginRequest` */
export interface LoginResponse {
    /**
     * Random byte sequence unique to this login request.
     * If present, two-factor confirmation of login is required.
     * Must be sent back, unaltered, in `LoginConfirm`.
     */
    challenge?: Uint8Array | undefined;
    /** Account profile response. If present, no confirmation of login is required. */
    profile?: AccountProfile | undefined;
}

/** Request to finalize login flow */
export interface LoginConfirmRequest {
    /** Challenge received from `Login` */
    challenge?: Uint8Array;
    /**
     * Two-factor confirmation code sent to account email or phone,
     * hashed using Blake3. Our SDKs will handle this hashing process for you.
     */
    confirmationCodeHashed?: Uint8Array;
}

/** Response to `LoginConfirmRequest` */
export interface LoginConfirmResponse {
    /**
     * Profile response; must be unprotected using unhashed confirmation code.
     * Our SDKs will handle this process for you, and return to you an authentication token string.
     */
    profile?: AccountProfile;
}

/**
 * Request to authorize Ecosystem provider to receive webhooks for events
 * which occur on this wallet.
 *
 * @deprecated
 */
export interface AuthorizeWebhookRequest {
    /** Events to authorize access to. Default is "*" (all events) */
    events?: string[];
}

/**
 * Response to `AuthorizeWebhookRequest`
 *
 * @deprecated
 */
export interface AuthorizeWebhookResponse {}

/** Information about authenticaton tokens for a wallet */
export interface WalletAuthToken {
    /**
     * Unique identifier for the token.
     * This field will match the `DeviceId` in the WalletAuthData
     */
    id?: string;
    /** Device name/description */
    description?: string | undefined;
    /** Date when the token was created in ISO 8601 format */
    dateCreated?: string;
}

function createBaseSignInRequest(): SignInRequest {
    return { details: undefined, invitationCode: "", ecosystemId: "" };
}

export const SignInRequest = {
    encode(
        message: SignInRequest,
        writer: _m0.Writer = _m0.Writer.create()
    ): _m0.Writer {
        if (message.details !== undefined) {
            AccountDetails.encode(
                message.details,
                writer.uint32(10).fork()
            ).ldelim();
        }
        if (
            message.invitationCode !== undefined &&
            message.invitationCode !== ""
        ) {
            writer.uint32(18).string(message.invitationCode);
        }
        if (message.ecosystemId !== undefined && message.ecosystemId !== "") {
            writer.uint32(26).string(message.ecosystemId);
        }
        return writer;
    },

    decode(input: _m0.Reader | Uint8Array, length?: number): SignInRequest {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseSignInRequest();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.details = AccountDetails.decode(
                        reader,
                        reader.uint32()
                    );
                    break;
                case 2:
                    message.invitationCode = reader.string();
                    break;
                case 3:
                    message.ecosystemId = reader.string();
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },

    fromJSON(object: any): SignInRequest {
        return {
            details: isSet(object.details)
                ? AccountDetails.fromJSON(object.details)
                : undefined,
            invitationCode: isSet(object.invitationCode)
                ? String(object.invitationCode)
                : "",
            ecosystemId: isSet(object.ecosystemId)
                ? String(object.ecosystemId)
                : "",
        };
    },

    toJSON(message: SignInRequest): unknown {
        const obj: any = {};
        message.details !== undefined &&
            (obj.details = message.details
                ? AccountDetails.toJSON(message.details)
                : undefined);
        message.invitationCode !== undefined &&
            (obj.invitationCode = message.invitationCode);
        message.ecosystemId !== undefined &&
            (obj.ecosystemId = message.ecosystemId);
        return obj;
    },

    fromPartial(object: DeepPartial<SignInRequest>): SignInRequest {
        const message = createBaseSignInRequest();
        message.details =
            object.details !== undefined && object.details !== null
                ? AccountDetails.fromPartial(object.details)
                : undefined;
        message.invitationCode = object.invitationCode ?? "";
        message.ecosystemId = object.ecosystemId ?? "";
        return message;
    },
};

function createBaseAccountDetails(): AccountDetails {
    return { name: "", email: "", sms: "" };
}

export const AccountDetails = {
    encode(
        message: AccountDetails,
        writer: _m0.Writer = _m0.Writer.create()
    ): _m0.Writer {
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
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseAccountDetails();
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
                default:
                    reader.skipType(tag & 7);
                    break;
            }
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
        message.name !== undefined && (obj.name = message.name);
        message.email !== undefined && (obj.email = message.email);
        message.sms !== undefined && (obj.sms = message.sms);
        return obj;
    },

    fromPartial(object: DeepPartial<AccountDetails>): AccountDetails {
        const message = createBaseAccountDetails();
        message.name = object.name ?? "";
        message.email = object.email ?? "";
        message.sms = object.sms ?? "";
        return message;
    },
};

function createBaseSignInResponse(): SignInResponse {
    return { confirmationMethod: 0, profile: undefined };
}

export const SignInResponse = {
    encode(
        message: SignInResponse,
        writer: _m0.Writer = _m0.Writer.create()
    ): _m0.Writer {
        if (
            message.confirmationMethod !== undefined &&
            message.confirmationMethod !== 0
        ) {
            writer.uint32(24).int32(message.confirmationMethod);
        }
        if (message.profile !== undefined) {
            AccountProfile.encode(
                message.profile,
                writer.uint32(34).fork()
            ).ldelim();
        }
        return writer;
    },

    decode(input: _m0.Reader | Uint8Array, length?: number): SignInResponse {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseSignInResponse();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 3:
                    message.confirmationMethod = reader.int32() as any;
                    break;
                case 4:
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

    fromJSON(object: any): SignInResponse {
        return {
            confirmationMethod: isSet(object.confirmationMethod)
                ? confirmationMethodFromJSON(object.confirmationMethod)
                : 0,
            profile: isSet(object.profile)
                ? AccountProfile.fromJSON(object.profile)
                : undefined,
        };
    },

    toJSON(message: SignInResponse): unknown {
        const obj: any = {};
        message.confirmationMethod !== undefined &&
            (obj.confirmationMethod = confirmationMethodToJSON(
                message.confirmationMethod
            ));
        message.profile !== undefined &&
            (obj.profile = message.profile
                ? AccountProfile.toJSON(message.profile)
                : undefined);
        return obj;
    },

    fromPartial(object: DeepPartial<SignInResponse>): SignInResponse {
        const message = createBaseSignInResponse();
        message.confirmationMethod = object.confirmationMethod ?? 0;
        message.profile =
            object.profile !== undefined && object.profile !== null
                ? AccountProfile.fromPartial(object.profile)
                : undefined;
        return message;
    },
};

function createBaseAccountProfile(): AccountProfile {
    return {
        profileType: "",
        authData: new Uint8Array(),
        authToken: new Uint8Array(),
        protection: undefined,
    };
}

export const AccountProfile = {
    encode(
        message: AccountProfile,
        writer: _m0.Writer = _m0.Writer.create()
    ): _m0.Writer {
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
            TokenProtection.encode(
                message.protection,
                writer.uint32(34).fork()
            ).ldelim();
        }
        return writer;
    },

    decode(input: _m0.Reader | Uint8Array, length?: number): AccountProfile {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseAccountProfile();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.profileType = reader.string();
                    break;
                case 2:
                    message.authData = reader.bytes();
                    break;
                case 3:
                    message.authToken = reader.bytes();
                    break;
                case 4:
                    message.protection = TokenProtection.decode(
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

    fromJSON(object: any): AccountProfile {
        return {
            profileType: isSet(object.profileType)
                ? String(object.profileType)
                : "",
            authData: isSet(object.authData)
                ? bytesFromBase64(object.authData)
                : new Uint8Array(),
            authToken: isSet(object.authToken)
                ? bytesFromBase64(object.authToken)
                : new Uint8Array(),
            protection: isSet(object.protection)
                ? TokenProtection.fromJSON(object.protection)
                : undefined,
        };
    },

    toJSON(message: AccountProfile): unknown {
        const obj: any = {};
        message.profileType !== undefined &&
            (obj.profileType = message.profileType);
        message.authData !== undefined &&
            (obj.authData = base64FromBytes(
                message.authData !== undefined
                    ? message.authData
                    : new Uint8Array()
            ));
        message.authToken !== undefined &&
            (obj.authToken = base64FromBytes(
                message.authToken !== undefined
                    ? message.authToken
                    : new Uint8Array()
            ));
        message.protection !== undefined &&
            (obj.protection = message.protection
                ? TokenProtection.toJSON(message.protection)
                : undefined);
        return obj;
    },

    fromPartial(object: DeepPartial<AccountProfile>): AccountProfile {
        const message = createBaseAccountProfile();
        message.profileType = object.profileType ?? "";
        message.authData = object.authData ?? new Uint8Array();
        message.authToken = object.authToken ?? new Uint8Array();
        message.protection =
            object.protection !== undefined && object.protection !== null
                ? TokenProtection.fromPartial(object.protection)
                : undefined;
        return message;
    },
};

function createBaseTokenProtection(): TokenProtection {
    return { enabled: false, method: 0 };
}

export const TokenProtection = {
    encode(
        message: TokenProtection,
        writer: _m0.Writer = _m0.Writer.create()
    ): _m0.Writer {
        if (message.enabled === true) {
            writer.uint32(8).bool(message.enabled);
        }
        if (message.method !== undefined && message.method !== 0) {
            writer.uint32(16).int32(message.method);
        }
        return writer;
    },

    decode(input: _m0.Reader | Uint8Array, length?: number): TokenProtection {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseTokenProtection();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.enabled = reader.bool();
                    break;
                case 2:
                    message.method = reader.int32() as any;
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },

    fromJSON(object: any): TokenProtection {
        return {
            enabled: isSet(object.enabled) ? Boolean(object.enabled) : false,
            method: isSet(object.method)
                ? confirmationMethodFromJSON(object.method)
                : 0,
        };
    },

    toJSON(message: TokenProtection): unknown {
        const obj: any = {};
        message.enabled !== undefined && (obj.enabled = message.enabled);
        message.method !== undefined &&
            (obj.method = confirmationMethodToJSON(message.method));
        return obj;
    },

    fromPartial(object: DeepPartial<TokenProtection>): TokenProtection {
        const message = createBaseTokenProtection();
        message.enabled = object.enabled ?? false;
        message.method = object.method ?? 0;
        return message;
    },
};

function createBaseAccountInfoRequest(): AccountInfoRequest {
    return {};
}

export const AccountInfoRequest = {
    encode(
        _: AccountInfoRequest,
        writer: _m0.Writer = _m0.Writer.create()
    ): _m0.Writer {
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number
    ): AccountInfoRequest {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseAccountInfoRequest();
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

    fromJSON(_: any): AccountInfoRequest {
        return {};
    },

    toJSON(_: AccountInfoRequest): unknown {
        const obj: any = {};
        return obj;
    },

    fromPartial(_: DeepPartial<AccountInfoRequest>): AccountInfoRequest {
        const message = createBaseAccountInfoRequest();
        return message;
    },
};

function createBaseAccountInfoResponse(): AccountInfoResponse {
    return {
        details: undefined,
        ecosystems: [],
        walletId: "",
        deviceId: "",
        ecosystemId: "",
        publicDid: "",
        authTokens: [],
    };
}

export const AccountInfoResponse = {
    encode(
        message: AccountInfoResponse,
        writer: _m0.Writer = _m0.Writer.create()
    ): _m0.Writer {
        if (message.details !== undefined) {
            AccountDetails.encode(
                message.details,
                writer.uint32(10).fork()
            ).ldelim();
        }
        if (
            message.ecosystems !== undefined &&
            message.ecosystems.length !== 0
        ) {
            for (const v of message.ecosystems) {
                AccountEcosystem.encode(v!, writer.uint32(18).fork()).ldelim();
            }
        }
        if (message.walletId !== undefined && message.walletId !== "") {
            writer.uint32(26).string(message.walletId);
        }
        if (message.deviceId !== undefined && message.deviceId !== "") {
            writer.uint32(34).string(message.deviceId);
        }
        if (message.ecosystemId !== undefined && message.ecosystemId !== "") {
            writer.uint32(42).string(message.ecosystemId);
        }
        if (message.publicDid !== undefined && message.publicDid !== "") {
            writer.uint32(50).string(message.publicDid);
        }
        if (
            message.authTokens !== undefined &&
            message.authTokens.length !== 0
        ) {
            for (const v of message.authTokens) {
                WalletAuthToken.encode(v!, writer.uint32(66).fork()).ldelim();
            }
        }
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number
    ): AccountInfoResponse {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseAccountInfoResponse();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.details = AccountDetails.decode(
                        reader,
                        reader.uint32()
                    );
                    break;
                case 2:
                    message.ecosystems!.push(
                        AccountEcosystem.decode(reader, reader.uint32())
                    );
                    break;
                case 3:
                    message.walletId = reader.string();
                    break;
                case 4:
                    message.deviceId = reader.string();
                    break;
                case 5:
                    message.ecosystemId = reader.string();
                    break;
                case 6:
                    message.publicDid = reader.string();
                    break;
                case 8:
                    message.authTokens!.push(
                        WalletAuthToken.decode(reader, reader.uint32())
                    );
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },

    fromJSON(object: any): AccountInfoResponse {
        return {
            details: isSet(object.details)
                ? AccountDetails.fromJSON(object.details)
                : undefined,
            ecosystems: Array.isArray(object?.ecosystems)
                ? object.ecosystems.map((e: any) =>
                      AccountEcosystem.fromJSON(e)
                  )
                : [],
            walletId: isSet(object.walletId) ? String(object.walletId) : "",
            deviceId: isSet(object.deviceId) ? String(object.deviceId) : "",
            ecosystemId: isSet(object.ecosystemId)
                ? String(object.ecosystemId)
                : "",
            publicDid: isSet(object.publicDid) ? String(object.publicDid) : "",
            authTokens: Array.isArray(object?.authTokens)
                ? object.authTokens.map((e: any) => WalletAuthToken.fromJSON(e))
                : [],
        };
    },

    toJSON(message: AccountInfoResponse): unknown {
        const obj: any = {};
        message.details !== undefined &&
            (obj.details = message.details
                ? AccountDetails.toJSON(message.details)
                : undefined);
        if (message.ecosystems) {
            obj.ecosystems = message.ecosystems.map((e) =>
                e ? AccountEcosystem.toJSON(e) : undefined
            );
        } else {
            obj.ecosystems = [];
        }
        message.walletId !== undefined && (obj.walletId = message.walletId);
        message.deviceId !== undefined && (obj.deviceId = message.deviceId);
        message.ecosystemId !== undefined &&
            (obj.ecosystemId = message.ecosystemId);
        message.publicDid !== undefined && (obj.publicDid = message.publicDid);
        if (message.authTokens) {
            obj.authTokens = message.authTokens.map((e) =>
                e ? WalletAuthToken.toJSON(e) : undefined
            );
        } else {
            obj.authTokens = [];
        }
        return obj;
    },

    fromPartial(object: DeepPartial<AccountInfoResponse>): AccountInfoResponse {
        const message = createBaseAccountInfoResponse();
        message.details =
            object.details !== undefined && object.details !== null
                ? AccountDetails.fromPartial(object.details)
                : undefined;
        message.ecosystems =
            object.ecosystems?.map((e) => AccountEcosystem.fromPartial(e)) ||
            [];
        message.walletId = object.walletId ?? "";
        message.deviceId = object.deviceId ?? "";
        message.ecosystemId = object.ecosystemId ?? "";
        message.publicDid = object.publicDid ?? "";
        message.authTokens =
            object.authTokens?.map((e) => WalletAuthToken.fromPartial(e)) || [];
        return message;
    },
};

function createBaseAccountEcosystem(): AccountEcosystem {
    return { id: "", name: "", description: "", uri: "" };
}

export const AccountEcosystem = {
    encode(
        message: AccountEcosystem,
        writer: _m0.Writer = _m0.Writer.create()
    ): _m0.Writer {
        if (message.id !== undefined && message.id !== "") {
            writer.uint32(10).string(message.id);
        }
        if (message.name !== undefined && message.name !== "") {
            writer.uint32(18).string(message.name);
        }
        if (message.description !== undefined && message.description !== "") {
            writer.uint32(26).string(message.description);
        }
        if (message.uri !== undefined && message.uri !== "") {
            writer.uint32(34).string(message.uri);
        }
        return writer;
    },

    decode(input: _m0.Reader | Uint8Array, length?: number): AccountEcosystem {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseAccountEcosystem();
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
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },

    fromJSON(object: any): AccountEcosystem {
        return {
            id: isSet(object.id) ? String(object.id) : "",
            name: isSet(object.name) ? String(object.name) : "",
            description: isSet(object.description)
                ? String(object.description)
                : "",
            uri: isSet(object.uri) ? String(object.uri) : "",
        };
    },

    toJSON(message: AccountEcosystem): unknown {
        const obj: any = {};
        message.id !== undefined && (obj.id = message.id);
        message.name !== undefined && (obj.name = message.name);
        message.description !== undefined &&
            (obj.description = message.description);
        message.uri !== undefined && (obj.uri = message.uri);
        return obj;
    },

    fromPartial(object: DeepPartial<AccountEcosystem>): AccountEcosystem {
        const message = createBaseAccountEcosystem();
        message.id = object.id ?? "";
        message.name = object.name ?? "";
        message.description = object.description ?? "";
        message.uri = object.uri ?? "";
        return message;
    },
};

function createBaseLoginRequest(): LoginRequest {
    return { email: "", invitationCode: "", ecosystemId: "" };
}

export const LoginRequest = {
    encode(
        message: LoginRequest,
        writer: _m0.Writer = _m0.Writer.create()
    ): _m0.Writer {
        if (message.email !== undefined && message.email !== "") {
            writer.uint32(10).string(message.email);
        }
        if (
            message.invitationCode !== undefined &&
            message.invitationCode !== ""
        ) {
            writer.uint32(18).string(message.invitationCode);
        }
        if (message.ecosystemId !== undefined && message.ecosystemId !== "") {
            writer.uint32(26).string(message.ecosystemId);
        }
        return writer;
    },

    decode(input: _m0.Reader | Uint8Array, length?: number): LoginRequest {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseLoginRequest();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.email = reader.string();
                    break;
                case 2:
                    message.invitationCode = reader.string();
                    break;
                case 3:
                    message.ecosystemId = reader.string();
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },

    fromJSON(object: any): LoginRequest {
        return {
            email: isSet(object.email) ? String(object.email) : "",
            invitationCode: isSet(object.invitationCode)
                ? String(object.invitationCode)
                : "",
            ecosystemId: isSet(object.ecosystemId)
                ? String(object.ecosystemId)
                : "",
        };
    },

    toJSON(message: LoginRequest): unknown {
        const obj: any = {};
        message.email !== undefined && (obj.email = message.email);
        message.invitationCode !== undefined &&
            (obj.invitationCode = message.invitationCode);
        message.ecosystemId !== undefined &&
            (obj.ecosystemId = message.ecosystemId);
        return obj;
    },

    fromPartial(object: DeepPartial<LoginRequest>): LoginRequest {
        const message = createBaseLoginRequest();
        message.email = object.email ?? "";
        message.invitationCode = object.invitationCode ?? "";
        message.ecosystemId = object.ecosystemId ?? "";
        return message;
    },
};

function createBaseLoginResponse(): LoginResponse {
    return { challenge: undefined, profile: undefined };
}

export const LoginResponse = {
    encode(
        message: LoginResponse,
        writer: _m0.Writer = _m0.Writer.create()
    ): _m0.Writer {
        if (message.challenge !== undefined) {
            writer.uint32(10).bytes(message.challenge);
        }
        if (message.profile !== undefined) {
            AccountProfile.encode(
                message.profile,
                writer.uint32(18).fork()
            ).ldelim();
        }
        return writer;
    },

    decode(input: _m0.Reader | Uint8Array, length?: number): LoginResponse {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseLoginResponse();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.challenge = reader.bytes();
                    break;
                case 2:
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

    fromJSON(object: any): LoginResponse {
        return {
            challenge: isSet(object.challenge)
                ? bytesFromBase64(object.challenge)
                : undefined,
            profile: isSet(object.profile)
                ? AccountProfile.fromJSON(object.profile)
                : undefined,
        };
    },

    toJSON(message: LoginResponse): unknown {
        const obj: any = {};
        message.challenge !== undefined &&
            (obj.challenge =
                message.challenge !== undefined
                    ? base64FromBytes(message.challenge)
                    : undefined);
        message.profile !== undefined &&
            (obj.profile = message.profile
                ? AccountProfile.toJSON(message.profile)
                : undefined);
        return obj;
    },

    fromPartial(object: DeepPartial<LoginResponse>): LoginResponse {
        const message = createBaseLoginResponse();
        message.challenge = object.challenge ?? undefined;
        message.profile =
            object.profile !== undefined && object.profile !== null
                ? AccountProfile.fromPartial(object.profile)
                : undefined;
        return message;
    },
};

function createBaseLoginConfirmRequest(): LoginConfirmRequest {
    return {
        challenge: new Uint8Array(),
        confirmationCodeHashed: new Uint8Array(),
    };
}

export const LoginConfirmRequest = {
    encode(
        message: LoginConfirmRequest,
        writer: _m0.Writer = _m0.Writer.create()
    ): _m0.Writer {
        if (message.challenge !== undefined && message.challenge.length !== 0) {
            writer.uint32(10).bytes(message.challenge);
        }
        if (
            message.confirmationCodeHashed !== undefined &&
            message.confirmationCodeHashed.length !== 0
        ) {
            writer.uint32(18).bytes(message.confirmationCodeHashed);
        }
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number
    ): LoginConfirmRequest {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseLoginConfirmRequest();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.challenge = reader.bytes();
                    break;
                case 2:
                    message.confirmationCodeHashed = reader.bytes();
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },

    fromJSON(object: any): LoginConfirmRequest {
        return {
            challenge: isSet(object.challenge)
                ? bytesFromBase64(object.challenge)
                : new Uint8Array(),
            confirmationCodeHashed: isSet(object.confirmationCodeHashed)
                ? bytesFromBase64(object.confirmationCodeHashed)
                : new Uint8Array(),
        };
    },

    toJSON(message: LoginConfirmRequest): unknown {
        const obj: any = {};
        message.challenge !== undefined &&
            (obj.challenge = base64FromBytes(
                message.challenge !== undefined
                    ? message.challenge
                    : new Uint8Array()
            ));
        message.confirmationCodeHashed !== undefined &&
            (obj.confirmationCodeHashed = base64FromBytes(
                message.confirmationCodeHashed !== undefined
                    ? message.confirmationCodeHashed
                    : new Uint8Array()
            ));
        return obj;
    },

    fromPartial(object: DeepPartial<LoginConfirmRequest>): LoginConfirmRequest {
        const message = createBaseLoginConfirmRequest();
        message.challenge = object.challenge ?? new Uint8Array();
        message.confirmationCodeHashed =
            object.confirmationCodeHashed ?? new Uint8Array();
        return message;
    },
};

function createBaseLoginConfirmResponse(): LoginConfirmResponse {
    return { profile: undefined };
}

export const LoginConfirmResponse = {
    encode(
        message: LoginConfirmResponse,
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
    ): LoginConfirmResponse {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseLoginConfirmResponse();
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

    fromJSON(object: any): LoginConfirmResponse {
        return {
            profile: isSet(object.profile)
                ? AccountProfile.fromJSON(object.profile)
                : undefined,
        };
    },

    toJSON(message: LoginConfirmResponse): unknown {
        const obj: any = {};
        message.profile !== undefined &&
            (obj.profile = message.profile
                ? AccountProfile.toJSON(message.profile)
                : undefined);
        return obj;
    },

    fromPartial(
        object: DeepPartial<LoginConfirmResponse>
    ): LoginConfirmResponse {
        const message = createBaseLoginConfirmResponse();
        message.profile =
            object.profile !== undefined && object.profile !== null
                ? AccountProfile.fromPartial(object.profile)
                : undefined;
        return message;
    },
};

function createBaseAuthorizeWebhookRequest(): AuthorizeWebhookRequest {
    return { events: [] };
}

export const AuthorizeWebhookRequest = {
    encode(
        message: AuthorizeWebhookRequest,
        writer: _m0.Writer = _m0.Writer.create()
    ): _m0.Writer {
        if (message.events !== undefined && message.events.length !== 0) {
            for (const v of message.events) {
                writer.uint32(10).string(v!);
            }
        }
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number
    ): AuthorizeWebhookRequest {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseAuthorizeWebhookRequest();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.events!.push(reader.string());
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },

    fromJSON(object: any): AuthorizeWebhookRequest {
        return {
            events: Array.isArray(object?.events)
                ? object.events.map((e: any) => String(e))
                : [],
        };
    },

    toJSON(message: AuthorizeWebhookRequest): unknown {
        const obj: any = {};
        if (message.events) {
            obj.events = message.events.map((e) => e);
        } else {
            obj.events = [];
        }
        return obj;
    },

    fromPartial(
        object: DeepPartial<AuthorizeWebhookRequest>
    ): AuthorizeWebhookRequest {
        const message = createBaseAuthorizeWebhookRequest();
        message.events = object.events?.map((e) => e) || [];
        return message;
    },
};

function createBaseAuthorizeWebhookResponse(): AuthorizeWebhookResponse {
    return {};
}

export const AuthorizeWebhookResponse = {
    encode(
        _: AuthorizeWebhookResponse,
        writer: _m0.Writer = _m0.Writer.create()
    ): _m0.Writer {
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number
    ): AuthorizeWebhookResponse {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseAuthorizeWebhookResponse();
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

    fromJSON(_: any): AuthorizeWebhookResponse {
        return {};
    },

    toJSON(_: AuthorizeWebhookResponse): unknown {
        const obj: any = {};
        return obj;
    },

    fromPartial(
        _: DeepPartial<AuthorizeWebhookResponse>
    ): AuthorizeWebhookResponse {
        const message = createBaseAuthorizeWebhookResponse();
        return message;
    },
};

function createBaseWalletAuthToken(): WalletAuthToken {
    return { id: "", description: undefined, dateCreated: "" };
}

export const WalletAuthToken = {
    encode(
        message: WalletAuthToken,
        writer: _m0.Writer = _m0.Writer.create()
    ): _m0.Writer {
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
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseWalletAuthToken();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.id = reader.string();
                    break;
                case 2:
                    message.description = reader.string();
                    break;
                case 3:
                    message.dateCreated = reader.string();
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },

    fromJSON(object: any): WalletAuthToken {
        return {
            id: isSet(object.id) ? String(object.id) : "",
            description: isSet(object.description)
                ? String(object.description)
                : undefined,
            dateCreated: isSet(object.dateCreated)
                ? String(object.dateCreated)
                : "",
        };
    },

    toJSON(message: WalletAuthToken): unknown {
        const obj: any = {};
        message.id !== undefined && (obj.id = message.id);
        message.description !== undefined &&
            (obj.description = message.description);
        message.dateCreated !== undefined &&
            (obj.dateCreated = message.dateCreated);
        return obj;
    },

    fromPartial(object: DeepPartial<WalletAuthToken>): WalletAuthToken {
        const message = createBaseWalletAuthToken();
        message.id = object.id ?? "";
        message.description = object.description ?? undefined;
        message.dateCreated = object.dateCreated ?? "";
        return message;
    },
};

export type AccountDefinition = typeof AccountDefinition;
export const AccountDefinition = {
    name: "Account",
    fullName: "services.account.v1.Account",
    methods: {
        /**
         * Sign in to an already existing account
         *
         * @deprecated
         */
        signIn: {
            name: "SignIn",
            requestType: SignInRequest,
            requestStream: false,
            responseType: SignInResponse,
            responseStream: false,
            options: {},
        },
        /**
         * Begin login flow for specified account, creating one if it does not already exist
         *
         * @deprecated
         */
        login: {
            name: "Login",
            requestType: LoginRequest,
            requestStream: false,
            responseType: LoginResponse,
            responseStream: false,
            options: {},
        },
        /**
         * Finalize login flow with two-factor confirmation code
         *
         * @deprecated
         */
        loginConfirm: {
            name: "LoginConfirm",
            requestType: LoginConfirmRequest,
            requestStream: false,
            responseType: LoginConfirmResponse,
            responseStream: false,
            options: {},
        },
        /**
         * Get account information
         *
         * @deprecated
         */
        info: {
            name: "Info",
            requestType: AccountInfoRequest,
            requestStream: false,
            responseType: AccountInfoResponse,
            responseStream: false,
            options: {},
        },
        /** Authorize Ecosystem to receive webhook events */
        authorizeWebhook: {
            name: "AuthorizeWebhook",
            requestType: AuthorizeWebhookRequest,
            requestStream: false,
            responseType: AuthorizeWebhookResponse,
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
