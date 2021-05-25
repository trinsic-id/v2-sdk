// GENERATED CODE -- DO NOT EDIT!

// package: trinsic.services
// file: IssuerService.proto

import * as IssuerService_pb from "./IssuerService_pb";
import * as grpc from "grpc";

interface ICredentialService extends grpc.ServiceDefinition<grpc.UntypedServiceImplementation> {
  issue: grpc.MethodDefinition<IssuerService_pb.IssueRequest, IssuerService_pb.IssueResponse>;
  createProof: grpc.MethodDefinition<IssuerService_pb.CreateProofRequest, IssuerService_pb.CreateProofResponse>;
  verifyProof: grpc.MethodDefinition<IssuerService_pb.VerifyProofRequest, IssuerService_pb.VerifyProofResponse>;
}

export const CredentialService: ICredentialService;

export interface ICredentialServer extends grpc.UntypedServiceImplementation {
  issue: grpc.handleUnaryCall<IssuerService_pb.IssueRequest, IssuerService_pb.IssueResponse>;
  createProof: grpc.handleUnaryCall<IssuerService_pb.CreateProofRequest, IssuerService_pb.CreateProofResponse>;
  verifyProof: grpc.handleUnaryCall<IssuerService_pb.VerifyProofRequest, IssuerService_pb.VerifyProofResponse>;
}

export class CredentialClient extends grpc.Client {
  constructor(address: string, credentials: grpc.ChannelCredentials, options?: object);
  issue(argument: IssuerService_pb.IssueRequest, callback: grpc.requestCallback<IssuerService_pb.IssueResponse>): grpc.ClientUnaryCall;
  issue(argument: IssuerService_pb.IssueRequest, metadataOrOptions: grpc.Metadata | grpc.CallOptions | null, callback: grpc.requestCallback<IssuerService_pb.IssueResponse>): grpc.ClientUnaryCall;
  issue(argument: IssuerService_pb.IssueRequest, metadata: grpc.Metadata | null, options: grpc.CallOptions | null, callback: grpc.requestCallback<IssuerService_pb.IssueResponse>): grpc.ClientUnaryCall;
  createProof(argument: IssuerService_pb.CreateProofRequest, callback: grpc.requestCallback<IssuerService_pb.CreateProofResponse>): grpc.ClientUnaryCall;
  createProof(argument: IssuerService_pb.CreateProofRequest, metadataOrOptions: grpc.Metadata | grpc.CallOptions | null, callback: grpc.requestCallback<IssuerService_pb.CreateProofResponse>): grpc.ClientUnaryCall;
  createProof(argument: IssuerService_pb.CreateProofRequest, metadata: grpc.Metadata | null, options: grpc.CallOptions | null, callback: grpc.requestCallback<IssuerService_pb.CreateProofResponse>): grpc.ClientUnaryCall;
  verifyProof(argument: IssuerService_pb.VerifyProofRequest, callback: grpc.requestCallback<IssuerService_pb.VerifyProofResponse>): grpc.ClientUnaryCall;
  verifyProof(argument: IssuerService_pb.VerifyProofRequest, metadataOrOptions: grpc.Metadata | grpc.CallOptions | null, callback: grpc.requestCallback<IssuerService_pb.VerifyProofResponse>): grpc.ClientUnaryCall;
  verifyProof(argument: IssuerService_pb.VerifyProofRequest, metadata: grpc.Metadata | null, options: grpc.CallOptions | null, callback: grpc.requestCallback<IssuerService_pb.VerifyProofResponse>): grpc.ClientUnaryCall;
}
