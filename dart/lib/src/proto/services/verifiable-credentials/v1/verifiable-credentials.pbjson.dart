//
//  Generated code. Do not modify.
//  source: services/verifiable-credentials/v1/verifiable-credentials.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use issueFromTemplateRequestDescriptor instead')
const IssueFromTemplateRequest$json = {
  '1': 'IssueFromTemplateRequest',
  '2': [
    {'1': 'template_id', '3': 1, '4': 1, '5': 9, '10': 'templateId'},
    {'1': 'values_json', '3': 2, '4': 1, '5': 9, '10': 'valuesJson'},
    {'1': 'save_copy', '3': 4, '4': 1, '5': 8, '10': 'saveCopy'},
    {'1': 'expiration_date', '3': 5, '4': 1, '5': 9, '10': 'expirationDate'},
    {
      '1': 'include_governance',
      '3': 6,
      '4': 1,
      '5': 8,
      '10': 'includeGovernance'
    },
  ],
  '9': [
    {'1': 3, '2': 4},
  ],
  '10': ['framework_id'],
};

/// Descriptor for `IssueFromTemplateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List issueFromTemplateRequestDescriptor = $convert.base64Decode(
    'ChhJc3N1ZUZyb21UZW1wbGF0ZVJlcXVlc3QSHwoLdGVtcGxhdGVfaWQYASABKAlSCnRlbXBsYX'
    'RlSWQSHwoLdmFsdWVzX2pzb24YAiABKAlSCnZhbHVlc0pzb24SGwoJc2F2ZV9jb3B5GAQgASgI'
    'UghzYXZlQ29weRInCg9leHBpcmF0aW9uX2RhdGUYBSABKAlSDmV4cGlyYXRpb25EYXRlEi0KEm'
    'luY2x1ZGVfZ292ZXJuYW5jZRgGIAEoCFIRaW5jbHVkZUdvdmVybmFuY2VKBAgDEARSDGZyYW1l'
    'd29ya19pZA==');

@$core.Deprecated('Use issueFromTemplateResponseDescriptor instead')
const IssueFromTemplateResponse$json = {
  '1': 'IssueFromTemplateResponse',
  '2': [
    {'1': 'document_json', '3': 1, '4': 1, '5': 9, '10': 'documentJson'},
  ],
};

/// Descriptor for `IssueFromTemplateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List issueFromTemplateResponseDescriptor =
    $convert.base64Decode(
        'ChlJc3N1ZUZyb21UZW1wbGF0ZVJlc3BvbnNlEiMKDWRvY3VtZW50X2pzb24YASABKAlSDGRvY3'
        'VtZW50SnNvbg==');

@$core.Deprecated('Use createProofRequestDescriptor instead')
const CreateProofRequest$json = {
  '1': 'CreateProofRequest',
  '2': [
    {
      '1': 'reveal_document_json',
      '3': 1,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'revealDocumentJson'
    },
    {
      '1': 'reveal_template',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.services.verifiablecredentials.v1.RevealTemplateAttributes',
      '9': 0,
      '10': 'revealTemplate'
    },
    {
      '1': 'verification_template_id',
      '3': 12,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'verificationTemplateId'
    },
    {'1': 'item_id', '3': 2, '4': 1, '5': 9, '9': 1, '10': 'itemId'},
    {
      '1': 'document_json',
      '3': 3,
      '4': 1,
      '5': 9,
      '9': 1,
      '10': 'documentJson'
    },
    {
      '1': 'use_verifiable_presentation',
      '3': 4,
      '4': 1,
      '5': 8,
      '10': 'useVerifiablePresentation'
    },
    {'1': 'nonce', '3': 10, '4': 1, '5': 12, '8': {}, '10': 'nonce'},
  ],
  '8': [
    {'1': 'disclosure'},
    {'1': 'proof'},
  ],
};

