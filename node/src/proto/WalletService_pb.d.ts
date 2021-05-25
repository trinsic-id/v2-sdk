// package: trinsic.services
// file: WalletService.proto

import * as jspb from "google-protobuf";
import * as google_protobuf_struct_pb from "google-protobuf/google/protobuf/struct_pb";
import * as CoreService_pb from "./CoreService_pb";
import * as pbmse_pbmse_pb from "./pbmse/pbmse_pb";

export class CreateWalletRequest extends jspb.Message {
  getController(): string;
  setController(value: string): void;

  getDescription(): string;
  setDescription(value: string): void;

  getSecurityCode(): string;
  setSecurityCode(value: string): void;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): CreateWalletRequest.AsObject;
  static toObject(includeInstance: boolean, msg: CreateWalletRequest): CreateWalletRequest.AsObject;
  static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
  static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
  static serializeBinaryToWriter(message: CreateWalletRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): CreateWalletRequest;
  static deserializeBinaryFromReader(message: CreateWalletRequest, reader: jspb.BinaryReader): CreateWalletRequest;
}

export namespace CreateWalletRequest {
  export type AsObject = {
    controller: string,
    description: string,
    securityCode: string,
  }
}

export class CreateWalletResponse extends jspb.Message {
  getStatus(): CoreService_pb.ResponseStatusMap[keyof CoreService_pb.ResponseStatusMap];
  setStatus(value: CoreService_pb.ResponseStatusMap[keyof CoreService_pb.ResponseStatusMap]): void;

  getWalletId(): string;
  setWalletId(value: string): void;

  getCapability(): string;
  setCapability(value: string): void;

  getInvoker(): string;
  setInvoker(value: string): void;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): CreateWalletResponse.AsObject;
  static toObject(includeInstance: boolean, msg: CreateWalletResponse): CreateWalletResponse.AsObject;
  static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
  static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
  static serializeBinaryToWriter(message: CreateWalletResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): CreateWalletResponse;
  static deserializeBinaryFromReader(message: CreateWalletResponse, reader: jspb.BinaryReader): CreateWalletResponse;
}

export namespace CreateWalletResponse {
  export type AsObject = {
    status: CoreService_pb.ResponseStatusMap[keyof CoreService_pb.ResponseStatusMap],
    walletId: string,
    capability: string,
    invoker: string,
  }
}

export class ConnectRequest extends jspb.Message {
  hasEmail(): boolean;
  clearEmail(): void;
  getEmail(): string;
  setEmail(value: string): void;

  hasPhone(): boolean;
  clearPhone(): void;
  getPhone(): string;
  setPhone(value: string): void;

  getContactMethodCase(): ConnectRequest.ContactMethodCase;
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): ConnectRequest.AsObject;
  static toObject(includeInstance: boolean, msg: ConnectRequest): ConnectRequest.AsObject;
  static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
  static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
  static serializeBinaryToWriter(message: ConnectRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): ConnectRequest;
  static deserializeBinaryFromReader(message: ConnectRequest, reader: jspb.BinaryReader): ConnectRequest;
}

export namespace ConnectRequest {
  export type AsObject = {
    email: string,
    phone: string,
  }

  export enum ContactMethodCase {
    CONTACT_METHOD_NOT_SET = 0,
    EMAIL = 5,
    PHONE = 6,
  }
}

export class ConnectResponse extends jspb.Message {
  getStatus(): CoreService_pb.ResponseStatusMap[keyof CoreService_pb.ResponseStatusMap];
  setStatus(value: CoreService_pb.ResponseStatusMap[keyof CoreService_pb.ResponseStatusMap]): void;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): ConnectResponse.AsObject;
  static toObject(includeInstance: boolean, msg: ConnectResponse): ConnectResponse.AsObject;
  static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
  static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
  static serializeBinaryToWriter(message: ConnectResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): ConnectResponse;
  static deserializeBinaryFromReader(message: ConnectResponse, reader: jspb.BinaryReader): ConnectResponse;
}

export namespace ConnectResponse {
  export type AsObject = {
    status: CoreService_pb.ResponseStatusMap[keyof CoreService_pb.ResponseStatusMap],
  }
}

export class InvitationToken extends jspb.Message {
  getSecurityCode(): string;
  setSecurityCode(value: string): void;

  getWalletId(): string;
  setWalletId(value: string): void;

  hasEmail(): boolean;
  clearEmail(): void;
  getEmail(): string;
  setEmail(value: string): void;

  hasPhone(): boolean;
  clearPhone(): void;
  getPhone(): string;
  setPhone(value: string): void;

  getContactMethodCase(): InvitationToken.ContactMethodCase;
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): InvitationToken.AsObject;
  static toObject(includeInstance: boolean, msg: InvitationToken): InvitationToken.AsObject;
  static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
  static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
  static serializeBinaryToWriter(message: InvitationToken, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): InvitationToken;
  static deserializeBinaryFromReader(message: InvitationToken, reader: jspb.BinaryReader): InvitationToken;
}

