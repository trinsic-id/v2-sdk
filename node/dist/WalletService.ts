import * as dep_1 from "./google\\protobuf\\struct";
// import * as dep_2 from "./CoreService";
import dep_2 from './CoreService';
import * as dep_3 from "./pbmse\\pbmse";
import { pbmse } from "./pbmse/pbmse";
import * as pb_1 from "google-protobuf";
import * as grpc_1 from "@grpc/grpc-js";

export namespace trinsic.services {
    export class CreateWalletRequest extends pb_1.Message {
        constructor(data?: any[] | {
            controller?: string;
            description?: string;
            security_code?: string;
        }) {
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
            return pb_1.Message.getField(this, 1) as string;
        }
        set controller(value: string) {
            pb_1.Message.setField(this, 1, value);
        }
        get description() {
            return pb_1.Message.getField(this, 2) as string;
        }
        set description(value: string) {
            pb_1.Message.setField(this, 2, value);
        }
        get security_code() {
            return pb_1.Message.getField(this, 3) as string;
        }
        set security_code(value: string) {
            pb_1.Message.setField(this, 3, value);
        }
        toObject() {
            var data: {
                controller?: string;
                description?: string;
                security_code?: string;
            } = {};
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
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined {
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
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): CreateWalletRequest {
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
        serializeBinary(): Uint8Array {
            return this.serialize();
        }
        static deserializeBinary(bytes: Uint8Array): CreateWalletRequest {
            return CreateWalletRequest.deserialize(bytes);
        }
    }
    export class CreateWalletResponse extends pb_1.Message {
        constructor(data?: any[] | {
            status?: dep_2.ResponseStatus;
            wallet_id?: string;
            capability?: string;
            invoker?: string;
        }) {
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
            return pb_1.Message.getField(this, 1) as dep_2.ResponseStatus;
        }
        set status(value: dep_2.ResponseStatus) {
            pb_1.Message.setField(this, 1, value);
        }
        get wallet_id() {
            return pb_1.Message.getField(this, 2) as string;
        }
        set wallet_id(value: string) {
            pb_1.Message.setField(this, 2, value);
        }
        get capability() {
            return pb_1.Message.getField(this, 3) as string;
        }
        set capability(value: string) {
            pb_1.Message.setField(this, 3, value);
        }
        get invoker() {
            return pb_1.Message.getField(this, 4) as string;
        }
        set invoker(value: string) {
            pb_1.Message.setField(this, 4, value);
        }
        toObject() {
            var data: {
                status?: dep_2.ResponseStatus;
                wallet_id?: string;
                capability?: string;
                invoker?: string;
            } = {};
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
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined {
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
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): CreateWalletResponse {
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
        serializeBinary(): Uint8Array {
            return this.serialize();
        }
        static deserializeBinary(bytes: Uint8Array): CreateWalletResponse {
            return CreateWalletResponse.deserialize(bytes);
        }
    }
    export class ConnectRequest extends pb_1.Message {
        constructor(data?: any[] | ({} & (({
            email: string;
            phone?: never;
        } | {
            email?: never;
            phone: string;
        })))) {
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
            return pb_1.Message.getField(this, 5) as string;
        }
        set email(value: string) {
            pb_1.Message.setField(this, 5, value);
        }
        get phone() {
            return pb_1.Message.getField(this, 6) as string;
        }
        set phone(value: string) {
            pb_1.Message.setField(this, 6, value);
        }
        toObject() {
            var data: {
                email?: string;
                phone?: string;
            } = {};
            if (this.email != null) {
                data.email = this.email;
            }
            if (this.phone != null) {
                data.phone = this.phone;
            }
            return data;
        }
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined {
            const writer = w || new pb_1.BinaryWriter();
            if (typeof this.email === "string" && this.email.length)
                writer.writeString(5, this.email);
            if (typeof this.phone === "string" && this.phone.length)
                writer.writeString(6, this.phone);
            if (!w)
                return writer.getResultBuffer();
        }
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): ConnectRequest {
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
        serializeBinary(): Uint8Array {
            return this.serialize();
        }
        static deserializeBinary(bytes: Uint8Array): ConnectRequest {
            return ConnectRequest.deserialize(bytes);
        }
    }
    export class ConnectResponse extends pb_1.Message {
        constructor(data?: any[] | {
            status?: dep_2.ResponseStatus;
        }) {
            super();
            pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [], []);
            if (!Array.isArray(data) && typeof data == "object") {
                if ("status" in data && data.status != undefined) {
                    this.status = data.status;
                }
            }
        }
        get status() {
            return pb_1.Message.getField(this, 1) as dep_2.ResponseStatus;
        }
        set status(value: dep_2.ResponseStatus) {
            pb_1.Message.setField(this, 1, value);
        }
        toObject() {
            var data: {
                status?: dep_2.ResponseStatus;
            } = {};
            if (this.status != null) {
                data.status = this.status;
            }
            return data;
        }
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined {
            const writer = w || new pb_1.BinaryWriter();
            if (this.status !== undefined)
                writer.writeEnum(1, this.status);
            if (!w)
                return writer.getResultBuffer();
        }
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): ConnectResponse {
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
        serializeBinary(): Uint8Array {
            return this.serialize();
        }
        static deserializeBinary(bytes: Uint8Array): ConnectResponse {
            return ConnectResponse.deserialize(bytes);
        }
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
        })))) {
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
            return pb_1.Message.getField(this, 1) as string;
        }
        set security_code(value: string) {
            pb_1.Message.setField(this, 1, value);
        }
        get wallet_id() {
            return pb_1.Message.getField(this, 2) as string;
        }
        set wallet_id(value: string) {
            pb_1.Message.setField(this, 2, value);
        }
        get email() {
            return pb_1.Message.getField(this, 5) as string;
        }
        set email(value: string) {
            pb_1.Message.setField(this, 5, value);
        }
        get phone() {
            return pb_1.Message.getField(this, 6) as string;
        }
        set phone(value: string) {
            pb_1.Message.setField(this, 6, value);
        }
        toObject() {
            var data: {
                security_code?: string;
                wallet_id?: string;
                email?: string;
                phone?: string;
            } = {};
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
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined {
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
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): InvitationToken {
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
        serializeBinary(): Uint8Array {
            return this.serialize();
        }
        static deserializeBinary(bytes: Uint8Array): InvitationToken {
            return InvitationToken.deserialize(bytes);
        }
    }
    export class WalletProfile extends pb_1.Message {
        constructor(data?: any[] | {
            did_document?: dep_1.google.protobuf.Struct;
            wallet_id?: string;
            invoker?: string;
            capability?: string;
            invoker_jwk?: Uint8Array;
        }) {
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
            return pb_1.Message.getWrapperField(this, dep_1.google.protobuf.Struct, 1) as dep_1.google.protobuf.Struct;
        }
        set did_document(value: dep_1.google.protobuf.Struct) {
            pb_1.Message.setWrapperField(this, 1, value);
        }
        get wallet_id() {
            return pb_1.Message.getField(this, 2) as string;
        }
        set wallet_id(value: string) {
            pb_1.Message.setField(this, 2, value);
        }
        get invoker() {
            return pb_1.Message.getField(this, 3) as string;
        }
        set invoker(value: string) {
            pb_1.Message.setField(this, 3, value);
        }
        get capability() {
            return pb_1.Message.getField(this, 4) as string;
        }
        set capability(value: string) {
            pb_1.Message.setField(this, 4, value);
        }
        get invoker_jwk() {
            return pb_1.Message.getField(this, 5) as Uint8Array;
        }
        set invoker_jwk(value: Uint8Array) {
            pb_1.Message.setField(this, 5, value);
        }
        toObject() {
            var data: {
                did_document?: ReturnType<typeof dep_1.google.protobuf.Struct.prototype.toObject>;
                wallet_id?: string;
                invoker?: string;
                capability?: string;
                invoker_jwk?: Uint8Array;
            } = {};
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
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined {
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
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): WalletProfile {
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
        serializeBinary(): Uint8Array {
            return this.serialize();
        }
        static deserializeBinary(bytes: Uint8Array): WalletProfile {
            return WalletProfile.deserialize(bytes);
        }
    }
    export class GrantAccessRequest extends pb_1.Message {
        constructor(data?: any[] | {
            wallet_id?: string;
            did?: string;
        }) {
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
            return pb_1.Message.getField(this, 1) as string;
        }
        set wallet_id(value: string) {
            pb_1.Message.setField(this, 1, value);
        }
        get did() {
            return pb_1.Message.getField(this, 2) as string;
        }
        set did(value: string) {
            pb_1.Message.setField(this, 2, value);
        }
        toObject() {
            var data: {
                wallet_id?: string;
                did?: string;
            } = {};
            if (this.wallet_id != null) {
                data.wallet_id = this.wallet_id;
            }
            if (this.did != null) {
                data.did = this.did;
            }
            return data;
        }
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined {
            const writer = w || new pb_1.BinaryWriter();
            if (typeof this.wallet_id === "string" && this.wallet_id.length)
                writer.writeString(1, this.wallet_id);
            if (typeof this.did === "string" && this.did.length)
                writer.writeString(2, this.did);
            if (!w)
                return writer.getResultBuffer();
        }
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): GrantAccessRequest {
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
        serializeBinary(): Uint8Array {
            return this.serialize();
        }
        static deserializeBinary(bytes: Uint8Array): GrantAccessRequest {
            return GrantAccessRequest.deserialize(bytes);
        }
    }
    export class GrantAccessResponse extends pb_1.Message {
        constructor(data?: any[] | {
            status?: dep_2.ResponseStatus;
        }) {
            super();
            pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [], []);
            if (!Array.isArray(data) && typeof data == "object") {
                if ("status" in data && data.status != undefined) {
                    this.status = data.status;
                }
            }
        }
        get status() {
            return pb_1.Message.getField(this, 1) as dep_2.ResponseStatus;
        }
        set status(value: dep_2.ResponseStatus) {
            pb_1.Message.setField(this, 1, value);
        }
        toObject() {
            var data: {
                status?: dep_2.ResponseStatus;
            } = {};
            if (this.status != null) {
                data.status = this.status;
            }
            return data;
        }
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined {
            const writer = w || new pb_1.BinaryWriter();
            if (this.status !== undefined)
                writer.writeEnum(1, this.status);
            if (!w)
                return writer.getResultBuffer();
        }
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): GrantAccessResponse {
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
        serializeBinary(): Uint8Array {
            return this.serialize();
        }
        static deserializeBinary(bytes: Uint8Array): GrantAccessResponse {
            return GrantAccessResponse.deserialize(bytes);
        }
    }
    export class RevokeAccessRequest extends pb_1.Message {
        constructor(data?: any[] | {
            wallet_id?: string;
            did?: string;
        }) {
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
            return pb_1.Message.getField(this, 1) as string;
        }
        set wallet_id(value: string) {
            pb_1.Message.setField(this, 1, value);
        }
        get did() {
            return pb_1.Message.getField(this, 2) as string;
        }
        set did(value: string) {
            pb_1.Message.setField(this, 2, value);
        }
        toObject() {
            var data: {
                wallet_id?: string;
                did?: string;
            } = {};
            if (this.wallet_id != null) {
                data.wallet_id = this.wallet_id;
            }
            if (this.did != null) {
                data.did = this.did;
            }
            return data;
        }
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined {
            const writer = w || new pb_1.BinaryWriter();
            if (typeof this.wallet_id === "string" && this.wallet_id.length)
                writer.writeString(1, this.wallet_id);
            if (typeof this.did === "string" && this.did.length)
                writer.writeString(2, this.did);
            if (!w)
                return writer.getResultBuffer();
        }
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): RevokeAccessRequest {
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
        serializeBinary(): Uint8Array {
            return this.serialize();
        }
        static deserializeBinary(bytes: Uint8Array): RevokeAccessRequest {
            return RevokeAccessRequest.deserialize(bytes);
        }
    }
    export class RevokeAccessResponse extends pb_1.Message {
        constructor(data?: any[] | {
            status?: dep_2.ResponseStatus;
        }) {
            super();
            pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [], []);
            if (!Array.isArray(data) && typeof data == "object") {
                if ("status" in data && data.status != undefined) {
                    this.status = data.status;
                }
            }
        }
        get status() {
            return pb_1.Message.getField(this, 1) as dep_2.ResponseStatus;
        }
        set status(value: dep_2.ResponseStatus) {
            pb_1.Message.setField(this, 1, value);
        }
        toObject() {
            var data: {
                status?: dep_2.ResponseStatus;
            } = {};
            if (this.status != null) {
                data.status = this.status;
            }
            return data;
        }
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined {
            const writer = w || new pb_1.BinaryWriter();
            if (this.status !== undefined)
                writer.writeEnum(1, this.status);
            if (!w)
                return writer.getResultBuffer();
        }
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): RevokeAccessResponse {
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
        serializeBinary(): Uint8Array {
            return this.serialize();
        }
        static deserializeBinary(bytes: Uint8Array): RevokeAccessResponse {
            return RevokeAccessResponse.deserialize(bytes);
        }
    }
    export class GetProviderConfigurationRequest extends pb_1.Message {
        constructor(data?: any[] | {}) {
            super();
            pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [], []);
            if (!Array.isArray(data) && typeof data == "object") { }
        }
        toObject() {
            var data: {} = {};
            return data;
        }
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined {
            const writer = w || new pb_1.BinaryWriter();
            if (!w)
                return writer.getResultBuffer();
        }
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): GetProviderConfigurationRequest {
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
        serializeBinary(): Uint8Array {
            return this.serialize();
        }
        static deserializeBinary(bytes: Uint8Array): GetProviderConfigurationRequest {
            return GetProviderConfigurationRequest.deserialize(bytes);
        }
    }
    export class GetProviderConfigurationResponse extends pb_1.Message {
        constructor(data?: any[] | {
            did_document?: dep_1.google.protobuf.Struct;
            key_agreement_key_id?: string;
        }) {
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
            return pb_1.Message.getWrapperField(this, dep_1.google.protobuf.Struct, 1) as dep_1.google.protobuf.Struct;
        }
        set did_document(value: dep_1.google.protobuf.Struct) {
            pb_1.Message.setWrapperField(this, 1, value);
        }
        get key_agreement_key_id() {
            return pb_1.Message.getField(this, 2) as string;
        }
        set key_agreement_key_id(value: string) {
            pb_1.Message.setField(this, 2, value);
        }
        toObject() {
            var data: {
                did_document?: ReturnType<typeof dep_1.google.protobuf.Struct.prototype.toObject>;
                key_agreement_key_id?: string;
            } = {};
            if (this.did_document != null) {
                data.did_document = this.did_document.toObject();
            }
            if (this.key_agreement_key_id != null) {
                data.key_agreement_key_id = this.key_agreement_key_id;
            }
            return data;
        }
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined {
            const writer = w || new pb_1.BinaryWriter();
            if (this.did_document !== undefined)
                writer.writeMessage(1, this.did_document, () => this.did_document.serialize(writer));
            if (typeof this.key_agreement_key_id === "string" && this.key_agreement_key_id.length)
                writer.writeString(2, this.key_agreement_key_id);
            if (!w)
                return writer.getResultBuffer();
        }
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): GetProviderConfigurationResponse {
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
        serializeBinary(): Uint8Array {
            return this.serialize();
        }
        static deserializeBinary(bytes: Uint8Array): GetProviderConfigurationResponse {
            return GetProviderConfigurationResponse.deserialize(bytes);
        }
    }
    export class SearchRequest extends pb_1.Message {
        constructor(data?: any[] | {
            query?: string;
        }) {
            super();
            pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [], []);
            if (!Array.isArray(data) && typeof data == "object") {
                if ("query" in data && data.query != undefined) {
                    this.query = data.query;
                }
            }
        }
        get query() {
            return pb_1.Message.getField(this, 1) as string;
        }
        set query(value: string) {
            pb_1.Message.setField(this, 1, value);
        }
        toObject() {
            var data: {
                query?: string;
            } = {};
            if (this.query != null) {
                data.query = this.query;
            }
            return data;
        }
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined {
            const writer = w || new pb_1.BinaryWriter();
            if (typeof this.query === "string" && this.query.length)
                writer.writeString(1, this.query);
            if (!w)
                return writer.getResultBuffer();
        }
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): SearchRequest {
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
        serializeBinary(): Uint8Array {
            return this.serialize();
        }
        static deserializeBinary(bytes: Uint8Array): SearchRequest {
            return SearchRequest.deserialize(bytes);
        }
    }
    export class SearchResponse extends pb_1.Message {
        constructor(data?: any[] | {
            items?: dep_1.google.protobuf.Struct[];
            has_more?: boolean;
        }) {
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
            return pb_1.Message.getRepeatedWrapperField(this, dep_1.google.protobuf.Struct, 1) as dep_1.google.protobuf.Struct[];
        }
        set items(value: dep_1.google.protobuf.Struct[]) {
            pb_1.Message.setRepeatedWrapperField(this, 1, value);
        }
        get has_more() {
            return pb_1.Message.getField(this, 2) as boolean;
        }
        set has_more(value: boolean) {
            pb_1.Message.setField(this, 2, value);
        }
        toObject() {
            var data: {
                items?: ReturnType<typeof dep_1.google.protobuf.Struct.prototype.toObject>[];
                has_more?: boolean;
            } = {};
            if (this.items != null) {
                data.items = this.items.map((item: dep_1.google.protobuf.Struct) => item.toObject());
            }
            if (this.has_more != null) {
                data.has_more = this.has_more;
            }
            return data;
        }
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined {
            const writer = w || new pb_1.BinaryWriter();
            if (this.items !== undefined)
                writer.writeRepeatedMessage(1, this.items, (item: dep_1.google.protobuf.Struct) => item.serialize(writer));
            if (this.has_more !== undefined)
                writer.writeBool(2, this.has_more);
            if (!w)
                return writer.getResultBuffer();
        }
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): SearchResponse {
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
        serializeBinary(): Uint8Array {
            return this.serialize();
        }
        static deserializeBinary(bytes: Uint8Array): SearchResponse {
            return SearchResponse.deserialize(bytes);
        }
    }
    export class InsertItemRequest extends pb_1.Message {
        constructor(data?: any[] | {
            item?: dep_1.google.protobuf.Struct;
            item_type?: string;
        }) {
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
            return pb_1.Message.getWrapperField(this, dep_1.google.protobuf.Struct, 1) as dep_1.google.protobuf.Struct;
        }
        set item(value: dep_1.google.protobuf.Struct) {
            pb_1.Message.setWrapperField(this, 1, value);
        }
        get item_type() {
            return pb_1.Message.getField(this, 2) as string;
        }
        set item_type(value: string) {
            pb_1.Message.setField(this, 2, value);
        }
        toObject() {
            var data: {
                item?: ReturnType<typeof dep_1.google.protobuf.Struct.prototype.toObject>;
                item_type?: string;
            } = {};
            if (this.item != null) {
                data.item = this.item.toObject();
            }
            if (this.item_type != null) {
                data.item_type = this.item_type;
            }
            return data;
        }
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined {
            const writer = w || new pb_1.BinaryWriter();
            if (this.item !== undefined)
                writer.writeMessage(1, this.item, () => this.item.serialize(writer));
            if (typeof this.item_type === "string" && this.item_type.length)
                writer.writeString(2, this.item_type);
            if (!w)
                return writer.getResultBuffer();
        }
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): InsertItemRequest {
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
        serializeBinary(): Uint8Array {
            return this.serialize();
        }
        static deserializeBinary(bytes: Uint8Array): InsertItemRequest {
            return InsertItemRequest.deserialize(bytes);
        }
    }
    export class InsertItemResponse extends pb_1.Message {
        constructor(data?: any[] | {
            status?: dep_2.ResponseStatus;
            item_id?: string;
        }) {
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
            return pb_1.Message.getField(this, 1) as dep_2.ResponseStatus;
        }
        set status(value: dep_2.ResponseStatus) {
            pb_1.Message.setField(this, 1, value);
        }
        get item_id() {
            return pb_1.Message.getField(this, 2) as string;
        }
        set item_id(value: string) {
            pb_1.Message.setField(this, 2, value);
        }
        toObject() {
            var data: {
                status?: dep_2.ResponseStatus;
                item_id?: string;
            } = {};
            if (this.status != null) {
                data.status = this.status;
            }
            if (this.item_id != null) {
                data.item_id = this.item_id;
            }
            return data;
        }
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined {
            const writer = w || new pb_1.BinaryWriter();
            if (this.status !== undefined)
                writer.writeEnum(1, this.status);
            if (typeof this.item_id === "string" && this.item_id.length)
                writer.writeString(2, this.item_id);
            if (!w)
                return writer.getResultBuffer();
        }
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): InsertItemResponse {
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
        serializeBinary(): Uint8Array {
            return this.serialize();
        }
        static deserializeBinary(bytes: Uint8Array): InsertItemResponse {
            return InsertItemResponse.deserialize(bytes);
        }
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
    export const Wallet = {
        GetProviderConfiguration: {
            path: "/trinsic.services.Wallet/GetProviderConfiguration",
            requestStream: false,
            responseStream: false,
            requestSerialize: (message: GetProviderConfigurationRequest) => Buffer.from(message.serialize()),
            requestDeserialize: (bytes: Buffer) => GetProviderConfigurationRequest.deserialize(new Uint8Array(bytes)),
            responseSerialize: (message: GetProviderConfigurationResponse) => Buffer.from(message.serialize()),
            responseDeserialize: (bytes: Buffer) => GetProviderConfigurationResponse.deserialize(new Uint8Array(bytes))
        },
        ConnectExternalIdentity: {
            path: "/trinsic.services.Wallet/ConnectExternalIdentity",
            requestStream: false,
            responseStream: false,
            requestSerialize: (message: ConnectRequest) => Buffer.from(message.serialize()),
            requestDeserialize: (bytes: Buffer) => ConnectRequest.deserialize(new Uint8Array(bytes)),
            responseSerialize: (message: ConnectResponse) => Buffer.from(message.serialize()),
            responseDeserialize: (bytes: Buffer) => ConnectResponse.deserialize(new Uint8Array(bytes))
        },
        CreateWallet: {
            path: "/trinsic.services.Wallet/CreateWallet",
            requestStream: false,
            responseStream: false,
            requestSerialize: (message: CreateWalletRequest) => Buffer.from(message.serialize()),
            requestDeserialize: (bytes: Buffer) => CreateWalletRequest.deserialize(new Uint8Array(bytes)),
            responseSerialize: (message: CreateWalletResponse) => Buffer.from(message.serialize()),
            responseDeserialize: (bytes: Buffer) => CreateWalletResponse.deserialize(new Uint8Array(bytes))
        },
        CreateWalletWithWorkflow: {
            path: "/trinsic.services.Wallet/CreateWalletWithWorkflow",
            requestStream: false,
            responseStream: false,
            requestSerialize: (message: CreateWalletRequest) => Buffer.from(message.serialize()),
            requestDeserialize: (bytes: Buffer) => CreateWalletRequest.deserialize(new Uint8Array(bytes)),
            responseSerialize: (message: CreateWalletResponse) => Buffer.from(message.serialize()),
            responseDeserialize: (bytes: Buffer) => CreateWalletResponse.deserialize(new Uint8Array(bytes))
        },
        CreateWalletEncrypted: {
            path: "/trinsic.services.Wallet/CreateWalletEncrypted",
            requestStream: false,
            responseStream: false,
            requestSerialize: (message: pbmse.EncryptedMessage) => Buffer.from(message.serialize()),
            requestDeserialize: (bytes: Buffer) => pbmse.EncryptedMessage.deserialize(new Uint8Array(bytes)),
            responseSerialize: (message: pbmse.EncryptedMessage) => Buffer.from(message.serialize()),
            responseDeserialize: (bytes: Buffer) => pbmse.EncryptedMessage.deserialize(new Uint8Array(bytes))
        },
        Search: {
            path: "/trinsic.services.Wallet/Search",
            requestStream: false,
            responseStream: false,
            requestSerialize: (message: SearchRequest) => Buffer.from(message.serialize()),
            requestDeserialize: (bytes: Buffer) => SearchRequest.deserialize(new Uint8Array(bytes)),
            responseSerialize: (message: SearchResponse) => Buffer.from(message.serialize()),
            responseDeserialize: (bytes: Buffer) => SearchResponse.deserialize(new Uint8Array(bytes))
        },
        InsertItem: {
            path: "/trinsic.services.Wallet/InsertItem",
            requestStream: false,
            responseStream: false,
            requestSerialize: (message: InsertItemRequest) => Buffer.from(message.serialize()),
            requestDeserialize: (bytes: Buffer) => InsertItemRequest.deserialize(new Uint8Array(bytes)),
            responseSerialize: (message: InsertItemResponse) => Buffer.from(message.serialize()),
            responseDeserialize: (bytes: Buffer) => InsertItemResponse.deserialize(new Uint8Array(bytes))
        },
        GrantAccess: {
            path: "/trinsic.services.Wallet/GrantAccess",
            requestStream: false,
            responseStream: false,
            requestSerialize: (message: GrantAccessRequest) => Buffer.from(message.serialize()),
            requestDeserialize: (bytes: Buffer) => GrantAccessRequest.deserialize(new Uint8Array(bytes)),
            responseSerialize: (message: GrantAccessResponse) => Buffer.from(message.serialize()),
            responseDeserialize: (bytes: Buffer) => GrantAccessResponse.deserialize(new Uint8Array(bytes))
        },
        RevokeAccess: {
            path: "/trinsic.services.Wallet/RevokeAccess",
            requestStream: false,
            responseStream: false,
            requestSerialize: (message: RevokeAccessRequest) => Buffer.from(message.serialize()),
            requestDeserialize: (bytes: Buffer) => RevokeAccessRequest.deserialize(new Uint8Array(bytes)),
            responseSerialize: (message: RevokeAccessResponse) => Buffer.from(message.serialize()),
            responseDeserialize: (bytes: Buffer) => RevokeAccessResponse.deserialize(new Uint8Array(bytes))
        }
    };
    export class WalletClient extends grpc_1.makeGenericClientConstructor(Wallet, "Wallet", {}) {
        constructor(address: string, credentials: grpc_1.ChannelCredentials, options?: Partial<grpc_1.ChannelOptions>) {
            super(address, credentials, options)
        }
    }
}
