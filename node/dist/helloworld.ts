import * as pb_1 from "google-protobuf";
import * as grpc_1 from "@grpc/grpc-js";
export namespace helloworld {
    export class HelloRequest extends pb_1.Message {
        constructor(data?: any[] | {
            name?: string;
        }) {
            super();
            pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [], []);
            if (!Array.isArray(data) && typeof data == "object") {
                if ("name" in data && data.name != undefined) {
                    this.name = data.name;
                }
            }
        }
        get name() {
            return pb_1.Message.getField(this, 1) as string;
        }
        set name(value: string) {
            pb_1.Message.setField(this, 1, value);
        }
        toObject() {
            var data: {
                name?: string;
            } = {};
            if (this.name != null) {
                data.name = this.name;
            }
            return data;
        }
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined {
            const writer = w || new pb_1.BinaryWriter();
            if (typeof this.name === "string" && this.name.length)
                writer.writeString(1, this.name);
            if (!w)
                return writer.getResultBuffer();
        }
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): HelloRequest {
            const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new HelloRequest();
            while (reader.nextField()) {
                if (reader.isEndGroup())
                    break;
                switch (reader.getFieldNumber()) {
                    case 1:
                        message.name = reader.readString();
                        break;
                    default: reader.skipField();
                }
            }
            return message;
        }
        serializeBinary(): Uint8Array {
            return this.serialize();
        }
        static deserializeBinary(bytes: Uint8Array): HelloRequest {
            return HelloRequest.deserialize(bytes);
        }
    }
    export class HelloReply extends pb_1.Message {
        constructor(data?: any[] | {
            message?: string;
        }) {
            super();
            pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [], []);
            if (!Array.isArray(data) && typeof data == "object") {
                if ("message" in data && data.message != undefined) {
                    this.message = data.message;
                }
            }
        }
        get message() {
            return pb_1.Message.getField(this, 1) as string;
        }
        set message(value: string) {
            pb_1.Message.setField(this, 1, value);
        }
        toObject() {
            var data: {
                message?: string;
            } = {};
            if (this.message != null) {
                data.message = this.message;
            }
            return data;
        }
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined {
            const writer = w || new pb_1.BinaryWriter();
            if (typeof this.message === "string" && this.message.length)
                writer.writeString(1, this.message);
            if (!w)
                return writer.getResultBuffer();
        }
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): HelloReply {
            const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new HelloReply();
            while (reader.nextField()) {
                if (reader.isEndGroup())
                    break;
                switch (reader.getFieldNumber()) {
                    case 1:
                        message.message = reader.readString();
                        break;
                    default: reader.skipField();
                }
            }
            return message;
        }
        serializeBinary(): Uint8Array {
            return this.serialize();
        }
        static deserializeBinary(bytes: Uint8Array): HelloReply {
            return HelloReply.deserialize(bytes);
        }
    }
    export interface IGreeterService extends grpc_1.ServiceDefinition<grpc_1.UntypedServiceImplementation> {
        SayHello: grpc_1.MethodDefinition<HelloRequest, HelloReply>;
        SayHelloAgain: grpc_1.MethodDefinition<HelloRequest, HelloReply>;
    }
    export interface IGreeterServer extends grpc_1.UntypedServiceImplementation {
        SayHello: grpc_1.handleUnaryCall<HelloRequest, HelloReply>;
        SayHelloAgain: grpc_1.handleUnaryCall<HelloRequest, HelloReply>;
    }
    export const Greeter = {
        SayHello: {
            path: "/helloworld.Greeter/SayHello",
            requestStream: false,
            responseStream: false,
            requestSerialize: (message: HelloRequest) => Buffer.from(message.serialize()),
            requestDeserialize: (bytes: Buffer) => HelloRequest.deserialize(new Uint8Array(bytes)),
            responseSerialize: (message: HelloReply) => Buffer.from(message.serialize()),
            responseDeserialize: (bytes: Buffer) => HelloReply.deserialize(new Uint8Array(bytes))
        },
        SayHelloAgain: {
            path: "/helloworld.Greeter/SayHelloAgain",
            requestStream: false,
            responseStream: false,
            requestSerialize: (message: HelloRequest) => Buffer.from(message.serialize()),
            requestDeserialize: (bytes: Buffer) => HelloRequest.deserialize(new Uint8Array(bytes)),
            responseSerialize: (message: HelloReply) => Buffer.from(message.serialize()),
            responseDeserialize: (bytes: Buffer) => HelloReply.deserialize(new Uint8Array(bytes))
        }
    };
    export class GreeterClient extends grpc_1.makeGenericClientConstructor(Greeter, "Greeter", {}) {
        constructor(address: string, credentials: grpc_1.ChannelCredentials, options?: Partial<grpc_1.ChannelOptions>) {
            super(address, credentials, options)
        }
    }
}