export namespace InvitationToken {
  export type AsObject = {
    securityCode: string,
    walletId: string,
    email: string,
    phone: string,
  }

  export enum ContactMethodCase {
    CONTACT_METHOD_NOT_SET = 0,
    EMAIL = 5,
    PHONE = 6,
  }
}

export class WalletProfile extends jspb.Message {
  hasDidDocument(): boolean;
  clearDidDocument(): void;
  getDidDocument(): google_protobuf_struct_pb.Struct | undefined;
  setDidDocument(value?: google_protobuf_struct_pb.Struct): void;

  getWalletId(): string;
  setWalletId(value: string): void;

  getInvoker(): string;
  setInvoker(value: string): void;

  getCapability(): string;
  setCapability(value: string): void;

  getInvokerJwk(): Uint8Array | string;
  getInvokerJwk_asU8(): Uint8Array;
  getInvokerJwk_asB64(): string;
  setInvokerJwk(value: Uint8Array | string): void;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): WalletProfile.AsObject;
  static toObject(includeInstance: boolean, msg: WalletProfile): WalletProfile.AsObject;
  static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
  static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
  static serializeBinaryToWriter(message: WalletProfile, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): WalletProfile;
  static deserializeBinaryFromReader(message: WalletProfile, reader: jspb.BinaryReader): WalletProfile;
}

export namespace WalletProfile {
  export type AsObject = {
    didDocument?: google_protobuf_struct_pb.Struct.AsObject,
    walletId: string,
    invoker: string,
    capability: string,
    invokerJwk: Uint8Array | string,
  }
}

export class GrantAccessRequest extends jspb.Message {
  getWalletId(): string;
  setWalletId(value: string): void;

  getDid(): string;
  setDid(value: string): void;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GrantAccessRequest.AsObject;
  static toObject(includeInstance: boolean, msg: GrantAccessRequest): GrantAccessRequest.AsObject;
  static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
  static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
  static serializeBinaryToWriter(message: GrantAccessRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GrantAccessRequest;
  static deserializeBinaryFromReader(message: GrantAccessRequest, reader: jspb.BinaryReader): GrantAccessRequest;
}

export namespace GrantAccessRequest {
  export type AsObject = {
    walletId: string,
    did: string,
  }
}

export class GrantAccessResponse extends jspb.Message {
  getStatus(): CoreService_pb.ResponseStatusMap[keyof CoreService_pb.ResponseStatusMap];
  setStatus(value: CoreService_pb.ResponseStatusMap[keyof CoreService_pb.ResponseStatusMap]): void;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GrantAccessResponse.AsObject;
  static toObject(includeInstance: boolean, msg: GrantAccessResponse): GrantAccessResponse.AsObject;
  static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
  static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
  static serializeBinaryToWriter(message: GrantAccessResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GrantAccessResponse;
  static deserializeBinaryFromReader(message: GrantAccessResponse, reader: jspb.BinaryReader): GrantAccessResponse;
}

export namespace GrantAccessResponse {
  export type AsObject = {
    status: CoreService_pb.ResponseStatusMap[keyof CoreService_pb.ResponseStatusMap],
  }
}

export class RevokeAccessRequest extends jspb.Message {
  getWalletId(): string;
  setWalletId(value: string): void;

  getDid(): string;
  setDid(value: string): void;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): RevokeAccessRequest.AsObject;
  static toObject(includeInstance: boolean, msg: RevokeAccessRequest): RevokeAccessRequest.AsObject;
  static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
  static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
  static serializeBinaryToWriter(message: RevokeAccessRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): RevokeAccessRequest;
  static deserializeBinaryFromReader(message: RevokeAccessRequest, reader: jspb.BinaryReader): RevokeAccessRequest;
}

export namespace RevokeAccessRequest {
  export type AsObject = {
    walletId: string,
    did: string,
  }
}

export class RevokeAccessResponse extends jspb.Message {
  getStatus(): CoreService_pb.ResponseStatusMap[keyof CoreService_pb.ResponseStatusMap];
  setStatus(value: CoreService_pb.ResponseStatusMap[keyof CoreService_pb.ResponseStatusMap]): void;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): RevokeAccessResponse.AsObject;
  static toObject(includeInstance: boolean, msg: RevokeAccessResponse): RevokeAccessResponse.AsObject;
  static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
  static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
  static serializeBinaryToWriter(message: RevokeAccessResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): RevokeAccessResponse;
  static deserializeBinaryFromReader(message: RevokeAccessResponse, reader: jspb.BinaryReader): RevokeAccessResponse;
}

export namespace RevokeAccessResponse {
  export type AsObject = {
    status: CoreService_pb.ResponseStatusMap[keyof CoreService_pb.ResponseStatusMap],
  }
}

