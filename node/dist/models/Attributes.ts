import * as dep_1 from "./..\\google\\protobuf\\empty";
import * as pb_1 from "google-protobuf";
export namespace trinsic.services {
    export enum AttributeType {
        date = 0,
        number = 1,
        text = 2,
        enum = 3
    }
    export class Attribute extends pb_1.Message {
        constructor(data?: any[] | {
            Id?: string;
            name?: string;
            type?: AttributeType;
            value?: string;
        }) {
            super();
            pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [], []);
            if (!Array.isArray(data) && typeof data == "object") {
                if ("Id" in data && data.Id != undefined) {
                    this.Id = data.Id;
                }
                if ("name" in data && data.name != undefined) {
                    this.name = data.name;
                }
                if ("type" in data && data.type != undefined) {
                    this.type = data.type;
                }
                if ("value" in data && data.value != undefined) {
                    this.value = data.value;
                }
            }
        }
        get Id() {
            return pb_1.Message.getField(this, 1) as string;
        }
        set Id(value: string) {
            pb_1.Message.setField(this, 1, value);
        }
        get name() {
            return pb_1.Message.getField(this, 2) as string;
        }
        set name(value: string) {
            pb_1.Message.setField(this, 2, value);
        }
        get type() {
            return pb_1.Message.getField(this, 3) as AttributeType;
        }
        set type(value: AttributeType) {
            pb_1.Message.setField(this, 3, value);
        }
        get value() {
            return pb_1.Message.getField(this, 4) as string;
        }
        set value(value: string) {
            pb_1.Message.setField(this, 4, value);
        }
        toObject() {
            var data: {
                Id?: string;
                name?: string;
                type?: AttributeType;
                value?: string;
            } = {};
            if (this.Id != null) {
                data.Id = this.Id;
            }
            if (this.name != null) {
                data.name = this.name;
            }
            if (this.type != null) {
                data.type = this.type;
            }
            if (this.value != null) {
                data.value = this.value;
            }
            return data;
        }
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined {
            const writer = w || new pb_1.BinaryWriter();
            if (typeof this.Id === "string" && this.Id.length)
                writer.writeString(1, this.Id);
            if (typeof this.name === "string" && this.name.length)
                writer.writeString(2, this.name);
            if (this.type !== undefined)
                writer.writeEnum(3, this.type);
            if (typeof this.value === "string" && this.value.length)
                writer.writeString(4, this.value);
            if (!w)
                return writer.getResultBuffer();
        }
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): Attribute {
            const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new Attribute();
            while (reader.nextField()) {
                if (reader.isEndGroup())
                    break;
                switch (reader.getFieldNumber()) {
                    case 1:
                        message.Id = reader.readString();
                        break;
                    case 2:
                        message.name = reader.readString();
                        break;
                    case 3:
                        message.type = reader.readEnum();
                        break;
                    case 4:
                        message.value = reader.readString();
                        break;
                    default: reader.skipField();
                }
            }
            return message;
        }
        serializeBinary(): Uint8Array {
            return this.serialize();
        }
        static deserializeBinary(bytes: Uint8Array): Attribute {
            return Attribute.deserialize(bytes);
        }
    }
    export class AttributeId extends pb_1.Message {
        constructor(data?: any[] | {
            Id?: string;
        }) {
            super();
            pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [], []);
            if (!Array.isArray(data) && typeof data == "object") {
                if ("Id" in data && data.Id != undefined) {
                    this.Id = data.Id;
                }
            }
        }
        get Id() {
            return pb_1.Message.getField(this, 1) as string;
        }
        set Id(value: string) {
            pb_1.Message.setField(this, 1, value);
        }
        toObject() {
            var data: {
                Id?: string;
            } = {};
            if (this.Id != null) {
                data.Id = this.Id;
            }
            return data;
        }
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined {
            const writer = w || new pb_1.BinaryWriter();
            if (typeof this.Id === "string" && this.Id.length)
                writer.writeString(1, this.Id);
            if (!w)
                return writer.getResultBuffer();
        }
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): AttributeId {
            const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new AttributeId();
            while (reader.nextField()) {
                if (reader.isEndGroup())
                    break;
                switch (reader.getFieldNumber()) {
                    case 1:
                        message.Id = reader.readString();
                        break;
                    default: reader.skipField();
                }
            }
            return message;
        }
        serializeBinary(): Uint8Array {
            return this.serialize();
        }
        static deserializeBinary(bytes: Uint8Array): AttributeId {
            return AttributeId.deserialize(bytes);
        }
    }
    export class ListAttributesResponse extends pb_1.Message {
        constructor(data?: any[] | {
            attributes?: Attribute[];
        }) {
            super();
            pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [1], []);
            if (!Array.isArray(data) && typeof data == "object") {
                if ("attributes" in data && data.attributes != undefined) {
                    this.attributes = data.attributes;
                }
            }
        }
        get attributes() {
            return pb_1.Message.getRepeatedWrapperField(this, Attribute, 1) as Attribute[];
        }
        set attributes(value: Attribute[]) {
            pb_1.Message.setRepeatedWrapperField(this, 1, value);
        }
        toObject() {
            var data: {
                attributes?: ReturnType<typeof Attribute.prototype.toObject>[];
            } = {};
            if (this.attributes != null) {
                data.attributes = this.attributes.map((item: Attribute) => item.toObject());
            }
            return data;
        }
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined {
            const writer = w || new pb_1.BinaryWriter();
            if (this.attributes !== undefined)
                writer.writeRepeatedMessage(1, this.attributes, (item: Attribute) => item.serialize(writer));
            if (!w)
                return writer.getResultBuffer();
        }
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): ListAttributesResponse {
            const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new ListAttributesResponse();
            while (reader.nextField()) {
                if (reader.isEndGroup())
                    break;
                switch (reader.getFieldNumber()) {
                    case 1:
                        reader.readMessage(message.attributes, () => pb_1.Message.addToRepeatedWrapperField(message, 1, Attribute.deserialize(reader), Attribute));
                        break;
                    default: reader.skipField();
                }
            }
            return message;
        }
        serializeBinary(): Uint8Array {
            return this.serialize();
        }
        static deserializeBinary(bytes: Uint8Array): ListAttributesResponse {
            return ListAttributesResponse.deserialize(bytes);
        }
    }
}
