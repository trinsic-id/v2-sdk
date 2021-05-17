import * as dep_1 from "./Attributes";
import * as pb_1 from "google-protobuf";
export namespace trinsic.services {
    export class CreatePresentationTemplateRequest extends pb_1.Message {
        constructor(data?: any[] | {
            name?: string;
            attributes?: dep_1.Attribute[];
        }) {
            super();
            pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [3], []);
            if (!Array.isArray(data) && typeof data == "object") {
                if ("name" in data && data.name != undefined) {
                    this.name = data.name;
                }
                if ("attributes" in data && data.attributes != undefined) {
                    this.attributes = data.attributes;
                }
            }
        }
        get name() {
            return pb_1.Message.getField(this, 2) as string;
        }
        set name(value: string) {
            pb_1.Message.setField(this, 2, value);
        }
        get attributes() {
            return pb_1.Message.getRepeatedWrapperField(this, dep_1.Attribute, 3) as dep_1.Attribute[];
        }
        set attributes(value: dep_1.Attribute[]) {
            pb_1.Message.setRepeatedWrapperField(this, 3, value);
        }
        toObject() {
            var data: {
                name?: string;
                attributes?: ReturnType<typeof dep_1.Attribute.prototype.toObject>[];
            } = {};
            if (this.name != null) {
                data.name = this.name;
            }
            if (this.attributes != null) {
                data.attributes = this.attributes.map((item: dep_1.Attribute) => item.toObject());
            }
            return data;
        }
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined {
            const writer = w || new pb_1.BinaryWriter();
            if (typeof this.name === "string" && this.name.length)
                writer.writeString(2, this.name);
            if (this.attributes !== undefined)
                writer.writeRepeatedMessage(3, this.attributes, (item: dep_1.Attribute) => item.serialize(writer));
            if (!w)
                return writer.getResultBuffer();
        }
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): CreatePresentationTemplateRequest {
            const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new CreatePresentationTemplateRequest();
            while (reader.nextField()) {
                if (reader.isEndGroup())
                    break;
                switch (reader.getFieldNumber()) {
                    case 2:
                        message.name = reader.readString();
                        break;
                    case 3:
                        reader.readMessage(message.attributes, () => pb_1.Message.addToRepeatedWrapperField(message, 3, dep_1.Attribute.deserialize(reader), dep_1.Attribute));
                        break;
                    default: reader.skipField();
                }
            }
            return message;
        }
        serializeBinary(): Uint8Array {
            return this.serialize();
        }
        static deserializeBinary(bytes: Uint8Array): CreatePresentationTemplateRequest {
            return CreatePresentationTemplateRequest.deserialize(bytes);
        }
    }
    export class CreatePresentationTemplateResponse extends pb_1.Message {
        constructor(data?: any[] | {
            id?: string;
            name?: string;
            attributes?: dep_1.Attribute[];
        }) {
            super();
            pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [3], []);
            if (!Array.isArray(data) && typeof data == "object") {
                if ("id" in data && data.id != undefined) {
                    this.id = data.id;
                }
                if ("name" in data && data.name != undefined) {
                    this.name = data.name;
                }
                if ("attributes" in data && data.attributes != undefined) {
                    this.attributes = data.attributes;
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
        get attributes() {
            return pb_1.Message.getRepeatedWrapperField(this, dep_1.Attribute, 3) as dep_1.Attribute[];
        }
        set attributes(value: dep_1.Attribute[]) {
            pb_1.Message.setRepeatedWrapperField(this, 3, value);
        }
        toObject() {
            var data: {
                id?: string;
                name?: string;
                attributes?: ReturnType<typeof dep_1.Attribute.prototype.toObject>[];
            } = {};
            if (this.id != null) {
                data.id = this.id;
            }
            if (this.name != null) {
                data.name = this.name;
            }
            if (this.attributes != null) {
                data.attributes = this.attributes.map((item: dep_1.Attribute) => item.toObject());
            }
            return data;
        }
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined {
            const writer = w || new pb_1.BinaryWriter();
            if (typeof this.id === "string" && this.id.length)
                writer.writeString(1, this.id);
            if (typeof this.name === "string" && this.name.length)
                writer.writeString(2, this.name);
            if (this.attributes !== undefined)
                writer.writeRepeatedMessage(3, this.attributes, (item: dep_1.Attribute) => item.serialize(writer));
            if (!w)
                return writer.getResultBuffer();
        }
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): CreatePresentationTemplateResponse {
            const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new CreatePresentationTemplateResponse();
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
                        reader.readMessage(message.attributes, () => pb_1.Message.addToRepeatedWrapperField(message, 3, dep_1.Attribute.deserialize(reader), dep_1.Attribute));
                        break;
                    default: reader.skipField();
                }
            }
            return message;
        }
        serializeBinary(): Uint8Array {
            return this.serialize();
        }
        static deserializeBinary(bytes: Uint8Array): CreatePresentationTemplateResponse {
            return CreatePresentationTemplateResponse.deserialize(bytes);
        }
    }
    export class ListPresentationTemplateResponse extends pb_1.Message {
        constructor(data?: any[] | {
            templates?: PresentationTemplate[];
        }) {
            super();
            pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [1], []);
            if (!Array.isArray(data) && typeof data == "object") {
                if ("templates" in data && data.templates != undefined) {
                    this.templates = data.templates;
                }
            }
        }
        get templates() {
            return pb_1.Message.getRepeatedWrapperField(this, PresentationTemplate, 1) as PresentationTemplate[];
        }
        set templates(value: PresentationTemplate[]) {
            pb_1.Message.setRepeatedWrapperField(this, 1, value);
        }
        toObject() {
            var data: {
                templates?: ReturnType<typeof PresentationTemplate.prototype.toObject>[];
            } = {};
            if (this.templates != null) {
                data.templates = this.templates.map((item: PresentationTemplate) => item.toObject());
            }
            return data;
        }
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined {
            const writer = w || new pb_1.BinaryWriter();
            if (this.templates !== undefined)
                writer.writeRepeatedMessage(1, this.templates, (item: PresentationTemplate) => item.serialize(writer));
            if (!w)
                return writer.getResultBuffer();
        }
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): ListPresentationTemplateResponse {
            const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new ListPresentationTemplateResponse();
            while (reader.nextField()) {
                if (reader.isEndGroup())
                    break;
                switch (reader.getFieldNumber()) {
                    case 1:
                        reader.readMessage(message.templates, () => pb_1.Message.addToRepeatedWrapperField(message, 1, PresentationTemplate.deserialize(reader), PresentationTemplate));
                        break;
                    default: reader.skipField();
                }
            }
            return message;
        }
        serializeBinary(): Uint8Array {
            return this.serialize();
        }
        static deserializeBinary(bytes: Uint8Array): ListPresentationTemplateResponse {
            return ListPresentationTemplateResponse.deserialize(bytes);
        }
    }
    export class ListPresentationTemplateRequest extends pb_1.Message {
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
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): ListPresentationTemplateRequest {
            const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new ListPresentationTemplateRequest();
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
        static deserializeBinary(bytes: Uint8Array): ListPresentationTemplateRequest {
            return ListPresentationTemplateRequest.deserialize(bytes);
        }
    }
    export class PresentationTemplate extends pb_1.Message {
        constructor(data?: any[] | {
            id?: string;
            name?: string;
            attributes?: dep_1.Attribute[];
        }) {
            super();
            pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [3], []);
            if (!Array.isArray(data) && typeof data == "object") {
                if ("id" in data && data.id != undefined) {
                    this.id = data.id;
                }
                if ("name" in data && data.name != undefined) {
                    this.name = data.name;
                }
                if ("attributes" in data && data.attributes != undefined) {
                    this.attributes = data.attributes;
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
        get attributes() {
            return pb_1.Message.getRepeatedWrapperField(this, dep_1.Attribute, 3) as dep_1.Attribute[];
        }
        set attributes(value: dep_1.Attribute[]) {
            pb_1.Message.setRepeatedWrapperField(this, 3, value);
        }
        toObject() {
            var data: {
                id?: string;
                name?: string;
                attributes?: ReturnType<typeof dep_1.Attribute.prototype.toObject>[];
            } = {};
            if (this.id != null) {
                data.id = this.id;
            }
            if (this.name != null) {
                data.name = this.name;
            }
            if (this.attributes != null) {
                data.attributes = this.attributes.map((item: dep_1.Attribute) => item.toObject());
            }
            return data;
        }
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined {
            const writer = w || new pb_1.BinaryWriter();
            if (typeof this.id === "string" && this.id.length)
                writer.writeString(1, this.id);
            if (typeof this.name === "string" && this.name.length)
                writer.writeString(2, this.name);
            if (this.attributes !== undefined)
                writer.writeRepeatedMessage(3, this.attributes, (item: dep_1.Attribute) => item.serialize(writer));
            if (!w)
                return writer.getResultBuffer();
        }
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): PresentationTemplate {
            const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new PresentationTemplate();
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
                        reader.readMessage(message.attributes, () => pb_1.Message.addToRepeatedWrapperField(message, 3, dep_1.Attribute.deserialize(reader), dep_1.Attribute));
                        break;
                    default: reader.skipField();
                }
            }
            return message;
        }
        serializeBinary(): Uint8Array {
            return this.serialize();
        }
        static deserializeBinary(bytes: Uint8Array): PresentationTemplate {
            return PresentationTemplate.deserialize(bytes);
        }
    }
}
