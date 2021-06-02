/**
 * @fileoverview gRPC-Web generated client stub for trinsic.services
 * @enhanceable
 * @public
 */
import * as grpcWeb from 'grpc-web';
import * as IssuerService_pb from './IssuerService_pb';
export declare class CredentialClient {
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
    methodInfoIssue: grpcWeb.AbstractClientBase.MethodInfo<IssuerService_pb.IssueRequest, IssuerService_pb.IssueResponse>;
    issue(request: IssuerService_pb.IssueRequest, metadata: grpcWeb.Metadata | null): Promise<IssuerService_pb.IssueResponse>;
    issue(request: IssuerService_pb.IssueRequest, metadata: grpcWeb.Metadata | null, callback: (err: grpcWeb.Error, response: IssuerService_pb.IssueResponse) => void): grpcWeb.ClientReadableStream<IssuerService_pb.IssueResponse>;
    methodInfoCreateProof: grpcWeb.AbstractClientBase.MethodInfo<IssuerService_pb.CreateProofRequest, IssuerService_pb.CreateProofResponse>;
    createProof(request: IssuerService_pb.CreateProofRequest, metadata: grpcWeb.Metadata | null): Promise<IssuerService_pb.CreateProofResponse>;
    createProof(request: IssuerService_pb.CreateProofRequest, metadata: grpcWeb.Metadata | null, callback: (err: grpcWeb.Error, response: IssuerService_pb.CreateProofResponse) => void): grpcWeb.ClientReadableStream<IssuerService_pb.CreateProofResponse>;
    methodInfoVerifyProof: grpcWeb.AbstractClientBase.MethodInfo<IssuerService_pb.VerifyProofRequest, IssuerService_pb.VerifyProofResponse>;
    verifyProof(request: IssuerService_pb.VerifyProofRequest, metadata: grpcWeb.Metadata | null): Promise<IssuerService_pb.VerifyProofResponse>;
    verifyProof(request: IssuerService_pb.VerifyProofRequest, metadata: grpcWeb.Metadata | null, callback: (err: grpcWeb.Error, response: IssuerService_pb.VerifyProofResponse) => void): grpcWeb.ClientReadableStream<IssuerService_pb.VerifyProofResponse>;
    methodInfoSend: grpcWeb.AbstractClientBase.MethodInfo<IssuerService_pb.SendRequest, IssuerService_pb.SendResponse>;
    send(request: IssuerService_pb.SendRequest, metadata: grpcWeb.Metadata | null): Promise<IssuerService_pb.SendResponse>;
    send(request: IssuerService_pb.SendRequest, metadata: grpcWeb.Metadata | null, callback: (err: grpcWeb.Error, response: IssuerService_pb.SendResponse) => void): grpcWeb.ClientReadableStream<IssuerService_pb.SendResponse>;
}
