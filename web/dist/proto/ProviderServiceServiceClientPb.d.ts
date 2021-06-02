/**
 * @fileoverview gRPC-Web generated client stub for trinsic.services
 * @enhanceable
 * @public
 */
import * as grpcWeb from 'grpc-web';
import * as ProviderService_pb from './ProviderService_pb';
export declare class ProviderClient {
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
    methodInfoInvite: grpcWeb.AbstractClientBase.MethodInfo<ProviderService_pb.InviteRequest, ProviderService_pb.InviteResponse>;
    invite(request: ProviderService_pb.InviteRequest, metadata: grpcWeb.Metadata | null): Promise<ProviderService_pb.InviteResponse>;
    invite(request: ProviderService_pb.InviteRequest, metadata: grpcWeb.Metadata | null, callback: (err: grpcWeb.Error, response: ProviderService_pb.InviteResponse) => void): grpcWeb.ClientReadableStream<ProviderService_pb.InviteResponse>;
    methodInfoInviteWithWorkflow: grpcWeb.AbstractClientBase.MethodInfo<ProviderService_pb.InviteRequest, ProviderService_pb.InviteResponse>;
    inviteWithWorkflow(request: ProviderService_pb.InviteRequest, metadata: grpcWeb.Metadata | null): Promise<ProviderService_pb.InviteResponse>;
    inviteWithWorkflow(request: ProviderService_pb.InviteRequest, metadata: grpcWeb.Metadata | null, callback: (err: grpcWeb.Error, response: ProviderService_pb.InviteResponse) => void): grpcWeb.ClientReadableStream<ProviderService_pb.InviteResponse>;
    methodInfoInvitationStatus: grpcWeb.AbstractClientBase.MethodInfo<ProviderService_pb.InvitationStatusRequest, ProviderService_pb.InvitationStatusResponse>;
    invitationStatus(request: ProviderService_pb.InvitationStatusRequest, metadata: grpcWeb.Metadata | null): Promise<ProviderService_pb.InvitationStatusResponse>;
    invitationStatus(request: ProviderService_pb.InvitationStatusRequest, metadata: grpcWeb.Metadata | null, callback: (err: grpcWeb.Error, response: ProviderService_pb.InvitationStatusResponse) => void): grpcWeb.ClientReadableStream<ProviderService_pb.InvitationStatusResponse>;
}
