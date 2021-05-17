import * as dep_1 from "./CoreService";
import * as dep_2 from "./pbmse\\pbmse";
import * as pb_1 from "google-protobuf";
import * as grpc_1 from "@grpc/grpc-js";
export namespace trinsic.services {
    export class AcquireTokenRequest extends pb_1.Message {
        constructor(data?: any[] | {
            signed_message?: dep_2.pbmse.SignedMessage;
        }) {
            super();
            pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [], []);
            if (!Array.isArray(data) && typeof data == "object") {
                if ("signed_message" in data && data.signed_message != undefined) {
                    this.signed_message = data.signed_message;
                }
            }
        }
        get signed_message() {
            return pb_1.Message.getWrapperField(this, dep_2.pbmse.SignedMessage, 1) as dep_2.pbmse.SignedMessage;
        }
        set signed_message(value: dep_2.pbmse.SignedMessage) {
            pb_1.Message.setWrapperField(this, 1, value);
        }
        toObject() {
            var data: {
                signed_message?: ReturnType<typeof dep_2.pbmse.SignedMessage.prototype.toObject>;
            } = {};
            if (this.signed_message != null) {
                data.signed_message = this.signed_message.toObject();
            }
            return data;
        }
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined {
            const writer = w || new pb_1.BinaryWriter();
            if (this.signed_message !== undefined)
                writer.writeMessage(1, this.signed_message, () => this.signed_message.serialize(writer));
            if (!w)
                return writer.getResultBuffer();
        }
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): AcquireTokenRequest {
            const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new AcquireTokenRequest();
            while (reader.nextField()) {
                if (reader.isEndGroup())
                    break;
                switch (reader.getFieldNumber()) {
                    case 1:
                        reader.readMessage(message.signed_message, () => message.signed_message = dep_2.pbmse.SignedMessage.deserialize(reader));
                        break;
                    default: reader.skipField();
                }
            }
            return message;
        }
        serializeBinary(): Uint8Array {
            return this.serialize();
        }
        static deserializeBinary(bytes: Uint8Array): AcquireTokenRequest {
            return AcquireTokenRequest.deserialize(bytes);
        }
    }
    export class AcquireTokenResponse extends pb_1.Message {
        constructor(data?: any[] | {
            status?: dep_1.ResponseStatus;
            wallet_token?: string;
        }) {
            super();
            pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [], []);
            if (!Array.isArray(data) && typeof data == "object") {
                if ("status" in data && data.status != undefined) {
                    this.status = data.status;
                }
                if ("wallet_token" in data && data.wallet_token != undefined) {
                    this.wallet_token = data.wallet_token;
                }
            }
        }
        get status() {
            return pb_1.Message.getField(this, 1) as dep_1.ResponseStatus;
        }
        set status(value: dep_1.ResponseStatus) {
            pb_1.Message.setField(this, 1, value);
        }
        get wallet_token() {
            return pb_1.Message.getField(this, 2) as string;
        }
        set wallet_token(value: string) {
            pb_1.Message.setField(this, 2, value);
        }
        toObject() {
            var data: {
                status?: dep_1.ResponseStatus;
                wallet_token?: string;
            } = {};
            if (this.status != null) {
                data.status = this.status;
            }
            if (this.wallet_token != null) {
                data.wallet_token = this.wallet_token;
            }
            return data;
        }
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined {
            const writer = w || new pb_1.BinaryWriter();
            if (this.status !== undefined)
                writer.writeEnum(1, this.status);
            if (typeof this.wallet_token === "string" && this.wallet_token.length)
                writer.writeString(2, this.wallet_token);
            if (!w)
                return writer.getResultBuffer();
        }
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): AcquireTokenResponse {
            const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new AcquireTokenResponse();
            while (reader.nextField()) {
                if (reader.isEndGroup())
                    break;
                switch (reader.getFieldNumber()) {
                    case 1:
                        message.status = reader.readEnum();
                        break;
                    case 2:
                        message.wallet_token = reader.readString();
                        break;
                    default: reader.skipField();
                }
            }
            return message;
        }
        serializeBinary(): Uint8Array {
            return this.serialize();
        }
        static deserializeBinary(bytes: Uint8Array): AcquireTokenResponse {
            return AcquireTokenResponse.deserialize(bytes);
        }
    }
    export interface IAuthenticationService extends grpc_1.ServiceDefinition<grpc_1.UntypedServiceImplementation> {
        AcquireToken: grpc_1.MethodDefinition<AcquireTokenRequest, AcquireTokenResponse>;
    }
    export interface IAuthenticationServer extends grpc_1.UntypedServiceImplementation {
        AcquireToken: grpc_1.handleUnaryCall<AcquireTokenRequest, AcquireTokenResponse>;
    }
    export const Authentication = {
        AcquireToken: {
            path: "/trinsic.services.Authentication/AcquireToken",
            requestStream: false,
            responseStream: false,
            requestSerialize: (message: AcquireTokenRequest) => Buffer.from(message.serialize()),
            requestDeserialize: (bytes: Buffer) => AcquireTokenRequest.deserialize(new Uint8Array(bytes)),
            responseSerialize: (message: AcquireTokenResponse) => Buffer.from(message.serialize()),
            responseDeserialize: (bytes: Buffer) => AcquireTokenResponse.deserialize(new Uint8Array(bytes))
        }
    };
    export class AuthenticationClient extends grpc_1.makeGenericClientConstructor(Authentication, "Authentication", {}) {
        constructor(address: string, credentials: grpc_1.ChannelCredentials, options?: Partial<grpc_1.ChannelOptions>) {
            super(address, credentials, options)
        }
    }
}
