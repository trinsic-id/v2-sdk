// GENERATED CODE -- DO NOT EDIT!

// package: trinsic.services
// file: WalletService.proto

import * as WalletService_pb from "./WalletService_pb";
import * as pbmse_pbmse_pb from "./pbmse/pbmse_pb";
import * as grpc from "grpc";

interface IWalletService extends grpc.ServiceDefinition<grpc.UntypedServiceImplementation> {
  getProviderConfiguration: grpc.MethodDefinition<WalletService_pb.GetProviderConfigurationRequest, WalletService_pb.GetProviderConfigurationResponse>;
  connectExternalIdentity: grpc.MethodDefinition<WalletService_pb.ConnectRequest, WalletService_pb.ConnectResponse>;
  createWallet: grpc.MethodDefinition<WalletService_pb.CreateWalletRequest, WalletService_pb.CreateWalletResponse>;
  createWalletWithWorkflow: grpc.MethodDefinition<WalletService_pb.CreateWalletRequest, WalletService_pb.CreateWalletResponse>;
  createWalletEncrypted: grpc.MethodDefinition<pbmse_pbmse_pb.EncryptedMessage, pbmse_pbmse_pb.EncryptedMessage>;
  search: grpc.MethodDefinition<WalletService_pb.SearchRequest, WalletService_pb.SearchResponse>;
  insertItem: grpc.MethodDefinition<WalletService_pb.InsertItemRequest, WalletService_pb.InsertItemResponse>;
  grantAccess: grpc.MethodDefinition<WalletService_pb.GrantAccessRequest, WalletService_pb.GrantAccessResponse>;
  revokeAccess: grpc.MethodDefinition<WalletService_pb.RevokeAccessRequest, WalletService_pb.RevokeAccessResponse>;
}

export const WalletService: IWalletService;

export interface IWalletServer extends grpc.UntypedServiceImplementation {
  getProviderConfiguration: grpc.handleUnaryCall<WalletService_pb.GetProviderConfigurationRequest, WalletService_pb.GetProviderConfigurationResponse>;
  connectExternalIdentity: grpc.handleUnaryCall<WalletService_pb.ConnectRequest, WalletService_pb.ConnectResponse>;
  createWallet: grpc.handleUnaryCall<WalletService_pb.CreateWalletRequest, WalletService_pb.CreateWalletResponse>;
  createWalletWithWorkflow: grpc.handleUnaryCall<WalletService_pb.CreateWalletRequest, WalletService_pb.CreateWalletResponse>;
  createWalletEncrypted: grpc.handleUnaryCall<pbmse_pbmse_pb.EncryptedMessage, pbmse_pbmse_pb.EncryptedMessage>;
  search: grpc.handleUnaryCall<WalletService_pb.SearchRequest, WalletService_pb.SearchResponse>;
  insertItem: grpc.handleUnaryCall<WalletService_pb.InsertItemRequest, WalletService_pb.InsertItemResponse>;
  grantAccess: grpc.handleUnaryCall<WalletService_pb.GrantAccessRequest, WalletService_pb.GrantAccessResponse>;
  revokeAccess: grpc.handleUnaryCall<WalletService_pb.RevokeAccessRequest, WalletService_pb.RevokeAccessResponse>;
}

