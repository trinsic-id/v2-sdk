import * as jspb from 'google-protobuf'

import * as google_protobuf_empty_pb from 'google-protobuf/google/protobuf/empty_pb';


export class Attribute extends jspb.Message {
  getId(): string;
  setId(value: string): Attribute;

  getName(): string;
  setName(value: string): Attribute;

  getType(): AttributeType;
  setType(value: AttributeType): Attribute;

  getValue(): string;
  setValue(value: string): Attribute;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): Attribute.AsObject;
  static toObject(includeInstance: boolean, msg: Attribute): Attribute.AsObject;
  static serializeBinaryToWriter(message: Attribute, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): Attribute;
  static deserializeBinaryFromReader(message: Attribute, reader: jspb.BinaryReader): Attribute;
}

export namespace Attribute {
  export type AsObject = {
    id: string,
    name: string,
    type: AttributeType,
    value: string,
  }
}

export class AttributeId extends jspb.Message {
  getId(): string;
  setId(value: string): AttributeId;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): AttributeId.AsObject;
  static toObject(includeInstance: boolean, msg: AttributeId): AttributeId.AsObject;
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
  getAttributesList(): Array<Attribute>;
  setAttributesList(value: Array<Attribute>): ListAttributesResponse;
  clearAttributesList(): ListAttributesResponse;
  addAttributes(value?: Attribute, index?: number): Attribute;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): ListAttributesResponse.AsObject;
  static toObject(includeInstance: boolean, msg: ListAttributesResponse): ListAttributesResponse.AsObject;
  static serializeBinaryToWriter(message: ListAttributesResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): ListAttributesResponse;
  static deserializeBinaryFromReader(message: ListAttributesResponse, reader: jspb.BinaryReader): ListAttributesResponse;
}

export namespace ListAttributesResponse {
  export type AsObject = {
    attributesList: Array<Attribute.AsObject>,
  }
}

export enum AttributeType { 
  DATE = 0,
  NUMBER = 1,
  TEXT = 2,
  ENUM = 3,
}
