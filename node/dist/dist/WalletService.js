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
const pbmse_1 = require("./pbmse/pbmse");
const pb_1 = __importStar(require("google-protobuf"));
const grpc_1 = __importStar(require("@grpc/grpc-js"));
var trinsic;
(function (trinsic) {
    var services;
    (function (services) {
        class CreateWalletRequest extends pb_1.Message {
            constructor(data) {
                super();
                pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [], []);
                if (!Array.isArray(data) && typeof data == "object") {
                    if ("controller" in data && data.controller != undefined) {
                        this.controller = data.controller;
                    }
                    if ("description" in data && data.description != undefined) {
                        this.description = data.description;
                    }
                    if ("security_code" in data && data.security_code != undefined) {
                        this.security_code = data.security_code;
                    }
                }
            }
            get controller() {
                return pb_1.Message.getField(this, 1);
            }
            set controller(value) {
                pb_1.Message.setField(this, 1, value);
            }
            get description() {
                return pb_1.Message.getField(this, 2);
            }
            set description(value) {
                pb_1.Message.setField(this, 2, value);
            }
            get security_code() {
                return pb_1.Message.getField(this, 3);
            }
            set security_code(value) {
                pb_1.Message.setField(this, 3, value);
            }
            toObject() {
                var data = {};
                if (this.controller != null) {
                    data.controller = this.controller;
                }
                if (this.description != null) {
                    data.description = this.description;
                }
                if (this.security_code != null) {
                    data.security_code = this.security_code;
                }
                return data;
            }
            serialize(w) {
                const writer = w || new pb_1.BinaryWriter();
                if (typeof this.controller === "string" && this.controller.length)
                    writer.writeString(1, this.controller);
                if (typeof this.description === "string" && this.description.length)
                    writer.writeString(2, this.description);
                if (typeof this.security_code === "string" && this.security_code.length)
                    writer.writeString(3, this.security_code);
                if (!w)
                    return writer.getResultBuffer();
            }
            static deserialize(bytes) {
                const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new CreateWalletRequest();
                while (reader.nextField()) {
                    if (reader.isEndGroup())
                        break;
                    switch (reader.getFieldNumber()) {
                        case 1:
                            message.controller = reader.readString();
                            break;
                        case 2:
                            message.description = reader.readString();
                            break;
                        case 3:
                            message.security_code = reader.readString();
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
                return CreateWalletRequest.deserialize(bytes);
            }
        }
        services.CreateWalletRequest = CreateWalletRequest;
        class CreateWalletResponse extends pb_1.Message {
            constructor(data) {
                super();
                pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [], []);
                if (!Array.isArray(data) && typeof data == "object") {
                    if ("status" in data && data.status != undefined) {
                        this.status = data.status;
                    }
                    if ("wallet_id" in data && data.wallet_id != undefined) {
                        this.wallet_id = data.wallet_id;
                    }
                    if ("capability" in data && data.capability != undefined) {
                        this.capability = data.capability;
                    }
                    if ("invoker" in data && data.invoker != undefined) {
                        this.invoker = data.invoker;
                    }
                }
            }
            get status() {
                return pb_1.Message.getField(this, 1);
            }
            set status(value) {
                pb_1.Message.setField(this, 1, value);
            }
            get wallet_id() {
                return pb_1.Message.getField(this, 2);
            }
            set wallet_id(value) {
                pb_1.Message.setField(this, 2, value);
            }
            get capability() {
                return pb_1.Message.getField(this, 3);
            }
            set capability(value) {
                pb_1.Message.setField(this, 3, value);
            }
            get invoker() {
                return pb_1.Message.getField(this, 4);
            }
            set invoker(value) {
                pb_1.Message.setField(this, 4, value);
            }
            toObject() {
                var data = {};
                if (this.status != null) {
                    data.status = this.status;
                }
                if (this.wallet_id != null) {
                    data.wallet_id = this.wallet_id;
                }
                if (this.capability != null) {
                    data.capability = this.capability;
                }
                if (this.invoker != null) {
                    data.invoker = this.invoker;
                }
                return data;
            }
            serialize(w) {
                const writer = w || new pb_1.BinaryWriter();
                if (this.status !== undefined)
                    writer.writeEnum(1, this.status);
                if (typeof this.wallet_id === "string" && this.wallet_id.length)
                    writer.writeString(2, this.wallet_id);
                if (typeof this.capability === "string" && this.capability.length)
                    writer.writeString(3, this.capability);
                if (typeof this.invoker === "string" && this.invoker.length)
                    writer.writeString(4, this.invoker);
                if (!w)
                    return writer.getResultBuffer();
            }
            static deserialize(bytes) {
                const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new CreateWalletResponse();
                while (reader.nextField()) {
                    if (reader.isEndGroup())
                        break;
                    switch (reader.getFieldNumber()) {
                        case 1:
                            message.status = reader.readEnum();
                            break;
                        case 2:
                            message.wallet_id = reader.readString();
                            break;
                        case 3:
                            message.capability = reader.readString();
                            break;
                        case 4:
                            message.invoker = reader.readString();
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
                return CreateWalletResponse.deserialize(bytes);
            }
        }
        services.CreateWalletResponse = CreateWalletResponse;
        class ConnectRequest extends pb_1.Message {
            constructor(data) {
                super();
                pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [], [[5, 6]]);
                if (!Array.isArray(data) && typeof data == "object") {
                    if ("email" in data && data.email != undefined) {
                        this.email = data.email;
                    }
                    if ("phone" in data && data.phone != undefined) {
                        this.phone = data.phone;
                    }
                }
            }
            get email() {
                return pb_1.Message.getField(this, 5);
            }
            set email(value) {
                pb_1.Message.setField(this, 5, value);
            }
            get phone() {
                return pb_1.Message.getField(this, 6);
            }
            set phone(value) {
                pb_1.Message.setField(this, 6, value);
            }
            toObject() {
                var data = {};
                if (this.email != null) {
                    data.email = this.email;
                }
                if (this.phone != null) {
                    data.phone = this.phone;
                }
                return data;
            }
            serialize(w) {
                const writer = w || new pb_1.BinaryWriter();
                if (typeof this.email === "string" && this.email.length)
                    writer.writeString(5, this.email);
                if (typeof this.phone === "string" && this.phone.length)
                    writer.writeString(6, this.phone);
                if (!w)
                    return writer.getResultBuffer();
            }
            static deserialize(bytes) {
                const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new ConnectRequest();
                while (reader.nextField()) {
                    if (reader.isEndGroup())
                        break;
                    switch (reader.getFieldNumber()) {
                        case 5:
                            message.email = reader.readString();
                            break;
                        case 6:
                            message.phone = reader.readString();
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
                return ConnectRequest.deserialize(bytes);
            }
        }
        services.ConnectRequest = ConnectRequest;
        class ConnectResponse extends pb_1.Message {
            constructor(data) {
                super();
                pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [], []);
                if (!Array.isArray(data) && typeof data == "object") {
                    if ("status" in data && data.status != undefined) {
                        this.status = data.status;
                    }
                }
            }
            get status() {
                return pb_1.Message.getField(this, 1);
            }
            set status(value) {
                pb_1.Message.setField(this, 1, value);
            }
            toObject() {
                var data = {};
                if (this.status != null) {
                    data.status = this.status;
                }
                return data;
            }
            serialize(w) {
                const writer = w || new pb_1.BinaryWriter();
                if (this.status !== undefined)
                    writer.writeEnum(1, this.status);
                if (!w)
                    return writer.getResultBuffer();
            }
            static deserialize(bytes) {
                const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new ConnectResponse();
                while (reader.nextField()) {
                    if (reader.isEndGroup())
                        break;
                    switch (reader.getFieldNumber()) {
                        case 1:
                            message.status = reader.readEnum();
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
                return ConnectResponse.deserialize(bytes);
            }
        }
        services.ConnectResponse = ConnectResponse;
        class InvitationToken extends pb_1.Message {
            constructor(data) {
                super();
                pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [], [[5, 6]]);
                if (!Array.isArray(data) && typeof data == "object") {
                    if ("security_code" in data && data.security_code != undefined) {
                        this.security_code = data.security_code;
                    }
                    if ("wallet_id" in data && data.wallet_id != undefined) {
                        this.wallet_id = data.wallet_id;
                    }
                    if ("email" in data && data.email != undefined) {
                        this.email = data.email;
                    }
                    if ("phone" in data && data.phone != undefined) {
                        this.phone = data.phone;
                    }
                }
            }
            get security_code() {
                return pb_1.Message.getField(this, 1);
            }
            set security_code(value) {
                pb_1.Message.setField(this, 1, value);
            }
            get wallet_id() {
                return pb_1.Message.getField(this, 2);
            }
            set wallet_id(value) {
                pb_1.Message.setField(this, 2, value);
            }
            get email() {
                return pb_1.Message.getField(this, 5);
            }
            set email(value) {
                pb_1.Message.setField(this, 5, value);
            }
            get phone() {
                return pb_1.Message.getField(this, 6);
            }
            set phone(value) {
                pb_1.Message.setField(this, 6, value);
            }
            toObject() {
                var data = {};
                if (this.security_code != null) {
                    data.security_code = this.security_code;
                }
                if (this.wallet_id != null) {
                    data.wallet_id = this.wallet_id;
                }
                if (this.email != null) {
                    data.email = this.email;
                }
                if (this.phone != null) {
                    data.phone = this.phone;
                }
                return data;
            }
            serialize(w) {
                const writer = w || new pb_1.BinaryWriter();
                if (typeof this.security_code === "string" && this.security_code.length)
                    writer.writeString(1, this.security_code);
                if (typeof this.wallet_id === "string" && this.wallet_id.length)
                    writer.writeString(2, this.wallet_id);
                if (typeof this.email === "string" && this.email.length)
                    writer.writeString(5, this.email);
                if (typeof this.phone === "string" && this.phone.length)
                    writer.writeString(6, this.phone);
                if (!w)
                    return writer.getResultBuffer();
            }
            static deserialize(bytes) {
                const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new InvitationToken();
                while (reader.nextField()) {
                    if (reader.isEndGroup())
                        break;
                    switch (reader.getFieldNumber()) {
                        case 1:
                            message.security_code = reader.readString();
                            break;
                        case 2:
                            message.wallet_id = reader.readString();
                            break;
                        case 5:
                            message.email = reader.readString();
                            break;
                        case 6:
                            message.phone = reader.readString();
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
                return InvitationToken.deserialize(bytes);
            }
        }
        services.InvitationToken = InvitationToken;
        class WalletProfile extends pb_1.Message {
            constructor(data) {
                super();
                pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [], []);
                if (!Array.isArray(data) && typeof data == "object") {
                    if ("did_document" in data && data.did_document != undefined) {
                        this.did_document = data.did_document;
                    }
                    if ("wallet_id" in data && data.wallet_id != undefined) {
                        this.wallet_id = data.wallet_id;
                    }
                    if ("invoker" in data && data.invoker != undefined) {
                        this.invoker = data.invoker;
                    }
                    if ("capability" in data && data.capability != undefined) {
                        this.capability = data.capability;
                    }
                    if ("invoker_jwk" in data && data.invoker_jwk != undefined) {
                        this.invoker_jwk = data.invoker_jwk;
                    }
                }
            }
            get did_document() {
                return pb_1.Message.getWrapperField(this, dep_1.google.protobuf.Struct, 1);
            }
            set did_document(value) {
                pb_1.Message.setWrapperField(this, 1, value);
            }
            get wallet_id() {
                return pb_1.Message.getField(this, 2);
            }
            set wallet_id(value) {
                pb_1.Message.setField(this, 2, value);
            }
            get invoker() {
                return pb_1.Message.getField(this, 3);
            }
            set invoker(value) {
                pb_1.Message.setField(this, 3, value);
            }
            get capability() {
                return pb_1.Message.getField(this, 4);
            }
            set capability(value) {
                pb_1.Message.setField(this, 4, value);
            }
            get invoker_jwk() {
                return pb_1.Message.getField(this, 5);
            }
            set invoker_jwk(value) {
                pb_1.Message.setField(this, 5, value);
            }
            toObject() {
                var data = {};
                if (this.did_document != null) {
                    data.did_document = this.did_document.toObject();
                }
                if (this.wallet_id != null) {
                    data.wallet_id = this.wallet_id;
                }
                if (this.invoker != null) {
                    data.invoker = this.invoker;
                }
                if (this.capability != null) {
                    data.capability = this.capability;
                }
                if (this.invoker_jwk != null) {
                    data.invoker_jwk = this.invoker_jwk;
                }
                return data;
            }
            serialize(w) {
                const writer = w || new pb_1.BinaryWriter();
                if (this.did_document !== undefined)
                    writer.writeMessage(1, this.did_document, () => this.did_document.serialize(writer));
                if (typeof this.wallet_id === "string" && this.wallet_id.length)
                    writer.writeString(2, this.wallet_id);
                if (typeof this.invoker === "string" && this.invoker.length)
                    writer.writeString(3, this.invoker);
                if (typeof this.capability === "string" && this.capability.length)
                    writer.writeString(4, this.capability);
                if (this.invoker_jwk !== undefined)
                    writer.writeBytes(5, this.invoker_jwk);
                if (!w)
                    return writer.getResultBuffer();
            }
            static deserialize(bytes) {
                const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new WalletProfile();
                while (reader.nextField()) {
                    if (reader.isEndGroup())
                        break;
                    switch (reader.getFieldNumber()) {
                        case 1:
                            reader.readMessage(message.did_document, () => message.did_document = dep_1.google.protobuf.Struct.deserialize(reader));
                            break;
                        case 2:
                            message.wallet_id = reader.readString();
                            break;
                        case 3:
                            message.invoker = reader.readString();
                            break;
                        case 4:
                            message.capability = reader.readString();
                            break;
                        case 5:
                            message.invoker_jwk = reader.readBytes();
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
                return WalletProfile.deserialize(bytes);
            }
        }
        services.WalletProfile = WalletProfile;
        class GrantAccessRequest extends pb_1.Message {
            constructor(data) {
                super();
                pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [], []);
                if (!Array.isArray(data) && typeof data == "object") {
                    if ("wallet_id" in data && data.wallet_id != undefined) {
                        this.wallet_id = data.wallet_id;
                    }
                    if ("did" in data && data.did != undefined) {
                        this.did = data.did;
                    }
                }
            }
            get wallet_id() {
                return pb_1.Message.getField(this, 1);
            }
            set wallet_id(value) {
                pb_1.Message.setField(this, 1, value);
            }
            get did() {
                return pb_1.Message.getField(this, 2);
            }
            set did(value) {
                pb_1.Message.setField(this, 2, value);
            }
            toObject() {
                var data = {};
                if (this.wallet_id != null) {
                    data.wallet_id = this.wallet_id;
                }
                if (this.did != null) {
                    data.did = this.did;
                }
                return data;
            }
            serialize(w) {
                const writer = w || new pb_1.BinaryWriter();
                if (typeof this.wallet_id === "string" && this.wallet_id.length)
                    writer.writeString(1, this.wallet_id);
                if (typeof this.did === "string" && this.did.length)
                    writer.writeString(2, this.did);
                if (!w)
                    return writer.getResultBuffer();
            }
            static deserialize(bytes) {
                const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new GrantAccessRequest();
                while (reader.nextField()) {
                    if (reader.isEndGroup())
                        break;
                    switch (reader.getFieldNumber()) {
                        case 1:
                            message.wallet_id = reader.readString();
                            break;
                        case 2:
                            message.did = reader.readString();
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
                return GrantAccessRequest.deserialize(bytes);
            }
        }
        services.GrantAccessRequest = GrantAccessRequest;
        class GrantAccessResponse extends pb_1.Message {
            constructor(data) {
                super();
                pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [], []);
                if (!Array.isArray(data) && typeof data == "object") {
                    if ("status" in data && data.status != undefined) {
                        this.status = data.status;
                    }
                }
            }
            get status() {
                return pb_1.Message.getField(this, 1);
            }
            set status(value) {
                pb_1.Message.setField(this, 1, value);
            }
            toObject() {
                var data = {};
                if (this.status != null) {
                    data.status = this.status;
                }
                return data;
            }
            serialize(w) {
                const writer = w || new pb_1.BinaryWriter();
                if (this.status !== undefined)
                    writer.writeEnum(1, this.status);
                if (!w)
                    return writer.getResultBuffer();
            }
            static deserialize(bytes) {
                const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new GrantAccessResponse();
                while (reader.nextField()) {
                    if (reader.isEndGroup())
                        break;
                    switch (reader.getFieldNumber()) {
                        case 1:
                            message.status = reader.readEnum();
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
                return GrantAccessResponse.deserialize(bytes);
            }
        }
        services.GrantAccessResponse = GrantAccessResponse;
        class RevokeAccessRequest extends pb_1.Message {
            constructor(data) {
                super();
                pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [], []);
                if (!Array.isArray(data) && typeof data == "object") {
                    if ("wallet_id" in data && data.wallet_id != undefined) {
                        this.wallet_id = data.wallet_id;
                    }
                    if ("did" in data && data.did != undefined) {
                        this.did = data.did;
                    }
                }
            }
            get wallet_id() {
                return pb_1.Message.getField(this, 1);
            }
            set wallet_id(value) {
                pb_1.Message.setField(this, 1, value);
            }
            get did() {
                return pb_1.Message.getField(this, 2);
            }
            set did(value) {
                pb_1.Message.setField(this, 2, value);
            }
            toObject() {
                var data = {};
                if (this.wallet_id != null) {
                    data.wallet_id = this.wallet_id;
                }
                if (this.did != null) {
                    data.did = this.did;
                }
                return data;
            }
            serialize(w) {
                const writer = w || new pb_1.BinaryWriter();
                if (typeof this.wallet_id === "string" && this.wallet_id.length)
                    writer.writeString(1, this.wallet_id);
                if (typeof this.did === "string" && this.did.length)
                    writer.writeString(2, this.did);
                if (!w)
                    return writer.getResultBuffer();
            }
            static deserialize(bytes) {
                const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new RevokeAccessRequest();
                while (reader.nextField()) {
                    if (reader.isEndGroup())
                        break;
                    switch (reader.getFieldNumber()) {
                        case 1:
                            message.wallet_id = reader.readString();
                            break;
                        case 2:
                            message.did = reader.readString();
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
                return RevokeAccessRequest.deserialize(bytes);
            }
        }
        services.RevokeAccessRequest = RevokeAccessRequest;
        class RevokeAccessResponse extends pb_1.Message {
            constructor(data) {
                super();
                pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [], []);
                if (!Array.isArray(data) && typeof data == "object") {
                    if ("status" in data && data.status != undefined) {
                        this.status = data.status;
                    }
                }
            }
            get status() {
                return pb_1.Message.getField(this, 1);
            }
            set status(value) {
                pb_1.Message.setField(this, 1, value);
            }
            toObject() {
                var data = {};
                if (this.status != null) {
                    data.status = this.status;
                }
                return data;
            }
            serialize(w) {
                const writer = w || new pb_1.BinaryWriter();
                if (this.status !== undefined)
                    writer.writeEnum(1, this.status);
                if (!w)
                    return writer.getResultBuffer();
            }
            static deserialize(bytes) {
                const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new RevokeAccessResponse();
                while (reader.nextField()) {
                    if (reader.isEndGroup())
                        break;
                    switch (reader.getFieldNumber()) {
                        case 1:
                            message.status = reader.readEnum();
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
                return RevokeAccessResponse.deserialize(bytes);
            }
        }
        services.RevokeAccessResponse = RevokeAccessResponse;
        class GetProviderConfigurationRequest extends pb_1.Message {
            constructor(data) {
                super();
                pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [], []);
                if (!Array.isArray(data) && typeof data == "object") { }
            }
            toObject() {
                var data = {};
                return data;
            }
            serialize(w) {
                const writer = w || new pb_1.BinaryWriter();
                if (!w)
                    return writer.getResultBuffer();
            }
            static deserialize(bytes) {
                const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new GetProviderConfigurationRequest();
                while (reader.nextField()) {
                    if (reader.isEndGroup())
                        break;
                    switch (reader.getFieldNumber()) {
                        default: reader.skipField();
                    }
                }
                return message;
            }
            serializeBinary() {
                return this.serialize();
            }
            static deserializeBinary(bytes) {
                return GetProviderConfigurationRequest.deserialize(bytes);
            }
        }
        services.GetProviderConfigurationRequest = GetProviderConfigurationRequest;
        class GetProviderConfigurationResponse extends pb_1.Message {
            constructor(data) {
                super();
                pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [], []);
                if (!Array.isArray(data) && typeof data == "object") {
                    if ("did_document" in data && data.did_document != undefined) {
                        this.did_document = data.did_document;
                    }
                    if ("key_agreement_key_id" in data && data.key_agreement_key_id != undefined) {
                        this.key_agreement_key_id = data.key_agreement_key_id;
                    }
                }
            }
            get did_document() {
                return pb_1.Message.getWrapperField(this, dep_1.google.protobuf.Struct, 1);
            }
            set did_document(value) {
                pb_1.Message.setWrapperField(this, 1, value);
            }
            get key_agreement_key_id() {
                return pb_1.Message.getField(this, 2);
            }
            set key_agreement_key_id(value) {
                pb_1.Message.setField(this, 2, value);
            }
            toObject() {
                var data = {};
                if (this.did_document != null) {
                    data.did_document = this.did_document.toObject();
                }
                if (this.key_agreement_key_id != null) {
                    data.key_agreement_key_id = this.key_agreement_key_id;
                }
                return data;
            }
            serialize(w) {
                const writer = w || new pb_1.BinaryWriter();
                if (this.did_document !== undefined)
                    writer.writeMessage(1, this.did_document, () => this.did_document.serialize(writer));
                if (typeof this.key_agreement_key_id === "string" && this.key_agreement_key_id.length)
                    writer.writeString(2, this.key_agreement_key_id);
                if (!w)
                    return writer.getResultBuffer();
            }
            static deserialize(bytes) {
                const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new GetProviderConfigurationResponse();
                while (reader.nextField()) {
                    if (reader.isEndGroup())
                        break;
                    switch (reader.getFieldNumber()) {
                        case 1:
                            reader.readMessage(message.did_document, () => message.did_document = dep_1.google.protobuf.Struct.deserialize(reader));
                            break;
                        case 2:
                            message.key_agreement_key_id = reader.readString();
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
                return GetProviderConfigurationResponse.deserialize(bytes);
            }
        }
        services.GetProviderConfigurationResponse = GetProviderConfigurationResponse;
        class SearchRequest extends pb_1.Message {
            constructor(data) {
                super();
                pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [], []);
                if (!Array.isArray(data) && typeof data == "object") {
                    if ("query" in data && data.query != undefined) {
                        this.query = data.query;
                    }
                }
            }
            get query() {
                return pb_1.Message.getField(this, 1);
            }
            set query(value) {
                pb_1.Message.setField(this, 1, value);
            }
            toObject() {
                var data = {};
                if (this.query != null) {
                    data.query = this.query;
                }
                return data;
            }
            serialize(w) {
                const writer = w || new pb_1.BinaryWriter();
                if (typeof this.query === "string" && this.query.length)
                    writer.writeString(1, this.query);
                if (!w)
                    return writer.getResultBuffer();
            }
            static deserialize(bytes) {
                const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new SearchRequest();
                while (reader.nextField()) {
                    if (reader.isEndGroup())
                        break;
                    switch (reader.getFieldNumber()) {
                        case 1:
                            message.query = reader.readString();
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
                return SearchRequest.deserialize(bytes);
            }
        }
        services.SearchRequest = SearchRequest;
        class SearchResponse extends pb_1.Message {
            constructor(data) {
                super();
                pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [1], []);
                if (!Array.isArray(data) && typeof data == "object") {
                    if ("items" in data && data.items != undefined) {
                        this.items = data.items;
                    }
                    if ("has_more" in data && data.has_more != undefined) {
                        this.has_more = data.has_more;
                    }
                }
            }
            get items() {
                return pb_1.Message.getRepeatedWrapperField(this, dep_1.google.protobuf.Struct, 1);
            }
            set items(value) {
                pb_1.Message.setRepeatedWrapperField(this, 1, value);
            }
            get has_more() {
                return pb_1.Message.getField(this, 2);
            }
            set has_more(value) {
                pb_1.Message.setField(this, 2, value);
            }
            toObject() {
                var data = {};
                if (this.items != null) {
                    data.items = this.items.map((item) => item.toObject());
                }
                if (this.has_more != null) {
                    data.has_more = this.has_more;
                }
                return data;
            }
            serialize(w) {
                const writer = w || new pb_1.BinaryWriter();
                if (this.items !== undefined)
                    writer.writeRepeatedMessage(1, this.items, (item) => item.serialize(writer));
                if (this.has_more !== undefined)
                    writer.writeBool(2, this.has_more);
                if (!w)
                    return writer.getResultBuffer();
            }
            static deserialize(bytes) {
                const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new SearchResponse();
                while (reader.nextField()) {
                    if (reader.isEndGroup())
                        break;
                    switch (reader.getFieldNumber()) {
                        case 1:
                            reader.readMessage(message.items, () => pb_1.Message.addToRepeatedWrapperField(message, 1, dep_1.google.protobuf.Struct.deserialize(reader), dep_1.google.protobuf.Struct));
                            break;
                        case 2:
                            message.has_more = reader.readBool();
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
                return SearchResponse.deserialize(bytes);
            }
        }
        services.SearchResponse = SearchResponse;
        class InsertItemRequest extends pb_1.Message {
            constructor(data) {
                super();
                pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [], []);
                if (!Array.isArray(data) && typeof data == "object") {
                    if ("item" in data && data.item != undefined) {
                        this.item = data.item;
                    }
                    if ("item_type" in data && data.item_type != undefined) {
                        this.item_type = data.item_type;
                    }
                }
            }
            get item() {
                return pb_1.Message.getWrapperField(this, dep_1.google.protobuf.Struct, 1);
            }
            set item(value) {
                pb_1.Message.setWrapperField(this, 1, value);
            }
            get item_type() {
                return pb_1.Message.getField(this, 2);
            }
            set item_type(value) {
                pb_1.Message.setField(this, 2, value);
            }
            toObject() {
                var data = {};
                if (this.item != null) {
                    data.item = this.item.toObject();
                }
                if (this.item_type != null) {
                    data.item_type = this.item_type;
                }
                return data;
            }
            serialize(w) {
                const writer = w || new pb_1.BinaryWriter();
                if (this.item !== undefined)
                    writer.writeMessage(1, this.item, () => this.item.serialize(writer));
                if (typeof this.item_type === "string" && this.item_type.length)
                    writer.writeString(2, this.item_type);
                if (!w)
                    return writer.getResultBuffer();
            }
            static deserialize(bytes) {
                const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new InsertItemRequest();
                while (reader.nextField()) {
                    if (reader.isEndGroup())
                        break;
                    switch (reader.getFieldNumber()) {
                        case 1:
                            reader.readMessage(message.item, () => message.item = dep_1.google.protobuf.Struct.deserialize(reader));
                            break;
                        case 2:
                            message.item_type = reader.readString();
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
                return InsertItemRequest.deserialize(bytes);
            }
        }
        services.InsertItemRequest = InsertItemRequest;
        class InsertItemResponse extends pb_1.Message {
            constructor(data) {
                super();
                pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [], []);
                if (!Array.isArray(data) && typeof data == "object") {
                    if ("status" in data && data.status != undefined) {
                        this.status = data.status;
                    }
                    if ("item_id" in data && data.item_id != undefined) {
                        this.item_id = data.item_id;
                    }
                }
            }
            get status() {
                return pb_1.Message.getField(this, 1);
            }
            set status(value) {
                pb_1.Message.setField(this, 1, value);
            }
            get item_id() {
                return pb_1.Message.getField(this, 2);
            }
            set item_id(value) {
                pb_1.Message.setField(this, 2, value);
            }
            toObject() {
                var data = {};
                if (this.status != null) {
                    data.status = this.status;
                }
                if (this.item_id != null) {
                    data.item_id = this.item_id;
                }
                return data;
            }
            serialize(w) {
                const writer = w || new pb_1.BinaryWriter();
                if (this.status !== undefined)
                    writer.writeEnum(1, this.status);
                if (typeof this.item_id === "string" && this.item_id.length)
                    writer.writeString(2, this.item_id);
                if (!w)
                    return writer.getResultBuffer();
            }
            static deserialize(bytes) {
                const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new InsertItemResponse();
                while (reader.nextField()) {
                    if (reader.isEndGroup())
                        break;
                    switch (reader.getFieldNumber()) {
                        case 1:
                            message.status = reader.readEnum();
                            break;
                        case 2:
                            message.item_id = reader.readString();
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
                return InsertItemResponse.deserialize(bytes);
            }
        }
        services.InsertItemResponse = InsertItemResponse;
        services.Wallet = {
            GetProviderConfiguration: {
                path: "/trinsic.services.Wallet/GetProviderConfiguration",
                requestStream: false,
                responseStream: false,
                requestSerialize: (message) => Buffer.from(message.serialize()),
                requestDeserialize: (bytes) => GetProviderConfigurationRequest.deserialize(new Uint8Array(bytes)),
                responseSerialize: (message) => Buffer.from(message.serialize()),
                responseDeserialize: (bytes) => GetProviderConfigurationResponse.deserialize(new Uint8Array(bytes))
            },
            ConnectExternalIdentity: {
                path: "/trinsic.services.Wallet/ConnectExternalIdentity",
                requestStream: false,
                responseStream: false,
                requestSerialize: (message) => Buffer.from(message.serialize()),
                requestDeserialize: (bytes) => ConnectRequest.deserialize(new Uint8Array(bytes)),
                responseSerialize: (message) => Buffer.from(message.serialize()),
                responseDeserialize: (bytes) => ConnectResponse.deserialize(new Uint8Array(bytes))
            },
            CreateWallet: {
                path: "/trinsic.services.Wallet/CreateWallet",
                requestStream: false,
                responseStream: false,
                requestSerialize: (message) => Buffer.from(message.serialize()),
                requestDeserialize: (bytes) => CreateWalletRequest.deserialize(new Uint8Array(bytes)),
                responseSerialize: (message) => Buffer.from(message.serialize()),
                responseDeserialize: (bytes) => CreateWalletResponse.deserialize(new Uint8Array(bytes))
            },
            CreateWalletWithWorkflow: {
                path: "/trinsic.services.Wallet/CreateWalletWithWorkflow",
                requestStream: false,
                responseStream: false,
                requestSerialize: (message) => Buffer.from(message.serialize()),
                requestDeserialize: (bytes) => CreateWalletRequest.deserialize(new Uint8Array(bytes)),
                responseSerialize: (message) => Buffer.from(message.serialize()),
                responseDeserialize: (bytes) => CreateWalletResponse.deserialize(new Uint8Array(bytes))
            },
            CreateWalletEncrypted: {
                path: "/trinsic.services.Wallet/CreateWalletEncrypted",
                requestStream: false,
                responseStream: false,
                requestSerialize: (message) => Buffer.from(message.serialize()),
                requestDeserialize: (bytes) => pbmse_1.pbmse.EncryptedMessage.deserialize(new Uint8Array(bytes)),
                responseSerialize: (message) => Buffer.from(message.serialize()),
                responseDeserialize: (bytes) => pbmse_1.pbmse.EncryptedMessage.deserialize(new Uint8Array(bytes))
            },
            Search: {
                path: "/trinsic.services.Wallet/Search",
                requestStream: false,
                responseStream: false,
                requestSerialize: (message) => Buffer.from(message.serialize()),
                requestDeserialize: (bytes) => SearchRequest.deserialize(new Uint8Array(bytes)),
                responseSerialize: (message) => Buffer.from(message.serialize()),
                responseDeserialize: (bytes) => SearchResponse.deserialize(new Uint8Array(bytes))
            },
            InsertItem: {
                path: "/trinsic.services.Wallet/InsertItem",
                requestStream: false,
                responseStream: false,
                requestSerialize: (message) => Buffer.from(message.serialize()),
                requestDeserialize: (bytes) => InsertItemRequest.deserialize(new Uint8Array(bytes)),
                responseSerialize: (message) => Buffer.from(message.serialize()),
                responseDeserialize: (bytes) => InsertItemResponse.deserialize(new Uint8Array(bytes))
            },
            GrantAccess: {
                path: "/trinsic.services.Wallet/GrantAccess",
                requestStream: false,
                responseStream: false,
                requestSerialize: (message) => Buffer.from(message.serialize()),
                requestDeserialize: (bytes) => GrantAccessRequest.deserialize(new Uint8Array(bytes)),
                responseSerialize: (message) => Buffer.from(message.serialize()),
                responseDeserialize: (bytes) => GrantAccessResponse.deserialize(new Uint8Array(bytes))
            },
            RevokeAccess: {
                path: "/trinsic.services.Wallet/RevokeAccess",
                requestStream: false,
                responseStream: false,
                requestSerialize: (message) => Buffer.from(message.serialize()),
                requestDeserialize: (bytes) => RevokeAccessRequest.deserialize(new Uint8Array(bytes)),
                responseSerialize: (message) => Buffer.from(message.serialize()),
                responseDeserialize: (bytes) => RevokeAccessResponse.deserialize(new Uint8Array(bytes))
            }
        };
        class WalletClient extends grpc_1.makeGenericClientConstructor(services.Wallet, "Wallet", {}) {
            constructor(address, credentials, options) {
                super(address, credentials, options);
            }
        }
        services.WalletClient = WalletClient;
    })(services = trinsic.services || (trinsic.services = {}));
})(trinsic = exports.trinsic || (exports.trinsic = {}));
//# sourceMappingURL=WalletService.js.map