"use strict";
var __createBinding = (this && this.__createBinding) || (Object.create ? (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    Object.defineProperty(o, k2, { enumerable: true, get: function() { return m[k]; } });
}) : (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    o[k2] = m[k];
}));
var __setModuleDefault = (this && this.__setModuleDefault) || (Object.create ? (function(o, v) {
    Object.defineProperty(o, "default", { enumerable: true, value: v });
}) : function(o, v) {
    o["default"] = v;
});
var __importStar = (this && this.__importStar) || function (mod) {
    if (mod && mod.__esModule) return mod;
    var result = {};
    if (mod != null) for (var k in mod) if (k !== "default" && Object.prototype.hasOwnProperty.call(mod, k)) __createBinding(result, mod, k);
    __setModuleDefault(result, mod);
    return result;
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.trinsic = void 0;
const dep_1 = __importStar(require("./google\\protobuf\\struct"));
const pb_1 = __importStar(require("google-protobuf"));
const grpc_1 = __importStar(require("@grpc/grpc-js"));
var trinsic;
(function (trinsic) {
    var services;
    (function (services) {
        class IssueRequest extends pb_1.Message {
            constructor(data) {
                super();
                pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [], []);
                if (!Array.isArray(data) && typeof data == "object") {
                    if ("document" in data && data.document != undefined) {
                        this.document = data.document;
                    }
                }
            }
            get document() {
                return pb_1.Message.getWrapperField(this, dep_1.google.protobuf.Struct, 1);
            }
            set document(value) {
                pb_1.Message.setWrapperField(this, 1, value);
            }
            toObject() {
                var data = {};
                if (this.document != null) {
                    data.document = this.document.toObject();
                }
                return data;
            }
            serialize(w) {
                const writer = w || new pb_1.BinaryWriter();
                if (this.document !== undefined)
                    writer.writeMessage(1, this.document, () => this.document.serialize(writer));
                if (!w)
                    return writer.getResultBuffer();
            }
            static deserialize(bytes) {
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
            serializeBinary() {
                return this.serialize();
            }
            static deserializeBinary(bytes) {
                return IssueRequest.deserialize(bytes);
            }
        }
        services.IssueRequest = IssueRequest;
        class IssueResponse extends pb_1.Message {
            constructor(data) {
                super();
                pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [], []);
                if (!Array.isArray(data) && typeof data == "object") {
                    if ("document" in data && data.document != undefined) {
                        this.document = data.document;
                    }
                }
            }
            get document() {
                return pb_1.Message.getWrapperField(this, dep_1.google.protobuf.Struct, 1);
            }
            set document(value) {
                pb_1.Message.setWrapperField(this, 1, value);
            }
            toObject() {
                var data = {};
                if (this.document != null) {
                    data.document = this.document.toObject();
                }
                return data;
            }
            serialize(w) {
                const writer = w || new pb_1.BinaryWriter();
                if (this.document !== undefined)
                    writer.writeMessage(1, this.document, () => this.document.serialize(writer));
                if (!w)
                    return writer.getResultBuffer();
            }
            static deserialize(bytes) {
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
            serializeBinary() {
                return this.serialize();
            }
            static deserializeBinary(bytes) {
                return IssueResponse.deserialize(bytes);
            }
        }
        services.IssueResponse = IssueResponse;
        class CreateProofRequest extends pb_1.Message {
            constructor(data) {
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
                return pb_1.Message.getWrapperField(this, dep_1.google.protobuf.Struct, 1);
            }
            set reveal_document(value) {
                pb_1.Message.setWrapperField(this, 1, value);
            }
            get document_id() {
                return pb_1.Message.getField(this, 2);
            }
            set document_id(value) {
                pb_1.Message.setField(this, 2, value);
            }
            toObject() {
                var data = {};
                if (this.reveal_document != null) {
                    data.reveal_document = this.reveal_document.toObject();
                }
                if (this.document_id != null) {
                    data.document_id = this.document_id;
                }
                return data;
            }
            serialize(w) {
                const writer = w || new pb_1.BinaryWriter();
                if (this.reveal_document !== undefined)
                    writer.writeMessage(1, this.reveal_document, () => this.reveal_document.serialize(writer));
                if (typeof this.document_id === "string" && this.document_id.length)
                    writer.writeString(2, this.document_id);
                if (!w)
                    return writer.getResultBuffer();
            }
            static deserialize(bytes) {
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
            serializeBinary() {
                return this.serialize();
            }
            static deserializeBinary(bytes) {
                return CreateProofRequest.deserialize(bytes);
            }
        }
        services.CreateProofRequest = CreateProofRequest;
        class CreateProofResponse extends pb_1.Message {
            constructor(data) {
                super();
                pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [], []);
                if (!Array.isArray(data) && typeof data == "object") {
                    if ("proof_document" in data && data.proof_document != undefined) {
                        this.proof_document = data.proof_document;
                    }
                }
            }
            get proof_document() {
                return pb_1.Message.getWrapperField(this, dep_1.google.protobuf.Struct, 1);
            }
            set proof_document(value) {
                pb_1.Message.setWrapperField(this, 1, value);
            }
            toObject() {
                var data = {};
                if (this.proof_document != null) {
                    data.proof_document = this.proof_document.toObject();
                }
                return data;
            }
            serialize(w) {
                const writer = w || new pb_1.BinaryWriter();
                if (this.proof_document !== undefined)
                    writer.writeMessage(1, this.proof_document, () => this.proof_document.serialize(writer));
                if (!w)
                    return writer.getResultBuffer();
            }
            static deserialize(bytes) {
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
            serializeBinary() {
                return this.serialize();
            }
            static deserializeBinary(bytes) {
                return CreateProofResponse.deserialize(bytes);
            }
        }
        services.CreateProofResponse = CreateProofResponse;
        class VerifyProofRequest extends pb_1.Message {
            constructor(data) {
                super();
                pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [], []);
                if (!Array.isArray(data) && typeof data == "object") {
                    if ("proof_document" in data && data.proof_document != undefined) {
                        this.proof_document = data.proof_document;
                    }
                }
            }
            get proof_document() {
                return pb_1.Message.getWrapperField(this, dep_1.google.protobuf.Struct, 1);
            }
            set proof_document(value) {
                pb_1.Message.setWrapperField(this, 1, value);
            }
            toObject() {
                var data = {};
                if (this.proof_document != null) {
                    data.proof_document = this.proof_document.toObject();
                }
                return data;
            }
            serialize(w) {
                const writer = w || new pb_1.BinaryWriter();
                if (this.proof_document !== undefined)
                    writer.writeMessage(1, this.proof_document, () => this.proof_document.serialize(writer));
                if (!w)
                    return writer.getResultBuffer();
            }
            static deserialize(bytes) {
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
            serializeBinary() {
                return this.serialize();
            }
            static deserializeBinary(bytes) {
                return VerifyProofRequest.deserialize(bytes);
            }
        }
        services.VerifyProofRequest = VerifyProofRequest;
        class VerifyProofResponse extends pb_1.Message {
            constructor(data) {
                super();
                pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [], []);
                if (!Array.isArray(data) && typeof data == "object") {
                    if ("valid" in data && data.valid != undefined) {
                        this.valid = data.valid;
                    }
                }
            }
            get valid() {
                return pb_1.Message.getField(this, 1);
            }
            set valid(value) {
                pb_1.Message.setField(this, 1, value);
            }
            toObject() {
                var data = {};
                if (this.valid != null) {
                    data.valid = this.valid;
                }
                return data;
            }
            serialize(w) {
                const writer = w || new pb_1.BinaryWriter();
                if (this.valid !== undefined)
                    writer.writeBool(1, this.valid);
                if (!w)
                    return writer.getResultBuffer();
            }
            static deserialize(bytes) {
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
            serializeBinary() {
                return this.serialize();
            }
            static deserializeBinary(bytes) {
                return VerifyProofResponse.deserialize(bytes);
            }
        }
        services.VerifyProofResponse = VerifyProofResponse;
        services.Credential = {
            Issue: {
                path: "/trinsic.services.Credential/Issue",
                requestStream: false,
                responseStream: false,
                requestSerialize: (message) => Buffer.from(message.serialize()),
                requestDeserialize: (bytes) => IssueRequest.deserialize(new Uint8Array(bytes)),
                responseSerialize: (message) => Buffer.from(message.serialize()),
                responseDeserialize: (bytes) => IssueResponse.deserialize(new Uint8Array(bytes))
            },
            CreateProof: {
                path: "/trinsic.services.Credential/CreateProof",
                requestStream: false,
                responseStream: false,
                requestSerialize: (message) => Buffer.from(message.serialize()),
                requestDeserialize: (bytes) => CreateProofRequest.deserialize(new Uint8Array(bytes)),
                responseSerialize: (message) => Buffer.from(message.serialize()),
                responseDeserialize: (bytes) => CreateProofResponse.deserialize(new Uint8Array(bytes))
            },
            VerifyProof: {
                path: "/trinsic.services.Credential/VerifyProof",
                requestStream: false,
                responseStream: false,
                requestSerialize: (message) => Buffer.from(message.serialize()),
                requestDeserialize: (bytes) => VerifyProofRequest.deserialize(new Uint8Array(bytes)),
                responseSerialize: (message) => Buffer.from(message.serialize()),
                responseDeserialize: (bytes) => VerifyProofResponse.deserialize(new Uint8Array(bytes))
            }
        };
        class CredentialClient extends grpc_1.makeGenericClientConstructor(services.Credential, "Credential", {}) {
            constructor(address, credentials, options) {
                super(address, credentials, options);
            }
        }
        services.CredentialClient = CredentialClient;
    })(services = trinsic.services || (trinsic.services = {}));
})(trinsic = exports.trinsic || (exports.trinsic = {}));
//# sourceMappingURL=IssuerService.js.map