// package: trinsic.services
// file: ProviderService.proto

import * as jspb from "google-protobuf";
import * as google_protobuf_struct_pb from "google-protobuf/google/protobuf/struct_pb";

export class InviteRequest extends jspb.Message {
  getParticipant(): ParticipantTypeMap[keyof ParticipantTypeMap];
  setParticipant(value: ParticipantTypeMap[keyof ParticipantTypeMap]): void;

  getDescription(): string;
  setDescription(value: string): void;

  hasEmail(): boolean;
  clearEmail(): void;
  getEmail(): string;
  setEmail(value: string): void;

  hasPhone(): boolean;
  clearPhone(): void;
  getPhone(): string;
  setPhone(value: string): void;

  hasDidcommInvitation(): boolean;
  clearDidcommInvitation(): void;
  getDidcommInvitation(): InviteRequest.DidCommInvitation | undefined;
  setDidcommInvitation(value?: InviteRequest.DidCommInvitation): void;

  getContactMethodCase(): InviteRequest.ContactMethodCase;
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): InviteRequest.AsObject;
  static toObject(includeInstance: boolean, msg: InviteRequest): InviteRequest.AsObject;
  static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
  static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
  static serializeBinaryToWriter(message: InviteRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): InviteRequest;
  static deserializeBinaryFromReader(message: InviteRequest, reader: jspb.BinaryReader): InviteRequest;
}

export namespace InviteRequest {
  export type AsObject = {
    participant: ParticipantTypeMap[keyof ParticipantTypeMap],
    description: string,
    email: string,
    phone: string,
    didcommInvitation?: InviteRequest.DidCommInvitation.AsObject,
  }

  export class DidCommInvitation extends jspb.Message {
    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): DidCommInvitation.AsObject;
    static toObject(includeInstance: boolean, msg: DidCommInvitation): DidCommInvitation.AsObject;
    static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
    static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
    static serializeBinaryToWriter(message: DidCommInvitation, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): DidCommInvitation;
    static deserializeBinaryFromReader(message: DidCommInvitation, reader: jspb.BinaryReader): DidCommInvitation;
  }

  export namespace DidCommInvitation {
    export type AsObject = {
    }
  }

  export enum ContactMethodCase {
    CONTACT_METHOD_NOT_SET = 0,
    EMAIL = 5,
    PHONE = 6,
    DIDCOMM_INVITATION = 7,
  }
}

export class InviteResponse extends jspb.Message {
  getInvitationId(): string;
  setInvitationId(value: string): void;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): InviteResponse.AsObject;
  static toObject(includeInstance: boolean, msg: InviteResponse): InviteResponse.AsObject;
  static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
  static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
  static serializeBinaryToWriter(message: InviteResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): InviteResponse;
  static deserializeBinaryFromReader(message: InviteResponse, reader: jspb.BinaryReader): InviteResponse;
}

export namespace InviteResponse {
  export type AsObject = {
    invitationId: string,
  }
}

export class InvitationStatusRequest extends jspb.Message {
  getInvitationId(): string;
  setInvitationId(value: string): void;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): InvitationStatusRequest.AsObject;
  static toObject(includeInstance: boolean, msg: InvitationStatusRequest): InvitationStatusRequest.AsObject;
  static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
  static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
  static serializeBinaryToWriter(message: InvitationStatusRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): InvitationStatusRequest;
  static deserializeBinaryFromReader(message: InvitationStatusRequest, reader: jspb.BinaryReader): InvitationStatusRequest;
}

export namespace InvitationStatusRequest {
  export type AsObject = {
    invitationId: string,
  }
}

export class InvitationStatusResponse extends jspb.Message {
  getStatus(): InvitationStatusResponse.StatusMap[keyof InvitationStatusResponse.StatusMap];
  setStatus(value: InvitationStatusResponse.StatusMap[keyof InvitationStatusResponse.StatusMap]): void;

  getStatusDetails(): string;
  setStatusDetails(value: string): void;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): InvitationStatusResponse.AsObject;
  static toObject(includeInstance: boolean, msg: InvitationStatusResponse): InvitationStatusResponse.AsObject;
  static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
  static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
  static serializeBinaryToWriter(message: InvitationStatusResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): InvitationStatusResponse;
  static deserializeBinaryFromReader(message: InvitationStatusResponse, reader: jspb.BinaryReader): InvitationStatusResponse;
}

export namespace InvitationStatusResponse {
  export type AsObject = {
    status: InvitationStatusResponse.StatusMap[keyof InvitationStatusResponse.StatusMap],
    statusDetails: string,
  }

  export interface StatusMap {
    ERROR: 0;
    INVITATIONSENT: 1;
    COMPLETED: 2;
  }

  export const Status: StatusMap;
}

export interface ParticipantTypeMap {
  PARTICIPANT_TYPE_INDIVIDUAL: 0;
  PARTICIPANT_TYPE_ORGANIZATION: 1;
}

export const ParticipantType: ParticipantTypeMap;

