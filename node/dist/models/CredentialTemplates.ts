import * as dep_1 from "./Attributes";
import * as pb_1 from "google-protobuf";
export namespace trinsic.services {
    export class CreateCredentialTemplateRequest extends pb_1.Message {
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
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): CreateCredentialTemplateRequest {
            const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new CreateCredentialTemplateRequest();
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
        static deserializeBinary(bytes: Uint8Array): CreateCredentialTemplateRequest {
            return CreateCredentialTemplateRequest.deserialize(bytes);
        }
    }
    export class CreateCredentialTemplateResponse extends pb_1.Message {
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
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): CreateCredentialTemplateResponse {
            const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new CreateCredentialTemplateResponse();
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
        static deserializeBinary(bytes: Uint8Array): CreateCredentialTemplateResponse {
            return CreateCredentialTemplateResponse.deserialize(bytes);
        }
    }
    export class ListCredentialTemplatesRequest extends pb_1.Message {
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
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): ListCredentialTemplatesRequest {
            const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new ListCredentialTemplatesRequest();
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
        static deserializeBinary(bytes: Uint8Array): ListCredentialTemplatesRequest {
            return ListCredentialTemplatesRequest.deserialize(bytes);
        }
    }
    export class ListCredentialTemplatesResponse extends pb_1.Message {
        constructor(data?: any[] | {
            templates?: CredentialTemplate[];
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
            return pb_1.Message.getRepeatedWrapperField(this, CredentialTemplate, 1) as CredentialTemplate[];
        }
        set templates(value: CredentialTemplate[]) {
            pb_1.Message.setRepeatedWrapperField(this, 1, value);
        }
        toObject() {
            var data: {
                templates?: ReturnType<typeof CredentialTemplate.prototype.toObject>[];
            } = {};
            if (this.templates != null) {
                data.templates = this.templates.map((item: CredentialTemplate) => item.toObject());
            }
            return data;
        }
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined {
            const writer = w || new pb_1.BinaryWriter();
            if (this.templates !== undefined)
                writer.writeRepeatedMessage(1, this.templates, (item: CredentialTemplate) => item.serialize(writer));
            if (!w)
                return writer.getResultBuffer();
        }
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): ListCredentialTemplatesResponse {
            const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new ListCredentialTemplatesResponse();
            while (reader.nextField()) {
                if (reader.isEndGroup())
                    break;
                switch (reader.getFieldNumber()) {
                    case 1:
                        reader.readMessage(message.templates, () => pb_1.Message.addToRepeatedWrapperField(message, 1, CredentialTemplate.deserialize(reader), CredentialTemplate));
                        break;
                    default: reader.skipField();
                }
            }
            return message;
        }
        serializeBinary(): Uint8Array {
            return this.serialize();
        }
        static deserializeBinary(bytes: Uint8Array): ListCredentialTemplatesResponse {
            return ListCredentialTemplatesResponse.deserialize(bytes);
        }
    }
    export class CredentialTemplate extends pb_1.Message {
        constructor(data?: any[] | {
            Id?: string;
            Title?: string;
            Description?: string;
            Contexts?: string[];
            Schema?: string;
        }) {
            super();
            pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [4], []);
            if (!Array.isArray(data) && typeof data == "object") {
                if ("Id" in data && data.Id != undefined) {
                    this.Id = data.Id;
                }
                if ("Title" in data && data.Title != undefined) {
                    this.Title = data.Title;
                }
                if ("Description" in data && data.Description != undefined) {
                    this.Description = data.Description;
                }
                if ("Contexts" in data && data.Contexts != undefined) {
                    this.Contexts = data.Contexts;
                }
                if ("Schema" in data && data.Schema != undefined) {
                    this.Schema = data.Schema;
                }
            }
        }
        get Id() {
            return pb_1.Message.getField(this, 1) as string;
        }
        set Id(value: string) {
            pb_1.Message.setField(this, 1, value);
        }
        get Title() {
            return pb_1.Message.getField(this, 2) as string;
        }
        set Title(value: string) {
            pb_1.Message.setField(this, 2, value);
        }
        get Description() {
            return pb_1.Message.getField(this, 3) as string;
        }
        set Description(value: string) {
            pb_1.Message.setField(this, 3, value);
        }
        get Contexts() {
            return pb_1.Message.getField(this, 4) as string[];
        }
        set Contexts(value: string[]) {
            pb_1.Message.setField(this, 4, value);
        }
        get Schema() {
            return pb_1.Message.getField(this, 5) as string;
        }
        set Schema(value: string) {
            pb_1.Message.setField(this, 5, value);
        }
        toObject() {
            var data: {
                Id?: string;
                Title?: string;
                Description?: string;
                Contexts?: string[];
                Schema?: string;
            } = {};
            if (this.Id != null) {
                data.Id = this.Id;
            }
            if (this.Title != null) {
                data.Title = this.Title;
            }
            if (this.Description != null) {
                data.Description = this.Description;
            }
            if (this.Contexts != null) {
                data.Contexts = this.Contexts;
            }
            if (this.Schema != null) {
                data.Schema = this.Schema;
            }
            return data;
        }
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined {
            const writer = w || new pb_1.BinaryWriter();
            if (typeof this.Id === "string" && this.Id.length)
                writer.writeString(1, this.Id);
            if (typeof this.Title === "string" && this.Title.length)
                writer.writeString(2, this.Title);
            if (typeof this.Description === "string" && this.Description.length)
                writer.writeString(3, this.Description);
            if (this.Contexts !== undefined)
                writer.writeRepeatedString(4, this.Contexts);
            if (typeof this.Schema === "string" && this.Schema.length)
                writer.writeString(5, this.Schema);
            if (!w)
                return writer.getResultBuffer();
        }
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): CredentialTemplate {
            const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new CredentialTemplate();
            while (reader.nextField()) {
                if (reader.isEndGroup())
                    break;
                switch (reader.getFieldNumber()) {
                    case 1:
                        message.Id = reader.readString();
                        break;
                    case 2:
                        message.Title = reader.readString();
                        break;
                    case 3:
                        message.Description = reader.readString();
                        break;
                    case 4:
                        pb_1.Message.addToRepeatedField(message, 4, reader.readString());
                        break;
                    case 5:
                        message.Schema = reader.readString();
                        break;
                    default: reader.skipField();
                }
            }
            return message;
        }
        serializeBinary(): Uint8Array {
            return this.serialize();
        }
        static deserializeBinary(bytes: Uint8Array): CredentialTemplate {
            return CredentialTemplate.deserialize(bytes);
        }
    }
}
