/// <reference types="node" />
import { pbmse } from './pbmse/pbmse';
import * as pb_1 from "google-protobuf";
import * as grpc_1 from "@grpc/grpc-js";
export declare namespace trinsic.services {
    export enum ResponseStatus {
        SUCCESS = 0,
        WALLET_ACCESS_DENIED = 10,
        WALLET_EXISTS = 11,
        ITEM_NOT_FOUND = 20,
        SERIALIZATION_ERROR = 200,
        UNKNOWN_ERROR = 100
    }
    export class NoOp extends pb_1.Message {
        constructor(data?: any[] | {});
        toObject(): {};
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined;
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): NoOp;
        serializeBinary(): Uint8Array;
        static deserializeBinary(bytes: Uint8Array): NoOp;
    }
    export interface ICommonService extends grpc_1.ServiceDefinition<grpc_1.UntypedServiceImplementation> {
        Request: grpc_1.MethodDefinition<pbmse.EncryptedMessage, pbmse.EncryptedMessage>;
    }
    export interface ICommonServer extends grpc_1.UntypedServiceImplementation {
        Request: grpc_1.handleUnaryCall<pbmse.EncryptedMessage, pbmse.EncryptedMessage>;
    }
    export const Common: {
        Request: {
            path: string;
            requestStream: boolean;
            responseStream: boolean;
            requestSerialize: (message: pbmse.EncryptedMessage) => Buffer;
            requestDeserialize: (bytes: Buffer) => pbmse.EncryptedMessage;
            responseSerialize: (message: pbmse.EncryptedMessage) => Buffer;
            responseDeserialize: (bytes: Buffer) => pbmse.EncryptedMessage;
        };
    };
    const CommonClient_base: import("@grpc/grpc-js/build/src/make-client").ServiceClientConstructor;
    export class CommonClient extends CommonClient_base {
        constructor(address: string, credentials: grpc_1.ChannelCredentials, options?: Partial<grpc_1.ChannelOptions>);
    }
    export {};
}
declare const _default: typeof trinsic.services;
export default _default;
