// GENERATED CODE -- DO NOT EDIT!

// package: greet
// file: greet.proto

import * as greet_pb from "./greet_pb";
import * as grpc from "grpc";

interface IGreeterService extends grpc.ServiceDefinition<grpc.UntypedServiceImplementation> {
  sayHello: grpc.MethodDefinition<greet_pb.HelloRequest, greet_pb.HelloReply>;
}

export const GreeterService: IGreeterService;

export interface IGreeterServer extends grpc.UntypedServiceImplementation {
  sayHello: grpc.handleUnaryCall<greet_pb.HelloRequest, greet_pb.HelloReply>;
}

export class GreeterClient extends grpc.Client {
  constructor(address: string, credentials: grpc.ChannelCredentials, options?: object);
  sayHello(argument: greet_pb.HelloRequest, callback: grpc.requestCallback<greet_pb.HelloReply>): grpc.ClientUnaryCall;
  sayHello(argument: greet_pb.HelloRequest, metadataOrOptions: grpc.Metadata | grpc.CallOptions | null, callback: grpc.requestCallback<greet_pb.HelloReply>): grpc.ClientUnaryCall;
  sayHello(argument: greet_pb.HelloRequest, metadata: grpc.Metadata | null, options: grpc.CallOptions | null, callback: grpc.requestCallback<greet_pb.HelloReply>): grpc.ClientUnaryCall;
}
