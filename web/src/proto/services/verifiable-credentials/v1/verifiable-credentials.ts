/* eslint-disable */
import _m0 from "protobufjs/minimal";

/** Request to create and sign a JSON-LD Verifiable Credential from a template using public key tied to caller */
export interface IssueFromTemplateRequest {
  /** ID of template to use */
  templateId?: string;
  /**
   * JSON document string with keys corresponding to the fields of
   * the template referenced by `template_id`
   */
  valuesJson?: string;
  /**
   * Save a copy of the issued credential to this user's wallet. This copy will only contain
   * the credential data, but not the secret proof value. Issuers may use this data to
   * keep track of the details for revocation status.
   */
  saveCopy?: boolean;
  /**
   * The ISO8601 expiration UTC date of the credential. This is a reserved field in the VC specification.
   * If specified, the issued credential will contain an expiration date.
   * https://www.w3.org/TR/vc-data-model/#expiration
   */
  expirationDate?: string;
  /**
   * If true, the issued credential will contain an attestation of the issuer's membership in the ecosystem's
   * governance framework.
   */
  includeGovernance?: boolean;
}

/** Response to `IssueFromTemplateRequest` */
export interface IssueFromTemplateResponse {
  /**
   * Verifiable Credential document, in JSON-LD form,
   * constructed from the specified template and values; signed
   * with public key tied to caller of `IssueFromTemplateRequest`
   */
  documentJson?: string;
}

/**
 * Request to create a proof for a Verifiable Credential using public key tied to caller.
 * Either `item_id` or `document_json` may be provided, not both.
 */
export interface CreateProofRequest {
  /**
   * A valid JSON-LD frame describing which fields should be
   * revealed in the generated proof.
   * If unspecified, all fields in the document will be revealed
   */
  revealDocumentJson?:
    | string
    | undefined;
  /** Information about what sections of the document to reveal */
  revealTemplate?:
    | RevealTemplateAttributes
    | undefined;
  /** ID of wallet item stored in a Trinsic cloud wallet */
  itemId?:
    | string
    | undefined;
  /**
   * A valid JSON-LD Verifiable Credential document string
   * with an unbound signature. The proof will be derived from this
   * document directly. The document will not be stored in the wallet.
   */
  documentJson?:
    | string
    | undefined;
  /** Wrap the output in a verifiable presentation */
  useVerifiablePresentation?: boolean;
  /**
   * Nonce value used to derive the proof. If not specified, a random nonce will be generated.
   * This value may be represented in base64 format in the proof model.
   */
  nonce?: Uint8Array;
}

export interface RevealTemplateAttributes {
  /** A list of document attributes to reveal. If unset, all attributes will be returned. */
  templateAttributes?: string[];
}

/** Response to `CreateProofRequest` */
export interface CreateProofResponse {
  /** Valid JSON-LD proof for the specified credential */
  proofDocumentJson?: string;
}

/** Request to verify a proof */
export interface VerifyProofRequest {
  /** JSON-LD proof document string to verify */
  proofDocumentJson?: string;
}

/** Response to `VerifyProofRequest` */
export interface VerifyProofResponse {
  /** Whether all validations in `validation_results` passed */
  isValid?: boolean;
  /**
   * Results of each validation check performed,
   * such as schema conformance, revocation status, signature, etc.
   * Detailed results are provided for failed validations.
   */
  validationResults?: { [key: string]: ValidationMessage };
}

export interface VerifyProofResponse_ValidationResultsEntry {
  key: string;
  value?: ValidationMessage;
}

/** Result of a validation check on a proof */
export interface ValidationMessage {
  /** Whether this validation check passed */
  isValid?: boolean;
  /** If validation failed, contains messages explaining why */
  messages?: string[];
}

/** Request to send a document to another user's wallet */
export interface SendRequest {
  /** Email address of user to whom you'll send the item */
  email?:
    | string
    | undefined;
  /** Wallet ID of the recipient within the ecosystem */
  walletId?:
    | string
    | undefined;
  /** DID URI of the recipient */
  didUri?:
    | string
    | undefined;
  /** SMS of user to whom you'll send the item */
  phoneNumber?:
    | string
    | undefined;
  /** Send email notification that credential has been sent to a wallet */
  sendNotification?: boolean;
  /** JSON document to send to recipient */
  documentJson?: string;
}

/** Response to `SendRequest` */
export interface SendResponse {
}

