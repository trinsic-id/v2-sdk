/**
 * @fileoverview gRPC-Web generated client stub for trinsic.services
 * @enhanceable
 * @public
 */

// GENERATED CODE -- DO NOT EDIT!


/* eslint-disable */
// @ts-nocheck


import * as grpcWeb from 'grpc-web';

import * as IssuerService_pb from './IssuerService_pb';


export class CredentialClient {
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

  methodInfoIssue = new grpcWeb.AbstractClientBase.MethodInfo(
    IssuerService_pb.IssueResponse,
    (request: IssuerService_pb.IssueRequest) => {
      return request.serializeBinary();
    },
    IssuerService_pb.IssueResponse.deserializeBinary
  );

  issue(
    request: IssuerService_pb.IssueRequest,
    metadata: grpcWeb.Metadata | null): Promise<IssuerService_pb.IssueResponse>;

  issue(
    request: IssuerService_pb.IssueRequest,
    metadata: grpcWeb.Metadata | null,
    callback: (err: grpcWeb.Error,
               response: IssuerService_pb.IssueResponse) => void): grpcWeb.ClientReadableStream<IssuerService_pb.IssueResponse>;

  issue(
    request: IssuerService_pb.IssueRequest,
    metadata: grpcWeb.Metadata | null,
    callback?: (err: grpcWeb.Error,
               response: IssuerService_pb.IssueResponse) => void) {
    if (callback !== undefined) {
      return this.client_.rpcCall(
        this.hostname_ +
          '/trinsic.services.Credential/Issue',
        request,
        metadata || {},
        this.methodInfoIssue,
        callback);
    }
    return this.client_.unaryCall(
    this.hostname_ +
      '/trinsic.services.Credential/Issue',
    request,
    metadata || {},
    this.methodInfoIssue);
  }

  methodInfoCreateProof = new grpcWeb.AbstractClientBase.MethodInfo(
    IssuerService_pb.CreateProofResponse,
    (request: IssuerService_pb.CreateProofRequest) => {
      return request.serializeBinary();
    },
    IssuerService_pb.CreateProofResponse.deserializeBinary
  );

  createProof(
    request: IssuerService_pb.CreateProofRequest,
    metadata: grpcWeb.Metadata | null): Promise<IssuerService_pb.CreateProofResponse>;

  createProof(
    request: IssuerService_pb.CreateProofRequest,
    metadata: grpcWeb.Metadata | null,
    callback: (err: grpcWeb.Error,
               response: IssuerService_pb.CreateProofResponse) => void): grpcWeb.ClientReadableStream<IssuerService_pb.CreateProofResponse>;

  createProof(
    request: IssuerService_pb.CreateProofRequest,
    metadata: grpcWeb.Metadata | null,
    callback?: (err: grpcWeb.Error,
               response: IssuerService_pb.CreateProofResponse) => void) {
    if (callback !== undefined) {
      return this.client_.rpcCall(
        this.hostname_ +
          '/trinsic.services.Credential/CreateProof',
        request,
        metadata || {},
        this.methodInfoCreateProof,
        callback);
    }
    return this.client_.unaryCall(
    this.hostname_ +
      '/trinsic.services.Credential/CreateProof',
    request,
    metadata || {},
    this.methodInfoCreateProof);
  }

  methodInfoVerifyProof = new grpcWeb.AbstractClientBase.MethodInfo(
    IssuerService_pb.VerifyProofResponse,
    (request: IssuerService_pb.VerifyProofRequest) => {
      return request.serializeBinary();
    },
    IssuerService_pb.VerifyProofResponse.deserializeBinary
  );

  verifyProof(
    request: IssuerService_pb.VerifyProofRequest,
    metadata: grpcWeb.Metadata | null): Promise<IssuerService_pb.VerifyProofResponse>;

  verifyProof(
    request: IssuerService_pb.VerifyProofRequest,
    metadata: grpcWeb.Metadata | null,
    callback: (err: grpcWeb.Error,
               response: IssuerService_pb.VerifyProofResponse) => void): grpcWeb.ClientReadableStream<IssuerService_pb.VerifyProofResponse>;

  verifyProof(
    request: IssuerService_pb.VerifyProofRequest,
    metadata: grpcWeb.Metadata | null,
    callback?: (err: grpcWeb.Error,
               response: IssuerService_pb.VerifyProofResponse) => void) {
    if (callback !== undefined) {
      return this.client_.rpcCall(
        this.hostname_ +
          '/trinsic.services.Credential/VerifyProof',
        request,
        metadata || {},
        this.methodInfoVerifyProof,
        callback);
    }
    return this.client_.unaryCall(
    this.hostname_ +
      '/trinsic.services.Credential/VerifyProof',
    request,
    metadata || {},
    this.methodInfoVerifyProof);
  }

  methodInfoSend = new grpcWeb.AbstractClientBase.MethodInfo(
    IssuerService_pb.SendResponse,
    (request: IssuerService_pb.SendRequest) => {
      return request.serializeBinary();
    },
    IssuerService_pb.SendResponse.deserializeBinary
  );

  send(
    request: IssuerService_pb.SendRequest,
    metadata: grpcWeb.Metadata | null): Promise<IssuerService_pb.SendResponse>;

  send(
    request: IssuerService_pb.SendRequest,
    metadata: grpcWeb.Metadata | null,
    callback: (err: grpcWeb.Error,
               response: IssuerService_pb.SendResponse) => void): grpcWeb.ClientReadableStream<IssuerService_pb.SendResponse>;

  send(
    request: IssuerService_pb.SendRequest,
    metadata: grpcWeb.Metadata | null,
    callback?: (err: grpcWeb.Error,
               response: IssuerService_pb.SendResponse) => void) {
    if (callback !== undefined) {
      return this.client_.rpcCall(
        this.hostname_ +
          '/trinsic.services.Credential/Send',
        request,
        metadata || {},
        this.methodInfoSend,
        callback);
    }
    return this.client_.unaryCall(
    this.hostname_ +
      '/trinsic.services.Credential/Send',
    request,
    metadata || {},
    this.methodInfoSend);
  }

}

