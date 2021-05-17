import * as dep_1 from "./Attributes";
import * as pb_1 from "google-protobuf";
export namespace trinsic.services {
    export class aCredential extends pb_1.Message {
        constructor(data?: any[] | {
            id?: string;
            issuerId?: string;
            receipientId?: string;
            credentialTemplateId?: string;
            attributes?: dep_1.Attribute[];
            state?: aCredential.State;
            issuanceDate?: number;
            expirationDate?: number;
        }) {
            super();
            pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [8], []);
            if (!Array.isArray(data) && typeof data == "object") {
                if ("id" in data && data.id != undefined) {
                    this.id = data.id;
                }
                if ("issuerId" in data && data.issuerId != undefined) {
                    this.issuerId = data.issuerId;
                }
                if ("receipientId" in data && data.receipientId != undefined) {
                    this.receipientId = data.receipientId;
                }
                if ("credentialTemplateId" in data && data.credentialTemplateId != undefined) {
                    this.credentialTemplateId = data.credentialTemplateId;
                }
                if ("attributes" in data && data.attributes != undefined) {
                    this.attributes = data.attributes;
                }
                if ("state" in data && data.state != undefined) {
                    this.state = data.state;
                }
                if ("issuanceDate" in data && data.issuanceDate != undefined) {
                    this.issuanceDate = data.issuanceDate;
                }
                if ("expirationDate" in data && data.expirationDate != undefined) {
                    this.expirationDate = data.expirationDate;
                }
            }
        }
        get id() {
            return pb_1.Message.getField(this, 1) as string;
        }
        set id(value: string) {
            pb_1.Message.setField(this, 1, value);
        }
        get issuerId() {
            return pb_1.Message.getField(this, 2) as string;
        }
        set issuerId(value: string) {
            pb_1.Message.setField(this, 2, value);
        }
        get receipientId() {
            return pb_1.Message.getField(this, 7) as string;
        }
        set receipientId(value: string) {
            pb_1.Message.setField(this, 7, value);
        }
        get credentialTemplateId() {
            return pb_1.Message.getField(this, 3) as string;
        }
        set credentialTemplateId(value: string) {
            pb_1.Message.setField(this, 3, value);
        }
        get attributes() {
            return pb_1.Message.getRepeatedWrapperField(this, dep_1.Attribute, 8) as dep_1.Attribute[];
        }
        set attributes(value: dep_1.Attribute[]) {
            pb_1.Message.setRepeatedWrapperField(this, 8, value);
        }
        get state() {
            return pb_1.Message.getField(this, 4) as aCredential.State;
        }
        set state(value: aCredential.State) {
            pb_1.Message.setField(this, 4, value);
        }
        get issuanceDate() {
            return pb_1.Message.getField(this, 5) as number;
        }
        set issuanceDate(value: number) {
            pb_1.Message.setField(this, 5, value);
        }
        get expirationDate() {
            return pb_1.Message.getField(this, 6) as number;
        }
        set expirationDate(value: number) {
            pb_1.Message.setField(this, 6, value);
        }
        toObject() {
            var data: {
                id?: string;
                issuerId?: string;
                receipientId?: string;
                credentialTemplateId?: string;
                attributes?: ReturnType<typeof dep_1.Attribute.prototype.toObject>[];
                state?: aCredential.State;
                issuanceDate?: number;
                expirationDate?: number;
            } = {};
            if (this.id != null) {
                data.id = this.id;
            }
            if (this.issuerId != null) {
                data.issuerId = this.issuerId;
            }
            if (this.receipientId != null) {
                data.receipientId = this.receipientId;
            }
            if (this.credentialTemplateId != null) {
                data.credentialTemplateId = this.credentialTemplateId;
            }
            if (this.attributes != null) {
                data.attributes = this.attributes.map((item: dep_1.Attribute) => item.toObject());
            }
            if (this.state != null) {
                data.state = this.state;
            }
            if (this.issuanceDate != null) {
                data.issuanceDate = this.issuanceDate;
            }
            if (this.expirationDate != null) {
                data.expirationDate = this.expirationDate;
            }
            return data;
        }
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined {
            const writer = w || new pb_1.BinaryWriter();
            if (typeof this.id === "string" && this.id.length)
                writer.writeString(1, this.id);
            if (typeof this.issuerId === "string" && this.issuerId.length)
                writer.writeString(2, this.issuerId);
            if (typeof this.receipientId === "string" && this.receipientId.length)
                writer.writeString(7, this.receipientId);
            if (typeof this.credentialTemplateId === "string" && this.credentialTemplateId.length)
                writer.writeString(3, this.credentialTemplateId);
            if (this.attributes !== undefined)
                writer.writeRepeatedMessage(8, this.attributes, (item: dep_1.Attribute) => item.serialize(writer));
            if (this.state !== undefined)
                writer.writeEnum(4, this.state);
            if (this.issuanceDate !== undefined)
                writer.writeInt64(5, this.issuanceDate);
            if (this.expirationDate !== undefined)
                writer.writeInt64(6, this.expirationDate);
            if (!w)
                return writer.getResultBuffer();
        }
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): aCredential {
            const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new aCredential();
            while (reader.nextField()) {
                if (reader.isEndGroup())
                    break;
                switch (reader.getFieldNumber()) {
                    case 1:
                        message.id = reader.readString();
                        break;
                    case 2:
                        message.issuerId = reader.readString();
                        break;
                    case 7:
                        message.receipientId = reader.readString();
                        break;
                    case 3:
                        message.credentialTemplateId = reader.readString();
                        break;
                    case 8:
                        reader.readMessage(message.attributes, () => pb_1.Message.addToRepeatedWrapperField(message, 8, dep_1.Attribute.deserialize(reader), dep_1.Attribute));
                        break;
                    case 4:
                        message.state = reader.readEnum();
                        break;
                    case 5:
                        message.issuanceDate = reader.readInt64();
                        break;
                    case 6:
                        message.expirationDate = reader.readInt64();
                        break;
                    default: reader.skipField();
                }
            }
            return message;
        }
        serializeBinary(): Uint8Array {
            return this.serialize();
        }
        static deserializeBinary(bytes: Uint8Array): aCredential {
            return aCredential.deserialize(bytes);
        }
    }
    export namespace aCredential {
        export enum State {
            created = 0,
            issued = 1,
            received = 2,
            expired = 3,
            revoked = 4
        }
    }
    export class IssueCredentialRequest extends pb_1.Message {
        constructor(data?: any[] | {
            issuerId?: string;
            receipientId?: string;
            credentialTemplateId?: string;
            attributes?: dep_1.Attribute[];
        }) {
            super();
            pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [4], []);
            if (!Array.isArray(data) && typeof data == "object") {
                if ("issuerId" in data && data.issuerId != undefined) {
                    this.issuerId = data.issuerId;
                }
                if ("receipientId" in data && data.receipientId != undefined) {
                    this.receipientId = data.receipientId;
                }
                if ("credentialTemplateId" in data && data.credentialTemplateId != undefined) {
                    this.credentialTemplateId = data.credentialTemplateId;
                }
                if ("attributes" in data && data.attributes != undefined) {
                    this.attributes = data.attributes;
                }
            }
        }
        get issuerId() {
            return pb_1.Message.getField(this, 1) as string;
        }
        set issuerId(value: string) {
            pb_1.Message.setField(this, 1, value);
        }
        get receipientId() {
            return pb_1.Message.getField(this, 2) as string;
        }
        set receipientId(value: string) {
            pb_1.Message.setField(this, 2, value);
        }
        get credentialTemplateId() {
            return pb_1.Message.getField(this, 3) as string;
        }
        set credentialTemplateId(value: string) {
            pb_1.Message.setField(this, 3, value);
        }
        get attributes() {
            return pb_1.Message.getRepeatedWrapperField(this, dep_1.Attribute, 4) as dep_1.Attribute[];
        }
        set attributes(value: dep_1.Attribute[]) {
            pb_1.Message.setRepeatedWrapperField(this, 4, value);
        }
        toObject() {
            var data: {
                issuerId?: string;
                receipientId?: string;
                credentialTemplateId?: string;
                attributes?: ReturnType<typeof dep_1.Attribute.prototype.toObject>[];
            } = {};
            if (this.issuerId != null) {
                data.issuerId = this.issuerId;
            }
            if (this.receipientId != null) {
                data.receipientId = this.receipientId;
            }
            if (this.credentialTemplateId != null) {
                data.credentialTemplateId = this.credentialTemplateId;
            }
            if (this.attributes != null) {
                data.attributes = this.attributes.map((item: dep_1.Attribute) => item.toObject());
            }
            return data;
        }
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined {
            const writer = w || new pb_1.BinaryWriter();
            if (typeof this.issuerId === "string" && this.issuerId.length)
                writer.writeString(1, this.issuerId);
            if (typeof this.receipientId === "string" && this.receipientId.length)
                writer.writeString(2, this.receipientId);
            if (typeof this.credentialTemplateId === "string" && this.credentialTemplateId.length)
                writer.writeString(3, this.credentialTemplateId);
            if (this.attributes !== undefined)
                writer.writeRepeatedMessage(4, this.attributes, (item: dep_1.Attribute) => item.serialize(writer));
            if (!w)
                return writer.getResultBuffer();
        }
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): IssueCredentialRequest {
            const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new IssueCredentialRequest();
            while (reader.nextField()) {
                if (reader.isEndGroup())
                    break;
                switch (reader.getFieldNumber()) {
                    case 1:
                        message.issuerId = reader.readString();
                        break;
                    case 2:
                        message.receipientId = reader.readString();
                        break;
                    case 3:
                        message.credentialTemplateId = reader.readString();
                        break;
                    case 4:
                        reader.readMessage(message.attributes, () => pb_1.Message.addToRepeatedWrapperField(message, 4, dep_1.Attribute.deserialize(reader), dep_1.Attribute));
                        break;
                    default: reader.skipField();
                }
            }
            return message;
        }
        serializeBinary(): Uint8Array {
            return this.serialize();
        }
        static deserializeBinary(bytes: Uint8Array): IssueCredentialRequest {
            return IssueCredentialRequest.deserialize(bytes);
        }
    }
    export class IssueCredentialResponse extends pb_1.Message {
        constructor(data?: any[] | {
            credential?: aCredential;
        }) {
            super();
            pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [], []);
            if (!Array.isArray(data) && typeof data == "object") {
                if ("credential" in data && data.credential != undefined) {
                    this.credential = data.credential;
                }
            }
        }
        get credential() {
            return pb_1.Message.getWrapperField(this, aCredential, 1) as aCredential;
        }
        set credential(value: aCredential) {
            pb_1.Message.setWrapperField(this, 1, value);
        }
        toObject() {
            var data: {
                credential?: ReturnType<typeof aCredential.prototype.toObject>;
            } = {};
            if (this.credential != null) {
                data.credential = this.credential.toObject();
            }
            return data;
        }
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined {
            const writer = w || new pb_1.BinaryWriter();
            if (this.credential !== undefined)
                writer.writeMessage(1, this.credential, () => this.credential.serialize(writer));
            if (!w)
                return writer.getResultBuffer();
        }
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): IssueCredentialResponse {
            const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new IssueCredentialResponse();
            while (reader.nextField()) {
                if (reader.isEndGroup())
                    break;
                switch (reader.getFieldNumber()) {
                    case 1:
                        reader.readMessage(message.credential, () => message.credential = aCredential.deserialize(reader));
                        break;
                    default: reader.skipField();
                }
            }
            return message;
        }
        serializeBinary(): Uint8Array {
            return this.serialize();
        }
        static deserializeBinary(bytes: Uint8Array): IssueCredentialResponse {
            return IssueCredentialResponse.deserialize(bytes);
        }
    }
    export class ListCredentialRequest extends pb_1.Message {
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
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): ListCredentialRequest {
            const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new ListCredentialRequest();
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
        static deserializeBinary(bytes: Uint8Array): ListCredentialRequest {
            return ListCredentialRequest.deserialize(bytes);
        }
    }
    export class ListCredentialResponse extends pb_1.Message {
        constructor(data?: any[] | {
            credentials?: aCredential[];
        }) {
            super();
            pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [1], []);
            if (!Array.isArray(data) && typeof data == "object") {
                if ("credentials" in data && data.credentials != undefined) {
                    this.credentials = data.credentials;
                }
            }
        }
        get credentials() {
            return pb_1.Message.getRepeatedWrapperField(this, aCredential, 1) as aCredential[];
        }
        set credentials(value: aCredential[]) {
            pb_1.Message.setRepeatedWrapperField(this, 1, value);
        }
        toObject() {
            var data: {
                credentials?: ReturnType<typeof aCredential.prototype.toObject>[];
            } = {};
            if (this.credentials != null) {
                data.credentials = this.credentials.map((item: aCredential) => item.toObject());
            }
            return data;
        }
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined {
            const writer = w || new pb_1.BinaryWriter();
            if (this.credentials !== undefined)
                writer.writeRepeatedMessage(1, this.credentials, (item: aCredential) => item.serialize(writer));
            if (!w)
                return writer.getResultBuffer();
        }
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): ListCredentialResponse {
            const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new ListCredentialResponse();
            while (reader.nextField()) {
                if (reader.isEndGroup())
                    break;
                switch (reader.getFieldNumber()) {
                    case 1:
                        reader.readMessage(message.credentials, () => pb_1.Message.addToRepeatedWrapperField(message, 1, aCredential.deserialize(reader), aCredential));
                        break;
                    default: reader.skipField();
                }
            }
            return message;
        }
        serializeBinary(): Uint8Array {
            return this.serialize();
        }
        static deserializeBinary(bytes: Uint8Array): ListCredentialResponse {
            return ListCredentialResponse.deserialize(bytes);
        }
    }
}
