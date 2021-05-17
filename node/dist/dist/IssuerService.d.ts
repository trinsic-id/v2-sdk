/// <reference types="node" />
import * as dep_1 from "./google\\protobuf\\struct";
import * as pb_1 from "google-protobuf";
import * as grpc_1 from "@grpc/grpc-js";
export declare namespace trinsic.services {
    export class IssueRequest extends pb_1.Message {
        constructor(data?: any[] | {
            document?: dep_1.google.protobuf.Struct;
        });
        get document(): dep_1.google.protobuf.Struct;
        set document(value: dep_1.google.protobuf.Struct);
        toObject(): {
            document?: ReturnType<typeof dep_1.google.protobuf.Struct.prototype.toObject>;
        };
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined;
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): IssueRequest;
        serializeBinary(): Uint8Array;
        static deserializeBinary(bytes: Uint8Array): IssueRequest;
    }
    export class IssueResponse extends pb_1.Message {
        constructor(data?: any[] | {
            document?: dep_1.google.protobuf.Struct;
        });
        get document(): dep_1.google.protobuf.Struct;
        set document(value: dep_1.google.protobuf.Struct);
        toObject(): {
            document?: ReturnType<typeof dep_1.google.protobuf.Struct.prototype.toObject>;
        };
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined;
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): IssueResponse;
        serializeBinary(): Uint8Array;
        static deserializeBinary(bytes: Uint8Array): IssueResponse;
    }
    export class CreateProofRequest extends pb_1.Message {
        constructor(data?: any[] | {
            reveal_document?: dep_1.google.protobuf.Struct;
            document_id?: string;
        });
        get reveal_document(): dep_1.google.protobuf.Struct;
        set reveal_document(value: dep_1.google.protobuf.Struct);
        get document_id(): string;
        set document_id(value: string);
        toObject(): {
            reveal_document?: ReturnType<typeof dep_1.google.protobuf.Struct.prototype.toObject>;
            document_id?: string;
        };
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined;
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): CreateProofRequest;
        serializeBinary(): Uint8Array;
        static deserializeBinary(bytes: Uint8Array): CreateProofRequest;
    }
    export class CreateProofResponse extends pb_1.Message {
        constructor(data?: any[] | {
            proof_document?: dep_1.google.protobuf.Struct;
        });
        get proof_document(): dep_1.google.protobuf.Struct;
        set proof_document(value: dep_1.google.protobuf.Struct);
        toObject(): {
            proof_document?: ReturnType<typeof dep_1.google.protobuf.Struct.prototype.toObject>;
        };
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined;
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): CreateProofResponse;
        serializeBinary(): Uint8Array;
        static deserializeBinary(bytes: Uint8Array): CreateProofResponse;
    }
    export class VerifyProofRequest extends pb_1.Message {
        constructor(data?: any[] | {
            proof_document?: dep_1.google.protobuf.Struct;
        });
        get proof_document(): dep_1.google.protobuf.Struct;
        set proof_document(value: dep_1.google.protobuf.Struct);
        toObject(): {
            proof_document?: ReturnType<typeof dep_1.google.protobuf.Struct.prototype.toObject>;
        };
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined;
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): VerifyProofRequest;
        serializeBinary(): Uint8Array;
        static deserializeBinary(bytes: Uint8Array): VerifyProofRequest;
    }
    export class VerifyProofResponse extends pb_1.Message {
        constructor(data?: any[] | {
            valid?: boolean;
        });
        get valid(): boolean;
        set valid(value: boolean);
        toObject(): {
            valid?: boolean;
        };
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined;
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): VerifyProofResponse;
        serializeBinary(): Uint8Array;
        static deserializeBinary(bytes: Uint8Array): VerifyProofResponse;
    }
    export interface ICredentialService extends grpc_1.ServiceDefinition<grpc_1.UntypedServiceImplementation> {
        Issue: grpc_1.MethodDefinition<IssueRequest, IssueResponse>;
        CreateProof: grpc_1.MethodDefinition<CreateProofRequest, CreateProofResponse>;
        VerifyProof: grpc_1.MethodDefinition<VerifyProofRequest, VerifyProofResponse>;
    }
    export interface ICredentialServer extends grpc_1.UntypedServiceImplementation {
        Issue: grpc_1.handleUnaryCall<IssueRequest, IssueResponse>;
        CreateProof: grpc_1.handleUnaryCall<CreateProofRequest, CreateProofResponse>;
        VerifyProof: grpc_1.handleUnaryCall<VerifyProofRequest, VerifyProofResponse>;
    }
    export const Credential: {
        Issue: {
            path: string;
            requestStream: boolean;
            responseStream: boolean;
            requestSerialize: (message: IssueRequest) => Buffer;
            requestDeserialize: (bytes: Buffer) => IssueRequest;
            responseSerialize: (message: IssueResponse) => Buffer;
            responseDeserialize: (bytes: Buffer) => IssueResponse;
        };
        CreateProof: {
            path: string;
            requestStream: boolean;
            responseStream: boolean;
            requestSerialize: (message: CreateProofRequest) => Buffer;
            requestDeserialize: (bytes: Buffer) => CreateProofRequest;
            responseSerialize: (message: CreateProofResponse) => Buffer;
            responseDeserialize: (bytes: Buffer) => CreateProofResponse;
        };
        VerifyProof: {
            path: string;
            requestStream: boolean;
            responseStream: boolean;
            requestSerialize: (message: VerifyProofRequest) => Buffer;
            requestDeserialize: (bytes: Buffer) => VerifyProofRequest;
            responseSerialize: (message: VerifyProofResponse) => Buffer;
            responseDeserialize: (bytes: Buffer) => VerifyProofResponse;
        };
    };
    const CredentialClient_base: import("@grpc/grpc-js/build/src/make-client").ServiceClientConstructor;
    export class CredentialClient extends CredentialClient_base {
        constructor(address: string, credentials: grpc_1.ChannelCredentials, options?: Partial<grpc_1.ChannelOptions>);
    }
    export {};
}
