/**
 * @fileoverview gRPC-Web generated client stub for services.verifiablecredentials.templates.v1
 * @enhanceable
 * @public
 */

// GENERATED CODE -- DO NOT EDIT!

/* eslint-disable */
// @ts-nocheck

import * as grpcWeb from "grpc-web";

import * as services_verifiable$credentials_templates_v1_templates_pb from "../../../../services/verifiable-credentials/templates/v1/templates_pb";

export class CredentialTemplatesClient {
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

  methodInfoCreate = new grpcWeb.AbstractClientBase.MethodInfo(
    services_verifiable$credentials_templates_v1_templates_pb.CreateCredentialTemplateResponse,
    (
      request: services_verifiable$credentials_templates_v1_templates_pb.CreateCredentialTemplateRequest
    ) => {
      return request.serializeBinary();
    },
    services_verifiable$credentials_templates_v1_templates_pb.CreateCredentialTemplateResponse.deserializeBinary
  );

  create(
    request: services_verifiable$credentials_templates_v1_templates_pb.CreateCredentialTemplateRequest,
    metadata: grpcWeb.Metadata | null
  ): Promise<services_verifiable$credentials_templates_v1_templates_pb.CreateCredentialTemplateResponse>;

  create(
    request: services_verifiable$credentials_templates_v1_templates_pb.CreateCredentialTemplateRequest,
    metadata: grpcWeb.Metadata | null,
    callback: (
      err: grpcWeb.Error,
      response: services_verifiable$credentials_templates_v1_templates_pb.CreateCredentialTemplateResponse
    ) => void
  ): grpcWeb.ClientReadableStream<services_verifiable$credentials_templates_v1_templates_pb.CreateCredentialTemplateResponse>;

  create(
    request: services_verifiable$credentials_templates_v1_templates_pb.CreateCredentialTemplateRequest,
    metadata: grpcWeb.Metadata | null,
    callback?: (
      err: grpcWeb.Error,
      response: services_verifiable$credentials_templates_v1_templates_pb.CreateCredentialTemplateResponse
    ) => void
  ) {
    if (callback !== undefined) {
      return this.client_.rpcCall(
        this.hostname_ +
          "/services.verifiablecredentials.templates.v1.CredentialTemplates/Create",
        request,
        metadata || {},
        this.methodInfoCreate,
        callback
      );
    }
    return this.client_.unaryCall(
      this.hostname_ +
        "/services.verifiablecredentials.templates.v1.CredentialTemplates/Create",
      request,
      metadata || {},
      this.methodInfoCreate
    );
  }

  methodInfoGet = new grpcWeb.AbstractClientBase.MethodInfo(
    services_verifiable$credentials_templates_v1_templates_pb.GetCredentialTemplateResponse,
    (
      request: services_verifiable$credentials_templates_v1_templates_pb.GetCredentialTemplateRequest
    ) => {
      return request.serializeBinary();
    },
    services_verifiable$credentials_templates_v1_templates_pb.GetCredentialTemplateResponse.deserializeBinary
  );

  get(
    request: services_verifiable$credentials_templates_v1_templates_pb.GetCredentialTemplateRequest,
    metadata: grpcWeb.Metadata | null
  ): Promise<services_verifiable$credentials_templates_v1_templates_pb.GetCredentialTemplateResponse>;

  get(
    request: services_verifiable$credentials_templates_v1_templates_pb.GetCredentialTemplateRequest,
    metadata: grpcWeb.Metadata | null,
    callback: (
      err: grpcWeb.Error,
      response: services_verifiable$credentials_templates_v1_templates_pb.GetCredentialTemplateResponse
    ) => void
  ): grpcWeb.ClientReadableStream<services_verifiable$credentials_templates_v1_templates_pb.GetCredentialTemplateResponse>;

  get(
    request: services_verifiable$credentials_templates_v1_templates_pb.GetCredentialTemplateRequest,
    metadata: grpcWeb.Metadata | null,
    callback?: (
      err: grpcWeb.Error,
      response: services_verifiable$credentials_templates_v1_templates_pb.GetCredentialTemplateResponse
    ) => void
  ) {
    if (callback !== undefined) {
      return this.client_.rpcCall(
        this.hostname_ +
          "/services.verifiablecredentials.templates.v1.CredentialTemplates/Get",
        request,
        metadata || {},
        this.methodInfoGet,
        callback
      );
    }
    return this.client_.unaryCall(
      this.hostname_ +
        "/services.verifiablecredentials.templates.v1.CredentialTemplates/Get",
      request,
      metadata || {},
      this.methodInfoGet
    );
  }

  methodInfoList = new grpcWeb.AbstractClientBase.MethodInfo(
    services_verifiable$credentials_templates_v1_templates_pb.ListCredentialTemplatesResponse,
    (
      request: services_verifiable$credentials_templates_v1_templates_pb.ListCredentialTemplatesRequest
    ) => {
      return request.serializeBinary();
    },
    services_verifiable$credentials_templates_v1_templates_pb.ListCredentialTemplatesResponse.deserializeBinary
  );

  list(
    request: services_verifiable$credentials_templates_v1_templates_pb.ListCredentialTemplatesRequest,
    metadata: grpcWeb.Metadata | null
  ): Promise<services_verifiable$credentials_templates_v1_templates_pb.ListCredentialTemplatesResponse>;

