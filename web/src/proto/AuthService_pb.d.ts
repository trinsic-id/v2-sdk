import * as jspb from 'google-protobuf'

import * as CoreService_pb from './CoreService_pb';
import * as pbmse_pbmse_pb from './pbmse/pbmse_pb';


export class AcquireTokenRequest extends jspb.Message {
  getSignedMessage(): pbmse_pbmse_pb.SignedMessage | undefined;
  setSignedMessage(value?: pbmse_pbmse_pb.SignedMessage): AcquireTokenRequest;
  hasSignedMessage(): boolean;
  clearSignedMessage(): AcquireTokenRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): AcquireTokenRequest.AsObject;
  static toObject(includeInstance: boolean, msg: AcquireTokenRequest): AcquireTokenRequest.AsObject;
  static serializeBinaryToWriter(message: AcquireTokenRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): AcquireTokenRequest;
  static deserializeBinaryFromReader(message: AcquireTokenRequest, reader: jspb.BinaryReader): AcquireTokenRequest;
}

export namespace AcquireTokenRequest {
  export type AsObject = {
    signedMessage?: pbmse_pbmse_pb.SignedMessage.AsObject,
  }
}

export class AcquireTokenResponse extends jspb.Message {
  getStatus(): CoreService_pb.ResponseStatus;
  setStatus(value: CoreService_pb.ResponseStatus): AcquireTokenResponse;

  getWalletToken(): string;
  setWalletToken(value: string): AcquireTokenResponse;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): AcquireTokenResponse.AsObject;
  static toObject(includeInstance: boolean, msg: AcquireTokenResponse): AcquireTokenResponse.AsObject;
  static serializeBinaryToWriter(message: AcquireTokenResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): AcquireTokenResponse;
  static deserializeBinaryFromReader(message: AcquireTokenResponse, reader: jspb.BinaryReader): AcquireTokenResponse;
}

export namespace AcquireTokenResponse {
  export type AsObject = {
    status: CoreService_pb.ResponseStatus,
    walletToken: string,
  }
}

