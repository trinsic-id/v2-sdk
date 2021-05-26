// package: trinsic.services
// file: models/Presentations.proto

import * as jspb from "google-protobuf";
import * as models_Attributes_pb from "../models/Attributes_pb";

export class GeneratePresentationRequest extends jspb.Message {
  getCredentialid(): string;
  setCredentialid(value: string): void;

  getPresentationtemplateid(): string;
  setPresentationtemplateid(value: string): void;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GeneratePresentationRequest.AsObject;
  static toObject(includeInstance: boolean, msg: GeneratePresentationRequest): GeneratePresentationRequest.AsObject;
  static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
  static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
  static serializeBinaryToWriter(message: GeneratePresentationRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GeneratePresentationRequest;
  static deserializeBinaryFromReader(message: GeneratePresentationRequest, reader: jspb.BinaryReader): GeneratePresentationRequest;
}

export namespace GeneratePresentationRequest {
  export type AsObject = {
    credentialid: string,
    presentationtemplateid: string,
  }
}

export class GeneratePresentationResponse extends jspb.Message {
  getData(): string;
  setData(value: string): void;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GeneratePresentationResponse.AsObject;
  static toObject(includeInstance: boolean, msg: GeneratePresentationResponse): GeneratePresentationResponse.AsObject;
  static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
  static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
  static serializeBinaryToWriter(message: GeneratePresentationResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GeneratePresentationResponse;
  static deserializeBinaryFromReader(message: GeneratePresentationResponse, reader: jspb.BinaryReader): GeneratePresentationResponse;
}

export namespace GeneratePresentationResponse {
  export type AsObject = {
    data: string,
  }
}

export class SubmitPresentationRequest extends jspb.Message {
  getData(): string;
  setData(value: string): void;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): SubmitPresentationRequest.AsObject;
  static toObject(includeInstance: boolean, msg: SubmitPresentationRequest): SubmitPresentationRequest.AsObject;
  static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
  static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
  static serializeBinaryToWriter(message: SubmitPresentationRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): SubmitPresentationRequest;
  static deserializeBinaryFromReader(message: SubmitPresentationRequest, reader: jspb.BinaryReader): SubmitPresentationRequest;
}

export namespace SubmitPresentationRequest {
  export type AsObject = {
    data: string,
  }
}

export class SubmitPresentationResponse extends jspb.Message {
  getPresentationtemplateid(): string;
  setPresentationtemplateid(value: string): void;

  getHolderid(): string;
  setHolderid(value: string): void;

  clearVerifiedattributesList(): void;
  getVerifiedattributesList(): Array<models_Attributes_pb.Attribute>;
  setVerifiedattributesList(value: Array<models_Attributes_pb.Attribute>): void;
  addVerifiedattributes(value?: models_Attributes_pb.Attribute, index?: number): models_Attributes_pb.Attribute;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): SubmitPresentationResponse.AsObject;
  static toObject(includeInstance: boolean, msg: SubmitPresentationResponse): SubmitPresentationResponse.AsObject;
  static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
  static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
  static serializeBinaryToWriter(message: SubmitPresentationResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): SubmitPresentationResponse;
  static deserializeBinaryFromReader(message: SubmitPresentationResponse, reader: jspb.BinaryReader): SubmitPresentationResponse;
}

export namespace SubmitPresentationResponse {
  export type AsObject = {
    presentationtemplateid: string,
    holderid: string,
    verifiedattributesList: Array<models_Attributes_pb.Attribute.AsObject>,
  }
}

