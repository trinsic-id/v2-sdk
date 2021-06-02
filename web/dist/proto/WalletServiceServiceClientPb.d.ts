/**
 * @fileoverview gRPC-Web generated client stub for trinsic.services
 * @enhanceable
 * @public
 */
import * as grpcWeb from 'grpc-web';
import * as pbmse_pbmse_pb from './pbmse/pbmse_pb';
import * as WalletService_pb from './WalletService_pb';
export declare class WalletClient {
    client_: grpcWeb.AbstractClientBase;
    hostname_: string;
    credentials_: null | {
        [index: string]: string;
    };
    options_: null | {
        [index: string]: any;
    };
    constructor(hostname: string, credentials?: null | {
        [index: string]: string;
    }, options?: null | {
        [index: string]: any;
    });
    methodInfoGetProviderConfiguration: grpcWeb.AbstractClientBase.MethodInfo<WalletService_pb.GetProviderConfigurationRequest, WalletService_pb.GetProviderConfigurationResponse>;
    getProviderConfiguration(request: WalletService_pb.GetProviderConfigurationRequest, metadata: grpcWeb.Metadata | null): Promise<WalletService_pb.GetProviderConfigurationResponse>;
    getProviderConfiguration(request: WalletService_pb.GetProviderConfigurationRequest, metadata: grpcWeb.Metadata | null, callback: (err: grpcWeb.Error, response: WalletService_pb.GetProviderConfigurationResponse) => void): grpcWeb.ClientReadableStream<WalletService_pb.GetProviderConfigurationResponse>;
    methodInfoConnectExternalIdentity: grpcWeb.AbstractClientBase.MethodInfo<WalletService_pb.ConnectRequest, WalletService_pb.ConnectResponse>;
    connectExternalIdentity(request: WalletService_pb.ConnectRequest, metadata: grpcWeb.Metadata | null): Promise<WalletService_pb.ConnectResponse>;
    connectExternalIdentity(request: WalletService_pb.ConnectRequest, metadata: grpcWeb.Metadata | null, callback: (err: grpcWeb.Error, response: WalletService_pb.ConnectResponse) => void): grpcWeb.ClientReadableStream<WalletService_pb.ConnectResponse>;
    methodInfoCreateWallet: grpcWeb.AbstractClientBase.MethodInfo<WalletService_pb.CreateWalletRequest, WalletService_pb.CreateWalletResponse>;
    createWallet(request: WalletService_pb.CreateWalletRequest, metadata: grpcWeb.Metadata | null): Promise<WalletService_pb.CreateWalletResponse>;
    createWallet(request: WalletService_pb.CreateWalletRequest, metadata: grpcWeb.Metadata | null, callback: (err: grpcWeb.Error, response: WalletService_pb.CreateWalletResponse) => void): grpcWeb.ClientReadableStream<WalletService_pb.CreateWalletResponse>;
    methodInfoCreateWalletWithWorkflow: grpcWeb.AbstractClientBase.MethodInfo<WalletService_pb.CreateWalletRequest, WalletService_pb.CreateWalletResponse>;
    createWalletWithWorkflow(request: WalletService_pb.CreateWalletRequest, metadata: grpcWeb.Metadata | null): Promise<WalletService_pb.CreateWalletResponse>;
    createWalletWithWorkflow(request: WalletService_pb.CreateWalletRequest, metadata: grpcWeb.Metadata | null, callback: (err: grpcWeb.Error, response: WalletService_pb.CreateWalletResponse) => void): grpcWeb.ClientReadableStream<WalletService_pb.CreateWalletResponse>;
    methodInfoCreateWalletEncrypted: grpcWeb.AbstractClientBase.MethodInfo<pbmse_pbmse_pb.EncryptedMessage, pbmse_pbmse_pb.EncryptedMessage>;
    createWalletEncrypted(request: pbmse_pbmse_pb.EncryptedMessage, metadata: grpcWeb.Metadata | null): Promise<pbmse_pbmse_pb.EncryptedMessage>;
    createWalletEncrypted(request: pbmse_pbmse_pb.EncryptedMessage, metadata: grpcWeb.Metadata | null, callback: (err: grpcWeb.Error, response: pbmse_pbmse_pb.EncryptedMessage) => void): grpcWeb.ClientReadableStream<pbmse_pbmse_pb.EncryptedMessage>;
    methodInfoSearch: grpcWeb.AbstractClientBase.MethodInfo<WalletService_pb.SearchRequest, WalletService_pb.SearchResponse>;
    search(request: WalletService_pb.SearchRequest, metadata: grpcWeb.Metadata | null): Promise<WalletService_pb.SearchResponse>;
    search(request: WalletService_pb.SearchRequest, metadata: grpcWeb.Metadata | null, callback: (err: grpcWeb.Error, response: WalletService_pb.SearchResponse) => void): grpcWeb.ClientReadableStream<WalletService_pb.SearchResponse>;
    methodInfoInsertItem: grpcWeb.AbstractClientBase.MethodInfo<WalletService_pb.InsertItemRequest, WalletService_pb.InsertItemResponse>;
    insertItem(request: WalletService_pb.InsertItemRequest, metadata: grpcWeb.Metadata | null): Promise<WalletService_pb.InsertItemResponse>;
    insertItem(request: WalletService_pb.InsertItemRequest, metadata: grpcWeb.Metadata | null, callback: (err: grpcWeb.Error, response: WalletService_pb.InsertItemResponse) => void): grpcWeb.ClientReadableStream<WalletService_pb.InsertItemResponse>;
    methodInfoGrantAccess: grpcWeb.AbstractClientBase.MethodInfo<WalletService_pb.GrantAccessRequest, WalletService_pb.GrantAccessResponse>;
    grantAccess(request: WalletService_pb.GrantAccessRequest, metadata: grpcWeb.Metadata | null): Promise<WalletService_pb.GrantAccessResponse>;
    grantAccess(request: WalletService_pb.GrantAccessRequest, metadata: grpcWeb.Metadata | null, callback: (err: grpcWeb.Error, response: WalletService_pb.GrantAccessResponse) => void): grpcWeb.ClientReadableStream<WalletService_pb.GrantAccessResponse>;
    methodInfoRevokeAccess: grpcWeb.AbstractClientBase.MethodInfo<WalletService_pb.RevokeAccessRequest, WalletService_pb.RevokeAccessResponse>;
    revokeAccess(request: WalletService_pb.RevokeAccessRequest, metadata: grpcWeb.Metadata | null): Promise<WalletService_pb.RevokeAccessResponse>;
    revokeAccess(request: WalletService_pb.RevokeAccessRequest, metadata: grpcWeb.Metadata | null, callback: (err: grpcWeb.Error, response: WalletService_pb.RevokeAccessResponse) => void): grpcWeb.ClientReadableStream<WalletService_pb.RevokeAccessResponse>;
}
