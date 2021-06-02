/**
 * @fileoverview gRPC-Web generated client stub for trinsic.services
 * @enhanceable
 * @public
 */
import * as grpcWeb from 'grpc-web';
import * as AuthService_pb from './AuthService_pb';
export declare class AuthenticationClient {
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
    methodInfoAcquireToken: grpcWeb.AbstractClientBase.MethodInfo<AuthService_pb.AcquireTokenRequest, AuthService_pb.AcquireTokenResponse>;
    acquireToken(request: AuthService_pb.AcquireTokenRequest, metadata: grpcWeb.Metadata | null): Promise<AuthService_pb.AcquireTokenResponse>;
    acquireToken(request: AuthService_pb.AcquireTokenRequest, metadata: grpcWeb.Metadata | null, callback: (err: grpcWeb.Error, response: AuthService_pb.AcquireTokenResponse) => void): grpcWeb.ClientReadableStream<AuthService_pb.AcquireTokenResponse>;
}
