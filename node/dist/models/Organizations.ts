import * as pb_1 from "google-protobuf";
export class Organization extends pb_1.Message {
    constructor(data?: any[] | {
        id?: string;
        name?: string;
        capabilities?: Organization.Capability[];
        members?: Member[];
    }) {
        super();
        pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [3, 4], []);
        if (!Array.isArray(data) && typeof data == "object") {
            if ("id" in data && data.id != undefined) {
                this.id = data.id;
            }
            if ("name" in data && data.name != undefined) {
                this.name = data.name;
            }
            if ("capabilities" in data && data.capabilities != undefined) {
                this.capabilities = data.capabilities;
            }
            if ("members" in data && data.members != undefined) {
                this.members = data.members;
            }
        }
    }
    get id() {
        return pb_1.Message.getField(this, 1) as string;
    }
    set id(value: string) {
        pb_1.Message.setField(this, 1, value);
    }
    get name() {
        return pb_1.Message.getField(this, 2) as string;
    }
    set name(value: string) {
        pb_1.Message.setField(this, 2, value);
    }
    get capabilities() {
        return pb_1.Message.getField(this, 3) as Organization.Capability[];
    }
    set capabilities(value: Organization.Capability[]) {
        pb_1.Message.setField(this, 3, value);
    }
    get members() {
        return pb_1.Message.getRepeatedWrapperField(this, Member, 4) as Member[];
    }
    set members(value: Member[]) {
        pb_1.Message.setRepeatedWrapperField(this, 4, value);
    }
    toObject() {
        var data: {
            id?: string;
            name?: string;
            capabilities?: Organization.Capability[];
            members?: ReturnType<typeof Member.prototype.toObject>[];
        } = {};
        if (this.id != null) {
            data.id = this.id;
        }
        if (this.name != null) {
            data.name = this.name;
        }
        if (this.capabilities != null) {
            data.capabilities = this.capabilities;
        }
        if (this.members != null) {
            data.members = this.members.map((item: Member) => item.toObject());
        }
        return data;
    }
    serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined {
        const writer = w || new pb_1.BinaryWriter();
        if (typeof this.id === "string" && this.id.length)
            writer.writeString(1, this.id);
        if (typeof this.name === "string" && this.name.length)
            writer.writeString(2, this.name);
        if (this.capabilities !== undefined)
            writer.writePackedEnum(3, this.capabilities);
        if (this.members !== undefined)
            writer.writeRepeatedMessage(4, this.members, (item: Member) => item.serialize(writer));
        if (!w)
            return writer.getResultBuffer();
    }
    static deserialize(bytes: Uint8Array | pb_1.BinaryReader): Organization {
        const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new Organization();
        while (reader.nextField()) {
            if (reader.isEndGroup())
                break;
            switch (reader.getFieldNumber()) {
                case 1:
                    message.id = reader.readString();
                    break;
                case 2:
                    message.name = reader.readString();
                    break;
                case 3:
                    message.capabilities = reader.readPackedEnum();
                    break;
                case 4:
                    reader.readMessage(message.members, () => pb_1.Message.addToRepeatedWrapperField(message, 4, Member.deserialize(reader), Member));
                    break;
                default: reader.skipField();
            }
        }
        return message;
    }
    serializeBinary(): Uint8Array {
        return this.serialize();
    }
    static deserializeBinary(bytes: Uint8Array): Organization {
        return Organization.deserialize(bytes);
    }
}
export namespace Organization {
    export enum Capability {
        VERIFIER = 0,
        ISSUER = 1,
        PROVIDER = 2
    }
}
export class Member extends pb_1.Message {
    constructor(data?: any[] | {
        name?: string;
        email?: string;
    }) {
        super();
        pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [], []);
        if (!Array.isArray(data) && typeof data == "object") {
            if ("name" in data && data.name != undefined) {
                this.name = data.name;
            }
            if ("email" in data && data.email != undefined) {
                this.email = data.email;
            }
        }
    }
    get name() {
        return pb_1.Message.getField(this, 1) as string;
    }
    set name(value: string) {
        pb_1.Message.setField(this, 1, value);
    }
    get email() {
        return pb_1.Message.getField(this, 2) as string;
    }
    set email(value: string) {
        pb_1.Message.setField(this, 2, value);
    }
    toObject() {
        var data: {
            name?: string;
            email?: string;
        } = {};
        if (this.name != null) {
            data.name = this.name;
        }
        if (this.email != null) {
            data.email = this.email;
        }
        return data;
    }
    serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined {
        const writer = w || new pb_1.BinaryWriter();
        if (typeof this.name === "string" && this.name.length)
            writer.writeString(1, this.name);
        if (typeof this.email === "string" && this.email.length)
            writer.writeString(2, this.email);
        if (!w)
            return writer.getResultBuffer();
    }
    static deserialize(bytes: Uint8Array | pb_1.BinaryReader): Member {
        const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new Member();
        while (reader.nextField()) {
            if (reader.isEndGroup())
                break;
            switch (reader.getFieldNumber()) {
                case 1:
                    message.name = reader.readString();
                    break;
                case 2:
                    message.email = reader.readString();
                    break;
                default: reader.skipField();
            }
        }
        return message;
    }
    serializeBinary(): Uint8Array {
        return this.serialize();
    }
    static deserializeBinary(bytes: Uint8Array): Member {
        return Member.deserialize(bytes);
    }
}
export class CreateOrganizationRequest extends pb_1.Message {
    constructor(data?: any[] | {
        organization?: Organization;
    }) {
        super();
        pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [], []);
        if (!Array.isArray(data) && typeof data == "object") {
            if ("organization" in data && data.organization != undefined) {
                this.organization = data.organization;
            }
        }
    }
    get organization() {
        return pb_1.Message.getWrapperField(this, Organization, 1) as Organization;
    }
    set organization(value: Organization) {
        pb_1.Message.setWrapperField(this, 1, value);
    }
    toObject() {
        var data: {
            organization?: ReturnType<typeof Organization.prototype.toObject>;
        } = {};
        if (this.organization != null) {
            data.organization = this.organization.toObject();
        }
        return data;
    }
    serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined {
        const writer = w || new pb_1.BinaryWriter();
        if (this.organization !== undefined)
            writer.writeMessage(1, this.organization, () => this.organization.serialize(writer));
        if (!w)
            return writer.getResultBuffer();
    }
    static deserialize(bytes: Uint8Array | pb_1.BinaryReader): CreateOrganizationRequest {
        const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new CreateOrganizationRequest();
        while (reader.nextField()) {
            if (reader.isEndGroup())
                break;
            switch (reader.getFieldNumber()) {
                case 1:
                    reader.readMessage(message.organization, () => message.organization = Organization.deserialize(reader));
                    break;
                default: reader.skipField();
            }
        }
        return message;
    }
    serializeBinary(): Uint8Array {
        return this.serialize();
    }
    static deserializeBinary(bytes: Uint8Array): CreateOrganizationRequest {
        return CreateOrganizationRequest.deserialize(bytes);
    }
}
export class CreateOrganizationResponse extends pb_1.Message {
    constructor(data?: any[] | {
        organization?: Organization;
    }) {
        super();
        pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [], []);
        if (!Array.isArray(data) && typeof data == "object") {
            if ("organization" in data && data.organization != undefined) {
                this.organization = data.organization;
            }
        }
    }
    get organization() {
        return pb_1.Message.getWrapperField(this, Organization, 2) as Organization;
    }
    set organization(value: Organization) {
        pb_1.Message.setWrapperField(this, 2, value);
    }
    toObject() {
        var data: {
            organization?: ReturnType<typeof Organization.prototype.toObject>;
        } = {};
        if (this.organization != null) {
            data.organization = this.organization.toObject();
        }
        return data;
    }
    serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined {
        const writer = w || new pb_1.BinaryWriter();
        if (this.organization !== undefined)
            writer.writeMessage(2, this.organization, () => this.organization.serialize(writer));
        if (!w)
            return writer.getResultBuffer();
    }
    static deserialize(bytes: Uint8Array | pb_1.BinaryReader): CreateOrganizationResponse {
        const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new CreateOrganizationResponse();
        while (reader.nextField()) {
            if (reader.isEndGroup())
                break;
            switch (reader.getFieldNumber()) {
                case 2:
                    reader.readMessage(message.organization, () => message.organization = Organization.deserialize(reader));
                    break;
                default: reader.skipField();
            }
        }
        return message;
    }
    serializeBinary(): Uint8Array {
        return this.serialize();
    }
    static deserializeBinary(bytes: Uint8Array): CreateOrganizationResponse {
        return CreateOrganizationResponse.deserialize(bytes);
    }
}
export class ListOrganizationRequest extends pb_1.Message {
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
    static deserialize(bytes: Uint8Array | pb_1.BinaryReader): ListOrganizationRequest {
        const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new ListOrganizationRequest();
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
    static deserializeBinary(bytes: Uint8Array): ListOrganizationRequest {
        return ListOrganizationRequest.deserialize(bytes);
    }
}
export class ListOrganizationResponse extends pb_1.Message {
    constructor(data?: any[] | {
        organization?: Organization[];
    }) {
        super();
        pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [1], []);
        if (!Array.isArray(data) && typeof data == "object") {
            if ("organization" in data && data.organization != undefined) {
                this.organization = data.organization;
            }
        }
    }
    get organization() {
        return pb_1.Message.getRepeatedWrapperField(this, Organization, 1) as Organization[];
    }
    set organization(value: Organization[]) {
        pb_1.Message.setRepeatedWrapperField(this, 1, value);
    }
    toObject() {
        var data: {
            organization?: ReturnType<typeof Organization.prototype.toObject>[];
        } = {};
        if (this.organization != null) {
            data.organization = this.organization.map((item: Organization) => item.toObject());
        }
        return data;
    }
    serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined {
        const writer = w || new pb_1.BinaryWriter();
        if (this.organization !== undefined)
            writer.writeRepeatedMessage(1, this.organization, (item: Organization) => item.serialize(writer));
        if (!w)
            return writer.getResultBuffer();
    }
    static deserialize(bytes: Uint8Array | pb_1.BinaryReader): ListOrganizationResponse {
        const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new ListOrganizationResponse();
        while (reader.nextField()) {
            if (reader.isEndGroup())
                break;
            switch (reader.getFieldNumber()) {
                case 1:
                    reader.readMessage(message.organization, () => pb_1.Message.addToRepeatedWrapperField(message, 1, Organization.deserialize(reader), Organization));
                    break;
                default: reader.skipField();
            }
        }
        return message;
    }
    serializeBinary(): Uint8Array {
        return this.serialize();
    }
    static deserializeBinary(bytes: Uint8Array): ListOrganizationResponse {
        return ListOrganizationResponse.deserialize(bytes);
    }
}