  list(
    request: services_verifiable$credentials_templates_v1_templates_pb.ListCredentialTemplatesRequest,
    metadata: grpcWeb.Metadata | null,
    callback: (
      err: grpcWeb.Error,
      response: services_verifiable$credentials_templates_v1_templates_pb.ListCredentialTemplatesResponse
    ) => void
  ): grpcWeb.ClientReadableStream<services_verifiable$credentials_templates_v1_templates_pb.ListCredentialTemplatesResponse>;

  list(
    request: services_verifiable$credentials_templates_v1_templates_pb.ListCredentialTemplatesRequest,
    metadata: grpcWeb.Metadata | null,
    callback?: (
      err: grpcWeb.Error,
      response: services_verifiable$credentials_templates_v1_templates_pb.ListCredentialTemplatesResponse
    ) => void
  ) {
    if (callback !== undefined) {
      return this.client_.rpcCall(
        this.hostname_ +
          "/services.verifiablecredentials.templates.v1.CredentialTemplates/List",
        request,
        metadata || {},
        this.methodInfoList,
        callback
      );
    }
    return this.client_.unaryCall(
      this.hostname_ +
        "/services.verifiablecredentials.templates.v1.CredentialTemplates/List",
      request,
      metadata || {},
      this.methodInfoList
    );
  }

  methodInfoSearch = new grpcWeb.AbstractClientBase.MethodInfo(
    services_verifiable$credentials_templates_v1_templates_pb.SearchCredentialTemplatesResponse,
    (
      request: services_verifiable$credentials_templates_v1_templates_pb.SearchCredentialTemplatesRequest
    ) => {
      return request.serializeBinary();
    },
    services_verifiable$credentials_templates_v1_templates_pb.SearchCredentialTemplatesResponse.deserializeBinary
  );

  search(
    request: services_verifiable$credentials_templates_v1_templates_pb.SearchCredentialTemplatesRequest,
    metadata: grpcWeb.Metadata | null
  ): Promise<services_verifiable$credentials_templates_v1_templates_pb.SearchCredentialTemplatesResponse>;

  search(
    request: services_verifiable$credentials_templates_v1_templates_pb.SearchCredentialTemplatesRequest,
    metadata: grpcWeb.Metadata | null,
    callback: (
      err: grpcWeb.Error,
      response: services_verifiable$credentials_templates_v1_templates_pb.SearchCredentialTemplatesResponse
    ) => void
  ): grpcWeb.ClientReadableStream<services_verifiable$credentials_templates_v1_templates_pb.SearchCredentialTemplatesResponse>;

  search(
    request: services_verifiable$credentials_templates_v1_templates_pb.SearchCredentialTemplatesRequest,
    metadata: grpcWeb.Metadata | null,
    callback?: (
      err: grpcWeb.Error,
      response: services_verifiable$credentials_templates_v1_templates_pb.SearchCredentialTemplatesResponse
    ) => void
  ) {
    if (callback !== undefined) {
      return this.client_.rpcCall(
        this.hostname_ +
          "/services.verifiablecredentials.templates.v1.CredentialTemplates/Search",
        request,
        metadata || {},
        this.methodInfoSearch,
        callback
      );
    }
    return this.client_.unaryCall(
      this.hostname_ +
        "/services.verifiablecredentials.templates.v1.CredentialTemplates/Search",
      request,
      metadata || {},
      this.methodInfoSearch
    );
  }

  methodInfoDelete = new grpcWeb.AbstractClientBase.MethodInfo(
    services_verifiable$credentials_templates_v1_templates_pb.DeleteCredentialTemplateResponse,
    (
      request: services_verifiable$credentials_templates_v1_templates_pb.DeleteCredentialTemplateRequest
    ) => {
      return request.serializeBinary();
    },
    services_verifiable$credentials_templates_v1_templates_pb.DeleteCredentialTemplateResponse.deserializeBinary
  );

  delete(
    request: services_verifiable$credentials_templates_v1_templates_pb.DeleteCredentialTemplateRequest,
    metadata: grpcWeb.Metadata | null
  ): Promise<services_verifiable$credentials_templates_v1_templates_pb.DeleteCredentialTemplateResponse>;

  delete(
    request: services_verifiable$credentials_templates_v1_templates_pb.DeleteCredentialTemplateRequest,
    metadata: grpcWeb.Metadata | null,
    callback: (
      err: grpcWeb.Error,
      response: services_verifiable$credentials_templates_v1_templates_pb.DeleteCredentialTemplateResponse
    ) => void
  ): grpcWeb.ClientReadableStream<services_verifiable$credentials_templates_v1_templates_pb.DeleteCredentialTemplateResponse>;

  delete(
    request: services_verifiable$credentials_templates_v1_templates_pb.DeleteCredentialTemplateRequest,
    metadata: grpcWeb.Metadata | null,
    callback?: (
      err: grpcWeb.Error,
      response: services_verifiable$credentials_templates_v1_templates_pb.DeleteCredentialTemplateResponse
    ) => void
  ) {
    if (callback !== undefined) {
      return this.client_.rpcCall(
        this.hostname_ +
          "/services.verifiablecredentials.templates.v1.CredentialTemplates/Delete",
        request,
        metadata || {},
        this.methodInfoDelete,
        callback
      );
    }
    return this.client_.unaryCall(
      this.hostname_ +
        "/services.verifiablecredentials.templates.v1.CredentialTemplates/Delete",
      request,
      metadata || {},
      this.methodInfoDelete
    );
  }
}