/** Request to update a credential's revocation status */
export interface UpdateStatusRequest {
  /** Credential Status ID to update. This is not the same as the credential's ID. */
  credentialStatusId?: string;
  /** New revocation status of credential */
  revoked?: boolean;
}

/** Response to `UpdateStatusRequest` */
export interface UpdateStatusResponse {
}

/** Request to check a credential's revocation status */
export interface CheckStatusRequest {
  /** Credential Status ID to check. This is not the same as the credential's ID. */
  credentialStatusId?: string;
}

/** Response to `CheckStatusRequest` */
export interface CheckStatusResponse {
  /** The credential's revocation status */
  revoked?: boolean;
}

function createBaseIssueFromTemplateRequest(): IssueFromTemplateRequest {
  return { templateId: "", valuesJson: "", saveCopy: false, expirationDate: "", includeGovernance: false };
}

export const IssueFromTemplateRequest = {
  encode(message: IssueFromTemplateRequest, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.templateId !== undefined && message.templateId !== "") {
      writer.uint32(10).string(message.templateId);
    }
    if (message.valuesJson !== undefined && message.valuesJson !== "") {
      writer.uint32(18).string(message.valuesJson);
    }
    if (message.saveCopy === true) {
      writer.uint32(32).bool(message.saveCopy);
    }
    if (message.expirationDate !== undefined && message.expirationDate !== "") {
      writer.uint32(42).string(message.expirationDate);
    }
    if (message.includeGovernance === true) {
      writer.uint32(48).bool(message.includeGovernance);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): IssueFromTemplateRequest {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseIssueFromTemplateRequest();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag != 10) {
            break;
          }

          message.templateId = reader.string();
          continue;
        case 2:
          if (tag != 18) {
            break;
          }

          message.valuesJson = reader.string();
          continue;
        case 4:
          if (tag != 32) {
            break;
          }

          message.saveCopy = reader.bool();
          continue;
        case 5:
          if (tag != 42) {
            break;
          }

          message.expirationDate = reader.string();
          continue;
        case 6:
          if (tag != 48) {
            break;
          }

          message.includeGovernance = reader.bool();
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): IssueFromTemplateRequest {
    return {
      templateId: isSet(object.templateId) ? String(object.templateId) : "",
      valuesJson: isSet(object.valuesJson) ? String(object.valuesJson) : "",
      saveCopy: isSet(object.saveCopy) ? Boolean(object.saveCopy) : false,
      expirationDate: isSet(object.expirationDate) ? String(object.expirationDate) : "",
      includeGovernance: isSet(object.includeGovernance) ? Boolean(object.includeGovernance) : false,
    };
  },

  toJSON(message: IssueFromTemplateRequest): unknown {
    const obj: any = {};
    message.templateId !== undefined && (obj.templateId = message.templateId);
    message.valuesJson !== undefined && (obj.valuesJson = message.valuesJson);
    message.saveCopy !== undefined && (obj.saveCopy = message.saveCopy);
    message.expirationDate !== undefined && (obj.expirationDate = message.expirationDate);
    message.includeGovernance !== undefined && (obj.includeGovernance = message.includeGovernance);
    return obj;
  },

  create(base?: DeepPartial<IssueFromTemplateRequest>): IssueFromTemplateRequest {
    return IssueFromTemplateRequest.fromPartial(base ?? {});
  },

  fromPartial(object: DeepPartial<IssueFromTemplateRequest>): IssueFromTemplateRequest {
    const message = createBaseIssueFromTemplateRequest();
    message.templateId = object.templateId ?? "";
    message.valuesJson = object.valuesJson ?? "";
    message.saveCopy = object.saveCopy ?? false;
    message.expirationDate = object.expirationDate ?? "";
    message.includeGovernance = object.includeGovernance ?? false;
    return message;
  },
};

function createBaseIssueFromTemplateResponse(): IssueFromTemplateResponse {
  return { documentJson: "" };
}

export const IssueFromTemplateResponse = {
  encode(message: IssueFromTemplateResponse, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.documentJson !== undefined && message.documentJson !== "") {
      writer.uint32(10).string(message.documentJson);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): IssueFromTemplateResponse {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseIssueFromTemplateResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag != 10) {
            break;
          }

          message.documentJson = reader.string();
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): IssueFromTemplateResponse {
    return { documentJson: isSet(object.documentJson) ? String(object.documentJson) : "" };
  },

  toJSON(message: IssueFromTemplateResponse): unknown {
    const obj: any = {};
    message.documentJson !== undefined && (obj.documentJson = message.documentJson);
    return obj;
  },

  create(base?: DeepPartial<IssueFromTemplateResponse>): IssueFromTemplateResponse {
    return IssueFromTemplateResponse.fromPartial(base ?? {});
  },

  fromPartial(object: DeepPartial<IssueFromTemplateResponse>): IssueFromTemplateResponse {
    const message = createBaseIssueFromTemplateResponse();
    message.documentJson = object.documentJson ?? "";
    return message;
  },
};

