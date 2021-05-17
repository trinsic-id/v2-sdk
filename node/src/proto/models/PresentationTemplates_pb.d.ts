// package: trinsic.services
// file: models/PresentationTemplates.proto

import * as jspb from "google-protobuf";
import * as models_Attributes_pb from "../models/Attributes_pb";

export class CreatePresentationTemplateRequest extends jspb.Message {
  getName(): string;
  setName(value: string): void;

  clearAttributesList(): void;
  getAttributesList(): Array<models_Attributes_pb.Attribute>;
  setAttributesList(value: Array<models_Attributes_pb.Attribute>): void;
  addAttributes(value?: models_Attributes_pb.Attribute, index?: number): models_Attributes_pb.Attribute;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): CreatePresentationTemplateRequest.AsObject;
  static toObject(includeInstance: boolean, msg: CreatePresentationTemplateRequest): CreatePresentationTemplateRequest.AsObject;
  static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
  static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
  static serializeBinaryToWriter(message: CreatePresentationTemplateRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): CreatePresentationTemplateRequest;
  static deserializeBinaryFromReader(message: CreatePresentationTemplateRequest, reader: jspb.BinaryReader): CreatePresentationTemplateRequest;
}

export namespace CreatePresentationTemplateRequest {
  export type AsObject = {
    name: string,
    attributesList: Array<models_Attributes_pb.Attribute.AsObject>,
  }
}

export class CreatePresentationTemplateResponse extends jspb.Message {
  getId(): string;
  setId(value: string): void;

  getName(): string;
  setName(value: string): void;

  clearAttributesList(): void;
  getAttributesList(): Array<models_Attributes_pb.Attribute>;
  setAttributesList(value: Array<models_Attributes_pb.Attribute>): void;
  addAttributes(value?: models_Attributes_pb.Attribute, index?: number): models_Attributes_pb.Attribute;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): CreatePresentationTemplateResponse.AsObject;
  static toObject(includeInstance: boolean, msg: CreatePresentationTemplateResponse): CreatePresentationTemplateResponse.AsObject;
  static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
  static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
  static serializeBinaryToWriter(message: CreatePresentationTemplateResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): CreatePresentationTemplateResponse;
  static deserializeBinaryFromReader(message: CreatePresentationTemplateResponse, reader: jspb.BinaryReader): CreatePresentationTemplateResponse;
}

export namespace CreatePresentationTemplateResponse {
  export type AsObject = {
    id: string,
    name: string,
    attributesList: Array<models_Attributes_pb.Attribute.AsObject>,
  }
}

export class ListPresentationTemplateResponse extends jspb.Message {
  clearTemplatesList(): void;
  getTemplatesList(): Array<PresentationTemplate>;
  setTemplatesList(value: Array<PresentationTemplate>): void;
  addTemplates(value?: PresentationTemplate, index?: number): PresentationTemplate;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): ListPresentationTemplateResponse.AsObject;
  static toObject(includeInstance: boolean, msg: ListPresentationTemplateResponse): ListPresentationTemplateResponse.AsObject;
  static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
  static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
  static serializeBinaryToWriter(message: ListPresentationTemplateResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): ListPresentationTemplateResponse;
  static deserializeBinaryFromReader(message: ListPresentationTemplateResponse, reader: jspb.BinaryReader): ListPresentationTemplateResponse;
}

export namespace ListPresentationTemplateResponse {
  export type AsObject = {
    templatesList: Array<PresentationTemplate.AsObject>,
  }
}

export class ListPresentationTemplateRequest extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): ListPresentationTemplateRequest.AsObject;
  static toObject(includeInstance: boolean, msg: ListPresentationTemplateRequest): ListPresentationTemplateRequest.AsObject;
  static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
  static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
  static serializeBinaryToWriter(message: ListPresentationTemplateRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): ListPresentationTemplateRequest;
  static deserializeBinaryFromReader(message: ListPresentationTemplateRequest, reader: jspb.BinaryReader): ListPresentationTemplateRequest;
}

export namespace ListPresentationTemplateRequest {
  export type AsObject = {
  }
}

export class PresentationTemplate extends jspb.Message {
  getId(): string;
  setId(value: string): void;

  getName(): string;
  setName(value: string): void;

  clearAttributesList(): void;
  getAttributesList(): Array<models_Attributes_pb.Attribute>;
  setAttributesList(value: Array<models_Attributes_pb.Attribute>): void;
  addAttributes(value?: models_Attributes_pb.Attribute, index?: number): models_Attributes_pb.Attribute;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): PresentationTemplate.AsObject;
  static toObject(includeInstance: boolean, msg: PresentationTemplate): PresentationTemplate.AsObject;
  static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
  static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
  static serializeBinaryToWriter(message: PresentationTemplate, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): PresentationTemplate;
  static deserializeBinaryFromReader(message: PresentationTemplate, reader: jspb.BinaryReader): PresentationTemplate;
}

export namespace PresentationTemplate {
  export type AsObject = {
    id: string,
    name: string,
    attributesList: Array<models_Attributes_pb.Attribute.AsObject>,
  }
}

