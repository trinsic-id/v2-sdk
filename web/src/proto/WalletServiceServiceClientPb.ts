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
import * as WalletService_pb from './WalletService_pb';


export class WalletClient {
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

  methodInfoGetProviderConfiguration = new grpcWeb.AbstractClientBase.MethodInfo(
    WalletService_pb.GetProviderConfigurationResponse,
    (request: WalletService_pb.GetProviderConfigurationRequest) => {
      return request.serializeBinary();
    },
    WalletService_pb.GetProviderConfigurationResponse.deserializeBinary
  );

  getProviderConfiguration(
    request: WalletService_pb.GetProviderConfigurationRequest,
    metadata: grpcWeb.Metadata | null): Promise<WalletService_pb.GetProviderConfigurationResponse>;

  getProviderConfiguration(
    request: WalletService_pb.GetProviderConfigurationRequest,
    metadata: grpcWeb.Metadata | null,
    callback: (err: grpcWeb.Error,
               response: WalletService_pb.GetProviderConfigurationResponse) => void): grpcWeb.ClientReadableStream<WalletService_pb.GetProviderConfigurationResponse>;

  getProviderConfiguration(
    request: WalletService_pb.GetProviderConfigurationRequest,
    metadata: grpcWeb.Metadata | null,
    callback?: (err: grpcWeb.Error,
               response: WalletService_pb.GetProviderConfigurationResponse) => void) {
    if (callback !== undefined) {
      return this.client_.rpcCall(
        this.hostname_ +
          '/trinsic.services.Wallet/GetProviderConfiguration',
        request,
        metadata || {},
        this.methodInfoGetProviderConfiguration,
        callback);
    }
    return this.client_.unaryCall(
    this.hostname_ +
      '/trinsic.services.Wallet/GetProviderConfiguration',
    request,
    metadata || {},
    this.methodInfoGetProviderConfiguration);
  }

  methodInfoConnectExternalIdentity = new grpcWeb.AbstractClientBase.MethodInfo(
    WalletService_pb.ConnectResponse,
    (request: WalletService_pb.ConnectRequest) => {
      return request.serializeBinary();
    },
    WalletService_pb.ConnectResponse.deserializeBinary
  );

  connectExternalIdentity(
    request: WalletService_pb.ConnectRequest,
    metadata: grpcWeb.Metadata | null): Promise<WalletService_pb.ConnectResponse>;

  connectExternalIdentity(
    request: WalletService_pb.ConnectRequest,
    metadata: grpcWeb.Metadata | null,
    callback: (err: grpcWeb.Error,
               response: WalletService_pb.ConnectResponse) => void): grpcWeb.ClientReadableStream<WalletService_pb.ConnectResponse>;

  connectExternalIdentity(
    request: WalletService_pb.ConnectRequest,
    metadata: grpcWeb.Metadata | null,
    callback?: (err: grpcWeb.Error,
               response: WalletService_pb.ConnectResponse) => void) {
    if (callback !== undefined) {
      return this.client_.rpcCall(
        this.hostname_ +
          '/trinsic.services.Wallet/ConnectExternalIdentity',
        request,
        metadata || {},
        this.methodInfoConnectExternalIdentity,
        callback);
    }
    return this.client_.unaryCall(
    this.hostname_ +
      '/trinsic.services.Wallet/ConnectExternalIdentity',
    request,
    metadata || {},
    this.methodInfoConnectExternalIdentity);
  }

  methodInfoCreateWallet = new grpcWeb.AbstractClientBase.MethodInfo(
    WalletService_pb.CreateWalletResponse,
    (request: WalletService_pb.CreateWalletRequest) => {
      return request.serializeBinary();
    },
    WalletService_pb.CreateWalletResponse.deserializeBinary
  );

  createWallet(
    request: WalletService_pb.CreateWalletRequest,
    metadata: grpcWeb.Metadata | null): Promise<WalletService_pb.CreateWalletResponse>;

  createWallet(
    request: WalletService_pb.CreateWalletRequest,
    metadata: grpcWeb.Metadata | null,
    callback: (err: grpcWeb.Error,
               response: WalletService_pb.CreateWalletResponse) => void): grpcWeb.ClientReadableStream<WalletService_pb.CreateWalletResponse>;

  createWallet(
    request: WalletService_pb.CreateWalletRequest,
    metadata: grpcWeb.Metadata | null,
    callback?: (err: grpcWeb.Error,
               response: WalletService_pb.CreateWalletResponse) => void) {
    if (callback !== undefined) {
      return this.client_.rpcCall(
        this.hostname_ +
          '/trinsic.services.Wallet/CreateWallet',
        request,
        metadata || {},
        this.methodInfoCreateWallet,
        callback);
    }
    return this.client_.unaryCall(
    this.hostname_ +
      '/trinsic.services.Wallet/CreateWallet',
    request,
    metadata || {},
    this.methodInfoCreateWallet);
  }