function createBaseCreateProofRequest(): CreateProofRequest {
  return {
    revealDocumentJson: undefined,
    revealTemplate: undefined,
    itemId: undefined,
    documentJson: undefined,
    useVerifiablePresentation: false,
    nonce: new Uint8Array(),
  };
}

export const CreateProofRequest = {
  encode(message: CreateProofRequest, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.revealDocumentJson !== undefined) {
      writer.uint32(10).string(message.revealDocumentJson);
    }
    if (message.revealTemplate !== undefined) {
      RevealTemplateAttributes.encode(message.revealTemplate, writer.uint32(90).fork()).ldelim();
    }
    if (message.itemId !== undefined) {
      writer.uint32(18).string(message.itemId);
    }
    if (message.documentJson !== undefined) {
      writer.uint32(26).string(message.documentJson);
    }
    if (message.useVerifiablePresentation === true) {
      writer.uint32(32).bool(message.useVerifiablePresentation);
    }
    if (message.nonce !== undefined && message.nonce.length !== 0) {
      writer.uint32(82).bytes(message.nonce);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): CreateProofRequest {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseCreateProofRequest();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag != 10) {
            break;
          }

          message.revealDocumentJson = reader.string();
          continue;
        case 11:
          if (tag != 90) {
            break;
          }

          message.revealTemplate = RevealTemplateAttributes.decode(reader, reader.uint32());
          continue;
        case 2:
          if (tag != 18) {
            break;
          }

          message.itemId = reader.string();
          continue;
        case 3:
          if (tag != 26) {
            break;
          }

          message.documentJson = reader.string();
          continue;
        case 4:
          if (tag != 32) {
            break;
          }

          message.useVerifiablePresentation = reader.bool();
          continue;
        case 10:
          if (tag != 82) {
            break;
          }

          message.nonce = reader.bytes();
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): CreateProofRequest {
    return {
      revealDocumentJson: isSet(object.revealDocumentJson) ? String(object.revealDocumentJson) : undefined,
      revealTemplate: isSet(object.revealTemplate)
        ? RevealTemplateAttributes.fromJSON(object.revealTemplate)
        : undefined,
      itemId: isSet(object.itemId) ? String(object.itemId) : undefined,
      documentJson: isSet(object.documentJson) ? String(object.documentJson) : undefined,
      useVerifiablePresentation: isSet(object.useVerifiablePresentation)
        ? Boolean(object.useVerifiablePresentation)
        : false,
      nonce: isSet(object.nonce) ? bytesFromBase64(object.nonce) : new Uint8Array(),
    };
  },

  toJSON(message: CreateProofRequest): unknown {
    const obj: any = {};
    message.revealDocumentJson !== undefined && (obj.revealDocumentJson = message.revealDocumentJson);
    message.revealTemplate !== undefined &&
      (obj.revealTemplate = message.revealTemplate
        ? RevealTemplateAttributes.toJSON(message.revealTemplate)
        : undefined);
    message.itemId !== undefined && (obj.itemId = message.itemId);
    message.documentJson !== undefined && (obj.documentJson = message.documentJson);
    message.useVerifiablePresentation !== undefined &&
      (obj.useVerifiablePresentation = message.useVerifiablePresentation);
    message.nonce !== undefined &&
      (obj.nonce = base64FromBytes(message.nonce !== undefined ? message.nonce : new Uint8Array()));
    return obj;
  },

  create(base?: DeepPartial<CreateProofRequest>): CreateProofRequest {
    return CreateProofRequest.fromPartial(base ?? {});
  },

  fromPartial(object: DeepPartial<CreateProofRequest>): CreateProofRequest {
    const message = createBaseCreateProofRequest();
    message.revealDocumentJson = object.revealDocumentJson ?? undefined;
    message.revealTemplate = (object.revealTemplate !== undefined && object.revealTemplate !== null)
      ? RevealTemplateAttributes.fromPartial(object.revealTemplate)
      : undefined;
    message.itemId = object.itemId ?? undefined;
    message.documentJson = object.documentJson ?? undefined;
    message.useVerifiablePresentation = object.useVerifiablePresentation ?? false;
    message.nonce = object.nonce ?? new Uint8Array();
    return message;
  },
};