export class WalletClient extends grpc.Client {
  constructor(address: string, credentials: grpc.ChannelCredentials, options?: object);
  getProviderConfiguration(argument: WalletService_pb.GetProviderConfigurationRequest, callback: grpc.requestCallback<WalletService_pb.GetProviderConfigurationResponse>): grpc.ClientUnaryCall;
  getProviderConfiguration(argument: WalletService_pb.GetProviderConfigurationRequest, metadataOrOptions: grpc.Metadata | grpc.CallOptions | null, callback: grpc.requestCallback<WalletService_pb.GetProviderConfigurationResponse>): grpc.ClientUnaryCall;
  getProviderConfiguration(argument: WalletService_pb.GetProviderConfigurationRequest, metadata: grpc.Metadata | null, options: grpc.CallOptions | null, callback: grpc.requestCallback<WalletService_pb.GetProviderConfigurationResponse>): grpc.ClientUnaryCall;
  connectExternalIdentity(argument: WalletService_pb.ConnectRequest, callback: grpc.requestCallback<WalletService_pb.ConnectResponse>): grpc.ClientUnaryCall;
  connectExternalIdentity(argument: WalletService_pb.ConnectRequest, metadataOrOptions: grpc.Metadata | grpc.CallOptions | null, callback: grpc.requestCallback<WalletService_pb.ConnectResponse>): grpc.ClientUnaryCall;
  connectExternalIdentity(argument: WalletService_pb.ConnectRequest, metadata: grpc.Metadata | null, options: grpc.CallOptions | null, callback: grpc.requestCallback<WalletService_pb.ConnectResponse>): grpc.ClientUnaryCall;
  createWallet(argument: WalletService_pb.CreateWalletRequest, callback: grpc.requestCallback<WalletService_pb.CreateWalletResponse>): grpc.ClientUnaryCall;
  createWallet(argument: WalletService_pb.CreateWalletRequest, metadataOrOptions: grpc.Metadata | grpc.CallOptions | null, callback: grpc.requestCallback<WalletService_pb.CreateWalletResponse>): grpc.ClientUnaryCall;
  createWallet(argument: WalletService_pb.CreateWalletRequest, metadata: grpc.Metadata | null, options: grpc.CallOptions | null, callback: grpc.requestCallback<WalletService_pb.CreateWalletResponse>): grpc.ClientUnaryCall;
  createWalletWithWorkflow(argument: WalletService_pb.CreateWalletRequest, callback: grpc.requestCallback<WalletService_pb.CreateWalletResponse>): grpc.ClientUnaryCall;
  createWalletWithWorkflow(argument: WalletService_pb.CreateWalletRequest, metadataOrOptions: grpc.Metadata | grpc.CallOptions | null, callback: grpc.requestCallback<WalletService_pb.CreateWalletResponse>): grpc.ClientUnaryCall;
  createWalletWithWorkflow(argument: WalletService_pb.CreateWalletRequest, metadata: grpc.Metadata | null, options: grpc.CallOptions | null, callback: grpc.requestCallback<WalletService_pb.CreateWalletResponse>): grpc.ClientUnaryCall;
  createWalletEncrypted(argument: pbmse_pbmse_pb.EncryptedMessage, callback: grpc.requestCallback<pbmse_pbmse_pb.EncryptedMessage>): grpc.ClientUnaryCall;
  createWalletEncrypted(argument: pbmse_pbmse_pb.EncryptedMessage, metadataOrOptions: grpc.Metadata | grpc.CallOptions | null, callback: grpc.requestCallback<pbmse_pbmse_pb.EncryptedMessage>): grpc.ClientUnaryCall;
  createWalletEncrypted(argument: pbmse_pbmse_pb.EncryptedMessage, metadata: grpc.Metadata | null, options: grpc.CallOptions | null, callback: grpc.requestCallback<pbmse_pbmse_pb.EncryptedMessage>): grpc.ClientUnaryCall;
  search(argument: WalletService_pb.SearchRequest, callback: grpc.requestCallback<WalletService_pb.SearchResponse>): grpc.ClientUnaryCall;
  search(argument: WalletService_pb.SearchRequest, metadataOrOptions: grpc.Metadata | grpc.CallOptions | null, callback: grpc.requestCallback<WalletService_pb.SearchResponse>): grpc.ClientUnaryCall;
  search(argument: WalletService_pb.SearchRequest, metadata: grpc.Metadata | null, options: grpc.CallOptions | null, callback: grpc.requestCallback<WalletService_pb.SearchResponse>): grpc.ClientUnaryCall;
  insertItem(argument: WalletService_pb.InsertItemRequest, callback: grpc.requestCallback<WalletService_pb.InsertItemResponse>): grpc.ClientUnaryCall;
  insertItem(argument: WalletService_pb.InsertItemRequest, metadataOrOptions: grpc.Metadata | grpc.CallOptions | null, callback: grpc.requestCallback<WalletService_pb.InsertItemResponse>): grpc.ClientUnaryCall;
  insertItem(argument: WalletService_pb.InsertItemRequest, metadata: grpc.Metadata | null, options: grpc.CallOptions | null, callback: grpc.requestCallback<WalletService_pb.InsertItemResponse>): grpc.ClientUnaryCall;
  grantAccess(argument: WalletService_pb.GrantAccessRequest, callback: grpc.requestCallback<WalletService_pb.GrantAccessResponse>): grpc.ClientUnaryCall;
  grantAccess(argument: WalletService_pb.GrantAccessRequest, metadataOrOptions: grpc.Metadata | grpc.CallOptions | null, callback: grpc.requestCallback<WalletService_pb.GrantAccessResponse>): grpc.ClientUnaryCall;
  grantAccess(argument: WalletService_pb.GrantAccessRequest, metadata: grpc.Metadata | null, options: grpc.CallOptions | null, callback: grpc.requestCallback<WalletService_pb.GrantAccessResponse>): grpc.ClientUnaryCall;
  revokeAccess(argument: WalletService_pb.RevokeAccessRequest, callback: grpc.requestCallback<WalletService_pb.RevokeAccessResponse>): grpc.ClientUnaryCall;
  revokeAccess(argument: WalletService_pb.RevokeAccessRequest, metadataOrOptions: grpc.Metadata | grpc.CallOptions | null, callback: grpc.requestCallback<WalletService_pb.RevokeAccessResponse>): grpc.ClientUnaryCall;
  revokeAccess(argument: WalletService_pb.RevokeAccessRequest, metadata: grpc.Metadata | null, options: grpc.CallOptions | null, callback: grpc.requestCallback<WalletService_pb.RevokeAccessResponse>): grpc.ClientUnaryCall;
}
