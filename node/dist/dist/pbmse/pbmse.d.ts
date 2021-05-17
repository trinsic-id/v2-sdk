import * as pb_1 from "google-protobuf";
export declare namespace pbmse {
    enum EncryptionMode {
        direct = 0,
        content_encryption_key = 1
    }
    enum EncryptionAlgorithm {
        xchacha20poly1305 = 0,
        aes_gcm = 1
    }
    class SignedMessage extends pb_1.Message {
        constructor(data?: any[] | {
            payload?: Uint8Array;
            signatures?: Signature[];
        });
        get payload(): Uint8Array;
        set payload(value: Uint8Array);
        get signatures(): Signature[];
        set signatures(value: Signature[]);
        toObject(): {
            payload?: Uint8Array;
            signatures?: ReturnType<typeof Signature.prototype.toObject>[];
        };
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined;
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): SignedMessage;
        serializeBinary(): Uint8Array;
        static deserializeBinary(bytes: Uint8Array): SignedMessage;
    }
    namespace SignedMessage {
        class Header extends pb_1.Message {
            constructor(data?: any[] | {
                algorithm?: string;
                key_id?: string;
                nonce?: string;
            });
            get algorithm(): string;
            set algorithm(value: string);
            get key_id(): string;
            set key_id(value: string);
            get nonce(): string;
            set nonce(value: string);
            toObject(): {
                algorithm?: string;
                key_id?: string;
                nonce?: string;
            };
            serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined;
            static deserialize(bytes: Uint8Array | pb_1.BinaryReader): Header;
            serializeBinary(): Uint8Array;
            static deserializeBinary(bytes: Uint8Array): Header;
        }
    }
    class Signature extends pb_1.Message {
        constructor(data?: any[] | ({
            signature?: Uint8Array;
        } & (({
            protected: Uint8Array;
            unprotected?: never;
        } | {
            protected?: never;
            unprotected: SignedMessage.Header;
        }))));
        get protected(): Uint8Array;
        set protected(value: Uint8Array);
        get unprotected(): SignedMessage.Header;
        set unprotected(value: SignedMessage.Header);
        get signature(): Uint8Array;
        set signature(value: Uint8Array);
        toObject(): {
            protected?: Uint8Array;
            unprotected?: ReturnType<typeof SignedMessage.Header.prototype.toObject>;
            signature?: Uint8Array;
        };
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined;
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): Signature;
        serializeBinary(): Uint8Array;
        static deserializeBinary(bytes: Uint8Array): Signature;
    }
    class EncryptedMessage extends pb_1.Message {
        constructor(data?: any[] | {
            iv?: Uint8Array;
            aad?: Uint8Array;
            ciphertext?: Uint8Array;
            tag?: Uint8Array;
            recipients?: EncryptionRecipient[];
        });
        get iv(): Uint8Array;
        set iv(value: Uint8Array);
        get aad(): Uint8Array;
        set aad(value: Uint8Array);
        get ciphertext(): Uint8Array;
        set ciphertext(value: Uint8Array);
        get tag(): Uint8Array;
        set tag(value: Uint8Array);
        get recipients(): EncryptionRecipient[];
        set recipients(value: EncryptionRecipient[]);
        toObject(): {
            iv?: Uint8Array;
            aad?: Uint8Array;
            ciphertext?: Uint8Array;
            tag?: Uint8Array;
            recipients?: ReturnType<typeof EncryptionRecipient.prototype.toObject>[];
        };
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined;
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): EncryptedMessage;
        serializeBinary(): Uint8Array;
        static deserializeBinary(bytes: Uint8Array): EncryptedMessage;
    }
    class EncryptionHeader extends pb_1.Message {
        constructor(data?: any[] | {
            mode?: EncryptionMode;
            algorithm?: EncryptionAlgorithm;
            key_id?: string;
            sender_key_id?: string;
        });
        get mode(): EncryptionMode;
        set mode(value: EncryptionMode);
        get algorithm(): EncryptionAlgorithm;
        set algorithm(value: EncryptionAlgorithm);
        get key_id(): string;
        set key_id(value: string);
        get sender_key_id(): string;
        set sender_key_id(value: string);
        toObject(): {
            mode?: EncryptionMode;
            algorithm?: EncryptionAlgorithm;
            key_id?: string;
            sender_key_id?: string;
        };
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined;
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): EncryptionHeader;
        serializeBinary(): Uint8Array;
        static deserializeBinary(bytes: Uint8Array): EncryptionHeader;
    }
    class EncryptionRecipient extends pb_1.Message {
        constructor(data?: any[] | {
            header?: EncryptionHeader;
            content_encryption_key?: Uint8Array;
        });
        get header(): EncryptionHeader;
        set header(value: EncryptionHeader);
        get content_encryption_key(): Uint8Array;
        set content_encryption_key(value: Uint8Array);
        toObject(): {
            header?: ReturnType<typeof EncryptionHeader.prototype.toObject>;
            content_encryption_key?: Uint8Array;
        };
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined;
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): EncryptionRecipient;
        serializeBinary(): Uint8Array;
        static deserializeBinary(bytes: Uint8Array): EncryptionRecipient;
    }
}
