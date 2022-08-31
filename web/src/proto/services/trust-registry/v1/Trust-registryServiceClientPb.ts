/**
 * @fileoverview gRPC-Web generated client stub for services.trustregistry.v1
 * @enhanceable
 * @public
 */

// GENERATED CODE -- DO NOT EDIT!

/* eslint-disable */
// @ts-nocheck

import * as grpcWeb from "grpc-web";

import * as services_trust$registry_v1_trust$registry_pb from "../../../services/trust-registry/v1/trust-registry_pb";

export class TrustRegistryClient {
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

  methodInfoAddFramework = new grpcWeb.AbstractClientBase.MethodInfo(
    services_trust$registry_v1_trust$registry_pb.AddFrameworkResponse,
    (
      request: services_trust$registry_v1_trust$registry_pb.AddFrameworkRequest
    ) => {
      return request.serializeBinary();
    },
    services_trust$registry_v1_trust$registry_pb.AddFrameworkResponse.deserializeBinary
  );

  addFramework(
    request: services_trust$registry_v1_trust$registry_pb.AddFrameworkRequest,
    metadata: grpcWeb.Metadata | null
  ): Promise<services_trust$registry_v1_trust$registry_pb.AddFrameworkResponse>;

  addFramework(
    request: services_trust$registry_v1_trust$registry_pb.AddFrameworkRequest,
    metadata: grpcWeb.Metadata | null,
    callback: (
      err: grpcWeb.Error,
      response: services_trust$registry_v1_trust$registry_pb.AddFrameworkResponse
    ) => void
  ): grpcWeb.ClientReadableStream<services_trust$registry_v1_trust$registry_pb.AddFrameworkResponse>;

  addFramework(
    request: services_trust$registry_v1_trust$registry_pb.AddFrameworkRequest,
    metadata: grpcWeb.Metadata | null,
    callback?: (
      err: grpcWeb.Error,
      response: services_trust$registry_v1_trust$registry_pb.AddFrameworkResponse
    ) => void
  ) {
    if (callback !== undefined) {
      return this.client_.rpcCall(
        this.hostname_ +
          "/services.trustregistry.v1.TrustRegistry/AddFramework",
        request,
        metadata || {},
        this.methodInfoAddFramework,
        callback
      );
    }
    return this.client_.unaryCall(
      this.hostname_ + "/services.trustregistry.v1.TrustRegistry/AddFramework",
      request,
      metadata || {},
      this.methodInfoAddFramework
    );
  }

  methodInfoRemoveFramework = new grpcWeb.AbstractClientBase.MethodInfo(
    services_trust$registry_v1_trust$registry_pb.RemoveFrameworkResponse,
    (
      request: services_trust$registry_v1_trust$registry_pb.RemoveFrameworkRequest
    ) => {
      return request.serializeBinary();
    },
    services_trust$registry_v1_trust$registry_pb.RemoveFrameworkResponse.deserializeBinary
  );

  removeFramework(
    request: services_trust$registry_v1_trust$registry_pb.RemoveFrameworkRequest,
    metadata: grpcWeb.Metadata | null
  ): Promise<services_trust$registry_v1_trust$registry_pb.RemoveFrameworkResponse>;

  removeFramework(
    request: services_trust$registry_v1_trust$registry_pb.RemoveFrameworkRequest,
    metadata: grpcWeb.Metadata | null,
    callback: (
      err: grpcWeb.Error,
      response: services_trust$registry_v1_trust$registry_pb.RemoveFrameworkResponse
    ) => void
  ): grpcWeb.ClientReadableStream<services_trust$registry_v1_trust$registry_pb.RemoveFrameworkResponse>;

