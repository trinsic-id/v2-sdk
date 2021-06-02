import * as jspb from 'google-protobuf'

import * as models_Attributes_pb from '../models/Attributes_pb';


export class aCredential extends jspb.Message {
  getId(): string;
  setId(value: string): aCredential;

  getIssuerid(): string;
  setIssuerid(value: string): aCredential;

  getReceipientid(): string;
  setReceipientid(value: string): aCredential;

  getCredentialtemplateid(): string;
  setCredentialtemplateid(value: string): aCredential;

  getAttributesList(): Array<models_Attributes_pb.Attribute>;
  setAttributesList(value: Array<models_Attributes_pb.Attribute>): aCredential;
  clearAttributesList(): aCredential;
  addAttributes(value?: models_Attributes_pb.Attribute, index?: number): models_Attributes_pb.Attribute;

  getState(): aCredential.State;
  setState(value: aCredential.State): aCredential;

  getIssuancedate(): number;
  setIssuancedate(value: number): aCredential;

  getExpirationdate(): number;
  setExpirationdate(value: number): aCredential;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): aCredential.AsObject;
  static toObject(includeInstance: boolean, msg: aCredential): aCredential.AsObject;
  static serializeBinaryToWriter(message: aCredential, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): aCredential;
  static deserializeBinaryFromReader(message: aCredential, reader: jspb.BinaryReader): aCredential;
}

export namespace aCredential {
  export type AsObject = {
    id: string,
    issuerid: string,
    receipientid: string,
    credentialtemplateid: string,
    attributesList: Array<models_Attributes_pb.Attribute.AsObject>,
    state: aCredential.State,
    issuancedate: number,
    expirationdate: number,
  }

  export enum State { 
    CREATED = 0,
    ISSUED = 1,
    RECEIVED = 2,
    EXPIRED = 3,
    REVOKED = 4,
  }
}

export class IssueCredentialRequest extends jspb.Message {
  getIssuerid(): string;
  setIssuerid(value: string): IssueCredentialRequest;

  getReceipientid(): string;
  setReceipientid(value: string): IssueCredentialRequest;

  getCredentialtemplateid(): string;
  setCredentialtemplateid(value: string): IssueCredentialRequest;

  getAttributesList(): Array<models_Attributes_pb.Attribute>;
  setAttributesList(value: Array<models_Attributes_pb.Attribute>): IssueCredentialRequest;
  clearAttributesList(): IssueCredentialRequest;
  addAttributes(value?: models_Attributes_pb.Attribute, index?: number): models_Attributes_pb.Attribute;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): IssueCredentialRequest.AsObject;
  static toObject(includeInstance: boolean, msg: IssueCredentialRequest): IssueCredentialRequest.AsObject;
  static serializeBinaryToWriter(message: IssueCredentialRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): IssueCredentialRequest;
  static deserializeBinaryFromReader(message: IssueCredentialRequest, reader: jspb.BinaryReader): IssueCredentialRequest;
}

export namespace IssueCredentialRequest {
  export type AsObject = {
    issuerid: string,
    receipientid: string,
    credentialtemplateid: string,
    attributesList: Array<models_Attributes_pb.Attribute.AsObject>,
  }
}

export class IssueCredentialResponse extends jspb.Message {
  getCredential(): aCredential | undefined;
  setCredential(value?: aCredential): IssueCredentialResponse;
  hasCredential(): boolean;
  clearCredential(): IssueCredentialResponse;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): IssueCredentialResponse.AsObject;
  static toObject(includeInstance: boolean, msg: IssueCredentialResponse): IssueCredentialResponse.AsObject;
  static serializeBinaryToWriter(message: IssueCredentialResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): IssueCredentialResponse;
  static deserializeBinaryFromReader(message: IssueCredentialResponse, reader: jspb.BinaryReader): IssueCredentialResponse;
}

export namespace IssueCredentialResponse {
  export type AsObject = {
    credential?: aCredential.AsObject,
  }
}

export class ListCredentialRequest extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): ListCredentialRequest.AsObject;
  static toObject(includeInstance: boolean, msg: ListCredentialRequest): ListCredentialRequest.AsObject;
  static serializeBinaryToWriter(message: ListCredentialRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): ListCredentialRequest;
  static deserializeBinaryFromReader(message: ListCredentialRequest, reader: jspb.BinaryReader): ListCredentialRequest;
}

export namespace ListCredentialRequest {
  export type AsObject = {
  }
}

export class ListCredentialResponse extends jspb.Message {
  getCredentialsList(): Array<aCredential>;
  setCredentialsList(value: Array<aCredential>): ListCredentialResponse;
  clearCredentialsList(): ListCredentialResponse;
  addCredentials(value?: aCredential, index?: number): aCredential;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): ListCredentialResponse.AsObject;
  static toObject(includeInstance: boolean, msg: ListCredentialResponse): ListCredentialResponse.AsObject;
  static serializeBinaryToWriter(message: ListCredentialResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): ListCredentialResponse;
  static deserializeBinaryFromReader(message: ListCredentialResponse, reader: jspb.BinaryReader): ListCredentialResponse;
}

export namespace ListCredentialResponse {
  export type AsObject = {
    credentialsList: Array<aCredential.AsObject>,
  }
}

