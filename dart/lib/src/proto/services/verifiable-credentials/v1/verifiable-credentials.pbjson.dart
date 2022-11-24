///
//  Generated code. Do not modify.
//  source: services/verifiable-credentials/v1/verifiable-credentials.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use issueRequestDescriptor instead')
const IssueRequest$json = const {
  '1': 'IssueRequest',
  '2': const [
    const {'1': 'document_json', '3': 1, '4': 1, '5': 9, '10': 'documentJson'},
  ],
};

/// Descriptor for `IssueRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List issueRequestDescriptor = $convert.base64Decode(
    'CgxJc3N1ZVJlcXVlc3QSIwoNZG9jdW1lbnRfanNvbhgBIAEoCVIMZG9jdW1lbnRKc29u');
@$core.Deprecated('Use issueResponseDescriptor instead')
const IssueResponse$json = const {
  '1': 'IssueResponse',
  '2': const [
    const {
      '1': 'signed_document_json',
      '3': 1,
      '4': 1,
      '5': 9,
      '10': 'signedDocumentJson'
    },
  ],
};

/// Descriptor for `IssueResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List issueResponseDescriptor = $convert.base64Decode(
    'Cg1Jc3N1ZVJlc3BvbnNlEjAKFHNpZ25lZF9kb2N1bWVudF9qc29uGAEgASgJUhJzaWduZWREb2N1bWVudEpzb24=');
@$core.Deprecated('Use issueFromTemplateRequestDescriptor instead')
const IssueFromTemplateRequest$json = const {
  '1': 'IssueFromTemplateRequest',
  '2': const [
    const {'1': 'template_id', '3': 1, '4': 1, '5': 9, '10': 'templateId'},
    const {'1': 'values_json', '3': 2, '4': 1, '5': 9, '10': 'valuesJson'},
    const {
      '1': 'framework_id',
      '3': 3,
      '4': 1,
      '5': 9,
      '8': const {},
      '10': 'frameworkId'
    },
  ],
};

/// Descriptor for `IssueFromTemplateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List issueFromTemplateRequestDescriptor =
    $convert.base64Decode(
        'ChhJc3N1ZUZyb21UZW1wbGF0ZVJlcXVlc3QSHwoLdGVtcGxhdGVfaWQYASABKAlSCnRlbXBsYXRlSWQSHwoLdmFsdWVzX2pzb24YAiABKAlSCnZhbHVlc0pzb24SJwoMZnJhbWV3b3JrX2lkGAMgASgJQgSAph0BUgtmcmFtZXdvcmtJZA==');
@$core.Deprecated('Use issueFromTemplateResponseDescriptor instead')
const IssueFromTemplateResponse$json = const {
  '1': 'IssueFromTemplateResponse',
  '2': const [
    const {'1': 'document_json', '3': 1, '4': 1, '5': 9, '10': 'documentJson'},
  ],
};

/// Descriptor for `IssueFromTemplateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List issueFromTemplateResponseDescriptor =
    $convert.base64Decode(
        'ChlJc3N1ZUZyb21UZW1wbGF0ZVJlc3BvbnNlEiMKDWRvY3VtZW50X2pzb24YASABKAlSDGRvY3VtZW50SnNvbg==');
@$core.Deprecated('Use createProofRequestDescriptor instead')
const CreateProofRequest$json = const {
  '1': 'CreateProofRequest',
  '2': const [
    const {
      '1': 'reveal_document_json',
      '3': 1,
      '4': 1,
      '5': 9,
      '10': 'revealDocumentJson'
    },
    const {'1': 'item_id', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'itemId'},
    const {
      '1': 'document_json',
      '3': 3,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'documentJson'
    },
    const {
      '1': 'nonce',
      '3': 10,
      '4': 1,
      '5': 12,
      '8': const {},
      '10': 'nonce'
    },
  ],
  '8': const [
    const {'1': 'proof'},
  ],
};

/// Descriptor for `CreateProofRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createProofRequestDescriptor = $convert.base64Decode(
    'ChJDcmVhdGVQcm9vZlJlcXVlc3QSMAoUcmV2ZWFsX2RvY3VtZW50X2pzb24YASABKAlSEnJldmVhbERvY3VtZW50SnNvbhIZCgdpdGVtX2lkGAIgASgJSABSBml0ZW1JZBIlCg1kb2N1bWVudF9qc29uGAMgASgJSABSDGRvY3VtZW50SnNvbhIaCgVub25jZRgKIAEoDEIEgKYdAVIFbm9uY2VCBwoFcHJvb2Y=');
