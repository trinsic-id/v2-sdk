// package: trinsic.services
// file: models/CredentialTemplates.proto

import * as jspb from "google-protobuf";
import * as models_Attributes_pb from "../models/Attributes_pb";

export class CreateCredentialTemplateRequest extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): CreateCredentialTemplateRequest.AsObject;
  static toObject(includeInstance: boolean, msg: CreateCredentialTemplateRequest): CreateCredentialTemplateRequest.AsObject;
  static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
  static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
  static serializeBinaryToWriter(message: CreateCredentialTemplateRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): CreateCredentialTemplateRequest;
  static deserializeBinaryFromReader(message: CreateCredentialTemplateRequest, reader: jspb.BinaryReader): CreateCredentialTemplateRequest;
}

export namespace CreateCredentialTemplateRequest {
  export type AsObject = {
  }
}

export class CreateCredentialTemplateResponse extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): CreateCredentialTemplateResponse.AsObject;
  static toObject(includeInstance: boolean, msg: CreateCredentialTemplateResponse): CreateCredentialTemplateResponse.AsObject;
  static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
  static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
  static serializeBinaryToWriter(message: CreateCredentialTemplateResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): CreateCredentialTemplateResponse;
  static deserializeBinaryFromReader(message: CreateCredentialTemplateResponse, reader: jspb.BinaryReader): CreateCredentialTemplateResponse;
}

export namespace CreateCredentialTemplateResponse {
  export type AsObject = {
  }
}

export class ListCredentialTemplatesRequest extends jspb.Message {
  getQuery(): string;
  setQuery(value: string): void;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): ListCredentialTemplatesRequest.AsObject;
  static toObject(includeInstance: boolean, msg: ListCredentialTemplatesRequest): ListCredentialTemplatesRequest.AsObject;
  static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
  static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
  static serializeBinaryToWriter(message: ListCredentialTemplatesRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): ListCredentialTemplatesRequest;
  static deserializeBinaryFromReader(message: ListCredentialTemplatesRequest, reader: jspb.BinaryReader): ListCredentialTemplatesRequest;
}

export namespace ListCredentialTemplatesRequest {
  export type AsObject = {
    query: string,
  }
}

export class ListCredentialTemplatesResponse extends jspb.Message {
  clearTemplatesList(): void;
  getTemplatesList(): Array<CredentialTemplate>;
  setTemplatesList(value: Array<CredentialTemplate>): void;
  addTemplates(value?: CredentialTemplate, index?: number): CredentialTemplate;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): ListCredentialTemplatesResponse.AsObject;
  static toObject(includeInstance: boolean, msg: ListCredentialTemplatesResponse): ListCredentialTemplatesResponse.AsObject;
  static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
  static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
  static serializeBinaryToWriter(message: ListCredentialTemplatesResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): ListCredentialTemplatesResponse;
  static deserializeBinaryFromReader(message: ListCredentialTemplatesResponse, reader: jspb.BinaryReader): ListCredentialTemplatesResponse;
}

export namespace ListCredentialTemplatesResponse {
  export type AsObject = {
    templatesList: Array<CredentialTemplate.AsObject>,
  }
}

export class CredentialTemplate extends jspb.Message {
  getId(): string;
  setId(value: string): void;

  getTitle(): string;
  setTitle(value: string): void;

  getDescription(): string;
  setDescription(value: string): void;

  clearContextsList(): void;
  getContextsList(): Array<string>;
  setContextsList(value: Array<string>): void;
  addContexts(value: string, index?: number): string;

  getSchema(): string;
  setSchema(value: string): void;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): CredentialTemplate.AsObject;
  static toObject(includeInstance: boolean, msg: CredentialTemplate): CredentialTemplate.AsObject;
  static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
  static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
  static serializeBinaryToWriter(message: CredentialTemplate, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): CredentialTemplate;
  static deserializeBinaryFromReader(message: CredentialTemplate, reader: jspb.BinaryReader): CredentialTemplate;
}

export namespace CredentialTemplate {
  export type AsObject = {
    id: string,
    title: string,
    description: string,
    contextsList: Array<string>,
    schema: string,
  }
}

