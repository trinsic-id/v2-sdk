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
exports.CredentialClient = void 0;
// GENERATED CODE -- DO NOT EDIT!
/* eslint-disable */
// @ts-nocheck
const grpcWeb = __importStar(require("grpc-web"));
const IssuerService_pb = __importStar(require("./IssuerService_pb"));
class CredentialClient {
    client_;
    hostname_;
    credentials_;
    options_;
    constructor(hostname, credentials, options) {
        if (!options)
            options = {};
        if (!credentials)
            credentials = {};
        options['format'] = 'binary';
        this.client_ = new grpcWeb.GrpcWebClientBase(options);
        this.hostname_ = hostname;
        this.credentials_ = credentials;
        this.options_ = options;
    }
    methodInfoIssue = new grpcWeb.AbstractClientBase.MethodInfo(IssuerService_pb.IssueResponse, (request) => {
        return request.serializeBinary();
    }, IssuerService_pb.IssueResponse.deserializeBinary);
    issue(request, metadata, callback) {
        if (callback !== undefined) {
            return this.client_.rpcCall(this.hostname_ +
                '/trinsic.services.Credential/Issue', request, metadata || {}, this.methodInfoIssue, callback);
        }
        return this.client_.unaryCall(this.hostname_ +
            '/trinsic.services.Credential/Issue', request, metadata || {}, this.methodInfoIssue);
    }
    methodInfoCreateProof = new grpcWeb.AbstractClientBase.MethodInfo(IssuerService_pb.CreateProofResponse, (request) => {
        return request.serializeBinary();
    }, IssuerService_pb.CreateProofResponse.deserializeBinary);
    createProof(request, metadata, callback) {
        if (callback !== undefined) {
            return this.client_.rpcCall(this.hostname_ +
                '/trinsic.services.Credential/CreateProof', request, metadata || {}, this.methodInfoCreateProof, callback);
        }
        return this.client_.unaryCall(this.hostname_ +
            '/trinsic.services.Credential/CreateProof', request, metadata || {}, this.methodInfoCreateProof);
    }
    methodInfoVerifyProof = new grpcWeb.AbstractClientBase.MethodInfo(IssuerService_pb.VerifyProofResponse, (request) => {
        return request.serializeBinary();
    }, IssuerService_pb.VerifyProofResponse.deserializeBinary);
    verifyProof(request, metadata, callback) {
        if (callback !== undefined) {
            return this.client_.rpcCall(this.hostname_ +
                '/trinsic.services.Credential/VerifyProof', request, metadata || {}, this.methodInfoVerifyProof, callback);
        }
        return this.client_.unaryCall(this.hostname_ +
            '/trinsic.services.Credential/VerifyProof', request, metadata || {}, this.methodInfoVerifyProof);
    }
    methodInfoSend = new grpcWeb.AbstractClientBase.MethodInfo(IssuerService_pb.SendResponse, (request) => {
        return request.serializeBinary();
    }, IssuerService_pb.SendResponse.deserializeBinary);
    send(request, metadata, callback) {
        if (callback !== undefined) {
            return this.client_.rpcCall(this.hostname_ +
                '/trinsic.services.Credential/Send', request, metadata || {}, this.methodInfoSend, callback);
        }
        return this.client_.unaryCall(this.hostname_ +
            '/trinsic.services.Credential/Send', request, metadata || {}, this.methodInfoSend);
    }
}
exports.CredentialClient = CredentialClient;
//# sourceMappingURL=IssuerServiceServiceClientPb.js.map