function createBaseRevealTemplateAttributes(): RevealTemplateAttributes {
  return { templateAttributes: [] };
}

export const RevealTemplateAttributes = {
  encode(message: RevealTemplateAttributes, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.templateAttributes !== undefined && message.templateAttributes.length !== 0) {
      for (const v of message.templateAttributes) {
        writer.uint32(10).string(v!);
      }
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): RevealTemplateAttributes {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseRevealTemplateAttributes();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag != 10) {
            break;
          }

          message.templateAttributes!.push(reader.string());
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): RevealTemplateAttributes {
    return {
      templateAttributes: Array.isArray(object?.templateAttributes)
        ? object.templateAttributes.map((e: any) => String(e))
        : [],
    };
  },

  toJSON(message: RevealTemplateAttributes): unknown {
    const obj: any = {};
    if (message.templateAttributes) {
      obj.templateAttributes = message.templateAttributes.map((e) => e);
    } else {
      obj.templateAttributes = [];
    }
    return obj;
  },

  create(base?: DeepPartial<RevealTemplateAttributes>): RevealTemplateAttributes {
    return RevealTemplateAttributes.fromPartial(base ?? {});
  },

  fromPartial(object: DeepPartial<RevealTemplateAttributes>): RevealTemplateAttributes {
    const message = createBaseRevealTemplateAttributes();
    message.templateAttributes = object.templateAttributes?.map((e) => e) || [];
    return message;
  },
};

function createBaseCreateProofResponse(): CreateProofResponse {
  return { proofDocumentJson: "" };
}

export const CreateProofResponse = {
  encode(message: CreateProofResponse, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.proofDocumentJson !== undefined && message.proofDocumentJson !== "") {
      writer.uint32(10).string(message.proofDocumentJson);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): CreateProofResponse {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseCreateProofResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag != 10) {
            break;
          }

          message.proofDocumentJson = reader.string();
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): CreateProofResponse {
    return { proofDocumentJson: isSet(object.proofDocumentJson) ? String(object.proofDocumentJson) : "" };
  },

  toJSON(message: CreateProofResponse): unknown {
    const obj: any = {};
    message.proofDocumentJson !== undefined && (obj.proofDocumentJson = message.proofDocumentJson);
    return obj;
  },

  create(base?: DeepPartial<CreateProofResponse>): CreateProofResponse {
    return CreateProofResponse.fromPartial(base ?? {});
  },

  fromPartial(object: DeepPartial<CreateProofResponse>): CreateProofResponse {
    const message = createBaseCreateProofResponse();
    message.proofDocumentJson = object.proofDocumentJson ?? "";
    return message;
  },
};

function createBaseVerifyProofRequest(): VerifyProofRequest {
  return { proofDocumentJson: "" };
}

export const VerifyProofRequest = {
  encode(message: VerifyProofRequest, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.proofDocumentJson !== undefined && message.proofDocumentJson !== "") {
      writer.uint32(10).string(message.proofDocumentJson);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): VerifyProofRequest {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseVerifyProofRequest();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag != 10) {
            break;
          }

          message.proofDocumentJson = reader.string();
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): VerifyProofRequest {
    return { proofDocumentJson: isSet(object.proofDocumentJson) ? String(object.proofDocumentJson) : "" };
  },

  toJSON(message: VerifyProofRequest): unknown {
    const obj: any = {};
    message.proofDocumentJson !== undefined && (obj.proofDocumentJson = message.proofDocumentJson);
    return obj;
  },

  create(base?: DeepPartial<VerifyProofRequest>): VerifyProofRequest {
    return VerifyProofRequest.fromPartial(base ?? {});
  },

  fromPartial(object: DeepPartial<VerifyProofRequest>): VerifyProofRequest {
    const message = createBaseVerifyProofRequest();
    message.proofDocumentJson = object.proofDocumentJson ?? "";
    return message;
  },
};

function createBaseVerifyProofResponse(): VerifyProofResponse {
  return { isValid: false, validationResults: {} };
}

