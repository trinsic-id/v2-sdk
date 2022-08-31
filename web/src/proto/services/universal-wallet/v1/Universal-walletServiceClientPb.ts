/**
 * @fileoverview gRPC-Web generated client stub for services.universalwallet.v1
 * @enhanceable
 * @public
 */

// GENERATED CODE -- DO NOT EDIT!

/* eslint-disable */
// @ts-nocheck

import * as grpcWeb from "grpc-web";

import * as services_universal$wallet_v1_universal$wallet_pb from "../../../services/universal-wallet/v1/universal-wallet_pb";

export class UniversalWalletClient {
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

  methodInfoGetItem = new grpcWeb.AbstractClientBase.MethodInfo(
    services_universal$wallet_v1_universal$wallet_pb.GetItemResponse,
    (
      request: services_universal$wallet_v1_universal$wallet_pb.GetItemRequest
    ) => {
      return request.serializeBinary();
    },
    services_universal$wallet_v1_universal$wallet_pb.GetItemResponse.deserializeBinary
  );

  getItem(
    request: services_universal$wallet_v1_universal$wallet_pb.GetItemRequest,
    metadata: grpcWeb.Metadata | null
  ): Promise<services_universal$wallet_v1_universal$wallet_pb.GetItemResponse>;

  getItem(
    request: services_universal$wallet_v1_universal$wallet_pb.GetItemRequest,
    metadata: grpcWeb.Metadata | null,
    callback: (
      err: grpcWeb.Error,
      response: services_universal$wallet_v1_universal$wallet_pb.GetItemResponse
    ) => void
  ): grpcWeb.ClientReadableStream<services_universal$wallet_v1_universal$wallet_pb.GetItemResponse>;

  getItem(
    request: services_universal$wallet_v1_universal$wallet_pb.GetItemRequest,
    metadata: grpcWeb.Metadata | null,
    callback?: (
      err: grpcWeb.Error,
      response: services_universal$wallet_v1_universal$wallet_pb.GetItemResponse
    ) => void
  ) {
    if (callback !== undefined) {
      return this.client_.rpcCall(
        this.hostname_ + "/services.universalwallet.v1.UniversalWallet/GetItem",
        request,
        metadata || {},
        this.methodInfoGetItem,
        callback
      );
    }
    return this.client_.unaryCall(
      this.hostname_ + "/services.universalwallet.v1.UniversalWallet/GetItem",
      request,
      metadata || {},
      this.methodInfoGetItem
    );
  }

  methodInfoSearch = new grpcWeb.AbstractClientBase.MethodInfo(
    services_universal$wallet_v1_universal$wallet_pb.SearchResponse,
    (
      request: services_universal$wallet_v1_universal$wallet_pb.SearchRequest
    ) => {
      return request.serializeBinary();
    },
    services_universal$wallet_v1_universal$wallet_pb.SearchResponse.deserializeBinary
  );

  search(
    request: services_universal$wallet_v1_universal$wallet_pb.SearchRequest,
    metadata: grpcWeb.Metadata | null
  ): Promise<services_universal$wallet_v1_universal$wallet_pb.SearchResponse>;

  search(
    request: services_universal$wallet_v1_universal$wallet_pb.SearchRequest,
    metadata: grpcWeb.Metadata | null,
    callback: (
      err: grpcWeb.Error,
      response: services_universal$wallet_v1_universal$wallet_pb.SearchResponse
    ) => void
  ): grpcWeb.ClientReadableStream<services_universal$wallet_v1_universal$wallet_pb.SearchResponse>;

  search(
    request: services_universal$wallet_v1_universal$wallet_pb.SearchRequest,
    metadata: grpcWeb.Metadata | null,
    callback?: (
      err: grpcWeb.Error,
      response: services_universal$wallet_v1_universal$wallet_pb.SearchResponse
    ) => void
  ) {
    if (callback !== undefined) {
      return this.client_.rpcCall(
        this.hostname_ + "/services.universalwallet.v1.UniversalWallet/Search",
        request,
        metadata || {},
        this.methodInfoSearch,
        callback
      );
    }
    return this.client_.unaryCall(
      this.hostname_ + "/services.universalwallet.v1.UniversalWallet/Search",
      request,
      metadata || {},
      this.methodInfoSearch
    );
  }

  methodInfoInsertItem = new grpcWeb.AbstractClientBase.MethodInfo(
    services_universal$wallet_v1_universal$wallet_pb.InsertItemResponse,
    (
      request: services_universal$wallet_v1_universal$wallet_pb.InsertItemRequest
    ) => {
      return request.serializeBinary();
    },
    services_universal$wallet_v1_universal$wallet_pb.InsertItemResponse.deserializeBinary
  );

  insertItem(
    request: services_universal$wallet_v1_universal$wallet_pb.InsertItemRequest,
    metadata: grpcWeb.Metadata | null
  ): Promise<services_universal$wallet_v1_universal$wallet_pb.InsertItemResponse>;

