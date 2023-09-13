//
//  Generated code. Do not modify.
//  source: services/connect/v1/connect.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use verificationTypeDescriptor instead')
const VerificationType$json = {
  '1': 'VerificationType',
  '2': [
    {'1': 'GOVERNMENT_ID', '2': 0},
  ],
};

/// Descriptor for `VerificationType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List verificationTypeDescriptor = $convert
    .base64Decode('ChBWZXJpZmljYXRpb25UeXBlEhEKDUdPVkVSTk1FTlRfSUQQAA==');

@$core.Deprecated('Use iDVSessionStateDescriptor instead')
const IDVSessionState$json = {
  '1': 'IDVSessionState',
  '2': [
    {'1': 'IDV_CREATED', '2': 0},
    {'1': 'IDV_INITIATED', '2': 1},
    {'1': 'IDV_AUTHENTICATING', '2': 2},
    {'1': 'IDV_IN_PROGRESS', '2': 3},
    {'1': 'IDV_SUCCESS', '2': 4},
    {'1': 'IDV_FAILED', '2': 5},
  ],
};

/// Descriptor for `IDVSessionState`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List iDVSessionStateDescriptor = $convert.base64Decode(
    'Cg9JRFZTZXNzaW9uU3RhdGUSDwoLSURWX0NSRUFURUQQABIRCg1JRFZfSU5JVElBVEVEEAESFg'
    'oSSURWX0FVVEhFTlRJQ0FUSU5HEAISEwoPSURWX0lOX1BST0dSRVNTEAMSDwoLSURWX1NVQ0NF'
    'U1MQBBIOCgpJRFZfRkFJTEVEEAU=');

@$core.Deprecated('Use verificationStateDescriptor instead')
const VerificationState$json = {
  '1': 'VerificationState',
  '2': [
    {'1': 'VERIFICATION_PENDING', '2': 0},
    {'1': 'VERIFICATION_PENDING_REUSE', '2': 1},
    {'1': 'VERIFICATION_STARTED', '2': 2},
    {'1': 'VERIFICATION_SUCCESS', '2': 3},
    {'1': 'VERIFICATION_FAILED', '2': 4},
  ],
};

/// Descriptor for `VerificationState`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List verificationStateDescriptor = $convert.base64Decode(
    'ChFWZXJpZmljYXRpb25TdGF0ZRIYChRWRVJJRklDQVRJT05fUEVORElORxAAEh4KGlZFUklGSU'
    'NBVElPTl9QRU5ESU5HX1JFVVNFEAESGAoUVkVSSUZJQ0FUSU9OX1NUQVJURUQQAhIYChRWRVJJ'
    'RklDQVRJT05fU1VDQ0VTUxADEhcKE1ZFUklGSUNBVElPTl9GQUlMRUQQBA==');

@$core.Deprecated('Use sessionFailCodeDescriptor instead')
const SessionFailCode$json = {
  '1': 'SessionFailCode',
  '2': [
    {'1': 'SESSION_FAIL_INTERNAL', '2': 0},
    {'1': 'SESSION_FAIL_VERIFICATION_FAILED', '2': 1},
    {'1': 'SESSION_FAIL_AUTHENTICATION', '2': 2},
    {'1': 'SESSION_FAIL_EXPIRED', '2': 3},
    {'1': 'SESSION_FAIL_USER_CANCELED', '2': 4},
    {'1': 'SESSION_FAIL_RP_CANCELED', '2': 5},
  ],
};

/// Descriptor for `SessionFailCode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List sessionFailCodeDescriptor = $convert.base64Decode(
    'Cg9TZXNzaW9uRmFpbENvZGUSGQoVU0VTU0lPTl9GQUlMX0lOVEVSTkFMEAASJAogU0VTU0lPTl'
    '9GQUlMX1ZFUklGSUNBVElPTl9GQUlMRUQQARIfChtTRVNTSU9OX0ZBSUxfQVVUSEVOVElDQVRJ'
    'T04QAhIYChRTRVNTSU9OX0ZBSUxfRVhQSVJFRBADEh4KGlNFU1NJT05fRkFJTF9VU0VSX0NBTk'
    'NFTEVEEAQSHAoYU0VTU0lPTl9GQUlMX1JQX0NBTkNFTEVEEAU=');

@$core.Deprecated('Use verificationFailCodeDescriptor instead')
const VerificationFailCode$json = {
  '1': 'VerificationFailCode',
  '2': [
    {'1': 'VERIFICATION_FAIL_INTERNAL', '2': 0},
    {'1': 'VERIFICATION_FAIL_INVALID_IMAGE', '2': 1},
    {'1': 'VERIFICATION_FAIL_INAUTHENTIC', '2': 2},
    {'1': 'VERIFICATION_FAIL_UNSUPPORTED_DOCUMENT', '2': 3},
  ],
};