export const VerifyProofResponse = {
  encode(message: VerifyProofResponse, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.isValid === true) {
      writer.uint32(8).bool(message.isValid);
    }
    Object.entries(message.validationResults || {}).forEach(([key, value]) => {
      VerifyProofResponse_ValidationResultsEntry.encode({ key: key as any, value }, writer.uint32(26).fork()).ldelim();
    });
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): VerifyProofResponse {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseVerifyProofResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag != 8) {
            break;
          }

          message.isValid = reader.bool();
          continue;
        case 3:
          if (tag != 26) {
            break;
          }

          const entry3 = VerifyProofResponse_ValidationResultsEntry.decode(reader, reader.uint32());
          if (entry3.value !== undefined) {
            message.validationResults![entry3.key] = entry3.value;
          }
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): VerifyProofResponse {
    return {
      isValid: isSet(object.isValid) ? Boolean(object.isValid) : false,
      validationResults: isObject(object.validationResults)
        ? Object.entries(object.validationResults).reduce<{ [key: string]: ValidationMessage }>((acc, [key, value]) => {
          acc[key] = ValidationMessage.fromJSON(value);
          return acc;
        }, {})
        : {},
    };
  },

  toJSON(message: VerifyProofResponse): unknown {
    const obj: any = {};
    message.isValid !== undefined && (obj.isValid = message.isValid);
    obj.validationResults = {};
    if (message.validationResults) {
      Object.entries(message.validationResults).forEach(([k, v]) => {
        obj.validationResults[k] = ValidationMessage.toJSON(v);
      });
    }
    return obj;
  },

  create(base?: DeepPartial<VerifyProofResponse>): VerifyProofResponse {
    return VerifyProofResponse.fromPartial(base ?? {});
  },

  fromPartial(object: DeepPartial<VerifyProofResponse>): VerifyProofResponse {
    const message = createBaseVerifyProofResponse();
    message.isValid = object.isValid ?? false;
    message.validationResults = Object.entries(object.validationResults ?? {}).reduce<
      { [key: string]: ValidationMessage }
    >((acc, [key, value]) => {
      if (value !== undefined) {
        acc[key] = ValidationMessage.fromPartial(value);
      }
      return acc;
    }, {});
    return message;
  },
};

function createBaseVerifyProofResponse_ValidationResultsEntry(): VerifyProofResponse_ValidationResultsEntry {
  return { key: "", value: undefined };
}

export const VerifyProofResponse_ValidationResultsEntry = {
  encode(message: VerifyProofResponse_ValidationResultsEntry, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.key !== "") {
      writer.uint32(10).string(message.key);
    }
    if (message.value !== undefined) {
      ValidationMessage.encode(message.value, writer.uint32(18).fork()).ldelim();
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): VerifyProofResponse_ValidationResultsEntry {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseVerifyProofResponse_ValidationResultsEntry();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag != 10) {
            break;
          }

          message.key = reader.string();
          continue;
        case 2:
          if (tag != 18) {
            break;
          }

          message.value = ValidationMessage.decode(reader, reader.uint32());
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): VerifyProofResponse_ValidationResultsEntry {
    return {
      key: isSet(object.key) ? String(object.key) : "",
      value: isSet(object.value) ? ValidationMessage.fromJSON(object.value) : undefined,
    };
  },

  toJSON(message: VerifyProofResponse_ValidationResultsEntry): unknown {
    const obj: any = {};
    message.key !== undefined && (obj.key = message.key);
    message.value !== undefined && (obj.value = message.value ? ValidationMessage.toJSON(message.value) : undefined);
    return obj;
  },

  create(base?: DeepPartial<VerifyProofResponse_ValidationResultsEntry>): VerifyProofResponse_ValidationResultsEntry {
    return VerifyProofResponse_ValidationResultsEntry.fromPartial(base ?? {});
  },

  fromPartial(
    object: DeepPartial<VerifyProofResponse_ValidationResultsEntry>,
  ): VerifyProofResponse_ValidationResultsEntry {
    const message = createBaseVerifyProofResponse_ValidationResultsEntry();
    message.key = object.key ?? "";
    message.value = (object.value !== undefined && object.value !== null)
      ? ValidationMessage.fromPartial(object.value)
      : undefined;
    return message;
  },
};

function createBaseValidationMessage(): ValidationMessage {
  return { isValid: false, messages: [] };
}

