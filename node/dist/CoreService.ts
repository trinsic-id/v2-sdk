import * as dep_1 from "./pbmse\\pbmse";
import { pbmse } from './pbmse/pbmse';
import * as pb_1 from "google-protobuf";
import * as grpc_1 from "@grpc/grpc-js";
export namespace trinsic.services {
    export enum ResponseStatus {
        SUCCESS = 0,
        WALLET_ACCESS_DENIED = 10,
        WALLET_EXISTS = 11,
        ITEM_NOT_FOUND = 20,
        SERIALIZATION_ERROR = 200,
        UNKNOWN_ERROR = 100
    }
    export class NoOp extends pb_1.Message {
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
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): NoOp {
            const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new NoOp();
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
        static deserializeBinary(bytes: Uint8Array): NoOp {
            return NoOp.deserialize(bytes);
        }
    }
    export interface ICommonService extends grpc_1.ServiceDefinition<grpc_1.UntypedServiceImplementation> {
        Request: grpc_1.MethodDefinition<pbmse.EncryptedMessage, pbmse.EncryptedMessage>;
    }
    export interface ICommonServer extends grpc_1.UntypedServiceImplementation {
        Request: grpc_1.handleUnaryCall<pbmse.EncryptedMessage, pbmse.EncryptedMessage>;
    }
    export const Common = {
        Request: {
            path: "/trinsic.services.Common/Request",
            requestStream: false,
            responseStream: false,
            requestSerialize: (message: pbmse.EncryptedMessage) => Buffer.from(message.serialize()),
            requestDeserialize: (bytes: Buffer) => pbmse.EncryptedMessage.deserialize(new Uint8Array(bytes)),
            responseSerialize: (message: pbmse.EncryptedMessage) => Buffer.from(message.serialize()),
            responseDeserialize: (bytes: Buffer) => pbmse.EncryptedMessage.deserialize(new Uint8Array(bytes))
        }
    };
    export class CommonClient extends grpc_1.makeGenericClientConstructor(Common, "Common", {}) {
        constructor(address: string, credentials: grpc_1.ChannelCredentials, options?: Partial<grpc_1.ChannelOptions>) {
            super(address, credentials, options)
        }
    }
}

export default trinsic.services;