export class GetProviderConfigurationRequest extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetProviderConfigurationRequest.AsObject;
  static toObject(includeInstance: boolean, msg: GetProviderConfigurationRequest): GetProviderConfigurationRequest.AsObject;
  static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
  static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
  static serializeBinaryToWriter(message: GetProviderConfigurationRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetProviderConfigurationRequest;
  static deserializeBinaryFromReader(message: GetProviderConfigurationRequest, reader: jspb.BinaryReader): GetProviderConfigurationRequest;
}

export namespace GetProviderConfigurationRequest {
  export type AsObject = {
  }
}

export class GetProviderConfigurationResponse extends jspb.Message {
  hasDidDocument(): boolean;
  clearDidDocument(): void;
  getDidDocument(): google_protobuf_struct_pb.Struct | undefined;
  setDidDocument(value?: google_protobuf_struct_pb.Struct): void;

  getKeyAgreementKeyId(): string;
  setKeyAgreementKeyId(value: string): void;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetProviderConfigurationResponse.AsObject;
  static toObject(includeInstance: boolean, msg: GetProviderConfigurationResponse): GetProviderConfigurationResponse.AsObject;
  static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
  static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
  static serializeBinaryToWriter(message: GetProviderConfigurationResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetProviderConfigurationResponse;
  static deserializeBinaryFromReader(message: GetProviderConfigurationResponse, reader: jspb.BinaryReader): GetProviderConfigurationResponse;
}

export namespace GetProviderConfigurationResponse {
  export type AsObject = {
    didDocument?: google_protobuf_struct_pb.Struct.AsObject,
    keyAgreementKeyId: string,
  }
}

export class SearchRequest extends jspb.Message {
  getQuery(): string;
  setQuery(value: string): void;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): SearchRequest.AsObject;
  static toObject(includeInstance: boolean, msg: SearchRequest): SearchRequest.AsObject;
  static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
  static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
  static serializeBinaryToWriter(message: SearchRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): SearchRequest;
  static deserializeBinaryFromReader(message: SearchRequest, reader: jspb.BinaryReader): SearchRequest;
}

export namespace SearchRequest {
  export type AsObject = {
    query: string,
  }
}

export class SearchResponse extends jspb.Message {
  clearItemsList(): void;
  getItemsList(): Array<google_protobuf_struct_pb.Struct>;
  setItemsList(value: Array<google_protobuf_struct_pb.Struct>): void;
  addItems(value?: google_protobuf_struct_pb.Struct, index?: number): google_protobuf_struct_pb.Struct;

  getHasMore(): boolean;
  setHasMore(value: boolean): void;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): SearchResponse.AsObject;
  static toObject(includeInstance: boolean, msg: SearchResponse): SearchResponse.AsObject;
  static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
  static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
  static serializeBinaryToWriter(message: SearchResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): SearchResponse;
  static deserializeBinaryFromReader(message: SearchResponse, reader: jspb.BinaryReader): SearchResponse;
}

export namespace SearchResponse {
  export type AsObject = {
    itemsList: Array<google_protobuf_struct_pb.Struct.AsObject>,
    hasMore: boolean,
  }
}

export class InsertItemRequest extends jspb.Message {
  hasItem(): boolean;
  clearItem(): void;
  getItem(): google_protobuf_struct_pb.Struct | undefined;
  setItem(value?: google_protobuf_struct_pb.Struct): void;

  getItemType(): string;
  setItemType(value: string): void;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): InsertItemRequest.AsObject;
  static toObject(includeInstance: boolean, msg: InsertItemRequest): InsertItemRequest.AsObject;
  static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
  static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
  static serializeBinaryToWriter(message: InsertItemRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): InsertItemRequest;
  static deserializeBinaryFromReader(message: InsertItemRequest, reader: jspb.BinaryReader): InsertItemRequest;
}

export namespace InsertItemRequest {
  export type AsObject = {
    item?: google_protobuf_struct_pb.Struct.AsObject,
    itemType: string,
  }
}

export class InsertItemResponse extends jspb.Message {
  getStatus(): CoreService_pb.ResponseStatusMap[keyof CoreService_pb.ResponseStatusMap];
  setStatus(value: CoreService_pb.ResponseStatusMap[keyof CoreService_pb.ResponseStatusMap]): void;

  getItemId(): string;
  setItemId(value: string): void;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): InsertItemResponse.AsObject;
  static toObject(includeInstance: boolean, msg: InsertItemResponse): InsertItemResponse.AsObject;
  static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
  static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
  static serializeBinaryToWriter(message: InsertItemResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): InsertItemResponse;
  static deserializeBinaryFromReader(message: InsertItemResponse, reader: jspb.BinaryReader): InsertItemResponse;
}

export namespace InsertItemResponse {
  export type AsObject = {
    status: CoreService_pb.ResponseStatusMap[keyof CoreService_pb.ResponseStatusMap],
    itemId: string,
  }
}