/// Descriptor for `VerificationFailCode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List verificationFailCodeDescriptor = $convert.base64Decode(
    'ChRWZXJpZmljYXRpb25GYWlsQ29kZRIeChpWRVJJRklDQVRJT05fRkFJTF9JTlRFUk5BTBAAEi'
    'MKH1ZFUklGSUNBVElPTl9GQUlMX0lOVkFMSURfSU1BR0UQARIhCh1WRVJJRklDQVRJT05fRkFJ'
    'TF9JTkFVVEhFTlRJQxACEioKJlZFUklGSUNBVElPTl9GQUlMX1VOU1VQUE9SVEVEX0RPQ1VNRU'
    '5UEAM=');

@$core.Deprecated('Use iDVSessionDescriptor instead')
const IDVSession$json = {
  '1': 'IDVSession',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'client_token', '3': 2, '4': 1, '5': 9, '10': 'clientToken'},
    {
      '1': 'state',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.services.connect.v1.IDVSessionState',
      '10': 'state'
    },
    {
      '1': 'verifications',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.services.connect.v1.IDVSession.VerificationsEntry',
      '10': 'verifications'
    },
    {
      '1': 'fail_code',
      '3': 5,
      '4': 1,
      '5': 14,
      '6': '.services.connect.v1.SessionFailCode',
      '9': 0,
      '10': 'failCode',
      '17': true
    },
    {
      '1': 'result_vp',
      '3': 6,
      '4': 1,
      '5': 9,
      '9': 1,
      '10': 'resultVp',
      '17': true
    },
    {'1': 'created', '3': 7, '4': 1, '5': 6, '10': 'created'},
    {'1': 'updated', '3': 8, '4': 1, '5': 6, '10': 'updated'},
  ],
  '3': [IDVSession_VerificationsEntry$json],
  '8': [
    {'1': '_fail_code'},
    {'1': '_result_vp'},
  ],
};

@$core.Deprecated('Use iDVSessionDescriptor instead')
const IDVSession_VerificationsEntry$json = {
  '1': 'VerificationsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.services.connect.v1.Verification',
      '10': 'value'
    },
  ],
  '7': {'7': true},
};

/// Descriptor for `IDVSession`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List iDVSessionDescriptor = $convert.base64Decode(
    'CgpJRFZTZXNzaW9uEg4KAmlkGAEgASgJUgJpZBIhCgxjbGllbnRfdG9rZW4YAiABKAlSC2NsaW'
    'VudFRva2VuEjoKBXN0YXRlGAMgASgOMiQuc2VydmljZXMuY29ubmVjdC52MS5JRFZTZXNzaW9u'
    'U3RhdGVSBXN0YXRlElgKDXZlcmlmaWNhdGlvbnMYBCADKAsyMi5zZXJ2aWNlcy5jb25uZWN0Ln'
    'YxLklEVlNlc3Npb24uVmVyaWZpY2F0aW9uc0VudHJ5Ug12ZXJpZmljYXRpb25zEkYKCWZhaWxf'
    'Y29kZRgFIAEoDjIkLnNlcnZpY2VzLmNvbm5lY3QudjEuU2Vzc2lvbkZhaWxDb2RlSABSCGZhaW'
    'xDb2RliAEBEiAKCXJlc3VsdF92cBgGIAEoCUgBUghyZXN1bHRWcIgBARIYCgdjcmVhdGVkGAcg'
    'ASgGUgdjcmVhdGVkEhgKB3VwZGF0ZWQYCCABKAZSB3VwZGF0ZWQaYwoSVmVyaWZpY2F0aW9uc0'
    'VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EjcKBXZhbHVlGAIgASgLMiEuc2VydmljZXMuY29ubmVj'
    'dC52MS5WZXJpZmljYXRpb25SBXZhbHVlOgI4AUIMCgpfZmFpbF9jb2RlQgwKCl9yZXN1bHRfdn'
    'A=');

@$core.Deprecated('Use verificationDescriptor instead')
const Verification$json = {
  '1': 'Verification',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {
      '1': 'type',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.services.connect.v1.VerificationType',
      '10': 'type'
    },
    {
      '1': 'state',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.services.connect.v1.VerificationState',
      '10': 'state'
    },
    {
      '1': 'fail_code',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.services.connect.v1.VerificationFailCode',
      '9': 0,
      '10': 'failCode',
      '17': true
    },
    {'1': 'reused', '3': 5, '4': 1, '5': 8, '10': 'reused'},
    {'1': 'begun', '3': 6, '4': 1, '5': 6, '10': 'begun'},
    {'1': 'updated', '3': 7, '4': 1, '5': 6, '10': 'updated'},
  ],
  '8': [
    {'1': '_fail_code'},
  ],
};

/// Descriptor for `Verification`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List verificationDescriptor = $convert.base64Decode(
    'CgxWZXJpZmljYXRpb24SDgoCaWQYASABKAlSAmlkEjkKBHR5cGUYAiABKA4yJS5zZXJ2aWNlcy'
    '5jb25uZWN0LnYxLlZlcmlmaWNhdGlvblR5cGVSBHR5cGUSPAoFc3RhdGUYAyABKA4yJi5zZXJ2'
    'aWNlcy5jb25uZWN0LnYxLlZlcmlmaWNhdGlvblN0YXRlUgVzdGF0ZRJLCglmYWlsX2NvZGUYBC'
    'ABKA4yKS5zZXJ2aWNlcy5jb25uZWN0LnYxLlZlcmlmaWNhdGlvbkZhaWxDb2RlSABSCGZhaWxD'
    'b2RliAEBEhYKBnJldXNlZBgFIAEoCFIGcmV1c2VkEhQKBWJlZ3VuGAYgASgGUgViZWd1bhIYCg'
    'd1cGRhdGVkGAcgASgGUgd1cGRhdGVkQgwKCl9mYWlsX2NvZGU=');

