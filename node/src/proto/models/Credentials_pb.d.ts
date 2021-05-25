// package: trinsic.services
// file: models/Credentials.proto

import * as jspb from "google-protobuf";
import * as models_Attributes_pb from "../models/Attributes_pb";

export class aCredential extends jspb.Message {
  getId(): string;
  setId(value: string): void;

  getIssuerid(): string;
  setIssuerid(value: string): void;

  getReceipientid(): string;
  setReceipientid(value: string): void;

  getCredentialtemplateid(): string;
  setCredentialtemplateid(value: string): void;

  clearAttributesList(): void;
  getAttributesList(): Array<models_Attributes_pb.Attribute>;
  setAttributesList(value: Array<models_Attributes_pb.Attribute>): void;
  addAttributes(value?: models_Attributes_pb.Attribute, index?: number): models_Attributes_pb.Attribute;

  getState(): aCredential.StateMap[keyof aCredential.StateMap];
  setState(value: aCredential.StateMap[keyof aCredential.StateMap]): void;

  getIssuancedate(): number;
  setIssuancedate(value: number): void;

  getExpirationdate(): number;
  setExpirationdate(value: number): void;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): aCredential.AsObject;
  static toObject(includeInstance: boolean, msg: aCredential): aCredential.AsObject;
  static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
  static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
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
    state: aCredential.StateMap[keyof aCredential.StateMap],
    issuancedate: number,
    expirationdate: number,
  }

  export interface StateMap {
    CREATED: 0;
    ISSUED: 1;
    RECEIVED: 2;
    EXPIRED: 3;
    REVOKED: 4;
  }

  export const State: StateMap;
}

export class IssueCredentialRequest extends jspb.Message {
  getIssuerid(): string;
  setIssuerid(value: string): void;

  getReceipientid(): string;
  setReceipientid(value: string): void;

  getCredentialtemplateid(): string;
  setCredentialtemplateid(value: string): void;

  clearAttributesList(): void;
  getAttributesList(): Array<models_Attributes_pb.Attribute>;
  setAttributesList(value: Array<models_Attributes_pb.Attribute>): void;
  addAttributes(value?: models_Attributes_pb.Attribute, index?: number): models_Attributes_pb.Attribute;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): IssueCredentialRequest.AsObject;
  static toObject(includeInstance: boolean, msg: IssueCredentialRequest): IssueCredentialRequest.AsObject;
  static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
  static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
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
  hasCredential(): boolean;
  clearCredential(): void;
  getCredential(): aCredential | undefined;
  setCredential(value?: aCredential): void;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): IssueCredentialResponse.AsObject;
  static toObject(includeInstance: boolean, msg: IssueCredentialResponse): IssueCredentialResponse.AsObject;
  static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
  static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
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
  static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
  static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
  static serializeBinaryToWriter(message: ListCredentialRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): ListCredentialRequest;
  static deserializeBinaryFromReader(message: ListCredentialRequest, reader: jspb.BinaryReader): ListCredentialRequest;
}

export namespace ListCredentialRequest {
  export type AsObject = {
  }
}

export class ListCredentialResponse extends jspb.Message {
  clearCredentialsList(): void;
  getCredentialsList(): Array<aCredential>;
  setCredentialsList(value: Array<aCredential>): void;
  addCredentials(value?: aCredential, index?: number): aCredential;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): ListCredentialResponse.AsObject;
  static toObject(includeInstance: boolean, msg: ListCredentialResponse): ListCredentialResponse.AsObject;
  static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
  static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
  static serializeBinaryToWriter(message: ListCredentialResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): ListCredentialResponse;
  static deserializeBinaryFromReader(message: ListCredentialResponse, reader: jspb.BinaryReader): ListCredentialResponse;
}

export namespace ListCredentialResponse {
  export type AsObject = {
    credentialsList: Array<aCredential.AsObject>,
  }
}

