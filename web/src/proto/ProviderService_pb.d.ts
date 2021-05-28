import * as jspb from 'google-protobuf'

import * as google_protobuf_struct_pb from 'google-protobuf/google/protobuf/struct_pb';
import * as CoreService_pb from './CoreService_pb';


export class InviteRequest extends jspb.Message {
  getParticipant(): ParticipantType;
  setParticipant(value: ParticipantType): InviteRequest;

  getDescription(): string;
  setDescription(value: string): InviteRequest;

  getEmail(): string;
  setEmail(value: string): InviteRequest;

  getPhone(): string;
  setPhone(value: string): InviteRequest;

  getDidcommInvitation(): InviteRequest.DidCommInvitation | undefined;
  setDidcommInvitation(value?: InviteRequest.DidCommInvitation): InviteRequest;
  hasDidcommInvitation(): boolean;
  clearDidcommInvitation(): InviteRequest;

  getContactMethodCase(): InviteRequest.ContactMethodCase;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): InviteRequest.AsObject;
  static toObject(includeInstance: boolean, msg: InviteRequest): InviteRequest.AsObject;
  static serializeBinaryToWriter(message: InviteRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): InviteRequest;
  static deserializeBinaryFromReader(message: InviteRequest, reader: jspb.BinaryReader): InviteRequest;
}

export namespace InviteRequest {
  export type AsObject = {
    participant: ParticipantType,
    description: string,
    email: string,
    phone: string,
    didcommInvitation?: InviteRequest.DidCommInvitation.AsObject,
  }

  export class DidCommInvitation extends jspb.Message {
    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): DidCommInvitation.AsObject;
    static toObject(includeInstance: boolean, msg: DidCommInvitation): DidCommInvitation.AsObject;
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
  getStatus(): CoreService_pb.ResponseStatus;
  setStatus(value: CoreService_pb.ResponseStatus): InviteResponse;

  getInvitationId(): string;
  setInvitationId(value: string): InviteResponse;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): InviteResponse.AsObject;
  static toObject(includeInstance: boolean, msg: InviteResponse): InviteResponse.AsObject;
  static serializeBinaryToWriter(message: InviteResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): InviteResponse;
  static deserializeBinaryFromReader(message: InviteResponse, reader: jspb.BinaryReader): InviteResponse;
}

export namespace InviteResponse {
  export type AsObject = {
    status: CoreService_pb.ResponseStatus,
    invitationId: string,
  }
}

export class InvitationStatusRequest extends jspb.Message {
  getInvitationId(): string;
  setInvitationId(value: string): InvitationStatusRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): InvitationStatusRequest.AsObject;
  static toObject(includeInstance: boolean, msg: InvitationStatusRequest): InvitationStatusRequest.AsObject;
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
  getStatus(): InvitationStatusResponse.Status;
  setStatus(value: InvitationStatusResponse.Status): InvitationStatusResponse;

  getStatusDetails(): string;
  setStatusDetails(value: string): InvitationStatusResponse;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): InvitationStatusResponse.AsObject;
  static toObject(includeInstance: boolean, msg: InvitationStatusResponse): InvitationStatusResponse.AsObject;
  static serializeBinaryToWriter(message: InvitationStatusResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): InvitationStatusResponse;
  static deserializeBinaryFromReader(message: InvitationStatusResponse, reader: jspb.BinaryReader): InvitationStatusResponse;
}

export namespace InvitationStatusResponse {
  export type AsObject = {
    status: InvitationStatusResponse.Status,
    statusDetails: string,
  }

  export enum Status { 
    ERROR = 0,
    INVITATIONSENT = 1,
    COMPLETED = 2,
  }
}

export enum ParticipantType { 
  PARTICIPANT_TYPE_INDIVIDUAL = 0,
  PARTICIPANT_TYPE_ORGANIZATION = 1,
}
