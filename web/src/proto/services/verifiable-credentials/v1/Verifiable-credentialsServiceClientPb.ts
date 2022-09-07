/**
 * @fileoverview gRPC-Web generated client stub for services.verifiablecredentials.v1
 * @enhanceable
 * @public
 */

// GENERATED CODE -- DO NOT EDIT!

/* eslint-disable */
// @ts-nocheck

import * as grpcWeb from "grpc-web";

import * as services_verifiable$credentials_v1_verifiable$credentials_pb from "../../../services/verifiable-credentials/v1/verifiable-credentials_pb";

export class VerifiableCredentialClient {
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

    methodInfoIssue = new grpcWeb.AbstractClientBase.MethodInfo(
        services_verifiable$credentials_v1_verifiable$credentials_pb.IssueResponse,
        (
            request: services_verifiable$credentials_v1_verifiable$credentials_pb.IssueRequest
        ) => {
            return request.serializeBinary();
        },
        services_verifiable$credentials_v1_verifiable$credentials_pb.IssueResponse.deserializeBinary
    );

    issue(
        request: services_verifiable$credentials_v1_verifiable$credentials_pb.IssueRequest,
        metadata: grpcWeb.Metadata | null
    ): Promise<services_verifiable$credentials_v1_verifiable$credentials_pb.IssueResponse>;

    issue(
        request: services_verifiable$credentials_v1_verifiable$credentials_pb.IssueRequest,
        metadata: grpcWeb.Metadata | null,
        callback: (
            err: grpcWeb.Error,
            response: services_verifiable$credentials_v1_verifiable$credentials_pb.IssueResponse
        ) => void
    ): grpcWeb.ClientReadableStream<services_verifiable$credentials_v1_verifiable$credentials_pb.IssueResponse>;

    issue(
        request: services_verifiable$credentials_v1_verifiable$credentials_pb.IssueRequest,
        metadata: grpcWeb.Metadata | null,
        callback?: (
            err: grpcWeb.Error,
            response: services_verifiable$credentials_v1_verifiable$credentials_pb.IssueResponse
        ) => void
    ) {
        if (callback !== undefined) {
            return this.client_.rpcCall(
                this.hostname_ +
                    "/services.verifiablecredentials.v1.VerifiableCredential/Issue",
                request,
                metadata || {},
                this.methodInfoIssue,
                callback
            );
        }
        return this.client_.unaryCall(
            this.hostname_ +
                "/services.verifiablecredentials.v1.VerifiableCredential/Issue",
            request,
            metadata || {},
            this.methodInfoIssue
        );
    }

    methodInfoIssueFromTemplate = new grpcWeb.AbstractClientBase.MethodInfo(
        services_verifiable$credentials_v1_verifiable$credentials_pb.IssueFromTemplateResponse,
        (
            request: services_verifiable$credentials_v1_verifiable$credentials_pb.IssueFromTemplateRequest
        ) => {
            return request.serializeBinary();
        },
        services_verifiable$credentials_v1_verifiable$credentials_pb.IssueFromTemplateResponse.deserializeBinary
    );

    issueFromTemplate(
        request: services_verifiable$credentials_v1_verifiable$credentials_pb.IssueFromTemplateRequest,
        metadata: grpcWeb.Metadata | null
    ): Promise<services_verifiable$credentials_v1_verifiable$credentials_pb.IssueFromTemplateResponse>;

    issueFromTemplate(
        request: services_verifiable$credentials_v1_verifiable$credentials_pb.IssueFromTemplateRequest,
        metadata: grpcWeb.Metadata | null,
        callback: (
            err: grpcWeb.Error,
            response: services_verifiable$credentials_v1_verifiable$credentials_pb.IssueFromTemplateResponse
        ) => void
    ): grpcWeb.ClientReadableStream<services_verifiable$credentials_v1_verifiable$credentials_pb.IssueFromTemplateResponse>;

    issueFromTemplate(
        request: services_verifiable$credentials_v1_verifiable$credentials_pb.IssueFromTemplateRequest,
        metadata: grpcWeb.Metadata | null,
        callback?: (
            err: grpcWeb.Error,
            response: services_verifiable$credentials_v1_verifiable$credentials_pb.IssueFromTemplateResponse
        ) => void
    ) {
        if (callback !== undefined) {
            return this.client_.rpcCall(
                this.hostname_ +
                    "/services.verifiablecredentials.v1.VerifiableCredential/IssueFromTemplate",
                request,
                metadata || {},
                this.methodInfoIssueFromTemplate,
                callback
            );
        }
        return this.client_.unaryCall(
            this.hostname_ +
                "/services.verifiablecredentials.v1.VerifiableCredential/IssueFromTemplate",
            request,
            metadata || {},
            this.methodInfoIssueFromTemplate
        );
    }

