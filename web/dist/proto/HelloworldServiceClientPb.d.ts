/**
 * @fileoverview gRPC-Web generated client stub for helloworld
 * @enhanceable
 * @public
 */
import * as grpcWeb from 'grpc-web';
import * as helloworld_pb from './helloworld_pb';
export declare class GreeterClient {
    client_: grpcWeb.AbstractClientBase;
    hostname_: string;
    credentials_: null | {
        [index: string]: string;
    };
    options_: null | {
        [index: string]: any;
    };
    constructor(hostname: string, credentials?: null | {
        [index: string]: string;
    }, options?: null | {
        [index: string]: any;
    });
    methodInfoSayHello: grpcWeb.AbstractClientBase.MethodInfo<helloworld_pb.HelloRequest, helloworld_pb.HelloReply>;
    sayHello(request: helloworld_pb.HelloRequest, metadata: grpcWeb.Metadata | null): Promise<helloworld_pb.HelloReply>;
    sayHello(request: helloworld_pb.HelloRequest, metadata: grpcWeb.Metadata | null, callback: (err: grpcWeb.Error, response: helloworld_pb.HelloReply) => void): grpcWeb.ClientReadableStream<helloworld_pb.HelloReply>;
    methodInfoSayHelloAgain: grpcWeb.AbstractClientBase.MethodInfo<helloworld_pb.HelloRequest, helloworld_pb.HelloReply>;
    sayHelloAgain(request: helloworld_pb.HelloRequest, metadata: grpcWeb.Metadata | null): Promise<helloworld_pb.HelloReply>;
    sayHelloAgain(request: helloworld_pb.HelloRequest, metadata: grpcWeb.Metadata | null, callback: (err: grpcWeb.Error, response: helloworld_pb.HelloReply) => void): grpcWeb.ClientReadableStream<helloworld_pb.HelloReply>;
}