/// Descriptor for `CreateProofRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createProofRequestDescriptor = $convert.base64Decode(
    'ChJDcmVhdGVQcm9vZlJlcXVlc3QSMgoUcmV2ZWFsX2RvY3VtZW50X2pzb24YASABKAlIAFIScm'
    'V2ZWFsRG9jdW1lbnRKc29uEmYKD3JldmVhbF90ZW1wbGF0ZRgLIAEoCzI7LnNlcnZpY2VzLnZl'
    'cmlmaWFibGVjcmVkZW50aWFscy52MS5SZXZlYWxUZW1wbGF0ZUF0dHJpYnV0ZXNIAFIOcmV2ZW'
    'FsVGVtcGxhdGUSOgoYdmVyaWZpY2F0aW9uX3RlbXBsYXRlX2lkGAwgASgJSABSFnZlcmlmaWNh'
    'dGlvblRlbXBsYXRlSWQSGQoHaXRlbV9pZBgCIAEoCUgBUgZpdGVtSWQSJQoNZG9jdW1lbnRfan'
    'NvbhgDIAEoCUgBUgxkb2N1bWVudEpzb24SPgobdXNlX3ZlcmlmaWFibGVfcHJlc2VudGF0aW9u'
    'GAQgASgIUhl1c2VWZXJpZmlhYmxlUHJlc2VudGF0aW9uEhoKBW5vbmNlGAogASgMQgSAph0BUg'
    'Vub25jZUIMCgpkaXNjbG9zdXJlQgcKBXByb29m');

@$core.Deprecated('Use revealTemplateAttributesDescriptor instead')
const RevealTemplateAttributes$json = {
  '1': 'RevealTemplateAttributes',
  '2': [
    {
      '1': 'template_attributes',
      '3': 1,
      '4': 3,
      '5': 9,
      '10': 'templateAttributes'
    },
  ],
};

/// Descriptor for `RevealTemplateAttributes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List revealTemplateAttributesDescriptor =
    $convert.base64Decode(
        'ChhSZXZlYWxUZW1wbGF0ZUF0dHJpYnV0ZXMSLwoTdGVtcGxhdGVfYXR0cmlidXRlcxgBIAMoCV'
        'ISdGVtcGxhdGVBdHRyaWJ1dGVz');

@$core.Deprecated('Use createProofResponseDescriptor instead')
const CreateProofResponse$json = {
  '1': 'CreateProofResponse',
  '2': [
    {
      '1': 'proof_document_json',
      '3': 1,
      '4': 1,
      '5': 9,
      '10': 'proofDocumentJson'
    },
  ],
};

/// Descriptor for `CreateProofResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createProofResponseDescriptor = $convert.base64Decode(
    'ChNDcmVhdGVQcm9vZlJlc3BvbnNlEi4KE3Byb29mX2RvY3VtZW50X2pzb24YASABKAlSEXByb2'
    '9mRG9jdW1lbnRKc29u');

@$core.Deprecated('Use verifyProofRequestDescriptor instead')
const VerifyProofRequest$json = {
  '1': 'VerifyProofRequest',
  '2': [
    {
      '1': 'proof_document_json',
      '3': 1,
      '4': 1,
      '5': 9,
      '10': 'proofDocumentJson'
    },
  ],
};

/// Descriptor for `VerifyProofRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List verifyProofRequestDescriptor = $convert.base64Decode(
    'ChJWZXJpZnlQcm9vZlJlcXVlc3QSLgoTcHJvb2ZfZG9jdW1lbnRfanNvbhgBIAEoCVIRcHJvb2'
    'ZEb2N1bWVudEpzb24=');

@$core.Deprecated('Use verifyProofResponseDescriptor instead')
const VerifyProofResponse$json = {
  '1': 'VerifyProofResponse',
  '2': [
    {'1': 'is_valid', '3': 1, '4': 1, '5': 8, '10': 'isValid'},
    {
      '1': 'validation_results',
      '3': 3,
      '4': 3,
      '5': 11,
      '6':
          '.services.verifiablecredentials.v1.VerifyProofResponse.ValidationResultsEntry',
      '10': 'validationResults'
    },
  ],
  '3': [VerifyProofResponse_ValidationResultsEntry$json],
  '9': [
    {'1': 2, '2': 3},
  ],
  '10': ['validation_messages'],
};