@$core.Deprecated('Use createSessionRequestDescriptor instead')
const CreateSessionRequest$json = {
  '1': 'CreateSessionRequest',
  '2': [
    {
      '1': 'verifications',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.services.connect.v1.RequestedVerification',
      '10': 'verifications'
    },
  ],
};

/// Descriptor for `CreateSessionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createSessionRequestDescriptor = $convert.base64Decode(
    'ChRDcmVhdGVTZXNzaW9uUmVxdWVzdBJQCg12ZXJpZmljYXRpb25zGAEgAygLMiouc2VydmljZX'
    'MuY29ubmVjdC52MS5SZXF1ZXN0ZWRWZXJpZmljYXRpb25SDXZlcmlmaWNhdGlvbnM=');

@$core.Deprecated('Use requestedVerificationDescriptor instead')
const RequestedVerification$json = {
  '1': 'RequestedVerification',
  '2': [
    {
      '1': 'type',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.services.connect.v1.VerificationType',
      '10': 'type'
    },
  ],
};

/// Descriptor for `RequestedVerification`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestedVerificationDescriptor = $convert.base64Decode(
    'ChVSZXF1ZXN0ZWRWZXJpZmljYXRpb24SOQoEdHlwZRgBIAEoDjIlLnNlcnZpY2VzLmNvbm5lY3'
    'QudjEuVmVyaWZpY2F0aW9uVHlwZVIEdHlwZQ==');

@$core.Deprecated('Use createSessionResponseDescriptor instead')
const CreateSessionResponse$json = {
  '1': 'CreateSessionResponse',
  '2': [
    {
      '1': 'session',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.services.connect.v1.IDVSession',
      '10': 'session'
    },
  ],
};

/// Descriptor for `CreateSessionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createSessionResponseDescriptor = $convert.base64Decode(
    'ChVDcmVhdGVTZXNzaW9uUmVzcG9uc2USOQoHc2Vzc2lvbhgBIAEoCzIfLnNlcnZpY2VzLmNvbm'
    '5lY3QudjEuSURWU2Vzc2lvblIHc2Vzc2lvbg==');

@$core.Deprecated('Use cancelSessionRequestDescriptor instead')
const CancelSessionRequest$json = {
  '1': 'CancelSessionRequest',
  '2': [
    {'1': 'idv_session_id', '3': 1, '4': 1, '5': 9, '10': 'idvSessionId'},
  ],
};

/// Descriptor for `CancelSessionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cancelSessionRequestDescriptor = $convert.base64Decode(
    'ChRDYW5jZWxTZXNzaW9uUmVxdWVzdBIkCg5pZHZfc2Vzc2lvbl9pZBgBIAEoCVIMaWR2U2Vzc2'
    'lvbklk');

@$core.Deprecated('Use cancelSessionResponseDescriptor instead')
const CancelSessionResponse$json = {
  '1': 'CancelSessionResponse',
  '2': [
    {
      '1': 'session',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.services.connect.v1.IDVSession',
      '10': 'session'
    },
  ],
};

/// Descriptor for `CancelSessionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cancelSessionResponseDescriptor = $convert.base64Decode(
    'ChVDYW5jZWxTZXNzaW9uUmVzcG9uc2USOQoHc2Vzc2lvbhgBIAEoCzIfLnNlcnZpY2VzLmNvbm'
    '5lY3QudjEuSURWU2Vzc2lvblIHc2Vzc2lvbg==');

@$core.Deprecated('Use getSessionRequestDescriptor instead')
const GetSessionRequest$json = {
  '1': 'GetSessionRequest',
  '2': [
    {'1': 'idv_session_id', '3': 1, '4': 1, '5': 9, '10': 'idvSessionId'},
  ],
};

/// Descriptor for `GetSessionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSessionRequestDescriptor = $convert.base64Decode(
    'ChFHZXRTZXNzaW9uUmVxdWVzdBIkCg5pZHZfc2Vzc2lvbl9pZBgBIAEoCVIMaWR2U2Vzc2lvbk'
    'lk');

@$core.Deprecated('Use getSessionResponseDescriptor instead')
const GetSessionResponse$json = {
  '1': 'GetSessionResponse',
  '2': [
    {
      '1': 'session',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.services.connect.v1.IDVSession',
      '10': 'session'
    },
  ],
};

/// Descriptor for `GetSessionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSessionResponseDescriptor = $convert.base64Decode(
    'ChJHZXRTZXNzaW9uUmVzcG9uc2USOQoHc2Vzc2lvbhgBIAEoCzIfLnNlcnZpY2VzLmNvbm5lY3'
    'QudjEuSURWU2Vzc2lvblIHc2Vzc2lvbg==');
