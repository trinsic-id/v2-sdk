// GENERATED CODE -- DO NOT EDIT!

// package: trinsic.services
// file: CoreService.proto

import * as CoreService_pb from "./CoreService_pb";
import * as pbmse_pbmse_pb from "./pbmse/pbmse_pb";
import * as grpc from "grpc";

interface ICommonService extends grpc.ServiceDefinition<grpc.UntypedServiceImplementation> {
  request: grpc.MethodDefinition<pbmse_pbmse_pb.EncryptedMessage, pbmse_pbmse_pb.EncryptedMessage>;
}

export const CommonService: ICommonService;

export interface ICommonServer extends grpc.UntypedServiceImplementation {
  request: grpc.handleUnaryCall<pbmse_pbmse_pb.EncryptedMessage, pbmse_pbmse_pb.EncryptedMessage>;
}

export class CommonClient extends grpc.Client {
  constructor(address: string, credentials: grpc.ChannelCredentials, options?: object);
  request(argument: pbmse_pbmse_pb.EncryptedMessage, callback: grpc.requestCallback<pbmse_pbmse_pb.EncryptedMessage>): grpc.ClientUnaryCall;
  request(argument: pbmse_pbmse_pb.EncryptedMessage, metadataOrOptions: grpc.Metadata | grpc.CallOptions | null, callback: grpc.requestCallback<pbmse_pbmse_pb.EncryptedMessage>): grpc.ClientUnaryCall;
  request(argument: pbmse_pbmse_pb.EncryptedMessage, metadata: grpc.Metadata | null, options: grpc.CallOptions | null, callback: grpc.requestCallback<pbmse_pbmse_pb.EncryptedMessage>): grpc.ClientUnaryCall;
}
