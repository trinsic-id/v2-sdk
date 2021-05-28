import * as jspb from 'google-protobuf'



export class Organization extends jspb.Message {
  getId(): string;
  setId(value: string): Organization;

  getName(): string;
  setName(value: string): Organization;

  getCapabilitiesList(): Array<rganization.Capability>;
  setCapabilitiesList(value: Array<rganization.Capability>): Organization;
  clearCapabilitiesList(): Organization;
  addCapabilities(value: rganization.Capability, index?: number): Organization;

  getMembersList(): Array<Member>;
  setMembersList(value: Array<Member>): Organization;
  clearMembersList(): Organization;
  addMembers(value?: Member, index?: number): Member;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): Organization.AsObject;
  static toObject(includeInstance: boolean, msg: Organization): Organization.AsObject;
  static serializeBinaryToWriter(message: Organization, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): Organization;
  static deserializeBinaryFromReader(message: Organization, reader: jspb.BinaryReader): Organization;
}

export namespace Organization {
  export type AsObject = {
    id: string,
    name: string,
    capabilitiesList: Array<rganization.Capability>,
    membersList: Array<Member.AsObject>,
  }

  export enum Capability { 
    VERIFIER = 0,
    ISSUER = 1,
    PROVIDER = 2,
  }
}

export class Member extends jspb.Message {
  getName(): string;
  setName(value: string): Member;

  getEmail(): string;
  setEmail(value: string): Member;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): Member.AsObject;
  static toObject(includeInstance: boolean, msg: Member): Member.AsObject;
  static serializeBinaryToWriter(message: Member, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): Member;
  static deserializeBinaryFromReader(message: Member, reader: jspb.BinaryReader): Member;
}

export namespace Member {
  export type AsObject = {
    name: string,
    email: string,
  }
}

export class CreateOrganizationRequest extends jspb.Message {
  getOrganization(): Organization | undefined;
  setOrganization(value?: Organization): CreateOrganizationRequest;
  hasOrganization(): boolean;
  clearOrganization(): CreateOrganizationRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): CreateOrganizationRequest.AsObject;
  static toObject(includeInstance: boolean, msg: CreateOrganizationRequest): CreateOrganizationRequest.AsObject;
  static serializeBinaryToWriter(message: CreateOrganizationRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): CreateOrganizationRequest;
  static deserializeBinaryFromReader(message: CreateOrganizationRequest, reader: jspb.BinaryReader): CreateOrganizationRequest;
}

export namespace CreateOrganizationRequest {
  export type AsObject = {
    organization?: Organization.AsObject,
  }
}

export class CreateOrganizationResponse extends jspb.Message {
  getOrganization(): Organization | undefined;
  setOrganization(value?: Organization): CreateOrganizationResponse;
  hasOrganization(): boolean;
  clearOrganization(): CreateOrganizationResponse;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): CreateOrganizationResponse.AsObject;
  static toObject(includeInstance: boolean, msg: CreateOrganizationResponse): CreateOrganizationResponse.AsObject;
  static serializeBinaryToWriter(message: CreateOrganizationResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): CreateOrganizationResponse;
  static deserializeBinaryFromReader(message: CreateOrganizationResponse, reader: jspb.BinaryReader): CreateOrganizationResponse;
}

export namespace CreateOrganizationResponse {
  export type AsObject = {
    organization?: Organization.AsObject,
  }
}

export class ListOrganizationRequest extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): ListOrganizationRequest.AsObject;
  static toObject(includeInstance: boolean, msg: ListOrganizationRequest): ListOrganizationRequest.AsObject;
  static serializeBinaryToWriter(message: ListOrganizationRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): ListOrganizationRequest;
  static deserializeBinaryFromReader(message: ListOrganizationRequest, reader: jspb.BinaryReader): ListOrganizationRequest;
}

export namespace ListOrganizationRequest {
  export type AsObject = {
  }
}

export class ListOrganizationResponse extends jspb.Message {
  getOrganizationList(): Array<Organization>;
  setOrganizationList(value: Array<Organization>): ListOrganizationResponse;
  clearOrganizationList(): ListOrganizationResponse;
  addOrganization(value?: Organization, index?: number): Organization;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): ListOrganizationResponse.AsObject;
  static toObject(includeInstance: boolean, msg: ListOrganizationResponse): ListOrganizationResponse.AsObject;
  static serializeBinaryToWriter(message: ListOrganizationResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): ListOrganizationResponse;
  static deserializeBinaryFromReader(message: ListOrganizationResponse, reader: jspb.BinaryReader): ListOrganizationResponse;
}

export namespace ListOrganizationResponse {
  export type AsObject = {
    organizationList: Array<Organization.AsObject>,
  }
}