  removeFramework(
    request: services_trust$registry_v1_trust$registry_pb.RemoveFrameworkRequest,
    metadata: grpcWeb.Metadata | null,
    callback?: (
      err: grpcWeb.Error,
      response: services_trust$registry_v1_trust$registry_pb.RemoveFrameworkResponse
    ) => void
  ) {
    if (callback !== undefined) {
      return this.client_.rpcCall(
        this.hostname_ +
          "/services.trustregistry.v1.TrustRegistry/RemoveFramework",
        request,
        metadata || {},
        this.methodInfoRemoveFramework,
        callback
      );
    }
    return this.client_.unaryCall(
      this.hostname_ +
        "/services.trustregistry.v1.TrustRegistry/RemoveFramework",
      request,
      metadata || {},
      this.methodInfoRemoveFramework
    );
  }

  methodInfoSearchRegistry = new grpcWeb.AbstractClientBase.MethodInfo(
    services_trust$registry_v1_trust$registry_pb.SearchRegistryResponse,
    (
      request: services_trust$registry_v1_trust$registry_pb.SearchRegistryRequest
    ) => {
      return request.serializeBinary();
    },
    services_trust$registry_v1_trust$registry_pb.SearchRegistryResponse.deserializeBinary
  );

  searchRegistry(
    request: services_trust$registry_v1_trust$registry_pb.SearchRegistryRequest,
    metadata: grpcWeb.Metadata | null
  ): Promise<services_trust$registry_v1_trust$registry_pb.SearchRegistryResponse>;

  searchRegistry(
    request: services_trust$registry_v1_trust$registry_pb.SearchRegistryRequest,
    metadata: grpcWeb.Metadata | null,
    callback: (
      err: grpcWeb.Error,
      response: services_trust$registry_v1_trust$registry_pb.SearchRegistryResponse
    ) => void
  ): grpcWeb.ClientReadableStream<services_trust$registry_v1_trust$registry_pb.SearchRegistryResponse>;

  searchRegistry(
    request: services_trust$registry_v1_trust$registry_pb.SearchRegistryRequest,
    metadata: grpcWeb.Metadata | null,
    callback?: (
      err: grpcWeb.Error,
      response: services_trust$registry_v1_trust$registry_pb.SearchRegistryResponse
    ) => void
  ) {
    if (callback !== undefined) {
      return this.client_.rpcCall(
        this.hostname_ +
          "/services.trustregistry.v1.TrustRegistry/SearchRegistry",
        request,
        metadata || {},
        this.methodInfoSearchRegistry,
        callback
      );
    }
    return this.client_.unaryCall(
      this.hostname_ +
        "/services.trustregistry.v1.TrustRegistry/SearchRegistry",
      request,
      metadata || {},
      this.methodInfoSearchRegistry
    );
  }

  methodInfoRegisterIssuer = new grpcWeb.AbstractClientBase.MethodInfo(
    services_trust$registry_v1_trust$registry_pb.RegisterIssuerResponse,
    (
      request: services_trust$registry_v1_trust$registry_pb.RegisterIssuerRequest
    ) => {
      return request.serializeBinary();
    },
    services_trust$registry_v1_trust$registry_pb.RegisterIssuerResponse.deserializeBinary
  );

  registerIssuer(
    request: services_trust$registry_v1_trust$registry_pb.RegisterIssuerRequest,
    metadata: grpcWeb.Metadata | null
  ): Promise<services_trust$registry_v1_trust$registry_pb.RegisterIssuerResponse>;

  registerIssuer(
    request: services_trust$registry_v1_trust$registry_pb.RegisterIssuerRequest,
    metadata: grpcWeb.Metadata | null,
    callback: (
      err: grpcWeb.Error,
      response: services_trust$registry_v1_trust$registry_pb.RegisterIssuerResponse
    ) => void
  ): grpcWeb.ClientReadableStream<services_trust$registry_v1_trust$registry_pb.RegisterIssuerResponse>;

