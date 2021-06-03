/**
 * @fileoverview gRPC-Web generated client stub for trinsic.services
 * @enhanceable
 * @public
 */

// GENERATED CODE -- DO NOT EDIT!


/* eslint-disable */
// @ts-nocheck


import * as grpcWeb from 'grpc-web';

import * as AuthService_pb from './AuthService_pb';


export class AuthenticationClient {
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

  methodInfoAcquireToken = new grpcWeb.AbstractClientBase.MethodInfo(
    AuthService_pb.AcquireTokenResponse,
    (request: AuthService_pb.AcquireTokenRequest) => {
      return request.serializeBinary();
    },
    AuthService_pb.AcquireTokenResponse.deserializeBinary
  );

  acquireToken(
    request: AuthService_pb.AcquireTokenRequest,
    metadata: grpcWeb.Metadata | null): Promise<AuthService_pb.AcquireTokenResponse>;

  acquireToken(
    request: AuthService_pb.AcquireTokenRequest,
    metadata: grpcWeb.Metadata | null,
    callback: (err: grpcWeb.Error,
               response: AuthService_pb.AcquireTokenResponse) => void): grpcWeb.ClientReadableStream<AuthService_pb.AcquireTokenResponse>;

  acquireToken(
    request: AuthService_pb.AcquireTokenRequest,
    metadata: grpcWeb.Metadata | null,
    callback?: (err: grpcWeb.Error,
               response: AuthService_pb.AcquireTokenResponse) => void) {
    if (callback !== undefined) {
      return this.client_.rpcCall(
        this.hostname_ +
          '/trinsic.services.Authentication/AcquireToken',
        request,
        metadata || {},
        this.methodInfoAcquireToken,
        callback);
    }
    return this.client_.unaryCall(
    this.hostname_ +
      '/trinsic.services.Authentication/AcquireToken',
    request,
    metadata || {},
    this.methodInfoAcquireToken);
  }

}

