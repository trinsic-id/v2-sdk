import * as dep_1 from "./google\\protobuf\\struct";
import * as pb_1 from "google-protobuf";
import * as grpc_1 from "@grpc/grpc-js";
export namespace trinsic.services {
    export class IssueRequest extends pb_1.Message {
        constructor(data?: any[] | {
            document?: dep_1.google.protobuf.Struct;
        }) {
            super();
            pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [], []);
            if (!Array.isArray(data) && typeof data == "object") {
                if ("document" in data && data.document != undefined) {
                    this.document = data.document;
                }
            }
        }
        get document() {
            return pb_1.Message.getWrapperField(this, dep_1.google.protobuf.Struct, 1) as dep_1.google.protobuf.Struct;
        }
        set document(value: dep_1.google.protobuf.Struct) {
            pb_1.Message.setWrapperField(this, 1, value);
        }
        toObject() {
            var data: {
                document?: ReturnType<typeof dep_1.google.protobuf.Struct.prototype.toObject>;
            } = {};
            if (this.document != null) {
                data.document = this.document.toObject();
            }
            return data;
        }
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined {
            const writer = w || new pb_1.BinaryWriter();
            if (this.document !== undefined)
                writer.writeMessage(1, this.document, () => this.document.serialize(writer));
            if (!w)
                return writer.getResultBuffer();
        }
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): IssueRequest {
            const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new IssueRequest();
            while (reader.nextField()) {
                if (reader.isEndGroup())
                    break;
                switch (reader.getFieldNumber()) {
                    case 1:
                        reader.readMessage(message.document, () => message.document = dep_1.google.protobuf.Struct.deserialize(reader));
                        break;
                    default: reader.skipField();
                }
            }
            return message;
        }
        serializeBinary(): Uint8Array {
            return this.serialize();
        }
        static deserializeBinary(bytes: Uint8Array): IssueRequest {
            return IssueRequest.deserialize(bytes);
        }
    }
    export class IssueResponse extends pb_1.Message {
        constructor(data?: any[] | {
            document?: dep_1.google.protobuf.Struct;
        }) {
            super();
            pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [], []);
            if (!Array.isArray(data) && typeof data == "object") {
                if ("document" in data && data.document != undefined) {
                    this.document = data.document;
                }
            }
        }
        get document() {
            return pb_1.Message.getWrapperField(this, dep_1.google.protobuf.Struct, 1) as dep_1.google.protobuf.Struct;
        }
        set document(value: dep_1.google.protobuf.Struct) {
            pb_1.Message.setWrapperField(this, 1, value);
        }
        toObject() {
            var data: {
                document?: ReturnType<typeof dep_1.google.protobuf.Struct.prototype.toObject>;
            } = {};
            if (this.document != null) {
                data.document = this.document.toObject();
            }
            return data;
        }
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined {
            const writer = w || new pb_1.BinaryWriter();
            if (this.document !== undefined)
                writer.writeMessage(1, this.document, () => this.document.serialize(writer));
            if (!w)
                return writer.getResultBuffer();
        }
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): IssueResponse {
            const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new IssueResponse();
            while (reader.nextField()) {
                if (reader.isEndGroup())
                    break;
                switch (reader.getFieldNumber()) {
                    case 1:
                        reader.readMessage(message.document, () => message.document = dep_1.google.protobuf.Struct.deserialize(reader));
                        break;
                    default: reader.skipField();
                }
            }
            return message;
        }
        serializeBinary(): Uint8Array {
            return this.serialize();
        }
        static deserializeBinary(bytes: Uint8Array): IssueResponse {
            return IssueResponse.deserialize(bytes);
        }
    }
    export class CreateProofRequest extends pb_1.Message {
        constructor(data?: any[] | {
            reveal_document?: dep_1.google.protobuf.Struct;
            document_id?: string;
        }) {
            super();
            pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [], []);
            if (!Array.isArray(data) && typeof data == "object") {
                if ("reveal_document" in data && data.reveal_document != undefined) {
                    this.reveal_document = data.reveal_document;
                }
                if ("document_id" in data && data.document_id != undefined) {
                    this.document_id = data.document_id;
                }
            }
        }
        get reveal_document() {
            return pb_1.Message.getWrapperField(this, dep_1.google.protobuf.Struct, 1) as dep_1.google.protobuf.Struct;
        }
        set reveal_document(value: dep_1.google.protobuf.Struct) {
            pb_1.Message.setWrapperField(this, 1, value);
        }
        get document_id() {
            return pb_1.Message.getField(this, 2) as string;
        }
        set document_id(value: string) {
            pb_1.Message.setField(this, 2, value);
        }
        toObject() {
            var data: {
                reveal_document?: ReturnType<typeof dep_1.google.protobuf.Struct.prototype.toObject>;
                document_id?: string;
            } = {};
            if (this.reveal_document != null) {
                data.reveal_document = this.reveal_document.toObject();
            }
            if (this.document_id != null) {
                data.document_id = this.document_id;
            }
            return data;
        }
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined {
            const writer = w || new pb_1.BinaryWriter();
            if (this.reveal_document !== undefined)
                writer.writeMessage(1, this.reveal_document, () => this.reveal_document.serialize(writer));
            if (typeof this.document_id === "string" && this.document_id.length)
                writer.writeString(2, this.document_id);
            if (!w)
                return writer.getResultBuffer();
        }
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): CreateProofRequest {
            const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new CreateProofRequest();
            while (reader.nextField()) {
                if (reader.isEndGroup())
                    break;
                switch (reader.getFieldNumber()) {
                    case 1:
                        reader.readMessage(message.reveal_document, () => message.reveal_document = dep_1.google.protobuf.Struct.deserialize(reader));
                        break;
                    case 2:
                        message.document_id = reader.readString();
                        break;
                    default: reader.skipField();
                }
            }
            return message;
        }
        serializeBinary(): Uint8Array {
            return this.serialize();
        }
        static deserializeBinary(bytes: Uint8Array): CreateProofRequest {
            return CreateProofRequest.deserialize(bytes);
        }
    }
    export class CreateProofResponse extends pb_1.Message {
        constructor(data?: any[] | {
            proof_document?: dep_1.google.protobuf.Struct;
        }) {
            super();
            pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [], []);
            if (!Array.isArray(data) && typeof data == "object") {
                if ("proof_document" in data && data.proof_document != undefined) {
                    this.proof_document = data.proof_document;
                }
            }
        }
        get proof_document() {
            return pb_1.Message.getWrapperField(this, dep_1.google.protobuf.Struct, 1) as dep_1.google.protobuf.Struct;
        }
        set proof_document(value: dep_1.google.protobuf.Struct) {
            pb_1.Message.setWrapperField(this, 1, value);
        }
        toObject() {
            var data: {
                proof_document?: ReturnType<typeof dep_1.google.protobuf.Struct.prototype.toObject>;
            } = {};
            if (this.proof_document != null) {
                data.proof_document = this.proof_document.toObject();
            }
            return data;
        }
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined {
            const writer = w || new pb_1.BinaryWriter();
            if (this.proof_document !== undefined)
                writer.writeMessage(1, this.proof_document, () => this.proof_document.serialize(writer));
            if (!w)
                return writer.getResultBuffer();
        }
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): CreateProofResponse {
            const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new CreateProofResponse();
            while (reader.nextField()) {
                if (reader.isEndGroup())
                    break;
                switch (reader.getFieldNumber()) {
                    case 1:
                        reader.readMessage(message.proof_document, () => message.proof_document = dep_1.google.protobuf.Struct.deserialize(reader));
                        break;
                    default: reader.skipField();
                }
            }
            return message;
        }
        serializeBinary(): Uint8Array {
            return this.serialize();
        }
        static deserializeBinary(bytes: Uint8Array): CreateProofResponse {
            return CreateProofResponse.deserialize(bytes);
        }
    }
    export class VerifyProofRequest extends pb_1.Message {
        constructor(data?: any[] | {
            proof_document?: dep_1.google.protobuf.Struct;
        }) {
            super();
            pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [], []);
            if (!Array.isArray(data) && typeof data == "object") {
                if ("proof_document" in data && data.proof_document != undefined) {
                    this.proof_document = data.proof_document;
                }
            }
        }
        get proof_document() {
            return pb_1.Message.getWrapperField(this, dep_1.google.protobuf.Struct, 1) as dep_1.google.protobuf.Struct;
        }
        set proof_document(value: dep_1.google.protobuf.Struct) {
            pb_1.Message.setWrapperField(this, 1, value);
        }
        toObject() {
            var data: {
                proof_document?: ReturnType<typeof dep_1.google.protobuf.Struct.prototype.toObject>;
            } = {};
            if (this.proof_document != null) {
                data.proof_document = this.proof_document.toObject();
            }
            return data;
        }
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined {
            const writer = w || new pb_1.BinaryWriter();
            if (this.proof_document !== undefined)
                writer.writeMessage(1, this.proof_document, () => this.proof_document.serialize(writer));
            if (!w)
                return writer.getResultBuffer();
        }
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): VerifyProofRequest {
            const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new VerifyProofRequest();
            while (reader.nextField()) {
                if (reader.isEndGroup())
                    break;
                switch (reader.getFieldNumber()) {
                    case 1:
                        reader.readMessage(message.proof_document, () => message.proof_document = dep_1.google.protobuf.Struct.deserialize(reader));
                        break;
                    default: reader.skipField();
                }
            }
            return message;
        }
        serializeBinary(): Uint8Array {
            return this.serialize();
        }
        static deserializeBinary(bytes: Uint8Array): VerifyProofRequest {
            return VerifyProofRequest.deserialize(bytes);
        }
    }
    export class VerifyProofResponse extends pb_1.Message {
        constructor(data?: any[] | {
            valid?: boolean;
        }) {
            super();
            pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [], []);
            if (!Array.isArray(data) && typeof data == "object") {
                if ("valid" in data && data.valid != undefined) {
                    this.valid = data.valid;
                }
            }
        }
        get valid() {
            return pb_1.Message.getField(this, 1) as boolean;
        }
        set valid(value: boolean) {
            pb_1.Message.setField(this, 1, value);
        }
        toObject() {
            var data: {
                valid?: boolean;
            } = {};
            if (this.valid != null) {
                data.valid = this.valid;
            }
            return data;
        }
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined {
            const writer = w || new pb_1.BinaryWriter();
            if (this.valid !== undefined)
                writer.writeBool(1, this.valid);
            if (!w)
                return writer.getResultBuffer();
        }
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): VerifyProofResponse {
            const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new VerifyProofResponse();
            while (reader.nextField()) {
                if (reader.isEndGroup())
                    break;
                switch (reader.getFieldNumber()) {
                    case 1:
                        message.valid = reader.readBool();
                        break;
                    default: reader.skipField();
                }
            }
            return message;
        }
        serializeBinary(): Uint8Array {
            return this.serialize();
        }
        static deserializeBinary(bytes: Uint8Array): VerifyProofResponse {
            return VerifyProofResponse.deserialize(bytes);
        }
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
    export const Credential = {
        Issue: {
            path: "/trinsic.services.Credential/Issue",
            requestStream: false,
            responseStream: false,
            requestSerialize: (message: IssueRequest) => Buffer.from(message.serialize()),
            requestDeserialize: (bytes: Buffer) => IssueRequest.deserialize(new Uint8Array(bytes)),
            responseSerialize: (message: IssueResponse) => Buffer.from(message.serialize()),
            responseDeserialize: (bytes: Buffer) => IssueResponse.deserialize(new Uint8Array(bytes))
        },
        CreateProof: {
            path: "/trinsic.services.Credential/CreateProof",
            requestStream: false,
            responseStream: false,
            requestSerialize: (message: CreateProofRequest) => Buffer.from(message.serialize()),
            requestDeserialize: (bytes: Buffer) => CreateProofRequest.deserialize(new Uint8Array(bytes)),
            responseSerialize: (message: CreateProofResponse) => Buffer.from(message.serialize()),
            responseDeserialize: (bytes: Buffer) => CreateProofResponse.deserialize(new Uint8Array(bytes))
        },
        VerifyProof: {
            path: "/trinsic.services.Credential/VerifyProof",
            requestStream: false,
            responseStream: false,
            requestSerialize: (message: VerifyProofRequest) => Buffer.from(message.serialize()),
            requestDeserialize: (bytes: Buffer) => VerifyProofRequest.deserialize(new Uint8Array(bytes)),
            responseSerialize: (message: VerifyProofResponse) => Buffer.from(message.serialize()),
            responseDeserialize: (bytes: Buffer) => VerifyProofResponse.deserialize(new Uint8Array(bytes))
        }
    };
    export class CredentialClient extends grpc_1.makeGenericClientConstructor(Credential, "Credential", {}) {
        constructor(address: string, credentials: grpc_1.ChannelCredentials, options?: Partial<grpc_1.ChannelOptions>) {
            super(address, credentials, options)
        }
    }
}
