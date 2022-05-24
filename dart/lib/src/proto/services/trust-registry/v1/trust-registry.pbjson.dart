///
//  Generated code. Do not modify.
//  source: services/trust-registry/v1/trust-registry.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use registrationStatusDescriptor instead')
const RegistrationStatus$json = const {
  '1': 'RegistrationStatus',
  '2': const [
    const {'1': 'CURRENT', '2': 0},
    const {'1': 'EXPIRED', '2': 1},
    const {'1': 'TERMINATED', '2': 2},
    const {'1': 'REVOKED', '2': 3},
    const {'1': 'NOT_FOUND', '2': 10},
  ],
};

/// Descriptor for `RegistrationStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List registrationStatusDescriptor = $convert.base64Decode('ChJSZWdpc3RyYXRpb25TdGF0dXMSCwoHQ1VSUkVOVBAAEgsKB0VYUElSRUQQARIOCgpURVJNSU5BVEVEEAISCwoHUkVWT0tFRBADEg0KCU5PVF9GT1VORBAK');
@$core.Deprecated('Use addFrameworkRequestDescriptor instead')
const AddFrameworkRequest$json = const {
  '1': 'AddFrameworkRequest',
  '2': const [
    const {'1': 'governance_framework_uri', '3': 1, '4': 1, '5': 9, '10': 'governanceFrameworkUri'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
  ],
};

/// Descriptor for `AddFrameworkRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addFrameworkRequestDescriptor = $convert.base64Decode('ChNBZGRGcmFtZXdvcmtSZXF1ZXN0EjgKGGdvdmVybmFuY2VfZnJhbWV3b3JrX3VyaRgBIAEoCVIWZ292ZXJuYW5jZUZyYW1ld29ya1VyaRISCgRuYW1lGAIgASgJUgRuYW1lEiAKC2Rlc2NyaXB0aW9uGAMgASgJUgtkZXNjcmlwdGlvbg==');
@$core.Deprecated('Use addFrameworkResponseDescriptor instead')
const AddFrameworkResponse$json = const {
  '1': 'AddFrameworkResponse',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'governing_authority', '3': 2, '4': 1, '5': 9, '10': 'governingAuthority'},
    const {'1': 'trust_registry', '3': 3, '4': 1, '5': 9, '10': 'trustRegistry'},
  ],
};