@$core.Deprecated('Use verifyProofResponseDescriptor instead')
const VerifyProofResponse_ValidationResultsEntry$json = {
  '1': 'ValidationResultsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.services.verifiablecredentials.v1.ValidationMessage',
      '10': 'value'
    },
  ],
  '7': {'7': true},
};

/// Descriptor for `VerifyProofResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List verifyProofResponseDescriptor = $convert.base64Decode(
    'ChNWZXJpZnlQcm9vZlJlc3BvbnNlEhkKCGlzX3ZhbGlkGAEgASgIUgdpc1ZhbGlkEnwKEnZhbG'
    'lkYXRpb25fcmVzdWx0cxgDIAMoCzJNLnNlcnZpY2VzLnZlcmlmaWFibGVjcmVkZW50aWFscy52'
    'MS5WZXJpZnlQcm9vZlJlc3BvbnNlLlZhbGlkYXRpb25SZXN1bHRzRW50cnlSEXZhbGlkYXRpb2'
    '5SZXN1bHRzGnoKFlZhbGlkYXRpb25SZXN1bHRzRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSSgoF'
    'dmFsdWUYAiABKAsyNC5zZXJ2aWNlcy52ZXJpZmlhYmxlY3JlZGVudGlhbHMudjEuVmFsaWRhdG'
    'lvbk1lc3NhZ2VSBXZhbHVlOgI4AUoECAIQA1ITdmFsaWRhdGlvbl9tZXNzYWdlcw==');

@$core.Deprecated('Use validationMessageDescriptor instead')
const ValidationMessage$json = {
  '1': 'ValidationMessage',
  '2': [
    {'1': 'is_valid', '3': 1, '4': 1, '5': 8, '10': 'isValid'},
    {'1': 'messages', '3': 2, '4': 3, '5': 9, '10': 'messages'},
  ],
};

/// Descriptor for `ValidationMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List validationMessageDescriptor = $convert.base64Decode(
    'ChFWYWxpZGF0aW9uTWVzc2FnZRIZCghpc192YWxpZBgBIAEoCFIHaXNWYWxpZBIaCghtZXNzYW'
    'dlcxgCIAMoCVIIbWVzc2FnZXM=');

@$core.Deprecated('Use sendRequestDescriptor instead')
const SendRequest$json = {
  '1': 'SendRequest',
  '2': [
    {'1': 'email', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'email'},
    {'1': 'wallet_id', '3': 5, '4': 1, '5': 9, '9': 0, '10': 'walletId'},
    {'1': 'did_uri', '3': 6, '4': 1, '5': 9, '9': 0, '10': 'didUri'},
    {'1': 'phone_number', '3': 7, '4': 1, '5': 9, '9': 0, '10': 'phoneNumber'},
    {
      '1': 'send_notification',
      '3': 4,
      '4': 1,
      '5': 8,
      '10': 'sendNotification'
    },
    {'1': 'document_json', '3': 100, '4': 1, '5': 9, '10': 'documentJson'},
  ],
  '8': [
    {'1': 'delivery_method'},
  ],
  '9': [
    {'1': 2, '2': 3},
    {'1': 3, '2': 4},
  ],
  '10': ['didcomm_invitation_json'],
};

/// Descriptor for `SendRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendRequestDescriptor = $convert.base64Decode(
    'CgtTZW5kUmVxdWVzdBIWCgVlbWFpbBgBIAEoCUgAUgVlbWFpbBIdCgl3YWxsZXRfaWQYBSABKA'
    'lIAFIId2FsbGV0SWQSGQoHZGlkX3VyaRgGIAEoCUgAUgZkaWRVcmkSIwoMcGhvbmVfbnVtYmVy'
    'GAcgASgJSABSC3Bob25lTnVtYmVyEisKEXNlbmRfbm90aWZpY2F0aW9uGAQgASgIUhBzZW5kTm'
    '90aWZpY2F0aW9uEiMKDWRvY3VtZW50X2pzb24YZCABKAlSDGRvY3VtZW50SnNvbkIRCg9kZWxp'
    'dmVyeV9tZXRob2RKBAgCEANKBAgDEARSF2RpZGNvbW1faW52aXRhdGlvbl9qc29u');