  registerIssuer(
    request: services_trust$registry_v1_trust$registry_pb.RegisterIssuerRequest,
    metadata: grpcWeb.Metadata | null,
    callback?: (
      err: grpcWeb.Error,
      response: services_trust$registry_v1_trust$registry_pb.RegisterIssuerResponse
    ) => void
  ) {
    if (callback !== undefined) {
      return this.client_.rpcCall(
        this.hostname_ +
          "/services.trustregistry.v1.TrustRegistry/RegisterIssuer",
        request,
        metadata || {},
        this.methodInfoRegisterIssuer,
        callback
      );
    }
    return this.client_.unaryCall(
      this.hostname_ +
        "/services.trustregistry.v1.TrustRegistry/RegisterIssuer",
      request,
      metadata || {},
      this.methodInfoRegisterIssuer
    );
  }

  methodInfoRegisterVerifier = new grpcWeb.AbstractClientBase.MethodInfo(
    services_trust$registry_v1_trust$registry_pb.RegisterVerifierResponse,
    (
      request: services_trust$registry_v1_trust$registry_pb.RegisterVerifierRequest
    ) => {
      return request.serializeBinary();
    },
    services_trust$registry_v1_trust$registry_pb.RegisterVerifierResponse.deserializeBinary
  );

  registerVerifier(
    request: services_trust$registry_v1_trust$registry_pb.RegisterVerifierRequest,
    metadata: grpcWeb.Metadata | null
  ): Promise<services_trust$registry_v1_trust$registry_pb.RegisterVerifierResponse>;

  registerVerifier(
    request: services_trust$registry_v1_trust$registry_pb.RegisterVerifierRequest,
    metadata: grpcWeb.Metadata | null,
    callback: (
      err: grpcWeb.Error,
      response: services_trust$registry_v1_trust$registry_pb.RegisterVerifierResponse
    ) => void
  ): grpcWeb.ClientReadableStream<services_trust$registry_v1_trust$registry_pb.RegisterVerifierResponse>;

  registerVerifier(
    request: services_trust$registry_v1_trust$registry_pb.RegisterVerifierRequest,
    metadata: grpcWeb.Metadata | null,
    callback?: (
      err: grpcWeb.Error,
      response: services_trust$registry_v1_trust$registry_pb.RegisterVerifierResponse
    ) => void
  ) {
    if (callback !== undefined) {
      return this.client_.rpcCall(
        this.hostname_ +
          "/services.trustregistry.v1.TrustRegistry/RegisterVerifier",
        request,
        metadata || {},
        this.methodInfoRegisterVerifier,
        callback
      );
    }
    return this.client_.unaryCall(
      this.hostname_ +
        "/services.trustregistry.v1.TrustRegistry/RegisterVerifier",
      request,
      metadata || {},
      this.methodInfoRegisterVerifier
    );
  }

  methodInfoUnregisterIssuer = new grpcWeb.AbstractClientBase.MethodInfo(
    services_trust$registry_v1_trust$registry_pb.UnregisterIssuerResponse,
    (
      request: services_trust$registry_v1_trust$registry_pb.UnregisterIssuerRequest
    ) => {
      return request.serializeBinary();
    },
    services_trust$registry_v1_trust$registry_pb.UnregisterIssuerResponse.deserializeBinary
  );

  unregisterIssuer(
    request: services_trust$registry_v1_trust$registry_pb.UnregisterIssuerRequest,
    metadata: grpcWeb.Metadata | null
  ): Promise<services_trust$registry_v1_trust$registry_pb.UnregisterIssuerResponse>;

  unregisterIssuer(
    request: services_trust$registry_v1_trust$registry_pb.UnregisterIssuerRequest,
    metadata: grpcWeb.Metadata | null,
    callback: (
      err: grpcWeb.Error,
      response: services_trust$registry_v1_trust$registry_pb.UnregisterIssuerResponse
    ) => void
  ): grpcWeb.ClientReadableStream<services_trust$registry_v1_trust$registry_pb.UnregisterIssuerResponse>;