  insertItem(
    request: services_universal$wallet_v1_universal$wallet_pb.InsertItemRequest,
    metadata: grpcWeb.Metadata | null,
    callback: (
      err: grpcWeb.Error,
      response: services_universal$wallet_v1_universal$wallet_pb.InsertItemResponse
    ) => void
  ): grpcWeb.ClientReadableStream<services_universal$wallet_v1_universal$wallet_pb.InsertItemResponse>;

  insertItem(
    request: services_universal$wallet_v1_universal$wallet_pb.InsertItemRequest,
    metadata: grpcWeb.Metadata | null,
    callback?: (
      err: grpcWeb.Error,
      response: services_universal$wallet_v1_universal$wallet_pb.InsertItemResponse
    ) => void
  ) {
    if (callback !== undefined) {
      return this.client_.rpcCall(
        this.hostname_ +
          "/services.universalwallet.v1.UniversalWallet/InsertItem",
        request,
        metadata || {},
        this.methodInfoInsertItem,
        callback
      );
    }
    return this.client_.unaryCall(
      this.hostname_ +
        "/services.universalwallet.v1.UniversalWallet/InsertItem",
      request,
      metadata || {},
      this.methodInfoInsertItem
    );
  }

  methodInfoUpdateItem = new grpcWeb.AbstractClientBase.MethodInfo(
    services_universal$wallet_v1_universal$wallet_pb.UpdateItemResponse,
    (
      request: services_universal$wallet_v1_universal$wallet_pb.UpdateItemRequest
    ) => {
      return request.serializeBinary();
    },
    services_universal$wallet_v1_universal$wallet_pb.UpdateItemResponse.deserializeBinary
  );

  updateItem(
    request: services_universal$wallet_v1_universal$wallet_pb.UpdateItemRequest,
    metadata: grpcWeb.Metadata | null
  ): Promise<services_universal$wallet_v1_universal$wallet_pb.UpdateItemResponse>;

  updateItem(
    request: services_universal$wallet_v1_universal$wallet_pb.UpdateItemRequest,
    metadata: grpcWeb.Metadata | null,
    callback: (
      err: grpcWeb.Error,
      response: services_universal$wallet_v1_universal$wallet_pb.UpdateItemResponse
    ) => void
  ): grpcWeb.ClientReadableStream<services_universal$wallet_v1_universal$wallet_pb.UpdateItemResponse>;

  updateItem(
    request: services_universal$wallet_v1_universal$wallet_pb.UpdateItemRequest,
    metadata: grpcWeb.Metadata | null,
    callback?: (
      err: grpcWeb.Error,
      response: services_universal$wallet_v1_universal$wallet_pb.UpdateItemResponse
    ) => void
  ) {
    if (callback !== undefined) {
      return this.client_.rpcCall(
        this.hostname_ +
          "/services.universalwallet.v1.UniversalWallet/UpdateItem",
        request,
        metadata || {},
        this.methodInfoUpdateItem,
        callback
      );
    }
    return this.client_.unaryCall(
      this.hostname_ +
        "/services.universalwallet.v1.UniversalWallet/UpdateItem",
      request,
      metadata || {},
      this.methodInfoUpdateItem
    );
  }

  methodInfoDeleteItem = new grpcWeb.AbstractClientBase.MethodInfo(
    services_universal$wallet_v1_universal$wallet_pb.DeleteItemResponse,
    (
      request: services_universal$wallet_v1_universal$wallet_pb.DeleteItemRequest
    ) => {
      return request.serializeBinary();
    },
    services_universal$wallet_v1_universal$wallet_pb.DeleteItemResponse.deserializeBinary
  );

  deleteItem(
    request: services_universal$wallet_v1_universal$wallet_pb.DeleteItemRequest,
    metadata: grpcWeb.Metadata | null
  ): Promise<services_universal$wallet_v1_universal$wallet_pb.DeleteItemResponse>;

  deleteItem(
    request: services_universal$wallet_v1_universal$wallet_pb.DeleteItemRequest,
    metadata: grpcWeb.Metadata | null,
    callback: (
      err: grpcWeb.Error,
      response: services_universal$wallet_v1_universal$wallet_pb.DeleteItemResponse
    ) => void
  ): grpcWeb.ClientReadableStream<services_universal$wallet_v1_universal$wallet_pb.DeleteItemResponse>;

  deleteItem(
    request: services_universal$wallet_v1_universal$wallet_pb.DeleteItemRequest,
    metadata: grpcWeb.Metadata | null,
    callback?: (
      err: grpcWeb.Error,
      response: services_universal$wallet_v1_universal$wallet_pb.DeleteItemResponse
    ) => void
  ) {
    if (callback !== undefined) {
      return this.client_.rpcCall(
        this.hostname_ +
          "/services.universalwallet.v1.UniversalWallet/DeleteItem",
        request,
        metadata || {},
        this.methodInfoDeleteItem,
        callback
      );
    }
    return this.client_.unaryCall(
      this.hostname_ +
        "/services.universalwallet.v1.UniversalWallet/DeleteItem",
      request,
      metadata || {},
      this.methodInfoDeleteItem
    );
  }
}