@$core.Deprecated('Use sendResponseDescriptor instead')
const SendResponse$json = {
  '1': 'SendResponse',
};

/// Descriptor for `SendResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendResponseDescriptor =
    $convert.base64Decode('CgxTZW5kUmVzcG9uc2U=');

@$core.Deprecated('Use updateStatusRequestDescriptor instead')
const UpdateStatusRequest$json = {
  '1': 'UpdateStatusRequest',
  '2': [
    {
      '1': 'credential_status_id',
      '3': 1,
      '4': 1,
      '5': 9,
      '10': 'credentialStatusId'
    },
    {'1': 'revoked', '3': 2, '4': 1, '5': 8, '10': 'revoked'},
  ],
};

/// Descriptor for `UpdateStatusRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateStatusRequestDescriptor = $convert.base64Decode(
    'ChNVcGRhdGVTdGF0dXNSZXF1ZXN0EjAKFGNyZWRlbnRpYWxfc3RhdHVzX2lkGAEgASgJUhJjcm'
    'VkZW50aWFsU3RhdHVzSWQSGAoHcmV2b2tlZBgCIAEoCFIHcmV2b2tlZA==');

@$core.Deprecated('Use updateStatusResponseDescriptor instead')
const UpdateStatusResponse$json = {
  '1': 'UpdateStatusResponse',
};

/// Descriptor for `UpdateStatusResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateStatusResponseDescriptor =
    $convert.base64Decode('ChRVcGRhdGVTdGF0dXNSZXNwb25zZQ==');

@$core.Deprecated('Use checkStatusRequestDescriptor instead')
const CheckStatusRequest$json = {
  '1': 'CheckStatusRequest',
  '2': [
    {
      '1': 'credential_status_id',
      '3': 1,
      '4': 1,
      '5': 9,
      '10': 'credentialStatusId'
    },
  ],
};

/// Descriptor for `CheckStatusRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List checkStatusRequestDescriptor = $convert.base64Decode(
    'ChJDaGVja1N0YXR1c1JlcXVlc3QSMAoUY3JlZGVudGlhbF9zdGF0dXNfaWQYASABKAlSEmNyZW'
    'RlbnRpYWxTdGF0dXNJZA==');

@$core.Deprecated('Use checkStatusResponseDescriptor instead')
const CheckStatusResponse$json = {
  '1': 'CheckStatusResponse',
  '2': [
    {'1': 'revoked', '3': 1, '4': 1, '5': 8, '10': 'revoked'},
  ],
};

/// Descriptor for `CheckStatusResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List checkStatusResponseDescriptor =
    $convert.base64Decode(
        'ChNDaGVja1N0YXR1c1Jlc3BvbnNlEhgKB3Jldm9rZWQYASABKAhSB3Jldm9rZWQ=');

@$core.Deprecated('Use createCredentialOfferRequestDescriptor instead')
const CreateCredentialOfferRequest$json = {
  '1': 'CreateCredentialOfferRequest',
  '2': [
    {'1': 'template_id', '3': 1, '4': 1, '5': 9, '10': 'templateId'},
    {'1': 'values_json', '3': 2, '4': 1, '5': 9, '10': 'valuesJson'},
    {'1': 'holder_binding', '3': 3, '4': 1, '5': 8, '10': 'holderBinding'},
    {
      '1': 'include_governance',
      '3': 4,
      '4': 1,
      '5': 8,
      '10': 'includeGovernance'
    },
    {
      '1': 'generate_share_url',
      '3': 5,
      '4': 1,
      '5': 8,
      '10': 'generateShareUrl'
    },
  ],
};

/// Descriptor for `CreateCredentialOfferRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createCredentialOfferRequestDescriptor = $convert.base64Decode(
    'ChxDcmVhdGVDcmVkZW50aWFsT2ZmZXJSZXF1ZXN0Eh8KC3RlbXBsYXRlX2lkGAEgASgJUgp0ZW'
    '1wbGF0ZUlkEh8KC3ZhbHVlc19qc29uGAIgASgJUgp2YWx1ZXNKc29uEiUKDmhvbGRlcl9iaW5k'
    'aW5nGAMgASgIUg1ob2xkZXJCaW5kaW5nEi0KEmluY2x1ZGVfZ292ZXJuYW5jZRgEIAEoCFIRaW'
    '5jbHVkZUdvdmVybmFuY2USLAoSZ2VuZXJhdGVfc2hhcmVfdXJsGAUgASgIUhBnZW5lcmF0ZVNo'
    'YXJlVXJs');