  unregisterIssuer(
    request: services_trust$registry_v1_trust$registry_pb.UnregisterIssuerRequest,
    metadata: grpcWeb.Metadata | null,
    callback?: (
      err: grpcWeb.Error,
      response: services_trust$registry_v1_trust$registry_pb.UnregisterIssuerResponse
    ) => void
  ) {
    if (callback !== undefined) {
      return this.client_.rpcCall(
        this.hostname_ +
          "/services.trustregistry.v1.TrustRegistry/UnregisterIssuer",
        request,
        metadata || {},
        this.methodInfoUnregisterIssuer,
        callback
      );
    }
    return this.client_.unaryCall(
      this.hostname_ +
        "/services.trustregistry.v1.TrustRegistry/UnregisterIssuer",
      request,
      metadata || {},
      this.methodInfoUnregisterIssuer
    );
  }

  methodInfoUnregisterVerifier = new grpcWeb.AbstractClientBase.MethodInfo(
    services_trust$registry_v1_trust$registry_pb.UnregisterVerifierResponse,
    (
      request: services_trust$registry_v1_trust$registry_pb.UnregisterVerifierRequest
    ) => {
      return request.serializeBinary();
    },
    services_trust$registry_v1_trust$registry_pb.UnregisterVerifierResponse.deserializeBinary
  );

  unregisterVerifier(
    request: services_trust$registry_v1_trust$registry_pb.UnregisterVerifierRequest,
    metadata: grpcWeb.Metadata | null
  ): Promise<services_trust$registry_v1_trust$registry_pb.UnregisterVerifierResponse>;

  unregisterVerifier(
    request: services_trust$registry_v1_trust$registry_pb.UnregisterVerifierRequest,
    metadata: grpcWeb.Metadata | null,
    callback: (
      err: grpcWeb.Error,
      response: services_trust$registry_v1_trust$registry_pb.UnregisterVerifierResponse
    ) => void
  ): grpcWeb.ClientReadableStream<services_trust$registry_v1_trust$registry_pb.UnregisterVerifierResponse>;

  unregisterVerifier(
    request: services_trust$registry_v1_trust$registry_pb.UnregisterVerifierRequest,
    metadata: grpcWeb.Metadata | null,
    callback?: (
      err: grpcWeb.Error,
      response: services_trust$registry_v1_trust$registry_pb.UnregisterVerifierResponse
    ) => void
  ) {
    if (callback !== undefined) {
      return this.client_.rpcCall(
        this.hostname_ +
          "/services.trustregistry.v1.TrustRegistry/UnregisterVerifier",
        request,
        metadata || {},
        this.methodInfoUnregisterVerifier,
        callback
      );
    }
    return this.client_.unaryCall(
      this.hostname_ +
        "/services.trustregistry.v1.TrustRegistry/UnregisterVerifier",
      request,
      metadata || {},
      this.methodInfoUnregisterVerifier
    );
  }

  methodInfoCheckIssuerStatus = new grpcWeb.AbstractClientBase.MethodInfo(
    services_trust$registry_v1_trust$registry_pb.CheckIssuerStatusResponse,
    (
      request: services_trust$registry_v1_trust$registry_pb.CheckIssuerStatusRequest
    ) => {
      return request.serializeBinary();
    },
    services_trust$registry_v1_trust$registry_pb.CheckIssuerStatusResponse.deserializeBinary
  );

  checkIssuerStatus(
    request: services_trust$registry_v1_trust$registry_pb.CheckIssuerStatusRequest,
    metadata: grpcWeb.Metadata | null
  ): Promise<services_trust$registry_v1_trust$registry_pb.CheckIssuerStatusResponse>;

  checkIssuerStatus(
    request: services_trust$registry_v1_trust$registry_pb.CheckIssuerStatusRequest,
    metadata: grpcWeb.Metadata | null,
    callback: (
      err: grpcWeb.Error,
      response: services_trust$registry_v1_trust$registry_pb.CheckIssuerStatusResponse
    ) => void
  ): grpcWeb.ClientReadableStream<services_trust$registry_v1_trust$registry_pb.CheckIssuerStatusResponse>;

