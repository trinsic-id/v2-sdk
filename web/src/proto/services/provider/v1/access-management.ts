/* eslint-disable */
import _m0 from "protobufjs/minimal";

/** Role management */
export interface AddRoleAssignmentRequest {
    /** Role to assign */
    role?: string;
    /**
     * Email address of account to assign role.
     * Mutually exclusive with `walletId` and `didUri`.
     */
    email?: string | undefined;
    /**
     * Wallet ID of account to assign role to.
     * Mutually exclusive with `email` and `didUri`.
     */
    walletId?: string | undefined;
    /**
     * DID URI of the account to assign role.
     * Mutually exclusive with `email` and `walletId`.
     */
    didUri?: string | undefined;
}

export interface AddRoleAssignmentResponse {}

export interface RemoveRoleAssignmentRequest {
    /** Role to unassign */
    role?: string;
    /**
     * Email address of account to unassign role.
     * Mutually exclusive with `walletId` and `didUri`.
     */
    email?: string | undefined;
    /**
     * Wallet ID of account to unassign role.
     * Mutually exclusive with `email` and `didUri`.
     */
    walletId?: string | undefined;
    /**
     * DID URI of the account to unassign role.
     * Mutually exclusive with `email` and `walletId`.
     */
    didUri?: string | undefined;
}

export interface RemoveRoleAssignmentResponse {}

/** Request to fetch the list of roles assigned to the current account */
export interface ListRoleAssignmentsRequest {
    /**
     * Email address of account to list roles.
     * Mutually exclusive with `walletId` and `didUri`.
     */
    email?: string | undefined;
    /**
     * Wallet ID of account to list roles.
     * Mutually exclusive with `email` and `didUri`.
     */
    walletId?: string | undefined;
    /**
     * DID URI of the account to list roles.
     * Mutually exclusive with `email` and `walletId`.
     */
    didUri?: string | undefined;
}

export interface ListRoleAssignmentsResponse {
    /** List of roles */
    roles?: string[];
}

/** Request to fetch the available roles in the current ecosystem */
export interface ListAvailableRolesRequest {}

export interface ListAvailableRolesResponse {
    /** List of roles */
    roles?: string[];
}

function createBaseAddRoleAssignmentRequest(): AddRoleAssignmentRequest {
    return {
        role: "",
        email: undefined,
        walletId: undefined,
        didUri: undefined,
    };
}

export const AddRoleAssignmentRequest = {
    encode(
        message: AddRoleAssignmentRequest,
        writer: _m0.Writer = _m0.Writer.create()
    ): _m0.Writer {
        if (message.role !== undefined && message.role !== "") {
            writer.uint32(10).string(message.role);
        }
        if (message.email !== undefined) {
            writer.uint32(18).string(message.email);
        }
        if (message.walletId !== undefined) {
            writer.uint32(26).string(message.walletId);
        }
        if (message.didUri !== undefined) {
            writer.uint32(34).string(message.didUri);
        }
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number
    ): AddRoleAssignmentRequest {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseAddRoleAssignmentRequest();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.role = reader.string();
                    break;
                case 2:
                    message.email = reader.string();
                    break;
                case 3:
                    message.walletId = reader.string();
                    break;
                case 4:
                    message.didUri = reader.string();
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },

    fromJSON(object: any): AddRoleAssignmentRequest {
        return {
            role: isSet(object.role) ? String(object.role) : "",
            email: isSet(object.email) ? String(object.email) : undefined,
            walletId: isSet(object.walletId)
                ? String(object.walletId)
                : undefined,
            didUri: isSet(object.didUri) ? String(object.didUri) : undefined,
        };
    },

    toJSON(message: AddRoleAssignmentRequest): unknown {
        const obj: any = {};
        message.role !== undefined && (obj.role = message.role);
        message.email !== undefined && (obj.email = message.email);
        message.walletId !== undefined && (obj.walletId = message.walletId);
        message.didUri !== undefined && (obj.didUri = message.didUri);
        return obj;
    },

    fromPartial(
        object: DeepPartial<AddRoleAssignmentRequest>
    ): AddRoleAssignmentRequest {
        const message = createBaseAddRoleAssignmentRequest();
        message.role = object.role ?? "";
        message.email = object.email ?? undefined;
        message.walletId = object.walletId ?? undefined;
        message.didUri = object.didUri ?? undefined;
        return message;
    },
};

function createBaseAddRoleAssignmentResponse(): AddRoleAssignmentResponse {
    return {};
}