@$core.Deprecated('Use createCredentialOfferResponseDescriptor instead')
const CreateCredentialOfferResponse$json = {
  '1': 'CreateCredentialOfferResponse',
  '2': [
    {'1': 'document_json', '3': 1, '4': 1, '5': 9, '10': 'documentJson'},
    {'1': 'share_url', '3': 2, '4': 1, '5': 9, '10': 'shareUrl'},
  ],
};

/// Descriptor for `CreateCredentialOfferResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createCredentialOfferResponseDescriptor =
    $convert.base64Decode(
        'Ch1DcmVhdGVDcmVkZW50aWFsT2ZmZXJSZXNwb25zZRIjCg1kb2N1bWVudF9qc29uGAEgASgJUg'
        'xkb2N1bWVudEpzb24SGwoJc2hhcmVfdXJsGAIgASgJUghzaGFyZVVybA==');

@$core.Deprecated('Use acceptCredentialRequestDescriptor instead')
const AcceptCredentialRequest$json = {
  '1': 'AcceptCredentialRequest',
  '2': [
    {
      '1': 'document_json',
      '3': 1,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'documentJson'
    },
    {'1': 'item_id', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'itemId'},
  ],
  '8': [
    {'1': 'offer'},
  ],
};

/// Descriptor for `AcceptCredentialRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List acceptCredentialRequestDescriptor =
    $convert.base64Decode(
        'ChdBY2NlcHRDcmVkZW50aWFsUmVxdWVzdBIlCg1kb2N1bWVudF9qc29uGAEgASgJSABSDGRvY3'
        'VtZW50SnNvbhIZCgdpdGVtX2lkGAIgASgJSABSBml0ZW1JZEIHCgVvZmZlcg==');

@$core.Deprecated('Use acceptCredentialResponseDescriptor instead')
const AcceptCredentialResponse$json = {
  '1': 'AcceptCredentialResponse',
  '2': [
    {'1': 'item_id', '3': 1, '4': 1, '5': 9, '10': 'itemId'},
    {'1': 'document_json', '3': 2, '4': 1, '5': 9, '10': 'documentJson'},
  ],
};

/// Descriptor for `AcceptCredentialResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List acceptCredentialResponseDescriptor =
    $convert.base64Decode(
        'ChhBY2NlcHRDcmVkZW50aWFsUmVzcG9uc2USFwoHaXRlbV9pZBgBIAEoCVIGaXRlbUlkEiMKDW'
        'RvY3VtZW50X2pzb24YAiABKAlSDGRvY3VtZW50SnNvbg==');

@$core.Deprecated('Use rejectCredentialRequestDescriptor instead')
const RejectCredentialRequest$json = {
  '1': 'RejectCredentialRequest',
  '2': [
    {
      '1': 'document_json',
      '3': 1,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'documentJson'
    },
    {'1': 'item_id', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'itemId'},
  ],
  '8': [
    {'1': 'offer'},
  ],
};

/// Descriptor for `RejectCredentialRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rejectCredentialRequestDescriptor =
    $convert.base64Decode(
        'ChdSZWplY3RDcmVkZW50aWFsUmVxdWVzdBIlCg1kb2N1bWVudF9qc29uGAEgASgJSABSDGRvY3'
        'VtZW50SnNvbhIZCgdpdGVtX2lkGAIgASgJSABSBml0ZW1JZEIHCgVvZmZlcg==');

@$core.Deprecated('Use rejectCredentialResponseDescriptor instead')
const RejectCredentialResponse$json = {
  '1': 'RejectCredentialResponse',
};

/// Descriptor for `RejectCredentialResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rejectCredentialResponseDescriptor =
    $convert.base64Decode('ChhSZWplY3RDcmVkZW50aWFsUmVzcG9uc2U=');