    methodInfoCheckStatus = new grpcWeb.AbstractClientBase.MethodInfo(
        services_verifiable$credentials_v1_verifiable$credentials_pb.CheckStatusResponse,
        (
            request: services_verifiable$credentials_v1_verifiable$credentials_pb.CheckStatusRequest
        ) => {
            return request.serializeBinary();
        },
        services_verifiable$credentials_v1_verifiable$credentials_pb.CheckStatusResponse.deserializeBinary
    );

    checkStatus(
        request: services_verifiable$credentials_v1_verifiable$credentials_pb.CheckStatusRequest,
        metadata: grpcWeb.Metadata | null
    ): Promise<services_verifiable$credentials_v1_verifiable$credentials_pb.CheckStatusResponse>;

    checkStatus(
        request: services_verifiable$credentials_v1_verifiable$credentials_pb.CheckStatusRequest,
        metadata: grpcWeb.Metadata | null,
        callback: (
            err: grpcWeb.Error,
            response: services_verifiable$credentials_v1_verifiable$credentials_pb.CheckStatusResponse
        ) => void
    ): grpcWeb.ClientReadableStream<services_verifiable$credentials_v1_verifiable$credentials_pb.CheckStatusResponse>;

    checkStatus(
        request: services_verifiable$credentials_v1_verifiable$credentials_pb.CheckStatusRequest,
        metadata: grpcWeb.Metadata | null,
        callback?: (
            err: grpcWeb.Error,
            response: services_verifiable$credentials_v1_verifiable$credentials_pb.CheckStatusResponse
        ) => void
    ) {
        if (callback !== undefined) {
            return this.client_.rpcCall(
                this.hostname_ +
                    "/services.verifiablecredentials.v1.VerifiableCredential/CheckStatus",
                request,
                metadata || {},
                this.methodInfoCheckStatus,
                callback
            );
        }
        return this.client_.unaryCall(
            this.hostname_ +
                "/services.verifiablecredentials.v1.VerifiableCredential/CheckStatus",
            request,
            metadata || {},
            this.methodInfoCheckStatus
        );
    }

    methodInfoUpdateStatus = new grpcWeb.AbstractClientBase.MethodInfo(
        services_verifiable$credentials_v1_verifiable$credentials_pb.UpdateStatusResponse,
        (
            request: services_verifiable$credentials_v1_verifiable$credentials_pb.UpdateStatusRequest
        ) => {
            return request.serializeBinary();
        },
        services_verifiable$credentials_v1_verifiable$credentials_pb.UpdateStatusResponse.deserializeBinary
    );

    updateStatus(
        request: services_verifiable$credentials_v1_verifiable$credentials_pb.UpdateStatusRequest,
        metadata: grpcWeb.Metadata | null
    ): Promise<services_verifiable$credentials_v1_verifiable$credentials_pb.UpdateStatusResponse>;

    updateStatus(
        request: services_verifiable$credentials_v1_verifiable$credentials_pb.UpdateStatusRequest,
        metadata: grpcWeb.Metadata | null,
        callback: (
            err: grpcWeb.Error,
            response: services_verifiable$credentials_v1_verifiable$credentials_pb.UpdateStatusResponse
        ) => void
    ): grpcWeb.ClientReadableStream<services_verifiable$credentials_v1_verifiable$credentials_pb.UpdateStatusResponse>;

    updateStatus(
        request: services_verifiable$credentials_v1_verifiable$credentials_pb.UpdateStatusRequest,
        metadata: grpcWeb.Metadata | null,
        callback?: (
            err: grpcWeb.Error,
            response: services_verifiable$credentials_v1_verifiable$credentials_pb.UpdateStatusResponse
        ) => void
    ) {
        if (callback !== undefined) {
            return this.client_.rpcCall(
                this.hostname_ +
                    "/services.verifiablecredentials.v1.VerifiableCredential/UpdateStatus",
                request,
                metadata || {},
                this.methodInfoUpdateStatus,
                callback
            );
        }
        return this.client_.unaryCall(
            this.hostname_ +
                "/services.verifiablecredentials.v1.VerifiableCredential/UpdateStatus",
            request,
            metadata || {},
            this.methodInfoUpdateStatus
        );
    }

    methodInfoCreateProof = new grpcWeb.AbstractClientBase.MethodInfo(
        services_verifiable$credentials_v1_verifiable$credentials_pb.CreateProofResponse,
        (
            request: services_verifiable$credentials_v1_verifiable$credentials_pb.CreateProofRequest
        ) => {
            return request.serializeBinary();
        },
        services_verifiable$credentials_v1_verifiable$credentials_pb.CreateProofResponse.deserializeBinary
    );

    createProof(
        request: services_verifiable$credentials_v1_verifiable$credentials_pb.CreateProofRequest,
        metadata: grpcWeb.Metadata | null
    ): Promise<services_verifiable$credentials_v1_verifiable$credentials_pb.CreateProofResponse>;

    createProof(
        request: services_verifiable$credentials_v1_verifiable$credentials_pb.CreateProofRequest,
        metadata: grpcWeb.Metadata | null,
        callback: (
            err: grpcWeb.Error,
            response: services_verifiable$credentials_v1_verifiable$credentials_pb.CreateProofResponse
        ) => void
    ): grpcWeb.ClientReadableStream<services_verifiable$credentials_v1_verifiable$credentials_pb.CreateProofResponse>;