  methodInfoCreateWalletWithWorkflow = new grpcWeb.AbstractClientBase.MethodInfo(
    WalletService_pb.CreateWalletResponse,
    (request: WalletService_pb.CreateWalletRequest) => {
      return request.serializeBinary();
    },
    WalletService_pb.CreateWalletResponse.deserializeBinary
  );

  createWalletWithWorkflow(
    request: WalletService_pb.CreateWalletRequest,
    metadata: grpcWeb.Metadata | null): Promise<WalletService_pb.CreateWalletResponse>;

  createWalletWithWorkflow(
    request: WalletService_pb.CreateWalletRequest,
    metadata: grpcWeb.Metadata | null,
    callback: (err: grpcWeb.Error,
               response: WalletService_pb.CreateWalletResponse) => void): grpcWeb.ClientReadableStream<WalletService_pb.CreateWalletResponse>;

  createWalletWithWorkflow(
    request: WalletService_pb.CreateWalletRequest,
    metadata: grpcWeb.Metadata | null,
    callback?: (err: grpcWeb.Error,
               response: WalletService_pb.CreateWalletResponse) => void) {
    if (callback !== undefined) {
      return this.client_.rpcCall(
        this.hostname_ +
          '/trinsic.services.Wallet/CreateWalletWithWorkflow',
        request,
        metadata || {},
        this.methodInfoCreateWalletWithWorkflow,
        callback);
    }
    return this.client_.unaryCall(
    this.hostname_ +
      '/trinsic.services.Wallet/CreateWalletWithWorkflow',
    request,
    metadata || {},
    this.methodInfoCreateWalletWithWorkflow);
  }

  methodInfoCreateWalletEncrypted = new grpcWeb.AbstractClientBase.MethodInfo(
    pbmse_pbmse_pb.EncryptedMessage,
    (request: pbmse_pbmse_pb.EncryptedMessage) => {
      return request.serializeBinary();
    },
    pbmse_pbmse_pb.EncryptedMessage.deserializeBinary
  );

  createWalletEncrypted(
    request: pbmse_pbmse_pb.EncryptedMessage,
    metadata: grpcWeb.Metadata | null): Promise<pbmse_pbmse_pb.EncryptedMessage>;

  createWalletEncrypted(
    request: pbmse_pbmse_pb.EncryptedMessage,
    metadata: grpcWeb.Metadata | null,
    callback: (err: grpcWeb.Error,
               response: pbmse_pbmse_pb.EncryptedMessage) => void): grpcWeb.ClientReadableStream<pbmse_pbmse_pb.EncryptedMessage>;

  createWalletEncrypted(
    request: pbmse_pbmse_pb.EncryptedMessage,
    metadata: grpcWeb.Metadata | null,
    callback?: (err: grpcWeb.Error,
               response: pbmse_pbmse_pb.EncryptedMessage) => void) {
    if (callback !== undefined) {
      return this.client_.rpcCall(
        this.hostname_ +
          '/trinsic.services.Wallet/CreateWalletEncrypted',
        request,
        metadata || {},
        this.methodInfoCreateWalletEncrypted,
        callback);
    }
    return this.client_.unaryCall(
    this.hostname_ +
      '/trinsic.services.Wallet/CreateWalletEncrypted',
    request,
    metadata || {},
    this.methodInfoCreateWalletEncrypted);
  }

  methodInfoSearch = new grpcWeb.AbstractClientBase.MethodInfo(
    WalletService_pb.SearchResponse,
    (request: WalletService_pb.SearchRequest) => {
      return request.serializeBinary();
    },
    WalletService_pb.SearchResponse.deserializeBinary
  );

  search(
    request: WalletService_pb.SearchRequest,
    metadata: grpcWeb.Metadata | null): Promise<WalletService_pb.SearchResponse>;

  search(
    request: WalletService_pb.SearchRequest,
    metadata: grpcWeb.Metadata | null,
    callback: (err: grpcWeb.Error,
               response: WalletService_pb.SearchResponse) => void): grpcWeb.ClientReadableStream<WalletService_pb.SearchResponse>;

  search(
    request: WalletService_pb.SearchRequest,
    metadata: grpcWeb.Metadata | null,
    callback?: (err: grpcWeb.Error,
               response: WalletService_pb.SearchResponse) => void) {
    if (callback !== undefined) {
      return this.client_.rpcCall(
        this.hostname_ +
          '/trinsic.services.Wallet/Search',
        request,
        metadata || {},
        this.methodInfoSearch,
        callback);
    }
    return this.client_.unaryCall(
    this.hostname_ +
      '/trinsic.services.Wallet/Search',
    request,
    metadata || {},
    this.methodInfoSearch);
  }

