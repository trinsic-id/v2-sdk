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
exports.pbmse = void 0;
const pb_1 = __importStar(require("google-protobuf"));
var pbmse;
(function (pbmse) {
    let EncryptionMode;
    (function (EncryptionMode) {
        EncryptionMode[EncryptionMode["direct"] = 0] = "direct";
        EncryptionMode[EncryptionMode["content_encryption_key"] = 1] = "content_encryption_key";
    })(EncryptionMode = pbmse.EncryptionMode || (pbmse.EncryptionMode = {}));
    let EncryptionAlgorithm;
    (function (EncryptionAlgorithm) {
        EncryptionAlgorithm[EncryptionAlgorithm["xchacha20poly1305"] = 0] = "xchacha20poly1305";
        EncryptionAlgorithm[EncryptionAlgorithm["aes_gcm"] = 1] = "aes_gcm";
    })(EncryptionAlgorithm = pbmse.EncryptionAlgorithm || (pbmse.EncryptionAlgorithm = {}));
    class SignedMessage extends pb_1.Message {
        constructor(data) {
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
            return pb_1.Message.getField(this, 1);
        }
        set payload(value) {
            pb_1.Message.setField(this, 1, value);
        }
        get signatures() {
            return pb_1.Message.getRepeatedWrapperField(this, Signature, 2);
        }
        set signatures(value) {
            pb_1.Message.setRepeatedWrapperField(this, 2, value);
        }
        toObject() {
            var data = {};
            if (this.payload != null) {
                data.payload = this.payload;
            }
            if (this.signatures != null) {
                data.signatures = this.signatures.map((item) => item.toObject());
            }
            return data;
        }
        serialize(w) {
            const writer = w || new pb_1.BinaryWriter();
            if (this.payload !== undefined)
                writer.writeBytes(1, this.payload);
            if (this.signatures !== undefined)
                writer.writeRepeatedMessage(2, this.signatures, (item) => item.serialize(writer));
            if (!w)
                return writer.getResultBuffer();
        }
        static deserialize(bytes) {
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
        serializeBinary() {
            return this.serialize();
        }
        static deserializeBinary(bytes) {
            return SignedMessage.deserialize(bytes);
        }
    }
    pbmse.SignedMessage = SignedMessage;
    (function (SignedMessage) {
        class Header extends pb_1.Message {
            constructor(data) {
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
                return pb_1.Message.getField(this, 1);
            }
            set algorithm(value) {
                pb_1.Message.setField(this, 1, value);
            }
            get key_id() {
                return pb_1.Message.getField(this, 2);
            }
            set key_id(value) {
                pb_1.Message.setField(this, 2, value);
            }
            get nonce() {
                return pb_1.Message.getField(this, 3);
            }
            set nonce(value) {
                pb_1.Message.setField(this, 3, value);
            }
            toObject() {
                var data = {};
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
            serialize(w) {
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
            static deserialize(bytes) {
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
            serializeBinary() {
                return this.serialize();
            }
            static deserializeBinary(bytes) {
                return Header.deserialize(bytes);
            }
        }
        SignedMessage.Header = Header;
    })(SignedMessage = pbmse.SignedMessage || (pbmse.SignedMessage = {}));
    class Signature extends pb_1.Message {
        constructor(data) {
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
            return pb_1.Message.getField(this, 1);
        }
        set protected(value) {
            pb_1.Message.setField(this, 1, value);
        }
        get unprotected() {
            return pb_1.Message.getWrapperField(this, SignedMessage.Header, 2);
        }
        set unprotected(value) {
            pb_1.Message.setWrapperField(this, 2, value);
        }
        get signature() {
            return pb_1.Message.getField(this, 3);
        }
        set signature(value) {
            pb_1.Message.setField(this, 3, value);
        }
        toObject() {
            var data = {};
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
        serialize(w) {
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
        static deserialize(bytes) {
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
        serializeBinary() {
            return this.serialize();
        }
        static deserializeBinary(bytes) {
            return Signature.deserialize(bytes);
        }
    }
    pbmse.Signature = Signature;
    class EncryptedMessage extends pb_1.Message {
        constructor(data) {
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
            return pb_1.Message.getField(this, 1);
        }
        set iv(value) {
            pb_1.Message.setField(this, 1, value);
        }
        get aad() {
            return pb_1.Message.getField(this, 2);
        }
        set aad(value) {
            pb_1.Message.setField(this, 2, value);
        }
        get ciphertext() {
            return pb_1.Message.getField(this, 3);
        }
        set ciphertext(value) {
            pb_1.Message.setField(this, 3, value);
        }
        get tag() {
            return pb_1.Message.getField(this, 4);
        }
        set tag(value) {
            pb_1.Message.setField(this, 4, value);
        }
        get recipients() {
            return pb_1.Message.getRepeatedWrapperField(this, EncryptionRecipient, 5);
        }
        set recipients(value) {
            pb_1.Message.setRepeatedWrapperField(this, 5, value);
        }
        toObject() {
            var data = {};
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
                data.recipients = this.recipients.map((item) => item.toObject());
            }
            return data;
        }
        serialize(w) {
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
                writer.writeRepeatedMessage(5, this.recipients, (item) => item.serialize(writer));
            if (!w)
                return writer.getResultBuffer();
        }
        static deserialize(bytes) {
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
        serializeBinary() {
            return this.serialize();
        }
        static deserializeBinary(bytes) {
            return EncryptedMessage.deserialize(bytes);
        }
    }
    pbmse.EncryptedMessage = EncryptedMessage;
    class EncryptionHeader extends pb_1.Message {
        constructor(data) {
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
            return pb_1.Message.getField(this, 1);
        }
        set mode(value) {
            pb_1.Message.setField(this, 1, value);
        }
        get algorithm() {
            return pb_1.Message.getField(this, 2);
        }
        set algorithm(value) {
            pb_1.Message.setField(this, 2, value);
        }
        get key_id() {
            return pb_1.Message.getField(this, 3);
        }
        set key_id(value) {
            pb_1.Message.setField(this, 3, value);
        }
        get sender_key_id() {
            return pb_1.Message.getField(this, 4);
        }
        set sender_key_id(value) {
            pb_1.Message.setField(this, 4, value);
        }
        toObject() {
            var data = {};
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
        serialize(w) {
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
        static deserialize(bytes) {
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
        serializeBinary() {
            return this.serialize();
        }
        static deserializeBinary(bytes) {
            return EncryptionHeader.deserialize(bytes);
        }
    }
    pbmse.EncryptionHeader = EncryptionHeader;
    class EncryptionRecipient extends pb_1.Message {
        constructor(data) {
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
            return pb_1.Message.getWrapperField(this, EncryptionHeader, 1);
        }
        set header(value) {
            pb_1.Message.setWrapperField(this, 1, value);
        }
        get content_encryption_key() {
            return pb_1.Message.getField(this, 2);
        }
        set content_encryption_key(value) {
            pb_1.Message.setField(this, 2, value);
        }
        toObject() {
            var data = {};
            if (this.header != null) {
                data.header = this.header.toObject();
            }
            if (this.content_encryption_key != null) {
                data.content_encryption_key = this.content_encryption_key;
            }
            return data;
        }
        serialize(w) {
            const writer = w || new pb_1.BinaryWriter();
            if (this.header !== undefined)
                writer.writeMessage(1, this.header, () => this.header.serialize(writer));
            if (this.content_encryption_key !== undefined)
                writer.writeBytes(2, this.content_encryption_key);
            if (!w)
                return writer.getResultBuffer();
        }
        static deserialize(bytes) {
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
        serializeBinary() {
            return this.serialize();
        }
        static deserializeBinary(bytes) {
            return EncryptionRecipient.deserialize(bytes);
        }
    }
    pbmse.EncryptionRecipient = EncryptionRecipient;
})(pbmse = exports.pbmse || (exports.pbmse = {}));
//# sourceMappingURL=pbmse.js.map