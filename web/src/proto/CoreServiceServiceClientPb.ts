/**
 * @fileoverview gRPC-Web generated client stub for trinsic.services
 * @enhanceable
 * @public
 */

// GENERATED CODE -- DO NOT EDIT!


/* eslint-disable */
// @ts-nocheck


import * as grpcWeb from 'grpc-web';

import * as pbmse_pbmse_pb from './pbmse/pbmse_pb';


export class CommonClient {
  client_: grpcWeb.AbstractClientBase;
  hostname_: string;
  credentials_: null | { [index: string]: string; };
  options_: null | { [index: string]: any; };

  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; }) {
    if (!options) options = {};
    if (!credentials) credentials = {};
    options['format'] = 'text';

    this.client_ = new grpcWeb.GrpcWebClientBase(options);
    this.hostname_ = hostname;
    this.credentials_ = credentials;
    this.options_ = options;
  }

  methodInfoRequest = new grpcWeb.AbstractClientBase.MethodInfo(
    pbmse_pbmse_pb.EncryptedMessage,
    (request: pbmse_pbmse_pb.EncryptedMessage) => {
      return request.serializeBinary();
    },
    pbmse_pbmse_pb.EncryptedMessage.deserializeBinary
  );

  request(
    request: pbmse_pbmse_pb.EncryptedMessage,
    metadata: grpcWeb.Metadata | null): Promise<pbmse_pbmse_pb.EncryptedMessage>;

  request(
    request: pbmse_pbmse_pb.EncryptedMessage,
    metadata: grpcWeb.Metadata | null,
    callback: (err: grpcWeb.Error,
               response: pbmse_pbmse_pb.EncryptedMessage) => void): grpcWeb.ClientReadableStream<pbmse_pbmse_pb.EncryptedMessage>;

  request(
    request: pbmse_pbmse_pb.EncryptedMessage,
    metadata: grpcWeb.Metadata | null,
    callback?: (err: grpcWeb.Error,
               response: pbmse_pbmse_pb.EncryptedMessage) => void) {
    if (callback !== undefined) {
      return this.client_.rpcCall(
        this.hostname_ +
          '/trinsic.services.Common/Request',
        request,
        metadata || {},
        this.methodInfoRequest,
        callback);
    }
    return this.client_.unaryCall(
    this.hostname_ +
      '/trinsic.services.Common/Request',
    request,
    metadata || {},
    this.methodInfoRequest);
  }

}

