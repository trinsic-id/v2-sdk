/**
 * @fileoverview gRPC-Web generated client stub for services.provider.v1
 * @enhanceable
 * @public
 */

// GENERATED CODE -- DO NOT EDIT!

/* eslint-disable */
// @ts-nocheck

import * as grpcWeb from "grpc-web";

import * as services_provider_v1_provider_pb from "../../../services/provider/v1/provider_pb";

export class ProviderClient {
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

    methodInfoCreateEcosystem = new grpcWeb.AbstractClientBase.MethodInfo(
        services_provider_v1_provider_pb.CreateEcosystemResponse,
        (request: services_provider_v1_provider_pb.CreateEcosystemRequest) => {
            return request.serializeBinary();
        },
        services_provider_v1_provider_pb.CreateEcosystemResponse.deserializeBinary
    );

    createEcosystem(
        request: services_provider_v1_provider_pb.CreateEcosystemRequest,
        metadata: grpcWeb.Metadata | null
    ): Promise<services_provider_v1_provider_pb.CreateEcosystemResponse>;

    createEcosystem(
        request: services_provider_v1_provider_pb.CreateEcosystemRequest,
        metadata: grpcWeb.Metadata | null,
        callback: (
            err: grpcWeb.Error,
            response: services_provider_v1_provider_pb.CreateEcosystemResponse
        ) => void
    ): grpcWeb.ClientReadableStream<services_provider_v1_provider_pb.CreateEcosystemResponse>;

    createEcosystem(
        request: services_provider_v1_provider_pb.CreateEcosystemRequest,
        metadata: grpcWeb.Metadata | null,
        callback?: (
            err: grpcWeb.Error,
            response: services_provider_v1_provider_pb.CreateEcosystemResponse
        ) => void
    ) {
        if (callback !== undefined) {
            return this.client_.rpcCall(
                this.hostname_ +
                    "/services.provider.v1.Provider/CreateEcosystem",
                request,
                metadata || {},
                this.methodInfoCreateEcosystem,
                callback
            );
        }
        return this.client_.unaryCall(
            this.hostname_ + "/services.provider.v1.Provider/CreateEcosystem",
            request,
            metadata || {},
            this.methodInfoCreateEcosystem
        );
    }

    methodInfoGenerateToken = new grpcWeb.AbstractClientBase.MethodInfo(
        services_provider_v1_provider_pb.GenerateTokenResponse,
        (request: services_provider_v1_provider_pb.GenerateTokenRequest) => {
            return request.serializeBinary();
        },
        services_provider_v1_provider_pb.GenerateTokenResponse.deserializeBinary
    );

    generateToken(
        request: services_provider_v1_provider_pb.GenerateTokenRequest,
        metadata: grpcWeb.Metadata | null
    ): Promise<services_provider_v1_provider_pb.GenerateTokenResponse>;

    generateToken(
        request: services_provider_v1_provider_pb.GenerateTokenRequest,
        metadata: grpcWeb.Metadata | null,
        callback: (
            err: grpcWeb.Error,
            response: services_provider_v1_provider_pb.GenerateTokenResponse
        ) => void
    ): grpcWeb.ClientReadableStream<services_provider_v1_provider_pb.GenerateTokenResponse>;

    generateToken(
        request: services_provider_v1_provider_pb.GenerateTokenRequest,
        metadata: grpcWeb.Metadata | null,
        callback?: (
            err: grpcWeb.Error,
            response: services_provider_v1_provider_pb.GenerateTokenResponse
        ) => void
    ) {
        if (callback !== undefined) {
            return this.client_.rpcCall(
                this.hostname_ + "/services.provider.v1.Provider/GenerateToken",
                request,
                metadata || {},
                this.methodInfoGenerateToken,
                callback
            );
        }
        return this.client_.unaryCall(
            this.hostname_ + "/services.provider.v1.Provider/GenerateToken",
            request,
            metadata || {},
            this.methodInfoGenerateToken
        );
    }

    methodInfoInvite = new grpcWeb.AbstractClientBase.MethodInfo(
        services_provider_v1_provider_pb.InviteResponse,
        (request: services_provider_v1_provider_pb.InviteRequest) => {
            return request.serializeBinary();
        },
        services_provider_v1_provider_pb.InviteResponse.deserializeBinary
    );

    invite(
        request: services_provider_v1_provider_pb.InviteRequest,
        metadata: grpcWeb.Metadata | null
    ): Promise<services_provider_v1_provider_pb.InviteResponse>;

    invite(
        request: services_provider_v1_provider_pb.InviteRequest,
        metadata: grpcWeb.Metadata | null,
        callback: (
            err: grpcWeb.Error,
            response: services_provider_v1_provider_pb.InviteResponse
        ) => void
    ): grpcWeb.ClientReadableStream<services_provider_v1_provider_pb.InviteResponse>;

    invite(
        request: services_provider_v1_provider_pb.InviteRequest,
        metadata: grpcWeb.Metadata | null,
        callback?: (
            err: grpcWeb.Error,
            response: services_provider_v1_provider_pb.InviteResponse
        ) => void
    ) {
        if (callback !== undefined) {
            return this.client_.rpcCall(
                this.hostname_ + "/services.provider.v1.Provider/Invite",
                request,
                metadata || {},
                this.methodInfoInvite,
                callback
            );
        }
        return this.client_.unaryCall(
            this.hostname_ + "/services.provider.v1.Provider/Invite",
            request,
            metadata || {},
            this.methodInfoInvite
        );
    }

    methodInfoInvitationStatus = new grpcWeb.AbstractClientBase.MethodInfo(
        services_provider_v1_provider_pb.InvitationStatusResponse,
        (request: services_provider_v1_provider_pb.InvitationStatusRequest) => {
            return request.serializeBinary();
        },
        services_provider_v1_provider_pb.InvitationStatusResponse.deserializeBinary
    );

    invitationStatus(
        request: services_provider_v1_provider_pb.InvitationStatusRequest,
        metadata: grpcWeb.Metadata | null
    ): Promise<services_provider_v1_provider_pb.InvitationStatusResponse>;

    invitationStatus(
        request: services_provider_v1_provider_pb.InvitationStatusRequest,
        metadata: grpcWeb.Metadata | null,
        callback: (
            err: grpcWeb.Error,
            response: services_provider_v1_provider_pb.InvitationStatusResponse
        ) => void
    ): grpcWeb.ClientReadableStream<services_provider_v1_provider_pb.InvitationStatusResponse>;

    invitationStatus(
        request: services_provider_v1_provider_pb.InvitationStatusRequest,
        metadata: grpcWeb.Metadata | null,
        callback?: (
            err: grpcWeb.Error,
            response: services_provider_v1_provider_pb.InvitationStatusResponse
        ) => void
    ) {
        if (callback !== undefined) {
            return this.client_.rpcCall(
                this.hostname_ +
                    "/services.provider.v1.Provider/InvitationStatus",
                request,
                metadata || {},
                this.methodInfoInvitationStatus,
                callback
            );
        }
        return this.client_.unaryCall(
            this.hostname_ + "/services.provider.v1.Provider/InvitationStatus",
            request,
            metadata || {},
            this.methodInfoInvitationStatus
        );
    }
}
