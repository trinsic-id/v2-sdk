/**
 * @fileoverview gRPC-Web generated client stub for helloworld
 * @enhanceable
 * @public
 */

// GENERATED CODE -- DO NOT EDIT!


/* eslint-disable */
// @ts-nocheck


import * as grpcWeb from 'grpc-web';

import * as helloworld_pb from './helloworld_pb';


export class GreeterClient {
  client_: grpcWeb.AbstractClientBase;
  hostname_: string;
  credentials_: null | { [index: string]: string; };
  options_: null | { [index: string]: any; };

  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; }) {
    if (!options) options = {};
    if (!credentials) credentials = {};
    options['format'] = 'binary';

    this.client_ = new grpcWeb.GrpcWebClientBase(options);
    this.hostname_ = hostname;
    this.credentials_ = credentials;
    this.options_ = options;
  }

  methodInfoSayHello = new grpcWeb.AbstractClientBase.MethodInfo(
    helloworld_pb.HelloReply,
    (request: helloworld_pb.HelloRequest) => {
      return request.serializeBinary();
    },
    helloworld_pb.HelloReply.deserializeBinary
  );

  sayHello(
    request: helloworld_pb.HelloRequest,
    metadata: grpcWeb.Metadata | null): Promise<helloworld_pb.HelloReply>;

  sayHello(
    request: helloworld_pb.HelloRequest,
    metadata: grpcWeb.Metadata | null,
    callback: (err: grpcWeb.Error,
               response: helloworld_pb.HelloReply) => void): grpcWeb.ClientReadableStream<helloworld_pb.HelloReply>;

  sayHello(
    request: helloworld_pb.HelloRequest,
    metadata: grpcWeb.Metadata | null,
    callback?: (err: grpcWeb.Error,
               response: helloworld_pb.HelloReply) => void) {
    if (callback !== undefined) {
      return this.client_.rpcCall(
        this.hostname_ +
          '/helloworld.Greeter/SayHello',
        request,
        metadata || {},
        this.methodInfoSayHello,
        callback);
    }
    return this.client_.unaryCall(
    this.hostname_ +
      '/helloworld.Greeter/SayHello',
    request,
    metadata || {},
    this.methodInfoSayHello);
  }

  methodInfoSayHelloAgain = new grpcWeb.AbstractClientBase.MethodInfo(
    helloworld_pb.HelloReply,
    (request: helloworld_pb.HelloRequest) => {
      return request.serializeBinary();
    },
    helloworld_pb.HelloReply.deserializeBinary
  );

  sayHelloAgain(
    request: helloworld_pb.HelloRequest,
    metadata: grpcWeb.Metadata | null): Promise<helloworld_pb.HelloReply>;

  sayHelloAgain(
    request: helloworld_pb.HelloRequest,
    metadata: grpcWeb.Metadata | null,
    callback: (err: grpcWeb.Error,
               response: helloworld_pb.HelloReply) => void): grpcWeb.ClientReadableStream<helloworld_pb.HelloReply>;

  sayHelloAgain(
    request: helloworld_pb.HelloRequest,
    metadata: grpcWeb.Metadata | null,
    callback?: (err: grpcWeb.Error,
               response: helloworld_pb.HelloReply) => void) {
    if (callback !== undefined) {
      return this.client_.rpcCall(
        this.hostname_ +
          '/helloworld.Greeter/SayHelloAgain',
        request,
        metadata || {},
        this.methodInfoSayHelloAgain,
        callback);
    }
    return this.client_.unaryCall(
    this.hostname_ +
      '/helloworld.Greeter/SayHelloAgain',
    request,
    metadata || {},
    this.methodInfoSayHelloAgain);
  }

}

