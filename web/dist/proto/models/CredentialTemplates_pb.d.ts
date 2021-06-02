import * as jspb from 'google-protobuf'

import * as models_Attributes_pb from '../models/Attributes_pb';


export class CreateCredentialTemplateRequest extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): CreateCredentialTemplateRequest.AsObject;
  static toObject(includeInstance: boolean, msg: CreateCredentialTemplateRequest): CreateCredentialTemplateRequest.AsObject;
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
  setQuery(value: string): ListCredentialTemplatesRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): ListCredentialTemplatesRequest.AsObject;
  static toObject(includeInstance: boolean, msg: ListCredentialTemplatesRequest): ListCredentialTemplatesRequest.AsObject;
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
  getTemplatesList(): Array<CredentialTemplate>;
  setTemplatesList(value: Array<CredentialTemplate>): ListCredentialTemplatesResponse;
  clearTemplatesList(): ListCredentialTemplatesResponse;
  addTemplates(value?: CredentialTemplate, index?: number): CredentialTemplate;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): ListCredentialTemplatesResponse.AsObject;
  static toObject(includeInstance: boolean, msg: ListCredentialTemplatesResponse): ListCredentialTemplatesResponse.AsObject;
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
  setId(value: string): CredentialTemplate;

  getTitle(): string;
  setTitle(value: string): CredentialTemplate;

  getDescription(): string;
  setDescription(value: string): CredentialTemplate;

  getContextsList(): Array<string>;
  setContextsList(value: Array<string>): CredentialTemplate;
  clearContextsList(): CredentialTemplate;
  addContexts(value: string, index?: number): CredentialTemplate;

  getSchema(): string;
  setSchema(value: string): CredentialTemplate;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): CredentialTemplate.AsObject;
  static toObject(includeInstance: boolean, msg: CredentialTemplate): CredentialTemplate.AsObject;
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