  checkIssuerStatus(
    request: services_trust$registry_v1_trust$registry_pb.CheckIssuerStatusRequest,
    metadata: grpcWeb.Metadata | null,
    callback?: (
      err: grpcWeb.Error,
      response: services_trust$registry_v1_trust$registry_pb.CheckIssuerStatusResponse
    ) => void
  ) {
    if (callback !== undefined) {
      return this.client_.rpcCall(
        this.hostname_ +
          "/services.trustregistry.v1.TrustRegistry/CheckIssuerStatus",
        request,
        metadata || {},
        this.methodInfoCheckIssuerStatus,
        callback
      );
    }
    return this.client_.unaryCall(
      this.hostname_ +
        "/services.trustregistry.v1.TrustRegistry/CheckIssuerStatus",
      request,
      metadata || {},
      this.methodInfoCheckIssuerStatus
    );
  }

  methodInfoCheckVerifierStatus = new grpcWeb.AbstractClientBase.MethodInfo(
    services_trust$registry_v1_trust$registry_pb.CheckVerifierStatusResponse,
    (
      request: services_trust$registry_v1_trust$registry_pb.CheckVerifierStatusRequest
    ) => {
      return request.serializeBinary();
    },
    services_trust$registry_v1_trust$registry_pb.CheckVerifierStatusResponse.deserializeBinary
  );

  checkVerifierStatus(
    request: services_trust$registry_v1_trust$registry_pb.CheckVerifierStatusRequest,
    metadata: grpcWeb.Metadata | null
  ): Promise<services_trust$registry_v1_trust$registry_pb.CheckVerifierStatusResponse>;

  checkVerifierStatus(
    request: services_trust$registry_v1_trust$registry_pb.CheckVerifierStatusRequest,
    metadata: grpcWeb.Metadata | null,
    callback: (
      err: grpcWeb.Error,
      response: services_trust$registry_v1_trust$registry_pb.CheckVerifierStatusResponse
    ) => void
  ): grpcWeb.ClientReadableStream<services_trust$registry_v1_trust$registry_pb.CheckVerifierStatusResponse>;

  checkVerifierStatus(
    request: services_trust$registry_v1_trust$registry_pb.CheckVerifierStatusRequest,
    metadata: grpcWeb.Metadata | null,
    callback?: (
      err: grpcWeb.Error,
      response: services_trust$registry_v1_trust$registry_pb.CheckVerifierStatusResponse
    ) => void
  ) {
    if (callback !== undefined) {
      return this.client_.rpcCall(
        this.hostname_ +
          "/services.trustregistry.v1.TrustRegistry/CheckVerifierStatus",
        request,
        metadata || {},
        this.methodInfoCheckVerifierStatus,
        callback
      );
    }
    return this.client_.unaryCall(
      this.hostname_ +
        "/services.trustregistry.v1.TrustRegistry/CheckVerifierStatus",
      request,
      metadata || {},
      this.methodInfoCheckVerifierStatus
    );
  }

  methodInfoFetchData = new grpcWeb.AbstractClientBase.MethodInfo(
    services_trust$registry_v1_trust$registry_pb.FetchDataResponse,
    (
      request: services_trust$registry_v1_trust$registry_pb.FetchDataRequest
    ) => {
      return request.serializeBinary();
    },
    services_trust$registry_v1_trust$registry_pb.FetchDataResponse.deserializeBinary
  );

  fetchData(
    request: services_trust$registry_v1_trust$registry_pb.FetchDataRequest,
    metadata?: grpcWeb.Metadata
  ) {
    return this.client_.serverStreaming(
      this.hostname_ + "/services.trustregistry.v1.TrustRegistry/FetchData",
      request,
      metadata || {},
      this.methodInfoFetchData
    );
  }
}