export const AddRoleAssignmentResponse = {
    encode(
        _: AddRoleAssignmentResponse,
        writer: _m0.Writer = _m0.Writer.create()
    ): _m0.Writer {
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number
    ): AddRoleAssignmentResponse {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseAddRoleAssignmentResponse();
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

    fromJSON(_: any): AddRoleAssignmentResponse {
        return {};
    },

    toJSON(_: AddRoleAssignmentResponse): unknown {
        const obj: any = {};
        return obj;
    },

    fromPartial(
        _: DeepPartial<AddRoleAssignmentResponse>
    ): AddRoleAssignmentResponse {
        const message = createBaseAddRoleAssignmentResponse();
        return message;
    },
};

function createBaseRemoveRoleAssignmentRequest(): RemoveRoleAssignmentRequest {
    return {
        role: "",
        email: undefined,
        walletId: undefined,
        didUri: undefined,
    };
}

export const RemoveRoleAssignmentRequest = {
    encode(
        message: RemoveRoleAssignmentRequest,
        writer: _m0.Writer = _m0.Writer.create()
    ): _m0.Writer {
        if (message.role !== undefined && message.role !== "") {
            writer.uint32(10).string(message.role);
        }
        if (message.email !== undefined) {
            writer.uint32(18).string(message.email);
        }
        if (message.walletId !== undefined) {
            writer.uint32(26).string(message.walletId);
        }
        if (message.didUri !== undefined) {
            writer.uint32(34).string(message.didUri);
        }
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number
    ): RemoveRoleAssignmentRequest {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseRemoveRoleAssignmentRequest();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.role = reader.string();
                    break;
                case 2:
                    message.email = reader.string();
                    break;
                case 3:
                    message.walletId = reader.string();
                    break;
                case 4:
                    message.didUri = reader.string();
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },

    fromJSON(object: any): RemoveRoleAssignmentRequest {
        return {
            role: isSet(object.role) ? String(object.role) : "",
            email: isSet(object.email) ? String(object.email) : undefined,
            walletId: isSet(object.walletId)
                ? String(object.walletId)
                : undefined,
            didUri: isSet(object.didUri) ? String(object.didUri) : undefined,
        };
    },

    toJSON(message: RemoveRoleAssignmentRequest): unknown {
        const obj: any = {};
        message.role !== undefined && (obj.role = message.role);
        message.email !== undefined && (obj.email = message.email);
        message.walletId !== undefined && (obj.walletId = message.walletId);
        message.didUri !== undefined && (obj.didUri = message.didUri);
        return obj;
    },

    fromPartial(
        object: DeepPartial<RemoveRoleAssignmentRequest>
    ): RemoveRoleAssignmentRequest {
        const message = createBaseRemoveRoleAssignmentRequest();
        message.role = object.role ?? "";
        message.email = object.email ?? undefined;
        message.walletId = object.walletId ?? undefined;
        message.didUri = object.didUri ?? undefined;
        return message;
    },
};

function createBaseRemoveRoleAssignmentResponse(): RemoveRoleAssignmentResponse {
    return {};
}

export const RemoveRoleAssignmentResponse = {
    encode(
        _: RemoveRoleAssignmentResponse,
        writer: _m0.Writer = _m0.Writer.create()
    ): _m0.Writer {
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number
    ): RemoveRoleAssignmentResponse {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseRemoveRoleAssignmentResponse();
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

    fromJSON(_: any): RemoveRoleAssignmentResponse {
        return {};
    },

    toJSON(_: RemoveRoleAssignmentResponse): unknown {
        const obj: any = {};
        return obj;
    },

    fromPartial(
        _: DeepPartial<RemoveRoleAssignmentResponse>
    ): RemoveRoleAssignmentResponse {
        const message = createBaseRemoveRoleAssignmentResponse();
        return message;
    },
};

function createBaseListRoleAssignmentsRequest(): ListRoleAssignmentsRequest {
    return { email: undefined, walletId: undefined, didUri: undefined };
}

export const ListRoleAssignmentsRequest = {
    encode(
        message: ListRoleAssignmentsRequest,
        writer: _m0.Writer = _m0.Writer.create()
    ): _m0.Writer {
        if (message.email !== undefined) {
            writer.uint32(18).string(message.email);
        }
        if (message.walletId !== undefined) {
            writer.uint32(26).string(message.walletId);
        }
        if (message.didUri !== undefined) {
            writer.uint32(34).string(message.didUri);
        }
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number
    ): ListRoleAssignmentsRequest {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseListRoleAssignmentsRequest();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 2:
                    message.email = reader.string();
                    break;
                case 3:
                    message.walletId = reader.string();
                    break;
                case 4:
                    message.didUri = reader.string();
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },

    fromJSON(object: any): ListRoleAssignmentsRequest {
        return {
            email: isSet(object.email) ? String(object.email) : undefined,
            walletId: isSet(object.walletId)
                ? String(object.walletId)
                : undefined,
            didUri: isSet(object.didUri) ? String(object.didUri) : undefined,
        };
    },

    toJSON(message: ListRoleAssignmentsRequest): unknown {
        const obj: any = {};
        message.email !== undefined && (obj.email = message.email);
        message.walletId !== undefined && (obj.walletId = message.walletId);
        message.didUri !== undefined && (obj.didUri = message.didUri);
        return obj;
    },

    fromPartial(
        object: DeepPartial<ListRoleAssignmentsRequest>
    ): ListRoleAssignmentsRequest {
        const message = createBaseListRoleAssignmentsRequest();
        message.email = object.email ?? undefined;
        message.walletId = object.walletId ?? undefined;
        message.didUri = object.didUri ?? undefined;
        return message;
    },
};

function createBaseListRoleAssignmentsResponse(): ListRoleAssignmentsResponse {
    return { roles: [] };
}

export const ListRoleAssignmentsResponse = {
    encode(
        message: ListRoleAssignmentsResponse,
        writer: _m0.Writer = _m0.Writer.create()
    ): _m0.Writer {
        if (message.roles !== undefined && message.roles.length !== 0) {
            for (const v of message.roles) {
                writer.uint32(10).string(v!);
            }
        }
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number
    ): ListRoleAssignmentsResponse {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseListRoleAssignmentsResponse();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.roles!.push(reader.string());
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },

    fromJSON(object: any): ListRoleAssignmentsResponse {
        return {
            roles: Array.isArray(object?.roles)
                ? object.roles.map((e: any) => String(e))
                : [],
        };
    },

    toJSON(message: ListRoleAssignmentsResponse): unknown {
        const obj: any = {};
        if (message.roles) {
            obj.roles = message.roles.map((e) => e);
        } else {
            obj.roles = [];
        }
        return obj;
    },

    fromPartial(
        object: DeepPartial<ListRoleAssignmentsResponse>
    ): ListRoleAssignmentsResponse {
        const message = createBaseListRoleAssignmentsResponse();
        message.roles = object.roles?.map((e) => e) || [];
        return message;
    },
};

function createBaseListAvailableRolesRequest(): ListAvailableRolesRequest {
    return {};
}

export const ListAvailableRolesRequest = {
    encode(
        _: ListAvailableRolesRequest,
        writer: _m0.Writer = _m0.Writer.create()
    ): _m0.Writer {
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number
    ): ListAvailableRolesRequest {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseListAvailableRolesRequest();
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

    fromJSON(_: any): ListAvailableRolesRequest {
        return {};
    },

    toJSON(_: ListAvailableRolesRequest): unknown {
        const obj: any = {};
        return obj;
    },

    fromPartial(
        _: DeepPartial<ListAvailableRolesRequest>
    ): ListAvailableRolesRequest {
        const message = createBaseListAvailableRolesRequest();
        return message;
    },
};

function createBaseListAvailableRolesResponse(): ListAvailableRolesResponse {
    return { roles: [] };
}

export const ListAvailableRolesResponse = {
    encode(
        message: ListAvailableRolesResponse,
        writer: _m0.Writer = _m0.Writer.create()
    ): _m0.Writer {
        if (message.roles !== undefined && message.roles.length !== 0) {
            for (const v of message.roles) {
                writer.uint32(10).string(v!);
            }
        }
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number
    ): ListAvailableRolesResponse {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseListAvailableRolesResponse();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.roles!.push(reader.string());
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },

    fromJSON(object: any): ListAvailableRolesResponse {
        return {
            roles: Array.isArray(object?.roles)
                ? object.roles.map((e: any) => String(e))
                : [],
        };
    },

    toJSON(message: ListAvailableRolesResponse): unknown {
        const obj: any = {};
        if (message.roles) {
            obj.roles = message.roles.map((e) => e);
        } else {
            obj.roles = [];
        }
        return obj;
    },

    fromPartial(
        object: DeepPartial<ListAvailableRolesResponse>
    ): ListAvailableRolesResponse {
        const message = createBaseListAvailableRolesResponse();
        message.roles = object.roles?.map((e) => e) || [];
        return message;
    },
};

/**
 * Access Management service provides methods to manage access to ecosystem resources
 * such by assigning roles and permissions to wallet accounts
 */
export type AccessManagementDefinition = typeof AccessManagementDefinition;
export const AccessManagementDefinition = {
    name: "AccessManagement",
    fullName: "services.provider.v1.AccessManagement",
    methods: {
        /** Adds a role assignment to an account */
        addRoleAssignment: {
            name: "AddRoleAssignment",
            requestType: AddRoleAssignmentRequest,
            requestStream: false,
            responseType: AddRoleAssignmentResponse,
            responseStream: false,
            options: {},
        },
        /** Removes a role assignment from the account */
        removeRoleAssignment: {
            name: "RemoveRoleAssignment",
            requestType: RemoveRoleAssignmentRequest,
            requestStream: false,
            responseType: RemoveRoleAssignmentResponse,
            responseStream: false,
            options: {},
        },
        /** List the role assignments for the given account */
        listRoleAssignments: {
            name: "ListRoleAssignments",
            requestType: ListRoleAssignmentsRequest,
            requestStream: false,
            responseType: ListRoleAssignmentsResponse,
            responseStream: false,
            options: {},
        },
        /** List the roles available in the ecosystem */
        listAvailableRoles: {
            name: "ListAvailableRoles",
            requestType: ListAvailableRolesRequest,
            requestStream: false,
            responseType: ListAvailableRolesResponse,
            responseStream: false,
            options: {},
        },
    },
} as const;

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