  methodInfoInsertItem = new grpcWeb.AbstractClientBase.MethodInfo(
    WalletService_pb.InsertItemResponse,
    (request: WalletService_pb.InsertItemRequest) => {
      return request.serializeBinary();
    },
    WalletService_pb.InsertItemResponse.deserializeBinary
  );

  insertItem(
    request: WalletService_pb.InsertItemRequest,
    metadata: grpcWeb.Metadata | null): Promise<WalletService_pb.InsertItemResponse>;

  insertItem(
    request: WalletService_pb.InsertItemRequest,
    metadata: grpcWeb.Metadata | null,
    callback: (err: grpcWeb.Error,
               response: WalletService_pb.InsertItemResponse) => void): grpcWeb.ClientReadableStream<WalletService_pb.InsertItemResponse>;

  insertItem(
    request: WalletService_pb.InsertItemRequest,
    metadata: grpcWeb.Metadata | null,
    callback?: (err: grpcWeb.Error,
               response: WalletService_pb.InsertItemResponse) => void) {
    if (callback !== undefined) {
      return this.client_.rpcCall(
        this.hostname_ +
          '/trinsic.services.Wallet/InsertItem',
        request,
        metadata || {},
        this.methodInfoInsertItem,
        callback);
    }
    return this.client_.unaryCall(
    this.hostname_ +
      '/trinsic.services.Wallet/InsertItem',
    request,
    metadata || {},
    this.methodInfoInsertItem);
  }

  methodInfoGrantAccess = new grpcWeb.AbstractClientBase.MethodInfo(
    WalletService_pb.GrantAccessResponse,
    (request: WalletService_pb.GrantAccessRequest) => {
      return request.serializeBinary();
    },
    WalletService_pb.GrantAccessResponse.deserializeBinary
  );

  grantAccess(
    request: WalletService_pb.GrantAccessRequest,
    metadata: grpcWeb.Metadata | null): Promise<WalletService_pb.GrantAccessResponse>;

  grantAccess(
    request: WalletService_pb.GrantAccessRequest,
    metadata: grpcWeb.Metadata | null,
    callback: (err: grpcWeb.Error,
               response: WalletService_pb.GrantAccessResponse) => void): grpcWeb.ClientReadableStream<WalletService_pb.GrantAccessResponse>;

  grantAccess(
    request: WalletService_pb.GrantAccessRequest,
    metadata: grpcWeb.Metadata | null,
    callback?: (err: grpcWeb.Error,
               response: WalletService_pb.GrantAccessResponse) => void) {
    if (callback !== undefined) {
      return this.client_.rpcCall(
        this.hostname_ +
          '/trinsic.services.Wallet/GrantAccess',
        request,
        metadata || {},
        this.methodInfoGrantAccess,
        callback);
    }
    return this.client_.unaryCall(
    this.hostname_ +
      '/trinsic.services.Wallet/GrantAccess',
    request,
    metadata || {},
    this.methodInfoGrantAccess);
  }

  methodInfoRevokeAccess = new grpcWeb.AbstractClientBase.MethodInfo(
    WalletService_pb.RevokeAccessResponse,
    (request: WalletService_pb.RevokeAccessRequest) => {
      return request.serializeBinary();
    },
    WalletService_pb.RevokeAccessResponse.deserializeBinary
  );

  revokeAccess(
    request: WalletService_pb.RevokeAccessRequest,
    metadata: grpcWeb.Metadata | null): Promise<WalletService_pb.RevokeAccessResponse>;

  revokeAccess(
    request: WalletService_pb.RevokeAccessRequest,
    metadata: grpcWeb.Metadata | null,
    callback: (err: grpcWeb.Error,
               response: WalletService_pb.RevokeAccessResponse) => void): grpcWeb.ClientReadableStream<WalletService_pb.RevokeAccessResponse>;

  revokeAccess(
    request: WalletService_pb.RevokeAccessRequest,
    metadata: grpcWeb.Metadata | null,
    callback?: (err: grpcWeb.Error,
               response: WalletService_pb.RevokeAccessResponse) => void) {
    if (callback !== undefined) {
      return this.client_.rpcCall(
        this.hostname_ +
          '/trinsic.services.Wallet/RevokeAccess',
        request,
        metadata || {},
        this.methodInfoRevokeAccess,
        callback);
    }
    return this.client_.unaryCall(
    this.hostname_ +
      '/trinsic.services.Wallet/RevokeAccess',
    request,
    metadata || {},
    this.methodInfoRevokeAccess);
  }

}