export const ValidationMessage = {
  encode(message: ValidationMessage, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.isValid === true) {
      writer.uint32(8).bool(message.isValid);
    }
    if (message.messages !== undefined && message.messages.length !== 0) {
      for (const v of message.messages) {
        writer.uint32(18).string(v!);
      }
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): ValidationMessage {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseValidationMessage();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag != 8) {
            break;
          }

          message.isValid = reader.bool();
          continue;
        case 2:
          if (tag != 18) {
            break;
          }

          message.messages!.push(reader.string());
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): ValidationMessage {
    return {
      isValid: isSet(object.isValid) ? Boolean(object.isValid) : false,
      messages: Array.isArray(object?.messages) ? object.messages.map((e: any) => String(e)) : [],
    };
  },

  toJSON(message: ValidationMessage): unknown {
    const obj: any = {};
    message.isValid !== undefined && (obj.isValid = message.isValid);
    if (message.messages) {
      obj.messages = message.messages.map((e) => e);
    } else {
      obj.messages = [];
    }
    return obj;
  },

  create(base?: DeepPartial<ValidationMessage>): ValidationMessage {
    return ValidationMessage.fromPartial(base ?? {});
  },

  fromPartial(object: DeepPartial<ValidationMessage>): ValidationMessage {
    const message = createBaseValidationMessage();
    message.isValid = object.isValid ?? false;
    message.messages = object.messages?.map((e) => e) || [];
    return message;
  },
};

function createBaseSendRequest(): SendRequest {
  return {
    email: undefined,
    walletId: undefined,
    didUri: undefined,
    phoneNumber: undefined,
    sendNotification: false,
    documentJson: "",
  };
}

export const SendRequest = {
  encode(message: SendRequest, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.email !== undefined) {
      writer.uint32(10).string(message.email);
    }
    if (message.walletId !== undefined) {
      writer.uint32(42).string(message.walletId);
    }
    if (message.didUri !== undefined) {
      writer.uint32(50).string(message.didUri);
    }
    if (message.phoneNumber !== undefined) {
      writer.uint32(58).string(message.phoneNumber);
    }
    if (message.sendNotification === true) {
      writer.uint32(32).bool(message.sendNotification);
    }
    if (message.documentJson !== undefined && message.documentJson !== "") {
      writer.uint32(802).string(message.documentJson);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): SendRequest {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseSendRequest();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag != 10) {
            break;
          }

          message.email = reader.string();
          continue;
        case 5:
          if (tag != 42) {
            break;
          }

          message.walletId = reader.string();
          continue;
        case 6:
          if (tag != 50) {
            break;
          }

          message.didUri = reader.string();
          continue;
        case 7:
          if (tag != 58) {
            break;
          }

          message.phoneNumber = reader.string();
          continue;
        case 4:
          if (tag != 32) {
            break;
          }

          message.sendNotification = reader.bool();
          continue;
        case 100:
          if (tag != 802) {
            break;
          }

          message.documentJson = reader.string();
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): SendRequest {
    return {
      email: isSet(object.email) ? String(object.email) : undefined,
      walletId: isSet(object.walletId) ? String(object.walletId) : undefined,
      didUri: isSet(object.didUri) ? String(object.didUri) : undefined,
      phoneNumber: isSet(object.phoneNumber) ? String(object.phoneNumber) : undefined,
      sendNotification: isSet(object.sendNotification) ? Boolean(object.sendNotification) : false,
      documentJson: isSet(object.documentJson) ? String(object.documentJson) : "",
    };
  },

  toJSON(message: SendRequest): unknown {
    const obj: any = {};
    message.email !== undefined && (obj.email = message.email);
    message.walletId !== undefined && (obj.walletId = message.walletId);
    message.didUri !== undefined && (obj.didUri = message.didUri);
    message.phoneNumber !== undefined && (obj.phoneNumber = message.phoneNumber);
    message.sendNotification !== undefined && (obj.sendNotification = message.sendNotification);
    message.documentJson !== undefined && (obj.documentJson = message.documentJson);
    return obj;
  },

  create(base?: DeepPartial<SendRequest>): SendRequest {
    return SendRequest.fromPartial(base ?? {});
  },

  fromPartial(object: DeepPartial<SendRequest>): SendRequest {
    const message = createBaseSendRequest();
    message.email = object.email ?? undefined;
    message.walletId = object.walletId ?? undefined;
    message.didUri = object.didUri ?? undefined;
    message.phoneNumber = object.phoneNumber ?? undefined;
    message.sendNotification = object.sendNotification ?? false;
    message.documentJson = object.documentJson ?? "";
    return message;
  },
};

function createBaseSendResponse(): SendResponse {
  return {};
}

