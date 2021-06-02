/**
 * @fileoverview gRPC-Web generated client stub for trinsic.services
 * @enhanceable
 * @public
 */
import * as grpcWeb from 'grpc-web';
import * as pbmse_pbmse_pb from './pbmse/pbmse_pb';
export declare class CommonClient {
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
    methodInfoRequest: grpcWeb.AbstractClientBase.MethodInfo<pbmse_pbmse_pb.EncryptedMessage, pbmse_pbmse_pb.EncryptedMessage>;
    request(request: pbmse_pbmse_pb.EncryptedMessage, metadata: grpcWeb.Metadata | null): Promise<pbmse_pbmse_pb.EncryptedMessage>;
    request(request: pbmse_pbmse_pb.EncryptedMessage, metadata: grpcWeb.Metadata | null, callback: (err: grpcWeb.Error, response: pbmse_pbmse_pb.EncryptedMessage) => void): grpcWeb.ClientReadableStream<pbmse_pbmse_pb.EncryptedMessage>;
}
