// GENERATED CODE -- DO NOT EDIT!

// package: helloworld
// file: helloworld.proto

import * as helloworld_pb from "./helloworld_pb";
import * as grpc from "grpc";

interface IGreeterService extends grpc.ServiceDefinition<grpc.UntypedServiceImplementation> {
  sayHello: grpc.MethodDefinition<helloworld_pb.HelloRequest, helloworld_pb.HelloReply>;
  sayHelloAgain: grpc.MethodDefinition<helloworld_pb.HelloRequest, helloworld_pb.HelloReply>;
}

export const GreeterService: IGreeterService;

export interface IGreeterServer extends grpc.UntypedServiceImplementation {
  sayHello: grpc.handleUnaryCall<helloworld_pb.HelloRequest, helloworld_pb.HelloReply>;
  sayHelloAgain: grpc.handleUnaryCall<helloworld_pb.HelloRequest, helloworld_pb.HelloReply>;
}

export class GreeterClient extends grpc.Client {
  constructor(address: string, credentials: grpc.ChannelCredentials, options?: object);
  sayHello(argument: helloworld_pb.HelloRequest, callback: grpc.requestCallback<helloworld_pb.HelloReply>): grpc.ClientUnaryCall;
  sayHello(argument: helloworld_pb.HelloRequest, metadataOrOptions: grpc.Metadata | grpc.CallOptions | null, callback: grpc.requestCallback<helloworld_pb.HelloReply>): grpc.ClientUnaryCall;
  sayHello(argument: helloworld_pb.HelloRequest, metadata: grpc.Metadata | null, options: grpc.CallOptions | null, callback: grpc.requestCallback<helloworld_pb.HelloReply>): grpc.ClientUnaryCall;
  sayHelloAgain(argument: helloworld_pb.HelloRequest, callback: grpc.requestCallback<helloworld_pb.HelloReply>): grpc.ClientUnaryCall;
  sayHelloAgain(argument: helloworld_pb.HelloRequest, metadataOrOptions: grpc.Metadata | grpc.CallOptions | null, callback: grpc.requestCallback<helloworld_pb.HelloReply>): grpc.ClientUnaryCall;
  sayHelloAgain(argument: helloworld_pb.HelloRequest, metadata: grpc.Metadata | null, options: grpc.CallOptions | null, callback: grpc.requestCallback<helloworld_pb.HelloReply>): grpc.ClientUnaryCall;
}
