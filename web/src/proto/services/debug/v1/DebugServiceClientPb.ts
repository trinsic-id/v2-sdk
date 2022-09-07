/**
 * @fileoverview gRPC-Web generated client stub for services.debug.v1
 * @enhanceable
 * @public
 */

// GENERATED CODE -- DO NOT EDIT!

/* eslint-disable */
// @ts-nocheck

import * as grpcWeb from "grpc-web";

import * as google_protobuf_empty_pb from "google-protobuf/google/protobuf/empty_pb";

export class DebuggingClient {
    client_: grpcWeb.AbstractClientBase;
    hostname_: string;
    credentials_: null | { [index: string]: string };
    options_: null | { [index: string]: any };

    constructor(
        hostname: string,
        credentials?: null | { [index: string]: string },
        options?: null | { [index: string]: any }
    ) {
        if (!options) options = {};
        if (!credentials) credentials = {};
        options["format"] = "text";

        this.client_ = new grpcWeb.GrpcWebClientBase(options);
        this.hostname_ = hostname;
        this.credentials_ = credentials;
        this.options_ = options;
    }

    methodInfoCallEmpty = new grpcWeb.AbstractClientBase.MethodInfo(
        google_protobuf_empty_pb.Empty,
        (request: google_protobuf_empty_pb.Empty) => {
            return request.serializeBinary();
        },
        google_protobuf_empty_pb.Empty.deserializeBinary
    );

    callEmpty(
        request: google_protobuf_empty_pb.Empty,
        metadata: grpcWeb.Metadata | null
    ): Promise<google_protobuf_empty_pb.Empty>;

    callEmpty(
        request: google_protobuf_empty_pb.Empty,
        metadata: grpcWeb.Metadata | null,
        callback: (
            err: grpcWeb.Error,
            response: google_protobuf_empty_pb.Empty
        ) => void
    ): grpcWeb.ClientReadableStream<google_protobuf_empty_pb.Empty>;

    callEmpty(
        request: google_protobuf_empty_pb.Empty,
        metadata: grpcWeb.Metadata | null,
        callback?: (
            err: grpcWeb.Error,
            response: google_protobuf_empty_pb.Empty
        ) => void
    ) {
        if (callback !== undefined) {
            return this.client_.rpcCall(
                this.hostname_ + "/services.debug.v1.Debugging/CallEmpty",
                request,
                metadata || {},
                this.methodInfoCallEmpty,
                callback
            );
        }
        return this.client_.unaryCall(
            this.hostname_ + "/services.debug.v1.Debugging/CallEmpty",
            request,
            metadata || {},
            this.methodInfoCallEmpty
        );
    }

    methodInfoCallEmptyAuth = new grpcWeb.AbstractClientBase.MethodInfo(
        google_protobuf_empty_pb.Empty,
        (request: google_protobuf_empty_pb.Empty) => {
            return request.serializeBinary();
        },
        google_protobuf_empty_pb.Empty.deserializeBinary
    );

    callEmptyAuth(
        request: google_protobuf_empty_pb.Empty,
        metadata: grpcWeb.Metadata | null
    ): Promise<google_protobuf_empty_pb.Empty>;

    callEmptyAuth(
        request: google_protobuf_empty_pb.Empty,
        metadata: grpcWeb.Metadata | null,
        callback: (
            err: grpcWeb.Error,
            response: google_protobuf_empty_pb.Empty
        ) => void
    ): grpcWeb.ClientReadableStream<google_protobuf_empty_pb.Empty>;

    callEmptyAuth(
        request: google_protobuf_empty_pb.Empty,
        metadata: grpcWeb.Metadata | null,
        callback?: (
            err: grpcWeb.Error,
            response: google_protobuf_empty_pb.Empty
        ) => void
    ) {
        if (callback !== undefined) {
            return this.client_.rpcCall(
                this.hostname_ + "/services.debug.v1.Debugging/CallEmptyAuth",
                request,
                metadata || {},
                this.methodInfoCallEmptyAuth,
                callback
            );
        }
        return this.client_.unaryCall(
            this.hostname_ + "/services.debug.v1.Debugging/CallEmptyAuth",
            request,
            metadata || {},
            this.methodInfoCallEmptyAuth
        );
    }
}
