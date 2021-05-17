import * as dep_1 from "./Attributes";
import * as pb_1 from "google-protobuf";
export namespace trinsic.services {
    export class GeneratePresentationRequest extends pb_1.Message {
        constructor(data?: any[] | {
            credentialId?: string;
            presentationTemplateId?: string;
        }) {
            super();
            pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [], []);
            if (!Array.isArray(data) && typeof data == "object") {
                if ("credentialId" in data && data.credentialId != undefined) {
                    this.credentialId = data.credentialId;
                }
                if ("presentationTemplateId" in data && data.presentationTemplateId != undefined) {
                    this.presentationTemplateId = data.presentationTemplateId;
                }
            }
        }
        get credentialId() {
            return pb_1.Message.getField(this, 1) as string;
        }
        set credentialId(value: string) {
            pb_1.Message.setField(this, 1, value);
        }
        get presentationTemplateId() {
            return pb_1.Message.getField(this, 2) as string;
        }
        set presentationTemplateId(value: string) {
            pb_1.Message.setField(this, 2, value);
        }
        toObject() {
            var data: {
                credentialId?: string;
                presentationTemplateId?: string;
            } = {};
            if (this.credentialId != null) {
                data.credentialId = this.credentialId;
            }
            if (this.presentationTemplateId != null) {
                data.presentationTemplateId = this.presentationTemplateId;
            }
            return data;
        }
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined {
            const writer = w || new pb_1.BinaryWriter();
            if (typeof this.credentialId === "string" && this.credentialId.length)
                writer.writeString(1, this.credentialId);
            if (typeof this.presentationTemplateId === "string" && this.presentationTemplateId.length)
                writer.writeString(2, this.presentationTemplateId);
            if (!w)
                return writer.getResultBuffer();
        }
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): GeneratePresentationRequest {
            const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new GeneratePresentationRequest();
            while (reader.nextField()) {
                if (reader.isEndGroup())
                    break;
                switch (reader.getFieldNumber()) {
                    case 1:
                        message.credentialId = reader.readString();
                        break;
                    case 2:
                        message.presentationTemplateId = reader.readString();
                        break;
                    default: reader.skipField();
                }
            }
            return message;
        }
        serializeBinary(): Uint8Array {
            return this.serialize();
        }
        static deserializeBinary(bytes: Uint8Array): GeneratePresentationRequest {
            return GeneratePresentationRequest.deserialize(bytes);
        }
    }
    export class GeneratePresentationResponse extends pb_1.Message {
        constructor(data?: any[] | {
            data?: string;
        }) {
            super();
            pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [], []);
            if (!Array.isArray(data) && typeof data == "object") {
                if ("data" in data && data.data != undefined) {
                    this.data = data.data;
                }
            }
        }
        get data() {
            return pb_1.Message.getField(this, 1) as string;
        }
        set data(value: string) {
            pb_1.Message.setField(this, 1, value);
        }
        toObject() {
            var data: {
                data?: string;
            } = {};
            if (this.data != null) {
                data.data = this.data;
            }
            return data;
        }
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined {
            const writer = w || new pb_1.BinaryWriter();
            if (typeof this.data === "string" && this.data.length)
                writer.writeString(1, this.data);
            if (!w)
                return writer.getResultBuffer();
        }
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): GeneratePresentationResponse {
            const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new GeneratePresentationResponse();
            while (reader.nextField()) {
                if (reader.isEndGroup())
                    break;
                switch (reader.getFieldNumber()) {
                    case 1:
                        message.data = reader.readString();
                        break;
                    default: reader.skipField();
                }
            }
            return message;
        }
        serializeBinary(): Uint8Array {
            return this.serialize();
        }
        static deserializeBinary(bytes: Uint8Array): GeneratePresentationResponse {
            return GeneratePresentationResponse.deserialize(bytes);
        }
    }
    export class SubmitPresentationRequest extends pb_1.Message {
        constructor(data?: any[] | {
            data?: string;
        }) {
            super();
            pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [], []);
            if (!Array.isArray(data) && typeof data == "object") {
                if ("data" in data && data.data != undefined) {
                    this.data = data.data;
                }
            }
        }
        get data() {
            return pb_1.Message.getField(this, 1) as string;
        }
        set data(value: string) {
            pb_1.Message.setField(this, 1, value);
        }
        toObject() {
            var data: {
                data?: string;
            } = {};
            if (this.data != null) {
                data.data = this.data;
            }
            return data;
        }
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined {
            const writer = w || new pb_1.BinaryWriter();
            if (typeof this.data === "string" && this.data.length)
                writer.writeString(1, this.data);
            if (!w)
                return writer.getResultBuffer();
        }
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): SubmitPresentationRequest {
            const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new SubmitPresentationRequest();
            while (reader.nextField()) {
                if (reader.isEndGroup())
                    break;
                switch (reader.getFieldNumber()) {
                    case 1:
                        message.data = reader.readString();
                        break;
                    default: reader.skipField();
                }
            }
            return message;
        }
        serializeBinary(): Uint8Array {
            return this.serialize();
        }
        static deserializeBinary(bytes: Uint8Array): SubmitPresentationRequest {
            return SubmitPresentationRequest.deserialize(bytes);
        }
    }
    export class SubmitPresentationResponse extends pb_1.Message {
        constructor(data?: any[] | {
            presentationTemplateId?: string;
            holderId?: string;
            verifiedAttributes?: dep_1.Attribute[];
        }) {
            super();
            pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [3], []);
            if (!Array.isArray(data) && typeof data == "object") {
                if ("presentationTemplateId" in data && data.presentationTemplateId != undefined) {
                    this.presentationTemplateId = data.presentationTemplateId;
                }
                if ("holderId" in data && data.holderId != undefined) {
                    this.holderId = data.holderId;
                }
                if ("verifiedAttributes" in data && data.verifiedAttributes != undefined) {
                    this.verifiedAttributes = data.verifiedAttributes;
                }
            }
        }
        get presentationTemplateId() {
            return pb_1.Message.getField(this, 1) as string;
        }
        set presentationTemplateId(value: string) {
            pb_1.Message.setField(this, 1, value);
        }
        get holderId() {
            return pb_1.Message.getField(this, 2) as string;
        }
        set holderId(value: string) {
            pb_1.Message.setField(this, 2, value);
        }
        get verifiedAttributes() {
            return pb_1.Message.getRepeatedWrapperField(this, dep_1.Attribute, 3) as dep_1.Attribute[];
        }
        set verifiedAttributes(value: dep_1.Attribute[]) {
            pb_1.Message.setRepeatedWrapperField(this, 3, value);
        }
        toObject() {
            var data: {
                presentationTemplateId?: string;
                holderId?: string;
                verifiedAttributes?: ReturnType<typeof dep_1.Attribute.prototype.toObject>[];
            } = {};
            if (this.presentationTemplateId != null) {
                data.presentationTemplateId = this.presentationTemplateId;
            }
            if (this.holderId != null) {
                data.holderId = this.holderId;
            }
            if (this.verifiedAttributes != null) {
                data.verifiedAttributes = this.verifiedAttributes.map((item: dep_1.Attribute) => item.toObject());
            }
            return data;
        }
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined {
            const writer = w || new pb_1.BinaryWriter();
            if (typeof this.presentationTemplateId === "string" && this.presentationTemplateId.length)
                writer.writeString(1, this.presentationTemplateId);
            if (typeof this.holderId === "string" && this.holderId.length)
                writer.writeString(2, this.holderId);
            if (this.verifiedAttributes !== undefined)
                writer.writeRepeatedMessage(3, this.verifiedAttributes, (item: dep_1.Attribute) => item.serialize(writer));
            if (!w)
                return writer.getResultBuffer();
        }
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): SubmitPresentationResponse {
            const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new SubmitPresentationResponse();
            while (reader.nextField()) {
                if (reader.isEndGroup())
                    break;
                switch (reader.getFieldNumber()) {
                    case 1:
                        message.presentationTemplateId = reader.readString();
                        break;
                    case 2:
                        message.holderId = reader.readString();
                        break;
                    case 3:
                        reader.readMessage(message.verifiedAttributes, () => pb_1.Message.addToRepeatedWrapperField(message, 3, dep_1.Attribute.deserialize(reader), dep_1.Attribute));
                        break;
                    default: reader.skipField();
                }
            }
            return message;
        }
        serializeBinary(): Uint8Array {
            return this.serialize();
        }
        static deserializeBinary(bytes: Uint8Array): SubmitPresentationResponse {
            return SubmitPresentationResponse.deserialize(bytes);
        }
    }
}