export const SendResponse = {
  encode(_: SendResponse, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): SendResponse {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseSendResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(_: any): SendResponse {
    return {};
  },

  toJSON(_: SendResponse): unknown {
    const obj: any = {};
    return obj;
  },

  create(base?: DeepPartial<SendResponse>): SendResponse {
    return SendResponse.fromPartial(base ?? {});
  },

  fromPartial(_: DeepPartial<SendResponse>): SendResponse {
    const message = createBaseSendResponse();
    return message;
  },
};

function createBaseUpdateStatusRequest(): UpdateStatusRequest {
  return { credentialStatusId: "", revoked: false };
}

export const UpdateStatusRequest = {
  encode(message: UpdateStatusRequest, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.credentialStatusId !== undefined && message.credentialStatusId !== "") {
      writer.uint32(10).string(message.credentialStatusId);
    }
    if (message.revoked === true) {
      writer.uint32(16).bool(message.revoked);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): UpdateStatusRequest {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseUpdateStatusRequest();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag != 10) {
            break;
          }

          message.credentialStatusId = reader.string();
          continue;
        case 2:
          if (tag != 16) {
            break;
          }

          message.revoked = reader.bool();
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): UpdateStatusRequest {
    return {
      credentialStatusId: isSet(object.credentialStatusId) ? String(object.credentialStatusId) : "",
      revoked: isSet(object.revoked) ? Boolean(object.revoked) : false,
    };
  },

  toJSON(message: UpdateStatusRequest): unknown {
    const obj: any = {};
    message.credentialStatusId !== undefined && (obj.credentialStatusId = message.credentialStatusId);
    message.revoked !== undefined && (obj.revoked = message.revoked);
    return obj;
  },

  create(base?: DeepPartial<UpdateStatusRequest>): UpdateStatusRequest {
    return UpdateStatusRequest.fromPartial(base ?? {});
  },

  fromPartial(object: DeepPartial<UpdateStatusRequest>): UpdateStatusRequest {
    const message = createBaseUpdateStatusRequest();
    message.credentialStatusId = object.credentialStatusId ?? "";
    message.revoked = object.revoked ?? false;
    return message;
  },
};

function createBaseUpdateStatusResponse(): UpdateStatusResponse {
  return {};
}

export const UpdateStatusResponse = {
  encode(_: UpdateStatusResponse, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): UpdateStatusResponse {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseUpdateStatusResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(_: any): UpdateStatusResponse {
    return {};
  },

  toJSON(_: UpdateStatusResponse): unknown {
    const obj: any = {};
    return obj;
  },

  create(base?: DeepPartial<UpdateStatusResponse>): UpdateStatusResponse {
    return UpdateStatusResponse.fromPartial(base ?? {});
  },

  fromPartial(_: DeepPartial<UpdateStatusResponse>): UpdateStatusResponse {
    const message = createBaseUpdateStatusResponse();
    return message;
  },
};

function createBaseCheckStatusRequest(): CheckStatusRequest {
  return { credentialStatusId: "" };
}

export const CheckStatusRequest = {
  encode(message: CheckStatusRequest, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.credentialStatusId !== undefined && message.credentialStatusId !== "") {
      writer.uint32(10).string(message.credentialStatusId);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): CheckStatusRequest {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseCheckStatusRequest();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag != 10) {
            break;
          }

          message.credentialStatusId = reader.string();
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): CheckStatusRequest {
    return { credentialStatusId: isSet(object.credentialStatusId) ? String(object.credentialStatusId) : "" };
  },

  toJSON(message: CheckStatusRequest): unknown {
    const obj: any = {};
    message.credentialStatusId !== undefined && (obj.credentialStatusId = message.credentialStatusId);
    return obj;
  },

  create(base?: DeepPartial<CheckStatusRequest>): CheckStatusRequest {
    return CheckStatusRequest.fromPartial(base ?? {});
  },

  fromPartial(object: DeepPartial<CheckStatusRequest>): CheckStatusRequest {
    const message = createBaseCheckStatusRequest();
    message.credentialStatusId = object.credentialStatusId ?? "";
    return message;
  },
};

function createBaseCheckStatusResponse(): CheckStatusResponse {
  return { revoked: false };
}