    createProof(
        request: services_verifiable$credentials_v1_verifiable$credentials_pb.CreateProofRequest,
        metadata: grpcWeb.Metadata | null,
        callback?: (
            err: grpcWeb.Error,
            response: services_verifiable$credentials_v1_verifiable$credentials_pb.CreateProofResponse
        ) => void
    ) {
        if (callback !== undefined) {
            return this.client_.rpcCall(
                this.hostname_ +
                    "/services.verifiablecredentials.v1.VerifiableCredential/CreateProof",
                request,
                metadata || {},
                this.methodInfoCreateProof,
                callback
            );
        }
        return this.client_.unaryCall(
            this.hostname_ +
                "/services.verifiablecredentials.v1.VerifiableCredential/CreateProof",
            request,
            metadata || {},
            this.methodInfoCreateProof
        );
    }

    methodInfoVerifyProof = new grpcWeb.AbstractClientBase.MethodInfo(
        services_verifiable$credentials_v1_verifiable$credentials_pb.VerifyProofResponse,
        (
            request: services_verifiable$credentials_v1_verifiable$credentials_pb.VerifyProofRequest
        ) => {
            return request.serializeBinary();
        },
        services_verifiable$credentials_v1_verifiable$credentials_pb.VerifyProofResponse.deserializeBinary
    );

    verifyProof(
        request: services_verifiable$credentials_v1_verifiable$credentials_pb.VerifyProofRequest,
        metadata: grpcWeb.Metadata | null
    ): Promise<services_verifiable$credentials_v1_verifiable$credentials_pb.VerifyProofResponse>;

    verifyProof(
        request: services_verifiable$credentials_v1_verifiable$credentials_pb.VerifyProofRequest,
        metadata: grpcWeb.Metadata | null,
        callback: (
            err: grpcWeb.Error,
            response: services_verifiable$credentials_v1_verifiable$credentials_pb.VerifyProofResponse
        ) => void
    ): grpcWeb.ClientReadableStream<services_verifiable$credentials_v1_verifiable$credentials_pb.VerifyProofResponse>;

    verifyProof(
        request: services_verifiable$credentials_v1_verifiable$credentials_pb.VerifyProofRequest,
        metadata: grpcWeb.Metadata | null,
        callback?: (
            err: grpcWeb.Error,
            response: services_verifiable$credentials_v1_verifiable$credentials_pb.VerifyProofResponse
        ) => void
    ) {
        if (callback !== undefined) {
            return this.client_.rpcCall(
                this.hostname_ +
                    "/services.verifiablecredentials.v1.VerifiableCredential/VerifyProof",
                request,
                metadata || {},
                this.methodInfoVerifyProof,
                callback
            );
        }
        return this.client_.unaryCall(
            this.hostname_ +
                "/services.verifiablecredentials.v1.VerifiableCredential/VerifyProof",
            request,
            metadata || {},
            this.methodInfoVerifyProof
        );
    }

    methodInfoSend = new grpcWeb.AbstractClientBase.MethodInfo(
        services_verifiable$credentials_v1_verifiable$credentials_pb.SendResponse,
        (
            request: services_verifiable$credentials_v1_verifiable$credentials_pb.SendRequest
        ) => {
            return request.serializeBinary();
        },
        services_verifiable$credentials_v1_verifiable$credentials_pb.SendResponse.deserializeBinary
    );

    send(
        request: services_verifiable$credentials_v1_verifiable$credentials_pb.SendRequest,
        metadata: grpcWeb.Metadata | null
    ): Promise<services_verifiable$credentials_v1_verifiable$credentials_pb.SendResponse>;

    send(
        request: services_verifiable$credentials_v1_verifiable$credentials_pb.SendRequest,
        metadata: grpcWeb.Metadata | null,
        callback: (
            err: grpcWeb.Error,
            response: services_verifiable$credentials_v1_verifiable$credentials_pb.SendResponse
        ) => void
    ): grpcWeb.ClientReadableStream<services_verifiable$credentials_v1_verifiable$credentials_pb.SendResponse>;

    send(
        request: services_verifiable$credentials_v1_verifiable$credentials_pb.SendRequest,
        metadata: grpcWeb.Metadata | null,
        callback?: (
            err: grpcWeb.Error,
            response: services_verifiable$credentials_v1_verifiable$credentials_pb.SendResponse
        ) => void
    ) {
        if (callback !== undefined) {
            return this.client_.rpcCall(
                this.hostname_ +
                    "/services.verifiablecredentials.v1.VerifiableCredential/Send",
                request,
                metadata || {},
                this.methodInfoSend,
                callback
            );
        }
        return this.client_.unaryCall(
            this.hostname_ +
                "/services.verifiablecredentials.v1.VerifiableCredential/Send",
            request,
            metadata || {},
            this.methodInfoSend
        );
    }
}
