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
exports.AuthenticationClient = void 0;
// GENERATED CODE -- DO NOT EDIT!
/* eslint-disable */
// @ts-nocheck
const grpcWeb = __importStar(require("grpc-web"));
const AuthService_pb = __importStar(require("./AuthService_pb"));
class AuthenticationClient {
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
    methodInfoAcquireToken = new grpcWeb.AbstractClientBase.MethodInfo(AuthService_pb.AcquireTokenResponse, (request) => {
        return request.serializeBinary();
    }, AuthService_pb.AcquireTokenResponse.deserializeBinary);
    acquireToken(request, metadata, callback) {
        if (callback !== undefined) {
            return this.client_.rpcCall(this.hostname_ +
                '/trinsic.services.Authentication/AcquireToken', request, metadata || {}, this.methodInfoAcquireToken, callback);
        }
        return this.client_.unaryCall(this.hostname_ +
            '/trinsic.services.Authentication/AcquireToken', request, metadata || {}, this.methodInfoAcquireToken);
    }
}
exports.AuthenticationClient = AuthenticationClient;
//# sourceMappingURL=AuthServiceServiceClientPb.js.map