@$core.Deprecated('Use createProofResponseDescriptor instead')
const CreateProofResponse$json = const {
  '1': 'CreateProofResponse',
  '2': const [
    const {
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
    'ChNDcmVhdGVQcm9vZlJlc3BvbnNlEi4KE3Byb29mX2RvY3VtZW50X2pzb24YASABKAlSEXByb29mRG9jdW1lbnRKc29u');
@$core.Deprecated('Use verifyProofRequestDescriptor instead')
const VerifyProofRequest$json = const {
  '1': 'VerifyProofRequest',
  '2': const [
    const {
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
    'ChJWZXJpZnlQcm9vZlJlcXVlc3QSLgoTcHJvb2ZfZG9jdW1lbnRfanNvbhgBIAEoCVIRcHJvb2ZEb2N1bWVudEpzb24=');
@$core.Deprecated('Use verifyProofResponseDescriptor instead')
const VerifyProofResponse$json = const {
  '1': 'VerifyProofResponse',
  '2': const [
    const {'1': 'is_valid', '3': 1, '4': 1, '5': 8, '10': 'isValid'},
    const {
      '1': 'validation_messages',
      '3': 2,
      '4': 3,
      '5': 9,
      '8': const {'3': true},
      '10': 'validationMessages',
    },
    const {
      '1': 'validation_results',
      '3': 3,
      '4': 3,
      '5': 11,
      '6':
          '.services.verifiablecredentials.v1.VerifyProofResponse.ValidationResultsEntry',
      '10': 'validationResults'
    },
  ],
  '3': const [VerifyProofResponse_ValidationResultsEntry$json],
};

@$core.Deprecated('Use verifyProofResponseDescriptor instead')
const VerifyProofResponse_ValidationResultsEntry$json = const {
  '1': 'ValidationResultsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.services.verifiablecredentials.v1.ValidationMessage',
      '10': 'value'
    },
  ],
  '7': const {'7': true},
};

/// Descriptor for `VerifyProofResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List verifyProofResponseDescriptor = $convert.base64Decode(
    'ChNWZXJpZnlQcm9vZlJlc3BvbnNlEhkKCGlzX3ZhbGlkGAEgASgIUgdpc1ZhbGlkEjMKE3ZhbGlkYXRpb25fbWVzc2FnZXMYAiADKAlCAhgBUhJ2YWxpZGF0aW9uTWVzc2FnZXMSfAoSdmFsaWRhdGlvbl9yZXN1bHRzGAMgAygLMk0uc2VydmljZXMudmVyaWZpYWJsZWNyZWRlbnRpYWxzLnYxLlZlcmlmeVByb29mUmVzcG9uc2UuVmFsaWRhdGlvblJlc3VsdHNFbnRyeVIRdmFsaWRhdGlvblJlc3VsdHMaegoWVmFsaWRhdGlvblJlc3VsdHNFbnRyeRIQCgNrZXkYASABKAlSA2tleRJKCgV2YWx1ZRgCIAEoCzI0LnNlcnZpY2VzLnZlcmlmaWFibGVjcmVkZW50aWFscy52MS5WYWxpZGF0aW9uTWVzc2FnZVIFdmFsdWU6AjgB');
@$core.Deprecated('Use validationMessageDescriptor instead')
const ValidationMessage$json = const {
  '1': 'ValidationMessage',
  '2': const [
    const {'1': 'is_valid', '3': 1, '4': 1, '5': 8, '10': 'isValid'},
    const {'1': 'messages', '3': 2, '4': 3, '5': 9, '10': 'messages'},
  ],
};

/// Descriptor for `ValidationMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List validationMessageDescriptor = $convert.base64Decode(
    'ChFWYWxpZGF0aW9uTWVzc2FnZRIZCghpc192YWxpZBgBIAEoCFIHaXNWYWxpZBIaCghtZXNzYWdlcxgCIAMoCVIIbWVzc2FnZXM=');
