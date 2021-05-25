// package: trinsic.services
// file: models/Attributes.proto

import * as jspb from "google-protobuf";
import * as google_protobuf_empty_pb from "google-protobuf/google/protobuf/empty_pb";

export class Attribute extends jspb.Message {
  getId(): string;
  setId(value: string): void;

  getName(): string;
  setName(value: string): void;

  getType(): AttributeTypeMap[keyof AttributeTypeMap];
  setType(value: AttributeTypeMap[keyof AttributeTypeMap]): void;

  getValue(): string;
  setValue(value: string): void;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): Attribute.AsObject;
  static toObject(includeInstance: boolean, msg: Attribute): Attribute.AsObject;
  static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
  static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
  static serializeBinaryToWriter(message: Attribute, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): Attribute;
  static deserializeBinaryFromReader(message: Attribute, reader: jspb.BinaryReader): Attribute;
}

export namespace Attribute {
  export type AsObject = {
    id: string,
    name: string,
    type: AttributeTypeMap[keyof AttributeTypeMap],
    value: string,
  }
}

export class AttributeId extends jspb.Message {
  getId(): string;
  setId(value: string): void;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): AttributeId.AsObject;
  static toObject(includeInstance: boolean, msg: AttributeId): AttributeId.AsObject;
  static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
  static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
  static serializeBinaryToWriter(message: AttributeId, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): AttributeId;
  static deserializeBinaryFromReader(message: AttributeId, reader: jspb.BinaryReader): AttributeId;
}

export namespace AttributeId {
  export type AsObject = {
    id: string,
  }
}

export class ListAttributesResponse extends jspb.Message {
  clearAttributesList(): void;
  getAttributesList(): Array<Attribute>;
  setAttributesList(value: Array<Attribute>): void;
  addAttributes(value?: Attribute, index?: number): Attribute;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): ListAttributesResponse.AsObject;
  static toObject(includeInstance: boolean, msg: ListAttributesResponse): ListAttributesResponse.AsObject;
  static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
  static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
  static serializeBinaryToWriter(message: ListAttributesResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): ListAttributesResponse;
  static deserializeBinaryFromReader(message: ListAttributesResponse, reader: jspb.BinaryReader): ListAttributesResponse;
}

export namespace ListAttributesResponse {
  export type AsObject = {
    attributesList: Array<Attribute.AsObject>,
  }
}

export interface AttributeTypeMap {
  DATE: 0;
  NUMBER: 1;
  TEXT: 2;
  ENUM: 3;
}

export const AttributeType: AttributeTypeMap;

