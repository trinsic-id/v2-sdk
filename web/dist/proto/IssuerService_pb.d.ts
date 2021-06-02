import * as jspb from 'google-protobuf'

import * as google_protobuf_struct_pb from 'google-protobuf/google/protobuf/struct_pb';
import * as CoreService_pb from './CoreService_pb';


export class IssueRequest extends jspb.Message {
  getDocument(): google_protobuf_struct_pb.Struct | undefined;
  setDocument(value?: google_protobuf_struct_pb.Struct): IssueRequest;
  hasDocument(): boolean;
  clearDocument(): IssueRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): IssueRequest.AsObject;
  static toObject(includeInstance: boolean, msg: IssueRequest): IssueRequest.AsObject;
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
  getDocument(): google_protobuf_struct_pb.Struct | undefined;
  setDocument(value?: google_protobuf_struct_pb.Struct): IssueResponse;
  hasDocument(): boolean;
  clearDocument(): IssueResponse;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): IssueResponse.AsObject;
  static toObject(includeInstance: boolean, msg: IssueResponse): IssueResponse.AsObject;
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
  getRevealDocument(): google_protobuf_struct_pb.Struct | undefined;
  setRevealDocument(value?: google_protobuf_struct_pb.Struct): CreateProofRequest;
  hasRevealDocument(): boolean;
  clearRevealDocument(): CreateProofRequest;

  getDocumentId(): string;
  setDocumentId(value: string): CreateProofRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): CreateProofRequest.AsObject;
  static toObject(includeInstance: boolean, msg: CreateProofRequest): CreateProofRequest.AsObject;
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
  getProofDocument(): google_protobuf_struct_pb.Struct | undefined;
  setProofDocument(value?: google_protobuf_struct_pb.Struct): CreateProofResponse;
  hasProofDocument(): boolean;
  clearProofDocument(): CreateProofResponse;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): CreateProofResponse.AsObject;
  static toObject(includeInstance: boolean, msg: CreateProofResponse): CreateProofResponse.AsObject;
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
  getProofDocument(): google_protobuf_struct_pb.Struct | undefined;
  setProofDocument(value?: google_protobuf_struct_pb.Struct): VerifyProofRequest;
  hasProofDocument(): boolean;
  clearProofDocument(): VerifyProofRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): VerifyProofRequest.AsObject;
  static toObject(includeInstance: boolean, msg: VerifyProofRequest): VerifyProofRequest.AsObject;
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
  setValid(value: boolean): VerifyProofResponse;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): VerifyProofResponse.AsObject;
  static toObject(includeInstance: boolean, msg: VerifyProofResponse): VerifyProofResponse.AsObject;
  static serializeBinaryToWriter(message: VerifyProofResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): VerifyProofResponse;
  static deserializeBinaryFromReader(message: VerifyProofResponse, reader: jspb.BinaryReader): VerifyProofResponse;
}

export namespace VerifyProofResponse {
  export type AsObject = {
    valid: boolean,
  }
}

export class SendRequest extends jspb.Message {
  getEmail(): string;
  setEmail(value: string): SendRequest;

  getDidUri(): string;
  setDidUri(value: string): SendRequest;

  getDidcommInvitation(): google_protobuf_struct_pb.Struct | undefined;
  setDidcommInvitation(value?: google_protobuf_struct_pb.Struct): SendRequest;
  hasDidcommInvitation(): boolean;
  clearDidcommInvitation(): SendRequest;

  getDocument(): google_protobuf_struct_pb.Struct | undefined;
  setDocument(value?: google_protobuf_struct_pb.Struct): SendRequest;
  hasDocument(): boolean;
  clearDocument(): SendRequest;

  getDeliveryMethodCase(): SendRequest.DeliveryMethodCase;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): SendRequest.AsObject;
  static toObject(includeInstance: boolean, msg: SendRequest): SendRequest.AsObject;
  static serializeBinaryToWriter(message: SendRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): SendRequest;
  static deserializeBinaryFromReader(message: SendRequest, reader: jspb.BinaryReader): SendRequest;
}

export namespace SendRequest {
  export type AsObject = {
    email: string,
    didUri: string,
    didcommInvitation?: google_protobuf_struct_pb.Struct.AsObject,
    document?: google_protobuf_struct_pb.Struct.AsObject,
  }

  export enum DeliveryMethodCase { 
    DELIVERY_METHOD_NOT_SET = 0,
    EMAIL = 1,
    DID_URI = 2,
    DIDCOMM_INVITATION = 3,
  }
}

export class SendResponse extends jspb.Message {
  getStatus(): CoreService_pb.ResponseStatus;
  setStatus(value: CoreService_pb.ResponseStatus): SendResponse;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): SendResponse.AsObject;
  static toObject(includeInstance: boolean, msg: SendResponse): SendResponse.AsObject;
  static serializeBinaryToWriter(message: SendResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): SendResponse;
  static deserializeBinaryFromReader(message: SendResponse, reader: jspb.BinaryReader): SendResponse;
}

export namespace SendResponse {
  export type AsObject = {
    status: CoreService_pb.ResponseStatus,
  }
}