@$core.Deprecated('Use sendRequestDescriptor instead')
const SendRequest$json = const {
  '1': 'SendRequest',
  '2': const [
    const {'1': 'email', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'email'},
    const {
      '1': 'did_uri',
      '3': 2,
      '4': 1,
      '5': 9,
      '8': const {'3': true},
      '9': 0,
      '10': 'didUri',
    },
    const {
      '1': 'didcomm_invitation_json',
      '3': 3,
      '4': 1,
      '5': 9,
      '8': const {'3': true},
      '9': 0,
      '10': 'didcommInvitationJson',
    },
    const {
      '1': 'send_notification',
      '3': 4,
      '4': 1,
      '5': 8,
      '10': 'sendNotification'
    },
    const {
      '1': 'document_json',
      '3': 100,
      '4': 1,
      '5': 9,
      '10': 'documentJson'
    },
  ],
  '8': const [
    const {'1': 'delivery_method'},
  ],
};

/// Descriptor for `SendRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendRequestDescriptor = $convert.base64Decode(
    'CgtTZW5kUmVxdWVzdBIWCgVlbWFpbBgBIAEoCUgAUgVlbWFpbBIdCgdkaWRfdXJpGAIgASgJQgIYAUgAUgZkaWRVcmkSPAoXZGlkY29tbV9pbnZpdGF0aW9uX2pzb24YAyABKAlCAhgBSABSFWRpZGNvbW1JbnZpdGF0aW9uSnNvbhIrChFzZW5kX25vdGlmaWNhdGlvbhgEIAEoCFIQc2VuZE5vdGlmaWNhdGlvbhIjCg1kb2N1bWVudF9qc29uGGQgASgJUgxkb2N1bWVudEpzb25CEQoPZGVsaXZlcnlfbWV0aG9k');
@$core.Deprecated('Use sendResponseDescriptor instead')
const SendResponse$json = const {
  '1': 'SendResponse',
};

/// Descriptor for `SendResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendResponseDescriptor =
    $convert.base64Decode('CgxTZW5kUmVzcG9uc2U=');
@$core.Deprecated('Use updateStatusRequestDescriptor instead')
const UpdateStatusRequest$json = const {
  '1': 'UpdateStatusRequest',
  '2': const [
    const {
      '1': 'credential_status_id',
      '3': 1,
      '4': 1,
      '5': 9,
      '10': 'credentialStatusId'
    },
    const {'1': 'revoked', '3': 2, '4': 1, '5': 8, '10': 'revoked'},
  ],
};

/// Descriptor for `UpdateStatusRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateStatusRequestDescriptor = $convert.base64Decode(
    'ChNVcGRhdGVTdGF0dXNSZXF1ZXN0EjAKFGNyZWRlbnRpYWxfc3RhdHVzX2lkGAEgASgJUhJjcmVkZW50aWFsU3RhdHVzSWQSGAoHcmV2b2tlZBgCIAEoCFIHcmV2b2tlZA==');
@$core.Deprecated('Use updateStatusResponseDescriptor instead')
const UpdateStatusResponse$json = const {
  '1': 'UpdateStatusResponse',
};

/// Descriptor for `UpdateStatusResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateStatusResponseDescriptor =
    $convert.base64Decode('ChRVcGRhdGVTdGF0dXNSZXNwb25zZQ==');
@$core.Deprecated('Use checkStatusRequestDescriptor instead')
const CheckStatusRequest$json = const {
  '1': 'CheckStatusRequest',
  '2': const [
    const {
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
    'ChJDaGVja1N0YXR1c1JlcXVlc3QSMAoUY3JlZGVudGlhbF9zdGF0dXNfaWQYASABKAlSEmNyZWRlbnRpYWxTdGF0dXNJZA==');
@$core.Deprecated('Use checkStatusResponseDescriptor instead')
const CheckStatusResponse$json = const {
  '1': 'CheckStatusResponse',
  '2': const [
    const {'1': 'revoked', '3': 1, '4': 1, '5': 8, '10': 'revoked'},
  ],
};

/// Descriptor for `CheckStatusResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List checkStatusResponseDescriptor =
    $convert.base64Decode(
        'ChNDaGVja1N0YXR1c1Jlc3BvbnNlEhgKB3Jldm9rZWQYASABKAhSB3Jldm9rZWQ=');
