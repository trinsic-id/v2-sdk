/**
 * @fileoverview gRPC-Web generated client stub for trinsic.services
 * @enhanceable
 * @public
 */

// GENERATED CODE -- DO NOT EDIT!


/* eslint-disable */
// @ts-nocheck


import * as grpcWeb from 'grpc-web';

import * as ProviderService_pb from './ProviderService_pb';


export class ProviderClient {
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

  methodInfoInvite = new grpcWeb.AbstractClientBase.MethodInfo(
    ProviderService_pb.InviteResponse,
    (request: ProviderService_pb.InviteRequest) => {
      return request.serializeBinary();
    },
    ProviderService_pb.InviteResponse.deserializeBinary
  );

  invite(
    request: ProviderService_pb.InviteRequest,
    metadata: grpcWeb.Metadata | null): Promise<ProviderService_pb.InviteResponse>;

  invite(
    request: ProviderService_pb.InviteRequest,
    metadata: grpcWeb.Metadata | null,
    callback: (err: grpcWeb.Error,
               response: ProviderService_pb.InviteResponse) => void): grpcWeb.ClientReadableStream<ProviderService_pb.InviteResponse>;

  invite(
    request: ProviderService_pb.InviteRequest,
    metadata: grpcWeb.Metadata | null,
    callback?: (err: grpcWeb.Error,
               response: ProviderService_pb.InviteResponse) => void) {
    if (callback !== undefined) {
      return this.client_.rpcCall(
        this.hostname_ +
          '/trinsic.services.Provider/Invite',
        request,
        metadata || {},
        this.methodInfoInvite,
        callback);
    }
    return this.client_.unaryCall(
    this.hostname_ +
      '/trinsic.services.Provider/Invite',
    request,
    metadata || {},
    this.methodInfoInvite);
  }

  methodInfoInviteWithWorkflow = new grpcWeb.AbstractClientBase.MethodInfo(
    ProviderService_pb.InviteResponse,
    (request: ProviderService_pb.InviteRequest) => {
      return request.serializeBinary();
    },
    ProviderService_pb.InviteResponse.deserializeBinary
  );

  inviteWithWorkflow(
    request: ProviderService_pb.InviteRequest,
    metadata: grpcWeb.Metadata | null): Promise<ProviderService_pb.InviteResponse>;

  inviteWithWorkflow(
    request: ProviderService_pb.InviteRequest,
    metadata: grpcWeb.Metadata | null,
    callback: (err: grpcWeb.Error,
               response: ProviderService_pb.InviteResponse) => void): grpcWeb.ClientReadableStream<ProviderService_pb.InviteResponse>;

  inviteWithWorkflow(
    request: ProviderService_pb.InviteRequest,
    metadata: grpcWeb.Metadata | null,
    callback?: (err: grpcWeb.Error,
               response: ProviderService_pb.InviteResponse) => void) {
    if (callback !== undefined) {
      return this.client_.rpcCall(
        this.hostname_ +
          '/trinsic.services.Provider/InviteWithWorkflow',
        request,
        metadata || {},
        this.methodInfoInviteWithWorkflow,
        callback);
    }
    return this.client_.unaryCall(
    this.hostname_ +
      '/trinsic.services.Provider/InviteWithWorkflow',
    request,
    metadata || {},
    this.methodInfoInviteWithWorkflow);
  }

  methodInfoInvitationStatus = new grpcWeb.AbstractClientBase.MethodInfo(
    ProviderService_pb.InvitationStatusResponse,
    (request: ProviderService_pb.InvitationStatusRequest) => {
      return request.serializeBinary();
    },
    ProviderService_pb.InvitationStatusResponse.deserializeBinary
  );

  invitationStatus(
    request: ProviderService_pb.InvitationStatusRequest,
    metadata: grpcWeb.Metadata | null): Promise<ProviderService_pb.InvitationStatusResponse>;

  invitationStatus(
    request: ProviderService_pb.InvitationStatusRequest,
    metadata: grpcWeb.Metadata | null,
    callback: (err: grpcWeb.Error,
               response: ProviderService_pb.InvitationStatusResponse) => void): grpcWeb.ClientReadableStream<ProviderService_pb.InvitationStatusResponse>;

  invitationStatus(
    request: ProviderService_pb.InvitationStatusRequest,
    metadata: grpcWeb.Metadata | null,
    callback?: (err: grpcWeb.Error,
               response: ProviderService_pb.InvitationStatusResponse) => void) {
    if (callback !== undefined) {
      return this.client_.rpcCall(
        this.hostname_ +
          '/trinsic.services.Provider/InvitationStatus',
        request,
        metadata || {},
        this.methodInfoInvitationStatus,
        callback);
    }
    return this.client_.unaryCall(
    this.hostname_ +
      '/trinsic.services.Provider/InvitationStatus',
    request,
    metadata || {},
    this.methodInfoInvitationStatus);
  }

}

