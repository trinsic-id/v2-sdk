import * as pb_1 from "google-protobuf";
export namespace pbmse {
    export enum EncryptionMode {
        direct = 0,
        content_encryption_key = 1
    }
    export enum EncryptionAlgorithm {
        xchacha20poly1305 = 0,
        aes_gcm = 1
    }
    export class SignedMessage extends pb_1.Message {
        constructor(data?: any[] | {
            payload?: Uint8Array;
            signatures?: Signature[];
        }) {
            super();
            pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [2], []);
            if (!Array.isArray(data) && typeof data == "object") {
                if ("payload" in data && data.payload != undefined) {
                    this.payload = data.payload;
                }
                if ("signatures" in data && data.signatures != undefined) {
                    this.signatures = data.signatures;
                }
            }
        }
        get payload() {
            return pb_1.Message.getField(this, 1) as Uint8Array;
        }
        set payload(value: Uint8Array) {
            pb_1.Message.setField(this, 1, value);
        }
        get signatures() {
            return pb_1.Message.getRepeatedWrapperField(this, Signature, 2) as Signature[];
        }
        set signatures(value: Signature[]) {
            pb_1.Message.setRepeatedWrapperField(this, 2, value);
        }
        toObject() {
            var data: {
                payload?: Uint8Array;
                signatures?: ReturnType<typeof Signature.prototype.toObject>[];
            } = {};
            if (this.payload != null) {
                data.payload = this.payload;
            }
            if (this.signatures != null) {
                data.signatures = this.signatures.map((item: Signature) => item.toObject());
            }
            return data;
        }
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined {
            const writer = w || new pb_1.BinaryWriter();
            if (this.payload !== undefined)
                writer.writeBytes(1, this.payload);
            if (this.signatures !== undefined)
                writer.writeRepeatedMessage(2, this.signatures, (item: Signature) => item.serialize(writer));
            if (!w)
                return writer.getResultBuffer();
        }
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): SignedMessage {
            const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new SignedMessage();
            while (reader.nextField()) {
                if (reader.isEndGroup())
                    break;
                switch (reader.getFieldNumber()) {
                    case 1:
                        message.payload = reader.readBytes();
                        break;
                    case 2:
                        reader.readMessage(message.signatures, () => pb_1.Message.addToRepeatedWrapperField(message, 2, Signature.deserialize(reader), Signature));
                        break;
                    default: reader.skipField();
                }
            }
            return message;
        }
        serializeBinary(): Uint8Array {
            return this.serialize();
        }
        static deserializeBinary(bytes: Uint8Array): SignedMessage {
            return SignedMessage.deserialize(bytes);
        }
    }
    export namespace SignedMessage {
        export class Header extends pb_1.Message {
            constructor(data?: any[] | {
                algorithm?: string;
                key_id?: string;
                nonce?: string;
            }) {
                super();
                pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [], []);
                if (!Array.isArray(data) && typeof data == "object") {
                    if ("algorithm" in data && data.algorithm != undefined) {
                        this.algorithm = data.algorithm;
                    }
                    if ("key_id" in data && data.key_id != undefined) {
                        this.key_id = data.key_id;
                    }
                    if ("nonce" in data && data.nonce != undefined) {
                        this.nonce = data.nonce;
                    }
                }
            }
            get algorithm() {
                return pb_1.Message.getField(this, 1) as string;
            }
            set algorithm(value: string) {
                pb_1.Message.setField(this, 1, value);
            }
            get key_id() {
                return pb_1.Message.getField(this, 2) as string;
            }
            set key_id(value: string) {
                pb_1.Message.setField(this, 2, value);
            }
            get nonce() {
                return pb_1.Message.getField(this, 3) as string;
            }
            set nonce(value: string) {
                pb_1.Message.setField(this, 3, value);
            }
            toObject() {
                var data: {
                    algorithm?: string;
                    key_id?: string;
                    nonce?: string;
                } = {};
                if (this.algorithm != null) {
                    data.algorithm = this.algorithm;
                }
                if (this.key_id != null) {
                    data.key_id = this.key_id;
                }
                if (this.nonce != null) {
                    data.nonce = this.nonce;
                }
                return data;
            }
            serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined {
                const writer = w || new pb_1.BinaryWriter();
                if (typeof this.algorithm === "string" && this.algorithm.length)
                    writer.writeString(1, this.algorithm);
                if (typeof this.key_id === "string" && this.key_id.length)
                    writer.writeString(2, this.key_id);
                if (typeof this.nonce === "string" && this.nonce.length)
                    writer.writeString(3, this.nonce);
                if (!w)
                    return writer.getResultBuffer();
            }
            static deserialize(bytes: Uint8Array | pb_1.BinaryReader): Header {
                const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new Header();
                while (reader.nextField()) {
                    if (reader.isEndGroup())
                        break;
                    switch (reader.getFieldNumber()) {
                        case 1:
                            message.algorithm = reader.readString();
                            break;
                        case 2:
                            message.key_id = reader.readString();
                            break;
                        case 3:
                            message.nonce = reader.readString();
                            break;
                        default: reader.skipField();
                    }
                }
                return message;
            }
            serializeBinary(): Uint8Array {
                return this.serialize();
            }
            static deserializeBinary(bytes: Uint8Array): Header {
                return Header.deserialize(bytes);
            }
        }
    }
    export class Signature extends pb_1.Message {
        constructor(data?: any[] | ({
            signature?: Uint8Array;
        } & (({
            protected: Uint8Array;
            unprotected?: never;
        } | {
            protected?: never;
            unprotected: SignedMessage.Header;
        })))) {
            super();
            pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [], [[1, 2]]);
            if (!Array.isArray(data) && typeof data == "object") {
                if ("protected" in data && data.protected != undefined) {
                    this.protected = data.protected;
                }
                if ("unprotected" in data && data.unprotected != undefined) {
                    this.unprotected = data.unprotected;
                }
                if ("signature" in data && data.signature != undefined) {
                    this.signature = data.signature;
                }
            }
        }
        get protected() {
            return pb_1.Message.getField(this, 1) as Uint8Array;
        }
        set protected(value: Uint8Array) {
            pb_1.Message.setField(this, 1, value);
        }
        get unprotected() {
            return pb_1.Message.getWrapperField(this, SignedMessage.Header, 2) as SignedMessage.Header;
        }
        set unprotected(value: SignedMessage.Header) {
            pb_1.Message.setWrapperField(this, 2, value);
        }
        get signature() {
            return pb_1.Message.getField(this, 3) as Uint8Array;
        }
        set signature(value: Uint8Array) {
            pb_1.Message.setField(this, 3, value);
        }
        toObject() {
            var data: {
                protected?: Uint8Array;
                unprotected?: ReturnType<typeof SignedMessage.Header.prototype.toObject>;
                signature?: Uint8Array;
            } = {};
            if (this.protected != null) {
                data.protected = this.protected;
            }
            if (this.unprotected != null) {
                data.unprotected = this.unprotected.toObject();
            }
            if (this.signature != null) {
                data.signature = this.signature;
            }
            return data;
        }
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined {
            const writer = w || new pb_1.BinaryWriter();
            if (this.protected !== undefined)
                writer.writeBytes(1, this.protected);
            if (this.unprotected !== undefined)
                writer.writeMessage(2, this.unprotected, () => this.unprotected.serialize(writer));
            if (this.signature !== undefined)
                writer.writeBytes(3, this.signature);
            if (!w)
                return writer.getResultBuffer();
        }
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): Signature {
            const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new Signature();
            while (reader.nextField()) {
                if (reader.isEndGroup())
                    break;
                switch (reader.getFieldNumber()) {
                    case 1:
                        message.protected = reader.readBytes();
                        break;
                    case 2:
                        reader.readMessage(message.unprotected, () => message.unprotected = SignedMessage.Header.deserialize(reader));
                        break;
                    case 3:
                        message.signature = reader.readBytes();
                        break;
                    default: reader.skipField();
                }
            }
            return message;
        }
        serializeBinary(): Uint8Array {
            return this.serialize();
        }
        static deserializeBinary(bytes: Uint8Array): Signature {
            return Signature.deserialize(bytes);
        }
    }
    export class EncryptedMessage extends pb_1.Message {
        constructor(data?: any[] | {
            iv?: Uint8Array;
            aad?: Uint8Array;
            ciphertext?: Uint8Array;
            tag?: Uint8Array;
            recipients?: EncryptionRecipient[];
        }) {
            super();
            pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [5], []);
            if (!Array.isArray(data) && typeof data == "object") {
                if ("iv" in data && data.iv != undefined) {
                    this.iv = data.iv;
                }
                if ("aad" in data && data.aad != undefined) {
                    this.aad = data.aad;
                }
                if ("ciphertext" in data && data.ciphertext != undefined) {
                    this.ciphertext = data.ciphertext;
                }
                if ("tag" in data && data.tag != undefined) {
                    this.tag = data.tag;
                }
                if ("recipients" in data && data.recipients != undefined) {
                    this.recipients = data.recipients;
                }
            }
        }
        get iv() {
            return pb_1.Message.getField(this, 1) as Uint8Array;
        }
        set iv(value: Uint8Array) {
            pb_1.Message.setField(this, 1, value);
        }
        get aad() {
            return pb_1.Message.getField(this, 2) as Uint8Array;
        }
        set aad(value: Uint8Array) {
            pb_1.Message.setField(this, 2, value);
        }
        get ciphertext() {
            return pb_1.Message.getField(this, 3) as Uint8Array;
        }
        set ciphertext(value: Uint8Array) {
            pb_1.Message.setField(this, 3, value);
        }
        get tag() {
            return pb_1.Message.getField(this, 4) as Uint8Array;
        }
        set tag(value: Uint8Array) {
            pb_1.Message.setField(this, 4, value);
        }
        get recipients() {
            return pb_1.Message.getRepeatedWrapperField(this, EncryptionRecipient, 5) as EncryptionRecipient[];
        }
        set recipients(value: EncryptionRecipient[]) {
            pb_1.Message.setRepeatedWrapperField(this, 5, value);
        }
        toObject() {
            var data: {
                iv?: Uint8Array;
                aad?: Uint8Array;
                ciphertext?: Uint8Array;
                tag?: Uint8Array;
                recipients?: ReturnType<typeof EncryptionRecipient.prototype.toObject>[];
            } = {};
            if (this.iv != null) {
                data.iv = this.iv;
            }
            if (this.aad != null) {
                data.aad = this.aad;
            }
            if (this.ciphertext != null) {
                data.ciphertext = this.ciphertext;
            }
            if (this.tag != null) {
                data.tag = this.tag;
            }
            if (this.recipients != null) {
                data.recipients = this.recipients.map((item: EncryptionRecipient) => item.toObject());
            }
            return data;
        }
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined {
            const writer = w || new pb_1.BinaryWriter();
            if (this.iv !== undefined)
                writer.writeBytes(1, this.iv);
            if (this.aad !== undefined)
                writer.writeBytes(2, this.aad);
            if (this.ciphertext !== undefined)
                writer.writeBytes(3, this.ciphertext);
            if (this.tag !== undefined)
                writer.writeBytes(4, this.tag);
            if (this.recipients !== undefined)
                writer.writeRepeatedMessage(5, this.recipients, (item: EncryptionRecipient) => item.serialize(writer));
            if (!w)
                return writer.getResultBuffer();
        }
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): EncryptedMessage {
            const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new EncryptedMessage();
            while (reader.nextField()) {
                if (reader.isEndGroup())
                    break;
                switch (reader.getFieldNumber()) {
                    case 1:
                        message.iv = reader.readBytes();
                        break;
                    case 2:
                        message.aad = reader.readBytes();
                        break;
                    case 3:
                        message.ciphertext = reader.readBytes();
                        break;
                    case 4:
                        message.tag = reader.readBytes();
                        break;
                    case 5:
                        reader.readMessage(message.recipients, () => pb_1.Message.addToRepeatedWrapperField(message, 5, EncryptionRecipient.deserialize(reader), EncryptionRecipient));
                        break;
                    default: reader.skipField();
                }
            }
            return message;
        }
        serializeBinary(): Uint8Array {
            return this.serialize();
        }
        static deserializeBinary(bytes: Uint8Array): EncryptedMessage {
            return EncryptedMessage.deserialize(bytes);
        }
    }
    export class EncryptionHeader extends pb_1.Message {
        constructor(data?: any[] | {
            mode?: EncryptionMode;
            algorithm?: EncryptionAlgorithm;
            key_id?: string;
            sender_key_id?: string;
        }) {
            super();
            pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [], []);
            if (!Array.isArray(data) && typeof data == "object") {
                if ("mode" in data && data.mode != undefined) {
                    this.mode = data.mode;
                }
                if ("algorithm" in data && data.algorithm != undefined) {
                    this.algorithm = data.algorithm;
                }
                if ("key_id" in data && data.key_id != undefined) {
                    this.key_id = data.key_id;
                }
                if ("sender_key_id" in data && data.sender_key_id != undefined) {
                    this.sender_key_id = data.sender_key_id;
                }
            }
        }
        get mode() {
            return pb_1.Message.getField(this, 1) as EncryptionMode;
        }
        set mode(value: EncryptionMode) {
            pb_1.Message.setField(this, 1, value);
        }
        get algorithm() {
            return pb_1.Message.getField(this, 2) as EncryptionAlgorithm;
        }
        set algorithm(value: EncryptionAlgorithm) {
            pb_1.Message.setField(this, 2, value);
        }
        get key_id() {
            return pb_1.Message.getField(this, 3) as string;
        }
        set key_id(value: string) {
            pb_1.Message.setField(this, 3, value);
        }
        get sender_key_id() {
            return pb_1.Message.getField(this, 4) as string;
        }
        set sender_key_id(value: string) {
            pb_1.Message.setField(this, 4, value);
        }
        toObject() {
            var data: {
                mode?: EncryptionMode;
                algorithm?: EncryptionAlgorithm;
                key_id?: string;
                sender_key_id?: string;
            } = {};
            if (this.mode != null) {
                data.mode = this.mode;
            }
            if (this.algorithm != null) {
                data.algorithm = this.algorithm;
            }
            if (this.key_id != null) {
                data.key_id = this.key_id;
            }
            if (this.sender_key_id != null) {
                data.sender_key_id = this.sender_key_id;
            }
            return data;
        }
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined {
            const writer = w || new pb_1.BinaryWriter();
            if (this.mode !== undefined)
                writer.writeEnum(1, this.mode);
            if (this.algorithm !== undefined)
                writer.writeEnum(2, this.algorithm);
            if (typeof this.key_id === "string" && this.key_id.length)
                writer.writeString(3, this.key_id);
            if (typeof this.sender_key_id === "string" && this.sender_key_id.length)
                writer.writeString(4, this.sender_key_id);
            if (!w)
                return writer.getResultBuffer();
        }
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): EncryptionHeader {
            const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new EncryptionHeader();
            while (reader.nextField()) {
                if (reader.isEndGroup())
                    break;
                switch (reader.getFieldNumber()) {
                    case 1:
                        message.mode = reader.readEnum();
                        break;
                    case 2:
                        message.algorithm = reader.readEnum();
                        break;
                    case 3:
                        message.key_id = reader.readString();
                        break;
                    case 4:
                        message.sender_key_id = reader.readString();
                        break;
                    default: reader.skipField();
                }
            }
            return message;
        }
        serializeBinary(): Uint8Array {
            return this.serialize();
        }
        static deserializeBinary(bytes: Uint8Array): EncryptionHeader {
            return EncryptionHeader.deserialize(bytes);
        }
    }
    export class EncryptionRecipient extends pb_1.Message {
        constructor(data?: any[] | {
            header?: EncryptionHeader;
            content_encryption_key?: Uint8Array;
        }) {
            super();
            pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [], []);
            if (!Array.isArray(data) && typeof data == "object") {
                if ("header" in data && data.header != undefined) {
                    this.header = data.header;
                }
                if ("content_encryption_key" in data && data.content_encryption_key != undefined) {
                    this.content_encryption_key = data.content_encryption_key;
                }
            }
        }
        get header() {
            return pb_1.Message.getWrapperField(this, EncryptionHeader, 1) as EncryptionHeader;
        }
        set header(value: EncryptionHeader) {
            pb_1.Message.setWrapperField(this, 1, value);
        }
        get content_encryption_key() {
            return pb_1.Message.getField(this, 2) as Uint8Array;
        }
        set content_encryption_key(value: Uint8Array) {
            pb_1.Message.setField(this, 2, value);
        }
        toObject() {
            var data: {
                header?: ReturnType<typeof EncryptionHeader.prototype.toObject>;
                content_encryption_key?: Uint8Array;
            } = {};
            if (this.header != null) {
                data.header = this.header.toObject();
            }
            if (this.content_encryption_key != null) {
                data.content_encryption_key = this.content_encryption_key;
            }
            return data;
        }
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined {
            const writer = w || new pb_1.BinaryWriter();
            if (this.header !== undefined)
                writer.writeMessage(1, this.header, () => this.header.serialize(writer));
            if (this.content_encryption_key !== undefined)
                writer.writeBytes(2, this.content_encryption_key);
            if (!w)
                return writer.getResultBuffer();
        }
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): EncryptionRecipient {
            const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new EncryptionRecipient();
            while (reader.nextField()) {
                if (reader.isEndGroup())
                    break;
                switch (reader.getFieldNumber()) {
                    case 1:
                        reader.readMessage(message.header, () => message.header = EncryptionHeader.deserialize(reader));
                        break;
                    case 2:
                        message.content_encryption_key = reader.readBytes();
                        break;
                    default: reader.skipField();
                }
            }
            return message;
        }
        serializeBinary(): Uint8Array {
            return this.serialize();
        }
        static deserializeBinary(bytes: Uint8Array): EncryptionRecipient {
            return EncryptionRecipient.deserialize(bytes);
        }
    }
}
