/// <reference types="node" />
import * as dep_1 from "./google\\protobuf\\struct";
import dep_2 from './CoreService';
import { pbmse } from "./pbmse/pbmse";
import * as pb_1 from "google-protobuf";
import * as grpc_1 from "@grpc/grpc-js";
export declare namespace trinsic.services {
    export class CreateWalletRequest extends pb_1.Message {
        constructor(data?: any[] | {
            controller?: string;
            description?: string;
            security_code?: string;
        });
        get controller(): string;
        set controller(value: string);
        get description(): string;
        set description(value: string);
        get security_code(): string;
        set security_code(value: string);
        toObject(): {
            controller?: string;
            description?: string;
            security_code?: string;
        };
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined;
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): CreateWalletRequest;
        serializeBinary(): Uint8Array;
        static deserializeBinary(bytes: Uint8Array): CreateWalletRequest;
    }
    export class CreateWalletResponse extends pb_1.Message {
        constructor(data?: any[] | {
            status?: dep_2.ResponseStatus;
            wallet_id?: string;
            capability?: string;
            invoker?: string;
        });
        get status(): dep_2.ResponseStatus;
        set status(value: dep_2.ResponseStatus);
        get wallet_id(): string;
        set wallet_id(value: string);
        get capability(): string;
        set capability(value: string);
        get invoker(): string;
        set invoker(value: string);
        toObject(): {
            status?: dep_2.ResponseStatus;
            wallet_id?: string;
            capability?: string;
            invoker?: string;
        };
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined;
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): CreateWalletResponse;
        serializeBinary(): Uint8Array;
        static deserializeBinary(bytes: Uint8Array): CreateWalletResponse;
    }
    export class ConnectRequest extends pb_1.Message {
        constructor(data?: any[] | ({} & (({
            email: string;
            phone?: never;
        } | {
            email?: never;
            phone: string;
        }))));
        get email(): string;
        set email(value: string);
        get phone(): string;
        set phone(value: string);
        toObject(): {
            email?: string;
            phone?: string;
        };
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined;
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): ConnectRequest;
        serializeBinary(): Uint8Array;
        static deserializeBinary(bytes: Uint8Array): ConnectRequest;
    }
    export class ConnectResponse extends pb_1.Message {
        constructor(data?: any[] | {
            status?: dep_2.ResponseStatus;
        });
        get status(): dep_2.ResponseStatus;
        set status(value: dep_2.ResponseStatus);
        toObject(): {
            status?: dep_2.ResponseStatus;
        };
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined;
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): ConnectResponse;
        serializeBinary(): Uint8Array;
        static deserializeBinary(bytes: Uint8Array): ConnectResponse;
    }
    export class InvitationToken extends pb_1.Message {
        constructor(data?: any[] | ({
            security_code?: string;
            wallet_id?: string;
        } & (({
            email: string;
            phone?: never;
        } | {
            email?: never;
            phone: string;
        }))));
        get security_code(): string;
        set security_code(value: string);
        get wallet_id(): string;
        set wallet_id(value: string);
        get email(): string;
        set email(value: string);
        get phone(): string;
        set phone(value: string);
        toObject(): {
            security_code?: string;
            wallet_id?: string;
            email?: string;
            phone?: string;
        };
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined;
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): InvitationToken;
        serializeBinary(): Uint8Array;
        static deserializeBinary(bytes: Uint8Array): InvitationToken;
    }
    export class WalletProfile extends pb_1.Message {
        constructor(data?: any[] | {
            did_document?: dep_1.google.protobuf.Struct;
            wallet_id?: string;
            invoker?: string;
            capability?: string;
            invoker_jwk?: Uint8Array;
        });
        get did_document(): dep_1.google.protobuf.Struct;
        set did_document(value: dep_1.google.protobuf.Struct);
        get wallet_id(): string;
        set wallet_id(value: string);
        get invoker(): string;
        set invoker(value: string);
        get capability(): string;
        set capability(value: string);
        get invoker_jwk(): Uint8Array;
        set invoker_jwk(value: Uint8Array);
        toObject(): {
            did_document?: ReturnType<typeof dep_1.google.protobuf.Struct.prototype.toObject>;
            wallet_id?: string;
            invoker?: string;
            capability?: string;
            invoker_jwk?: Uint8Array;
        };
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined;
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): WalletProfile;
        serializeBinary(): Uint8Array;
        static deserializeBinary(bytes: Uint8Array): WalletProfile;
    }
    export class GrantAccessRequest extends pb_1.Message {
        constructor(data?: any[] | {
            wallet_id?: string;
            did?: string;
        });
        get wallet_id(): string;
        set wallet_id(value: string);
        get did(): string;
        set did(value: string);
        toObject(): {
            wallet_id?: string;
            did?: string;
        };
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined;
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): GrantAccessRequest;
        serializeBinary(): Uint8Array;
        static deserializeBinary(bytes: Uint8Array): GrantAccessRequest;
    }
    export class GrantAccessResponse extends pb_1.Message {
        constructor(data?: any[] | {
            status?: dep_2.ResponseStatus;
        });
        get status(): dep_2.ResponseStatus;
        set status(value: dep_2.ResponseStatus);
        toObject(): {
            status?: dep_2.ResponseStatus;
        };
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined;
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): GrantAccessResponse;
        serializeBinary(): Uint8Array;
        static deserializeBinary(bytes: Uint8Array): GrantAccessResponse;
    }
    export class RevokeAccessRequest extends pb_1.Message {
        constructor(data?: any[] | {
            wallet_id?: string;
            did?: string;
        });
        get wallet_id(): string;
        set wallet_id(value: string);
        get did(): string;
        set did(value: string);
        toObject(): {
            wallet_id?: string;
            did?: string;
        };
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined;
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): RevokeAccessRequest;
        serializeBinary(): Uint8Array;
        static deserializeBinary(bytes: Uint8Array): RevokeAccessRequest;
    }
    export class RevokeAccessResponse extends pb_1.Message {
        constructor(data?: any[] | {
            status?: dep_2.ResponseStatus;
        });
        get status(): dep_2.ResponseStatus;
        set status(value: dep_2.ResponseStatus);
        toObject(): {
            status?: dep_2.ResponseStatus;
        };
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined;
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): RevokeAccessResponse;
        serializeBinary(): Uint8Array;
        static deserializeBinary(bytes: Uint8Array): RevokeAccessResponse;
    }
    export class GetProviderConfigurationRequest extends pb_1.Message {
        constructor(data?: any[] | {});
        toObject(): {};
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined;
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): GetProviderConfigurationRequest;
        serializeBinary(): Uint8Array;
        static deserializeBinary(bytes: Uint8Array): GetProviderConfigurationRequest;
    }
    export class GetProviderConfigurationResponse extends pb_1.Message {
        constructor(data?: any[] | {
            did_document?: dep_1.google.protobuf.Struct;
            key_agreement_key_id?: string;
        });
        get did_document(): dep_1.google.protobuf.Struct;
        set did_document(value: dep_1.google.protobuf.Struct);
        get key_agreement_key_id(): string;
        set key_agreement_key_id(value: string);
        toObject(): {
            did_document?: ReturnType<typeof dep_1.google.protobuf.Struct.prototype.toObject>;
            key_agreement_key_id?: string;
        };
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined;
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): GetProviderConfigurationResponse;
        serializeBinary(): Uint8Array;
        static deserializeBinary(bytes: Uint8Array): GetProviderConfigurationResponse;
    }
    export class SearchRequest extends pb_1.Message {
        constructor(data?: any[] | {
            query?: string;
        });
        get query(): string;
        set query(value: string);
        toObject(): {
            query?: string;
        };
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined;
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): SearchRequest;
        serializeBinary(): Uint8Array;
        static deserializeBinary(bytes: Uint8Array): SearchRequest;
    }
    export class SearchResponse extends pb_1.Message {
        constructor(data?: any[] | {
            items?: dep_1.google.protobuf.Struct[];
            has_more?: boolean;
        });
        get items(): dep_1.google.protobuf.Struct[];
        set items(value: dep_1.google.protobuf.Struct[]);
        get has_more(): boolean;
        set has_more(value: boolean);
        toObject(): {
            items?: ReturnType<typeof dep_1.google.protobuf.Struct.prototype.toObject>[];
            has_more?: boolean;
        };
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined;
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): SearchResponse;
        serializeBinary(): Uint8Array;
        static deserializeBinary(bytes: Uint8Array): SearchResponse;
    }
    export class InsertItemRequest extends pb_1.Message {
        constructor(data?: any[] | {
            item?: dep_1.google.protobuf.Struct;
            item_type?: string;
        });
        get item(): dep_1.google.protobuf.Struct;
        set item(value: dep_1.google.protobuf.Struct);
        get item_type(): string;
        set item_type(value: string);
        toObject(): {
            item?: ReturnType<typeof dep_1.google.protobuf.Struct.prototype.toObject>;
            item_type?: string;
        };
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined;
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): InsertItemRequest;
        serializeBinary(): Uint8Array;
        static deserializeBinary(bytes: Uint8Array): InsertItemRequest;
    }
    export class InsertItemResponse extends pb_1.Message {
        constructor(data?: any[] | {
            status?: dep_2.ResponseStatus;
            item_id?: string;
        });
        get status(): dep_2.ResponseStatus;
        set status(value: dep_2.ResponseStatus);
        get item_id(): string;
        set item_id(value: string);
        toObject(): {
            status?: dep_2.ResponseStatus;
            item_id?: string;
        };
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined;
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): InsertItemResponse;
        serializeBinary(): Uint8Array;
        static deserializeBinary(bytes: Uint8Array): InsertItemResponse;
    }
    export interface IWalletService extends grpc_1.ServiceDefinition<grpc_1.UntypedServiceImplementation> {
        GetProviderConfiguration: grpc_1.MethodDefinition<GetProviderConfigurationRequest, GetProviderConfigurationResponse>;
        ConnectExternalIdentity: grpc_1.MethodDefinition<ConnectRequest, ConnectResponse>;
        CreateWallet: grpc_1.MethodDefinition<CreateWalletRequest, CreateWalletResponse>;
        CreateWalletWithWorkflow: grpc_1.MethodDefinition<CreateWalletRequest, CreateWalletResponse>;
        CreateWalletEncrypted: grpc_1.MethodDefinition<pbmse.EncryptedMessage, pbmse.EncryptedMessage>;
        Search: grpc_1.MethodDefinition<SearchRequest, SearchResponse>;
        InsertItem: grpc_1.MethodDefinition<InsertItemRequest, InsertItemResponse>;
        GrantAccess: grpc_1.MethodDefinition<GrantAccessRequest, GrantAccessResponse>;
        RevokeAccess: grpc_1.MethodDefinition<RevokeAccessRequest, RevokeAccessResponse>;
    }
    export interface IWalletServer extends grpc_1.UntypedServiceImplementation {
        GetProviderConfiguration: grpc_1.handleUnaryCall<GetProviderConfigurationRequest, GetProviderConfigurationResponse>;
        ConnectExternalIdentity: grpc_1.handleUnaryCall<ConnectRequest, ConnectResponse>;
        CreateWallet: grpc_1.handleUnaryCall<CreateWalletRequest, CreateWalletResponse>;
        CreateWalletWithWorkflow: grpc_1.handleUnaryCall<CreateWalletRequest, CreateWalletResponse>;
        CreateWalletEncrypted: grpc_1.handleUnaryCall<pbmse.EncryptedMessage, pbmse.EncryptedMessage>;
        Search: grpc_1.handleUnaryCall<SearchRequest, SearchResponse>;
        InsertItem: grpc_1.handleUnaryCall<InsertItemRequest, InsertItemResponse>;
        GrantAccess: grpc_1.handleUnaryCall<GrantAccessRequest, GrantAccessResponse>;
        RevokeAccess: grpc_1.handleUnaryCall<RevokeAccessRequest, RevokeAccessResponse>;
    }
    export const Wallet: {
        GetProviderConfiguration: {
            path: string;
            requestStream: boolean;
            responseStream: boolean;
            requestSerialize: (message: GetProviderConfigurationRequest) => Buffer;
            requestDeserialize: (bytes: Buffer) => GetProviderConfigurationRequest;
            responseSerialize: (message: GetProviderConfigurationResponse) => Buffer;
            responseDeserialize: (bytes: Buffer) => GetProviderConfigurationResponse;
        };
        ConnectExternalIdentity: {
            path: string;
            requestStream: boolean;
            responseStream: boolean;
            requestSerialize: (message: ConnectRequest) => Buffer;
            requestDeserialize: (bytes: Buffer) => ConnectRequest;
            responseSerialize: (message: ConnectResponse) => Buffer;
            responseDeserialize: (bytes: Buffer) => ConnectResponse;
        };
        CreateWallet: {
            path: string;
            requestStream: boolean;
            responseStream: boolean;
            requestSerialize: (message: CreateWalletRequest) => Buffer;
            requestDeserialize: (bytes: Buffer) => CreateWalletRequest;
            responseSerialize: (message: CreateWalletResponse) => Buffer;
            responseDeserialize: (bytes: Buffer) => CreateWalletResponse;
        };
        CreateWalletWithWorkflow: {
            path: string;
            requestStream: boolean;
            responseStream: boolean;
            requestSerialize: (message: CreateWalletRequest) => Buffer;
            requestDeserialize: (bytes: Buffer) => CreateWalletRequest;
            responseSerialize: (message: CreateWalletResponse) => Buffer;
            responseDeserialize: (bytes: Buffer) => CreateWalletResponse;
        };
        CreateWalletEncrypted: {
            path: string;
            requestStream: boolean;
            responseStream: boolean;
            requestSerialize: (message: pbmse.EncryptedMessage) => Buffer;
            requestDeserialize: (bytes: Buffer) => pbmse.EncryptedMessage;
            responseSerialize: (message: pbmse.EncryptedMessage) => Buffer;
            responseDeserialize: (bytes: Buffer) => pbmse.EncryptedMessage;
        };
        Search: {
            path: string;
            requestStream: boolean;
            responseStream: boolean;
            requestSerialize: (message: SearchRequest) => Buffer;
            requestDeserialize: (bytes: Buffer) => SearchRequest;
            responseSerialize: (message: SearchResponse) => Buffer;
            responseDeserialize: (bytes: Buffer) => SearchResponse;
        };
        InsertItem: {
            path: string;
            requestStream: boolean;
            responseStream: boolean;
            requestSerialize: (message: InsertItemRequest) => Buffer;
            requestDeserialize: (bytes: Buffer) => InsertItemRequest;
            responseSerialize: (message: InsertItemResponse) => Buffer;
            responseDeserialize: (bytes: Buffer) => InsertItemResponse;
        };
        GrantAccess: {
            path: string;
            requestStream: boolean;
            responseStream: boolean;
            requestSerialize: (message: GrantAccessRequest) => Buffer;
            requestDeserialize: (bytes: Buffer) => GrantAccessRequest;
            responseSerialize: (message: GrantAccessResponse) => Buffer;
            responseDeserialize: (bytes: Buffer) => GrantAccessResponse;
        };
        RevokeAccess: {
            path: string;
            requestStream: boolean;
            responseStream: boolean;
            requestSerialize: (message: RevokeAccessRequest) => Buffer;
            requestDeserialize: (bytes: Buffer) => RevokeAccessRequest;
            responseSerialize: (message: RevokeAccessResponse) => Buffer;
            responseDeserialize: (bytes: Buffer) => RevokeAccessResponse;
        };
    };
    const WalletClient_base: import("@grpc/grpc-js/build/src/make-client").ServiceClientConstructor;
    export class WalletClient extends WalletClient_base {
        constructor(address: string, credentials: grpc_1.ChannelCredentials, options?: Partial<grpc_1.ChannelOptions>);
    }
    export {};
}
