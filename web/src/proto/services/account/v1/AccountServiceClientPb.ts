/**
 * @fileoverview gRPC-Web generated client stub for services.account.v1
 * @enhanceable
 * @public
 */

// GENERATED CODE -- DO NOT EDIT!

/* eslint-disable */
// @ts-nocheck

import * as grpcWeb from "grpc-web";

import * as services_account_v1_account_pb from "../../../services/account/v1/account_pb";

export class AccountClient {
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

  methodInfoSignIn = new grpcWeb.AbstractClientBase.MethodInfo(
    services_account_v1_account_pb.SignInResponse,
    (request: services_account_v1_account_pb.SignInRequest) => {
      return request.serializeBinary();
    },
    services_account_v1_account_pb.SignInResponse.deserializeBinary
  );

  signIn(
    request: services_account_v1_account_pb.SignInRequest,
    metadata: grpcWeb.Metadata | null
  ): Promise<services_account_v1_account_pb.SignInResponse>;

  signIn(
    request: services_account_v1_account_pb.SignInRequest,
    metadata: grpcWeb.Metadata | null,
    callback: (
      err: grpcWeb.Error,
      response: services_account_v1_account_pb.SignInResponse
    ) => void
  ): grpcWeb.ClientReadableStream<services_account_v1_account_pb.SignInResponse>;

  signIn(
    request: services_account_v1_account_pb.SignInRequest,
    metadata: grpcWeb.Metadata | null,
    callback?: (
      err: grpcWeb.Error,
      response: services_account_v1_account_pb.SignInResponse
    ) => void
  ) {
    if (callback !== undefined) {
      return this.client_.rpcCall(
        this.hostname_ + "/services.account.v1.Account/SignIn",
        request,
        metadata || {},
        this.methodInfoSignIn,
        callback
      );
    }
    return this.client_.unaryCall(
      this.hostname_ + "/services.account.v1.Account/SignIn",
      request,
      metadata || {},
      this.methodInfoSignIn
    );
  }

  methodInfoInfo = new grpcWeb.AbstractClientBase.MethodInfo(
    services_account_v1_account_pb.InfoResponse,
    (request: services_account_v1_account_pb.InfoRequest) => {
      return request.serializeBinary();
    },
    services_account_v1_account_pb.InfoResponse.deserializeBinary
  );

  info(
    request: services_account_v1_account_pb.InfoRequest,
    metadata: grpcWeb.Metadata | null
  ): Promise<services_account_v1_account_pb.InfoResponse>;

  info(
    request: services_account_v1_account_pb.InfoRequest,
    metadata: grpcWeb.Metadata | null,
    callback: (
      err: grpcWeb.Error,
      response: services_account_v1_account_pb.InfoResponse
    ) => void
  ): grpcWeb.ClientReadableStream<services_account_v1_account_pb.InfoResponse>;

  info(
    request: services_account_v1_account_pb.InfoRequest,
    metadata: grpcWeb.Metadata | null,
    callback?: (
      err: grpcWeb.Error,
      response: services_account_v1_account_pb.InfoResponse
    ) => void
  ) {
    if (callback !== undefined) {
      return this.client_.rpcCall(
        this.hostname_ + "/services.account.v1.Account/Info",
        request,
        metadata || {},
        this.methodInfoInfo,
        callback
      );
    }
    return this.client_.unaryCall(
      this.hostname_ + "/services.account.v1.Account/Info",
      request,
      metadata || {},
      this.methodInfoInfo
    );
  }

  methodInfoListDevices = new grpcWeb.AbstractClientBase.MethodInfo(
    services_account_v1_account_pb.ListDevicesResponse,
    (request: services_account_v1_account_pb.ListDevicesRequest) => {
      return request.serializeBinary();
    },
    services_account_v1_account_pb.ListDevicesResponse.deserializeBinary
  );

  listDevices(
    request: services_account_v1_account_pb.ListDevicesRequest,
    metadata: grpcWeb.Metadata | null
  ): Promise<services_account_v1_account_pb.ListDevicesResponse>;

  listDevices(
    request: services_account_v1_account_pb.ListDevicesRequest,
    metadata: grpcWeb.Metadata | null,
    callback: (
      err: grpcWeb.Error,
      response: services_account_v1_account_pb.ListDevicesResponse
    ) => void
  ): grpcWeb.ClientReadableStream<services_account_v1_account_pb.ListDevicesResponse>;

  listDevices(
    request: services_account_v1_account_pb.ListDevicesRequest,
    metadata: grpcWeb.Metadata | null,
    callback?: (
      err: grpcWeb.Error,
      response: services_account_v1_account_pb.ListDevicesResponse
    ) => void
  ) {
    if (callback !== undefined) {
      return this.client_.rpcCall(
        this.hostname_ + "/services.account.v1.Account/ListDevices",
        request,
        metadata || {},
        this.methodInfoListDevices,
        callback
      );
    }
    return this.client_.unaryCall(
      this.hostname_ + "/services.account.v1.Account/ListDevices",
      request,
      metadata || {},
      this.methodInfoListDevices
    );
  }

  methodInfoRevokeDevice = new grpcWeb.AbstractClientBase.MethodInfo(
    services_account_v1_account_pb.RevokeDeviceResponse,
    (request: services_account_v1_account_pb.RevokeDeviceRequest) => {
      return request.serializeBinary();
    },
    services_account_v1_account_pb.RevokeDeviceResponse.deserializeBinary
  );

  revokeDevice(
    request: services_account_v1_account_pb.RevokeDeviceRequest,
    metadata: grpcWeb.Metadata | null
  ): Promise<services_account_v1_account_pb.RevokeDeviceResponse>;

  revokeDevice(
    request: services_account_v1_account_pb.RevokeDeviceRequest,
    metadata: grpcWeb.Metadata | null,
    callback: (
      err: grpcWeb.Error,
      response: services_account_v1_account_pb.RevokeDeviceResponse
    ) => void
  ): grpcWeb.ClientReadableStream<services_account_v1_account_pb.RevokeDeviceResponse>;

  revokeDevice(
    request: services_account_v1_account_pb.RevokeDeviceRequest,
    metadata: grpcWeb.Metadata | null,
    callback?: (
      err: grpcWeb.Error,
      response: services_account_v1_account_pb.RevokeDeviceResponse
    ) => void
  ) {
    if (callback !== undefined) {
      return this.client_.rpcCall(
        this.hostname_ + "/services.account.v1.Account/RevokeDevice",
        request,
        metadata || {},
        this.methodInfoRevokeDevice,
        callback
      );
    }
    return this.client_.unaryCall(
      this.hostname_ + "/services.account.v1.Account/RevokeDevice",
      request,
      metadata || {},
      this.methodInfoRevokeDevice
    );
  }
}
