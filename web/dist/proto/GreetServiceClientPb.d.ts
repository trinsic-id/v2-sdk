/**
 * @fileoverview gRPC-Web generated client stub for greet
 * @enhanceable
 * @public
 */
import * as grpcWeb from 'grpc-web';
import * as greet_pb from './greet_pb';
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
    methodInfoSayHello: grpcWeb.AbstractClientBase.MethodInfo<greet_pb.HelloRequest, greet_pb.HelloReply>;
    sayHello(request: greet_pb.HelloRequest, metadata: grpcWeb.Metadata | null): Promise<greet_pb.HelloReply>;
    sayHello(request: greet_pb.HelloRequest, metadata: grpcWeb.Metadata | null, callback: (err: grpcWeb.Error, response: greet_pb.HelloReply) => void): grpcWeb.ClientReadableStream<greet_pb.HelloReply>;
}
