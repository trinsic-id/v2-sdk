import * as jspb from 'google-protobuf'

import * as models_Attributes_pb from '../models/Attributes_pb';


export class GeneratePresentationRequest extends jspb.Message {
  getCredentialid(): string;
  setCredentialid(value: string): GeneratePresentationRequest;

  getPresentationtemplateid(): string;
  setPresentationtemplateid(value: string): GeneratePresentationRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GeneratePresentationRequest.AsObject;
  static toObject(includeInstance: boolean, msg: GeneratePresentationRequest): GeneratePresentationRequest.AsObject;
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
  setData(value: string): GeneratePresentationResponse;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GeneratePresentationResponse.AsObject;
  static toObject(includeInstance: boolean, msg: GeneratePresentationResponse): GeneratePresentationResponse.AsObject;
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
  setData(value: string): SubmitPresentationRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): SubmitPresentationRequest.AsObject;
  static toObject(includeInstance: boolean, msg: SubmitPresentationRequest): SubmitPresentationRequest.AsObject;
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
  setPresentationtemplateid(value: string): SubmitPresentationResponse;

  getHolderid(): string;
  setHolderid(value: string): SubmitPresentationResponse;

  getVerifiedattributesList(): Array<models_Attributes_pb.Attribute>;
  setVerifiedattributesList(value: Array<models_Attributes_pb.Attribute>): SubmitPresentationResponse;
  clearVerifiedattributesList(): SubmitPresentationResponse;
  addVerifiedattributes(value?: models_Attributes_pb.Attribute, index?: number): models_Attributes_pb.Attribute;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): SubmitPresentationResponse.AsObject;
  static toObject(includeInstance: boolean, msg: SubmitPresentationResponse): SubmitPresentationResponse.AsObject;
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

