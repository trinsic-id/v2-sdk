// GENERATED CODE -- DO NOT EDIT!

// package: trinsic.services
// file: ProviderService.proto

import * as ProviderService_pb from "./ProviderService_pb";
import * as grpc from "grpc";

interface IProviderService extends grpc.ServiceDefinition<grpc.UntypedServiceImplementation> {
  invite: grpc.MethodDefinition<ProviderService_pb.InviteRequest, ProviderService_pb.InviteResponse>;
  inviteWithWorkflow: grpc.MethodDefinition<ProviderService_pb.InviteRequest, ProviderService_pb.InviteResponse>;
  invitationStatus: grpc.MethodDefinition<ProviderService_pb.InvitationStatusRequest, ProviderService_pb.InvitationStatusResponse>;
}

export const ProviderService: IProviderService;

export interface IProviderServer extends grpc.UntypedServiceImplementation {
  invite: grpc.handleUnaryCall<ProviderService_pb.InviteRequest, ProviderService_pb.InviteResponse>;
  inviteWithWorkflow: grpc.handleUnaryCall<ProviderService_pb.InviteRequest, ProviderService_pb.InviteResponse>;
  invitationStatus: grpc.handleUnaryCall<ProviderService_pb.InvitationStatusRequest, ProviderService_pb.InvitationStatusResponse>;
}

export class ProviderClient extends grpc.Client {
  constructor(address: string, credentials: grpc.ChannelCredentials, options?: object);
  invite(argument: ProviderService_pb.InviteRequest, callback: grpc.requestCallback<ProviderService_pb.InviteResponse>): grpc.ClientUnaryCall;
  invite(argument: ProviderService_pb.InviteRequest, metadataOrOptions: grpc.Metadata | grpc.CallOptions | null, callback: grpc.requestCallback<ProviderService_pb.InviteResponse>): grpc.ClientUnaryCall;
  invite(argument: ProviderService_pb.InviteRequest, metadata: grpc.Metadata | null, options: grpc.CallOptions | null, callback: grpc.requestCallback<ProviderService_pb.InviteResponse>): grpc.ClientUnaryCall;
  inviteWithWorkflow(argument: ProviderService_pb.InviteRequest, callback: grpc.requestCallback<ProviderService_pb.InviteResponse>): grpc.ClientUnaryCall;
  inviteWithWorkflow(argument: ProviderService_pb.InviteRequest, metadataOrOptions: grpc.Metadata | grpc.CallOptions | null, callback: grpc.requestCallback<ProviderService_pb.InviteResponse>): grpc.ClientUnaryCall;
  inviteWithWorkflow(argument: ProviderService_pb.InviteRequest, metadata: grpc.Metadata | null, options: grpc.CallOptions | null, callback: grpc.requestCallback<ProviderService_pb.InviteResponse>): grpc.ClientUnaryCall;
  invitationStatus(argument: ProviderService_pb.InvitationStatusRequest, callback: grpc.requestCallback<ProviderService_pb.InvitationStatusResponse>): grpc.ClientUnaryCall;
  invitationStatus(argument: ProviderService_pb.InvitationStatusRequest, metadataOrOptions: grpc.Metadata | grpc.CallOptions | null, callback: grpc.requestCallback<ProviderService_pb.InvitationStatusResponse>): grpc.ClientUnaryCall;
  invitationStatus(argument: ProviderService_pb.InvitationStatusRequest, metadata: grpc.Metadata | null, options: grpc.CallOptions | null, callback: grpc.requestCallback<ProviderService_pb.InvitationStatusResponse>): grpc.ClientUnaryCall;
}