/// Descriptor for `AddFrameworkResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addFrameworkResponseDescriptor = $convert.base64Decode('ChRBZGRGcmFtZXdvcmtSZXNwb25zZRIOCgJpZBgBIAEoCVICaWQSLwoTZ292ZXJuaW5nX2F1dGhvcml0eRgCIAEoCVISZ292ZXJuaW5nQXV0aG9yaXR5EiUKDnRydXN0X3JlZ2lzdHJ5GAMgASgJUg10cnVzdFJlZ2lzdHJ5');
@$core.Deprecated('Use removeFrameworkRequestDescriptor instead')
const RemoveFrameworkRequest$json = const {
  '1': 'RemoveFrameworkRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `RemoveFrameworkRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeFrameworkRequestDescriptor = $convert.base64Decode('ChZSZW1vdmVGcmFtZXdvcmtSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZA==');
@$core.Deprecated('Use removeFrameworkResponseDescriptor instead')
const RemoveFrameworkResponse$json = const {
  '1': 'RemoveFrameworkResponse',
};

/// Descriptor for `RemoveFrameworkResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeFrameworkResponseDescriptor = $convert.base64Decode('ChdSZW1vdmVGcmFtZXdvcmtSZXNwb25zZQ==');
@$core.Deprecated('Use searchRegistryRequestDescriptor instead')
const SearchRegistryRequest$json = const {
  '1': 'SearchRegistryRequest',
  '2': const [
    const {'1': 'query', '3': 1, '4': 1, '5': 9, '10': 'query'},
    const {'1': 'continuation_token', '3': 2, '4': 1, '5': 9, '10': 'continuationToken'},
  ],
};

/// Descriptor for `SearchRegistryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchRegistryRequestDescriptor = $convert.base64Decode('ChVTZWFyY2hSZWdpc3RyeVJlcXVlc3QSFAoFcXVlcnkYASABKAlSBXF1ZXJ5Ei0KEmNvbnRpbnVhdGlvbl90b2tlbhgCIAEoCVIRY29udGludWF0aW9uVG9rZW4=');
@$core.Deprecated('Use searchRegistryResponseDescriptor instead')
const SearchRegistryResponse$json = const {
  '1': 'SearchRegistryResponse',
  '2': const [
    const {'1': 'items_json', '3': 1, '4': 1, '5': 9, '10': 'itemsJson'},
    const {'1': 'has_more', '3': 2, '4': 1, '5': 8, '10': 'hasMore'},
    const {'1': 'continuation_token', '3': 4, '4': 1, '5': 9, '10': 'continuationToken'},
  ],
};

/// Descriptor for `SearchRegistryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchRegistryResponseDescriptor = $convert.base64Decode('ChZTZWFyY2hSZWdpc3RyeVJlc3BvbnNlEh0KCml0ZW1zX2pzb24YASABKAlSCWl0ZW1zSnNvbhIZCghoYXNfbW9yZRgCIAEoCFIHaGFzTW9yZRItChJjb250aW51YXRpb25fdG9rZW4YBCABKAlSEWNvbnRpbnVhdGlvblRva2Vu');
@$core.Deprecated('Use governanceFrameworkDescriptor instead')
const GovernanceFramework$json = const {
  '1': 'GovernanceFramework',
  '2': const [
    const {'1': 'governance_framework_uri', '3': 1, '4': 1, '5': 9, '10': 'governanceFrameworkUri'},
    const {'1': 'trust_registry_uri', '3': 2, '4': 1, '5': 9, '10': 'trustRegistryUri'},
    const {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
  ],
};

/// Descriptor for `GovernanceFramework`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List governanceFrameworkDescriptor = $convert.base64Decode('ChNHb3Zlcm5hbmNlRnJhbWV3b3JrEjgKGGdvdmVybmFuY2VfZnJhbWV3b3JrX3VyaRgBIAEoCVIWZ292ZXJuYW5jZUZyYW1ld29ya1VyaRIsChJ0cnVzdF9yZWdpc3RyeV91cmkYAiABKAlSEHRydXN0UmVnaXN0cnlVcmkSIAoLZGVzY3JpcHRpb24YAyABKAlSC2Rlc2NyaXB0aW9u');
@$core.Deprecated('Use registerMemberRequestDescriptor instead')
const RegisterMemberRequest$json = const {
  '1': 'RegisterMemberRequest',
  '2': const [
    const {'1': 'did_uri', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'didUri'},
    const {'1': 'wallet_id', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'walletId'},
    const {'1': 'email', '3': 4, '4': 1, '5': 9, '9': 0, '10': 'email'},
    const {'1': 'schema_uri', '3': 10, '4': 1, '5': 9, '10': 'schemaUri'},
    const {'1': 'valid_from_utc', '3': 11, '4': 1, '5': 4, '10': 'validFromUtc'},
    const {'1': 'valid_until_utc', '3': 12, '4': 1, '5': 4, '10': 'validUntilUtc'},
    const {'1': 'framework_id', '3': 30, '4': 1, '5': 9, '10': 'frameworkId'},
  ],
  '8': const [
    const {'1': 'member'},
  ],
};

/// Descriptor for `RegisterMemberRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerMemberRequestDescriptor = $convert.base64Decode('ChVSZWdpc3Rlck1lbWJlclJlcXVlc3QSGQoHZGlkX3VyaRgBIAEoCUgAUgZkaWRVcmkSHQoJd2FsbGV0X2lkGAMgASgJSABSCHdhbGxldElkEhYKBWVtYWlsGAQgASgJSABSBWVtYWlsEh0KCnNjaGVtYV91cmkYCiABKAlSCXNjaGVtYVVyaRIkCg52YWxpZF9mcm9tX3V0YxgLIAEoBFIMdmFsaWRGcm9tVXRjEiYKD3ZhbGlkX3VudGlsX3V0YxgMIAEoBFINdmFsaWRVbnRpbFV0YxIhCgxmcmFtZXdvcmtfaWQYHiABKAlSC2ZyYW1ld29ya0lkQggKBm1lbWJlcg==');
@$core.Deprecated('Use registerMemberResponseDescriptor instead')
const RegisterMemberResponse$json = const {
  '1': 'RegisterMemberResponse',
};

/// Descriptor for `RegisterMemberResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerMemberResponseDescriptor = $convert.base64Decode('ChZSZWdpc3Rlck1lbWJlclJlc3BvbnNl');
@$core.Deprecated('Use unregisterMemberRequestDescriptor instead')
const UnregisterMemberRequest$json = const {
  '1': 'UnregisterMemberRequest',
  '2': const [
    const {'1': 'did_uri', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'didUri'},
    const {'1': 'wallet_id', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'walletId'},
    const {'1': 'email', '3': 4, '4': 1, '5': 9, '9': 0, '10': 'email'},
    const {'1': 'schema_uri', '3': 10, '4': 1, '5': 9, '10': 'schemaUri'},
    const {'1': 'framework_id', '3': 20, '4': 1, '5': 9, '10': 'frameworkId'},
  ],
  '8': const [
    const {'1': 'member'},
  ],
};

/// Descriptor for `UnregisterMemberRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unregisterMemberRequestDescriptor = $convert.base64Decode('ChdVbnJlZ2lzdGVyTWVtYmVyUmVxdWVzdBIZCgdkaWRfdXJpGAEgASgJSABSBmRpZFVyaRIdCgl3YWxsZXRfaWQYAyABKAlIAFIId2FsbGV0SWQSFgoFZW1haWwYBCABKAlIAFIFZW1haWwSHQoKc2NoZW1hX3VyaRgKIAEoCVIJc2NoZW1hVXJpEiEKDGZyYW1ld29ya19pZBgUIAEoCVILZnJhbWV3b3JrSWRCCAoGbWVtYmVy');
@$core.Deprecated('Use unregisterMemberResponseDescriptor instead')
const UnregisterMemberResponse$json = const {
  '1': 'UnregisterMemberResponse',
};

/// Descriptor for `UnregisterMemberResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unregisterMemberResponseDescriptor = $convert.base64Decode('ChhVbnJlZ2lzdGVyTWVtYmVyUmVzcG9uc2U=');
@$core.Deprecated('Use getMembershipStatusRequestDescriptor instead')
const GetMembershipStatusRequest$json = const {
  '1': 'GetMembershipStatusRequest',
  '2': const [
    const {'1': 'governance_framework_uri', '3': 1, '4': 1, '5': 9, '10': 'governanceFrameworkUri'},
    const {'1': 'did_uri', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'didUri'},
    const {'1': 'x509_cert', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'x509Cert'},
    const {'1': 'schema_uri', '3': 4, '4': 1, '5': 9, '10': 'schemaUri'},
  ],
  '8': const [
    const {'1': 'member'},
  ],
};

/// Descriptor for `GetMembershipStatusRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMembershipStatusRequestDescriptor = $convert.base64Decode('ChpHZXRNZW1iZXJzaGlwU3RhdHVzUmVxdWVzdBI4Chhnb3Zlcm5hbmNlX2ZyYW1ld29ya191cmkYASABKAlSFmdvdmVybmFuY2VGcmFtZXdvcmtVcmkSGQoHZGlkX3VyaRgCIAEoCUgAUgZkaWRVcmkSHQoJeDUwOV9jZXJ0GAMgASgJSABSCHg1MDlDZXJ0Eh0KCnNjaGVtYV91cmkYBCABKAlSCXNjaGVtYVVyaUIICgZtZW1iZXI=');
@$core.Deprecated('Use getMembershipStatusResponseDescriptor instead')
const GetMembershipStatusResponse$json = const {
  '1': 'GetMembershipStatusResponse',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.services.trustregistry.v1.RegistrationStatus', '10': 'status'},
  ],
};

/// Descriptor for `GetMembershipStatusResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMembershipStatusResponseDescriptor = $convert.base64Decode('ChtHZXRNZW1iZXJzaGlwU3RhdHVzUmVzcG9uc2USRQoGc3RhdHVzGAEgASgOMi0uc2VydmljZXMudHJ1c3RyZWdpc3RyeS52MS5SZWdpc3RyYXRpb25TdGF0dXNSBnN0YXR1cw==');
@$core.Deprecated('Use fetchDataRequestDescriptor instead')
const FetchDataRequest$json = const {
  '1': 'FetchDataRequest',
  '2': const [
    const {'1': 'governance_framework_uri', '3': 1, '4': 1, '5': 9, '10': 'governanceFrameworkUri'},
    const {'1': 'query', '3': 2, '4': 1, '5': 9, '10': 'query'},
  ],
};

/// Descriptor for `FetchDataRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchDataRequestDescriptor = $convert.base64Decode('ChBGZXRjaERhdGFSZXF1ZXN0EjgKGGdvdmVybmFuY2VfZnJhbWV3b3JrX3VyaRgBIAEoCVIWZ292ZXJuYW5jZUZyYW1ld29ya1VyaRIUCgVxdWVyeRgCIAEoCVIFcXVlcnk=');
@$core.Deprecated('Use fetchDataResponseDescriptor instead')
const FetchDataResponse$json = const {
  '1': 'FetchDataResponse',
  '2': const [
    const {'1': 'response_json', '3': 1, '4': 1, '5': 9, '10': 'responseJson'},
    const {'1': 'has_more_results', '3': 2, '4': 1, '5': 8, '10': 'hasMoreResults'},
    const {'1': 'continuation_token', '3': 3, '4': 1, '5': 9, '10': 'continuationToken'},
  ],
};

/// Descriptor for `FetchDataResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchDataResponseDescriptor = $convert.base64Decode('ChFGZXRjaERhdGFSZXNwb25zZRIjCg1yZXNwb25zZV9qc29uGAEgASgJUgxyZXNwb25zZUpzb24SKAoQaGFzX21vcmVfcmVzdWx0cxgCIAEoCFIOaGFzTW9yZVJlc3VsdHMSLQoSY29udGludWF0aW9uX3Rva2VuGAMgASgJUhFjb250aW51YXRpb25Ub2tlbg==');
