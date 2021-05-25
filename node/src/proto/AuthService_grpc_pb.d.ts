// GENERATED CODE -- DO NOT EDIT!

// package: trinsic.services
// file: AuthService.proto

import * as AuthService_pb from "./AuthService_pb";
import * as grpc from "grpc";

interface IAuthenticationService extends grpc.ServiceDefinition<grpc.UntypedServiceImplementation> {
  acquireToken: grpc.MethodDefinition<AuthService_pb.AcquireTokenRequest, AuthService_pb.AcquireTokenResponse>;
}

export const AuthenticationService: IAuthenticationService;

export interface IAuthenticationServer extends grpc.UntypedServiceImplementation {
  acquireToken: grpc.handleUnaryCall<AuthService_pb.AcquireTokenRequest, AuthService_pb.AcquireTokenResponse>;
}

export class AuthenticationClient extends grpc.Client {
  constructor(address: string, credentials: grpc.ChannelCredentials, options?: object);
  acquireToken(argument: AuthService_pb.AcquireTokenRequest, callback: grpc.requestCallback<AuthService_pb.AcquireTokenResponse>): grpc.ClientUnaryCall;
  acquireToken(argument: AuthService_pb.AcquireTokenRequest, metadataOrOptions: grpc.Metadata | grpc.CallOptions | null, callback: grpc.requestCallback<AuthService_pb.AcquireTokenResponse>): grpc.ClientUnaryCall;
  acquireToken(argument: AuthService_pb.AcquireTokenRequest, metadata: grpc.Metadata | null, options: grpc.CallOptions | null, callback: grpc.requestCallback<AuthService_pb.AcquireTokenResponse>): grpc.ClientUnaryCall;
}