export const CheckStatusResponse = {
  encode(message: CheckStatusResponse, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.revoked === true) {
      writer.uint32(8).bool(message.revoked);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): CheckStatusResponse {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseCheckStatusResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag != 8) {
            break;
          }

          message.revoked = reader.bool();
          continue;
      }
      if ((tag & 7) == 4 || tag == 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): CheckStatusResponse {
    return { revoked: isSet(object.revoked) ? Boolean(object.revoked) : false };
  },

  toJSON(message: CheckStatusResponse): unknown {
    const obj: any = {};
    message.revoked !== undefined && (obj.revoked = message.revoked);
    return obj;
  },

  create(base?: DeepPartial<CheckStatusResponse>): CheckStatusResponse {
    return CheckStatusResponse.fromPartial(base ?? {});
  },

  fromPartial(object: DeepPartial<CheckStatusResponse>): CheckStatusResponse {
    const message = createBaseCheckStatusResponse();
    message.revoked = object.revoked ?? false;
    return message;
  },
};

export type VerifiableCredentialDefinition = typeof VerifiableCredentialDefinition;
export const VerifiableCredentialDefinition = {
  name: "VerifiableCredential",
  fullName: "services.verifiablecredentials.v1.VerifiableCredential",
  methods: {
    /**
     * Sign and issue a verifiable credential from a pre-defined template.
     * This process will also add schema validation and
     * revocation registry values to the credential.
     */
    issueFromTemplate: {
      name: "IssueFromTemplate",
      requestType: IssueFromTemplateRequest,
      requestStream: false,
      responseType: IssueFromTemplateResponse,
      responseStream: false,
      options: {},
    },
    /** Check credential status in the revocation registry */
    checkStatus: {
      name: "CheckStatus",
      requestType: CheckStatusRequest,
      requestStream: false,
      responseType: CheckStatusResponse,
      responseStream: false,
      options: {},
    },
    /** Update credential status by setting the revocation value */
    updateStatus: {
      name: "UpdateStatus",
      requestType: UpdateStatusRequest,
      requestStream: false,
      responseType: UpdateStatusResponse,
      responseStream: false,
      options: {},
    },
    /**
     * Create a proof from a signed document that is a valid
     * verifiable credential and contains a signature from which a proof can be derived.
     */
    createProof: {
      name: "CreateProof",
      requestType: CreateProofRequest,
      requestStream: false,
      responseType: CreateProofResponse,
      responseStream: false,
      options: {},
    },
    /**
     * Verifies a proof by checking the signature value, and if possible schema validation,
     * revocation status, and issuer status against a trust registry
     */
    verifyProof: {
      name: "VerifyProof",
      requestType: VerifyProofRequest,
      requestStream: false,
      responseType: VerifyProofResponse,
      responseStream: false,
      options: {},
    },
    /** Sends a document directly to a user's email within the given ecosystem */
    send: {
      name: "Send",
      requestType: SendRequest,
      requestStream: false,
      responseType: SendResponse,
      responseStream: false,
      options: {},
    },
  },
} as const;

declare var self: any | undefined;
declare var window: any | undefined;
declare var global: any | undefined;
var tsProtoGlobalThis: any = (() => {
  if (typeof globalThis !== "undefined") {
    return globalThis;
  }
  if (typeof self !== "undefined") {
    return self;
  }
  if (typeof window !== "undefined") {
    return window;
  }
  if (typeof global !== "undefined") {
    return global;
  }
  throw "Unable to locate global object";
})();

function bytesFromBase64(b64: string): Uint8Array {
  if (tsProtoGlobalThis.Buffer) {
    return Uint8Array.from(tsProtoGlobalThis.Buffer.from(b64, "base64"));
  } else {
    const bin = tsProtoGlobalThis.atob(b64);
    const arr = new Uint8Array(bin.length);
    for (let i = 0; i < bin.length; ++i) {
      arr[i] = bin.charCodeAt(i);
    }
    return arr;
  }
}

function base64FromBytes(arr: Uint8Array): string {
  if (tsProtoGlobalThis.Buffer) {
    return tsProtoGlobalThis.Buffer.from(arr).toString("base64");
  } else {
    const bin: string[] = [];
    arr.forEach((byte) => {
      bin.push(String.fromCharCode(byte));
    });
    return tsProtoGlobalThis.btoa(bin.join(""));
  }
}

type Builtin = Date | Function | Uint8Array | string | number | boolean | undefined;

type DeepPartial<T> = T extends Builtin ? T
  : T extends Array<infer U> ? Array<DeepPartial<U>> : T extends ReadonlyArray<infer U> ? ReadonlyArray<DeepPartial<U>>
  : T extends {} ? { [K in keyof T]?: DeepPartial<T[K]> }
  : Partial<T>;

function isObject(value: any): boolean {
  return typeof value === "object" && value !== null;
}

function isSet(value: any): boolean {
  return value !== null && value !== undefined;
}
