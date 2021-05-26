// package: trinsic.services
// file: AuthService.proto

import * as jspb from "google-protobuf";
import * as CoreService_pb from "./CoreService_pb";
import * as pbmse_pbmse_pb from "./pbmse/pbmse_pb";

export class AcquireTokenRequest extends jspb.Message {
  hasSignedMessage(): boolean;
  clearSignedMessage(): void;
  getSignedMessage(): pbmse_pbmse_pb.SignedMessage | undefined;
  setSignedMessage(value?: pbmse_pbmse_pb.SignedMessage): void;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): AcquireTokenRequest.AsObject;
  static toObject(includeInstance: boolean, msg: AcquireTokenRequest): AcquireTokenRequest.AsObject;
  static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
  static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
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
  getStatus(): CoreService_pb.ResponseStatusMap[keyof CoreService_pb.ResponseStatusMap];
  setStatus(value: CoreService_pb.ResponseStatusMap[keyof CoreService_pb.ResponseStatusMap]): void;

  getWalletToken(): string;
  setWalletToken(value: string): void;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): AcquireTokenResponse.AsObject;
  static toObject(includeInstance: boolean, msg: AcquireTokenResponse): AcquireTokenResponse.AsObject;
  static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
  static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
  static serializeBinaryToWriter(message: AcquireTokenResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): AcquireTokenResponse;
  static deserializeBinaryFromReader(message: AcquireTokenResponse, reader: jspb.BinaryReader): AcquireTokenResponse;
}

export namespace AcquireTokenResponse {
  export type AsObject = {
    status: CoreService_pb.ResponseStatusMap[keyof CoreService_pb.ResponseStatusMap],
    walletToken: string,
  }
}

