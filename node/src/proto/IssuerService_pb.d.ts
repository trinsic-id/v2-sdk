// package: trinsic.services
// file: IssuerService.proto

import * as jspb from "google-protobuf";
import * as google_protobuf_struct_pb from "google-protobuf/google/protobuf/struct_pb";

export class IssueRequest extends jspb.Message {
  hasDocument(): boolean;
  clearDocument(): void;
  getDocument(): google_protobuf_struct_pb.Struct | undefined;
  setDocument(value?: google_protobuf_struct_pb.Struct): void;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): IssueRequest.AsObject;
  static toObject(includeInstance: boolean, msg: IssueRequest): IssueRequest.AsObject;
  static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
  static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
  static serializeBinaryToWriter(message: IssueRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): IssueRequest;
  static deserializeBinaryFromReader(message: IssueRequest, reader: jspb.BinaryReader): IssueRequest;
}

export namespace IssueRequest {
  export type AsObject = {
    document?: google_protobuf_struct_pb.Struct.AsObject,
  }
}

export class IssueResponse extends jspb.Message {
  hasDocument(): boolean;
  clearDocument(): void;
  getDocument(): google_protobuf_struct_pb.Struct | undefined;
  setDocument(value?: google_protobuf_struct_pb.Struct): void;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): IssueResponse.AsObject;
  static toObject(includeInstance: boolean, msg: IssueResponse): IssueResponse.AsObject;
  static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
  static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
  static serializeBinaryToWriter(message: IssueResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): IssueResponse;
  static deserializeBinaryFromReader(message: IssueResponse, reader: jspb.BinaryReader): IssueResponse;
}

export namespace IssueResponse {
  export type AsObject = {
    document?: google_protobuf_struct_pb.Struct.AsObject,
  }
}

export class CreateProofRequest extends jspb.Message {
  hasRevealDocument(): boolean;
  clearRevealDocument(): void;
  getRevealDocument(): google_protobuf_struct_pb.Struct | undefined;
  setRevealDocument(value?: google_protobuf_struct_pb.Struct): void;

  getDocumentId(): string;
  setDocumentId(value: string): void;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): CreateProofRequest.AsObject;
  static toObject(includeInstance: boolean, msg: CreateProofRequest): CreateProofRequest.AsObject;
  static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
  static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
  static serializeBinaryToWriter(message: CreateProofRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): CreateProofRequest;
  static deserializeBinaryFromReader(message: CreateProofRequest, reader: jspb.BinaryReader): CreateProofRequest;
}

export namespace CreateProofRequest {
  export type AsObject = {
    revealDocument?: google_protobuf_struct_pb.Struct.AsObject,
    documentId: string,
  }
}

export class CreateProofResponse extends jspb.Message {
  hasProofDocument(): boolean;
  clearProofDocument(): void;
  getProofDocument(): google_protobuf_struct_pb.Struct | undefined;
  setProofDocument(value?: google_protobuf_struct_pb.Struct): void;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): CreateProofResponse.AsObject;
  static toObject(includeInstance: boolean, msg: CreateProofResponse): CreateProofResponse.AsObject;
  static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
  static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
  static serializeBinaryToWriter(message: CreateProofResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): CreateProofResponse;
  static deserializeBinaryFromReader(message: CreateProofResponse, reader: jspb.BinaryReader): CreateProofResponse;
}

export namespace CreateProofResponse {
  export type AsObject = {
    proofDocument?: google_protobuf_struct_pb.Struct.AsObject,
  }
}

export class VerifyProofRequest extends jspb.Message {
  hasProofDocument(): boolean;
  clearProofDocument(): void;
  getProofDocument(): google_protobuf_struct_pb.Struct | undefined;
  setProofDocument(value?: google_protobuf_struct_pb.Struct): void;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): VerifyProofRequest.AsObject;
  static toObject(includeInstance: boolean, msg: VerifyProofRequest): VerifyProofRequest.AsObject;
  static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
  static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
  static serializeBinaryToWriter(message: VerifyProofRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): VerifyProofRequest;
  static deserializeBinaryFromReader(message: VerifyProofRequest, reader: jspb.BinaryReader): VerifyProofRequest;
}

export namespace VerifyProofRequest {
  export type AsObject = {
    proofDocument?: google_protobuf_struct_pb.Struct.AsObject,
  }
}

export class VerifyProofResponse extends jspb.Message {
  getValid(): boolean;
  setValid(value: boolean): void;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): VerifyProofResponse.AsObject;
  static toObject(includeInstance: boolean, msg: VerifyProofResponse): VerifyProofResponse.AsObject;
  static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
  static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
  static serializeBinaryToWriter(message: VerifyProofResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): VerifyProofResponse;
  static deserializeBinaryFromReader(message: VerifyProofResponse, reader: jspb.BinaryReader): VerifyProofResponse;
}

export namespace VerifyProofResponse {
  export type AsObject = {
    valid: boolean,
  }
}

