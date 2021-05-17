/// <reference types="node" />
import * as pb_1 from "google-protobuf";
import * as grpc_1 from "@grpc/grpc-js";
export declare namespace trinsic.services {
    export enum ParticipantType {
        participant_type_individual = 0,
        participant_type_organization = 1
    }
    export class InviteRequest extends pb_1.Message {
        constructor(data?: any[] | ({
            participant?: ParticipantType;
            description?: string;
        } & (({
            email: string;
            phone?: never;
            didcomm_invitation?: never;
        } | {
            email?: never;
            phone: string;
            didcomm_invitation?: never;
        } | {
            email?: never;
            phone?: never;
            didcomm_invitation: InviteRequest.DidCommInvitation;
        }))));
        get participant(): ParticipantType;
        set participant(value: ParticipantType);
        get description(): string;
        set description(value: string);
        get email(): string;
        set email(value: string);
        get phone(): string;
        set phone(value: string);
        get didcomm_invitation(): InviteRequest.DidCommInvitation;
        set didcomm_invitation(value: InviteRequest.DidCommInvitation);
        toObject(): {
            participant?: ParticipantType;
            description?: string;
            email?: string;
            phone?: string;
            didcomm_invitation?: ReturnType<typeof InviteRequest.DidCommInvitation.prototype.toObject>;
        };
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined;
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): InviteRequest;
        serializeBinary(): Uint8Array;
        static deserializeBinary(bytes: Uint8Array): InviteRequest;
    }
    export namespace InviteRequest {
        class DidCommInvitation extends pb_1.Message {
            constructor(data?: any[] | {});
            toObject(): {};
            serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined;
            static deserialize(bytes: Uint8Array | pb_1.BinaryReader): DidCommInvitation;
            serializeBinary(): Uint8Array;
            static deserializeBinary(bytes: Uint8Array): DidCommInvitation;
        }
    }
    export class InviteResponse extends pb_1.Message {
        constructor(data?: any[] | {
            invitation_id?: string;
        });
        get invitation_id(): string;
        set invitation_id(value: string);
        toObject(): {
            invitation_id?: string;
        };
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined;
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): InviteResponse;
        serializeBinary(): Uint8Array;
        static deserializeBinary(bytes: Uint8Array): InviteResponse;
    }
    export class InvitationStatusRequest extends pb_1.Message {
        constructor(data?: any[] | {
            invitation_id?: string;
        });
        get invitation_id(): string;
        set invitation_id(value: string);
        toObject(): {
            invitation_id?: string;
        };
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined;
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): InvitationStatusRequest;
        serializeBinary(): Uint8Array;
        static deserializeBinary(bytes: Uint8Array): InvitationStatusRequest;
    }
    export class InvitationStatusResponse extends pb_1.Message {
        constructor(data?: any[] | {
            status?: InvitationStatusResponse.Status;
            status_details?: string;
        });
        get status(): InvitationStatusResponse.Status;
        set status(value: InvitationStatusResponse.Status);
        get status_details(): string;
        set status_details(value: string);
        toObject(): {
            status?: InvitationStatusResponse.Status;
            status_details?: string;
        };
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined;
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): InvitationStatusResponse;
        serializeBinary(): Uint8Array;
        static deserializeBinary(bytes: Uint8Array): InvitationStatusResponse;
    }
    export namespace InvitationStatusResponse {
        enum Status {
            Error = 0,
            InvitationSent = 1,
            Completed = 2
        }
    }
    export interface IProviderService extends grpc_1.ServiceDefinition<grpc_1.UntypedServiceImplementation> {
        Invite: grpc_1.MethodDefinition<InviteRequest, InviteResponse>;
        InviteWithWorkflow: grpc_1.MethodDefinition<InviteRequest, InviteResponse>;
        InvitationStatus: grpc_1.MethodDefinition<InvitationStatusRequest, InvitationStatusResponse>;
    }
    export interface IProviderServer extends grpc_1.UntypedServiceImplementation {
        Invite: grpc_1.handleUnaryCall<InviteRequest, InviteResponse>;
        InviteWithWorkflow: grpc_1.handleUnaryCall<InviteRequest, InviteResponse>;
        InvitationStatus: grpc_1.handleUnaryCall<InvitationStatusRequest, InvitationStatusResponse>;
    }
    export const Provider: {
        Invite: {
            path: string;
            requestStream: boolean;
            responseStream: boolean;
            requestSerialize: (message: InviteRequest) => Buffer;
            requestDeserialize: (bytes: Buffer) => InviteRequest;
            responseSerialize: (message: InviteResponse) => Buffer;
            responseDeserialize: (bytes: Buffer) => InviteResponse;
        };
        InviteWithWorkflow: {
            path: string;
            requestStream: boolean;
            responseStream: boolean;
            requestSerialize: (message: InviteRequest) => Buffer;
            requestDeserialize: (bytes: Buffer) => InviteRequest;
            responseSerialize: (message: InviteResponse) => Buffer;
            responseDeserialize: (bytes: Buffer) => InviteResponse;
        };
        InvitationStatus: {
            path: string;
            requestStream: boolean;
            responseStream: boolean;
            requestSerialize: (message: InvitationStatusRequest) => Buffer;
            requestDeserialize: (bytes: Buffer) => InvitationStatusRequest;
            responseSerialize: (message: InvitationStatusResponse) => Buffer;
            responseDeserialize: (bytes: Buffer) => InvitationStatusResponse;
        };
    };
    const ProviderClient_base: import("@grpc/grpc-js/build/src/make-client").ServiceClientConstructor;
    export class ProviderClient extends ProviderClient_base {
        constructor(address: string, credentials: grpc_1.ChannelCredentials, options?: Partial<grpc_1.ChannelOptions>);
    }
    export {};
}
