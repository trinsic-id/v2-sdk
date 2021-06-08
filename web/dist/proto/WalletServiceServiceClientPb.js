"use strict";
/**
 * @fileoverview gRPC-Web generated client stub for trinsic.services
 * @enhanceable
 * @public
 */
var __createBinding = (this && this.__createBinding) || (Object.create ? (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    Object.defineProperty(o, k2, { enumerable: true, get: function() { return m[k]; } });
}) : (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    o[k2] = m[k];
}));
var __setModuleDefault = (this && this.__setModuleDefault) || (Object.create ? (function(o, v) {
    Object.defineProperty(o, "default", { enumerable: true, value: v });
}) : function(o, v) {
    o["default"] = v;
});
var __importStar = (this && this.__importStar) || function (mod) {
    if (mod && mod.__esModule) return mod;
    var result = {};
    if (mod != null) for (var k in mod) if (k !== "default" && Object.prototype.hasOwnProperty.call(mod, k)) __createBinding(result, mod, k);
    __setModuleDefault(result, mod);
    return result;
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.WalletClient = void 0;
// GENERATED CODE -- DO NOT EDIT!
/* eslint-disable */
// @ts-nocheck
const grpcWeb = __importStar(require("grpc-web"));
const pbmse_pbmse_pb = __importStar(require("./pbmse/pbmse_pb"));
const WalletService_pb = __importStar(require("./WalletService_pb"));
class WalletClient {
    client_;
    hostname_;
    credentials_;
    options_;
    constructor(hostname, credentials, options) {
        if (!options)
            options = {};
        if (!credentials)
            credentials = {};
        options['format'] = 'text';
        this.client_ = new grpcWeb.GrpcWebClientBase(options);
        this.hostname_ = hostname;
        this.credentials_ = credentials;
        this.options_ = options;
    }
    methodInfoGetProviderConfiguration = new grpcWeb.AbstractClientBase.MethodInfo(WalletService_pb.GetProviderConfigurationResponse, (request) => {
        return request.serializeBinary();
    }, WalletService_pb.GetProviderConfigurationResponse.deserializeBinary);
    getProviderConfiguration(request, metadata, callback) {
        if (callback !== undefined) {
            return this.client_.rpcCall(this.hostname_ +
                '/trinsic.services.Wallet/GetProviderConfiguration', request, metadata || {}, this.methodInfoGetProviderConfiguration, callback);
        }
        return this.client_.unaryCall(this.hostname_ +
            '/trinsic.services.Wallet/GetProviderConfiguration', request, metadata || {}, this.methodInfoGetProviderConfiguration);
    }
    methodInfoConnectExternalIdentity = new grpcWeb.AbstractClientBase.MethodInfo(WalletService_pb.ConnectResponse, (request) => {
        return request.serializeBinary();
    }, WalletService_pb.ConnectResponse.deserializeBinary);
    connectExternalIdentity(request, metadata, callback) {
        if (callback !== undefined) {
            return this.client_.rpcCall(this.hostname_ +
                '/trinsic.services.Wallet/ConnectExternalIdentity', request, metadata || {}, this.methodInfoConnectExternalIdentity, callback);
        }
        return this.client_.unaryCall(this.hostname_ +
            '/trinsic.services.Wallet/ConnectExternalIdentity', request, metadata || {}, this.methodInfoConnectExternalIdentity);
    }
    methodInfoCreateWallet = new grpcWeb.AbstractClientBase.MethodInfo(WalletService_pb.CreateWalletResponse, (request) => {
        return request.serializeBinary();
    }, WalletService_pb.CreateWalletResponse.deserializeBinary);
    createWallet(request, metadata, callback) {
        if (callback !== undefined) {
            return this.client_.rpcCall(this.hostname_ +
                '/trinsic.services.Wallet/CreateWallet', request, metadata || {}, this.methodInfoCreateWallet, callback);
        }
        return this.client_.unaryCall(this.hostname_ +
            '/trinsic.services.Wallet/CreateWallet', request, metadata || {}, this.methodInfoCreateWallet);
    }
    methodInfoCreateWalletWithWorkflow = new grpcWeb.AbstractClientBase.MethodInfo(WalletService_pb.CreateWalletResponse, (request) => {
        return request.serializeBinary();
    }, WalletService_pb.CreateWalletResponse.deserializeBinary);
    createWalletWithWorkflow(request, metadata, callback) {
        if (callback !== undefined) {
            return this.client_.rpcCall(this.hostname_ +
                '/trinsic.services.Wallet/CreateWalletWithWorkflow', request, metadata || {}, this.methodInfoCreateWalletWithWorkflow, callback);
        }
        return this.client_.unaryCall(this.hostname_ +
            '/trinsic.services.Wallet/CreateWalletWithWorkflow', request, metadata || {}, this.methodInfoCreateWalletWithWorkflow);
    }
    methodInfoCreateWalletEncrypted = new grpcWeb.AbstractClientBase.MethodInfo(pbmse_pbmse_pb.EncryptedMessage, (request) => {
        return request.serializeBinary();
    }, pbmse_pbmse_pb.EncryptedMessage.deserializeBinary);
    createWalletEncrypted(request, metadata, callback) {
        if (callback !== undefined) {
            return this.client_.rpcCall(this.hostname_ +
                '/trinsic.services.Wallet/CreateWalletEncrypted', request, metadata || {}, this.methodInfoCreateWalletEncrypted, callback);
        }
        return this.client_.unaryCall(this.hostname_ +
            '/trinsic.services.Wallet/CreateWalletEncrypted', request, metadata || {}, this.methodInfoCreateWalletEncrypted);
    }
    methodInfoSearch = new grpcWeb.AbstractClientBase.MethodInfo(WalletService_pb.SearchResponse, (request) => {
        return request.serializeBinary();
    }, WalletService_pb.SearchResponse.deserializeBinary);
    search(request, metadata, callback) {
        if (callback !== undefined) {
            return this.client_.rpcCall(this.hostname_ +
                '/trinsic.services.Wallet/Search', request, metadata || {}, this.methodInfoSearch, callback);
        }
        return this.client_.unaryCall(this.hostname_ +
            '/trinsic.services.Wallet/Search', request, metadata || {}, this.methodInfoSearch);
    }
    methodInfoInsertItem = new grpcWeb.AbstractClientBase.MethodInfo(WalletService_pb.InsertItemResponse, (request) => {
        return request.serializeBinary();
    }, WalletService_pb.InsertItemResponse.deserializeBinary);
    insertItem(request, metadata, callback) {
        if (callback !== undefined) {
            return this.client_.rpcCall(this.hostname_ +
                '/trinsic.services.Wallet/InsertItem', request, metadata || {}, this.methodInfoInsertItem, callback);
        }
        return this.client_.unaryCall(this.hostname_ +
            '/trinsic.services.Wallet/InsertItem', request, metadata || {}, this.methodInfoInsertItem);
    }
    methodInfoGrantAccess = new grpcWeb.AbstractClientBase.MethodInfo(WalletService_pb.GrantAccessResponse, (request) => {
        return request.serializeBinary();
    }, WalletService_pb.GrantAccessResponse.deserializeBinary);
    grantAccess(request, metadata, callback) {
        if (callback !== undefined) {
            return this.client_.rpcCall(this.hostname_ +
                '/trinsic.services.Wallet/GrantAccess', request, metadata || {}, this.methodInfoGrantAccess, callback);
        }
        return this.client_.unaryCall(this.hostname_ +
            '/trinsic.services.Wallet/GrantAccess', request, metadata || {}, this.methodInfoGrantAccess);
    }
    methodInfoRevokeAccess = new grpcWeb.AbstractClientBase.MethodInfo(WalletService_pb.RevokeAccessResponse, (request) => {
        return request.serializeBinary();
    }, WalletService_pb.RevokeAccessResponse.deserializeBinary);
    revokeAccess(request, metadata, callback) {
        if (callback !== undefined) {
            return this.client_.rpcCall(this.hostname_ +
                '/trinsic.services.Wallet/RevokeAccess', request, metadata || {}, this.methodInfoRevokeAccess, callback);
        }
        return this.client_.unaryCall(this.hostname_ +
            '/trinsic.services.Wallet/RevokeAccess', request, metadata || {}, this.methodInfoRevokeAccess);
    }
}
exports.WalletClient = WalletClient;
//# sourceMappingURL=WalletServiceServiceClientPb.js.map