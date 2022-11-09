///
//  Generated code. Do not modify.
//  source: services/provider/v1/access-management.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use addRoleAssignmentRequestDescriptor instead')
const AddRoleAssignmentRequest$json = const {
  '1': 'AddRoleAssignmentRequest',
  '2': const [
    const {'1': 'role', '3': 1, '4': 1, '5': 9, '10': 'role'},
    const {'1': 'email', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'email'},
    const {'1': 'wallet_id', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'walletId'},
  ],
  '8': const [
    const {'1': 'account'},
  ],
};

/// Descriptor for `AddRoleAssignmentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addRoleAssignmentRequestDescriptor =
    $convert.base64Decode(
        'ChhBZGRSb2xlQXNzaWdubWVudFJlcXVlc3QSEgoEcm9sZRgBIAEoCVIEcm9sZRIWCgVlbWFpbBgCIAEoCUgAUgVlbWFpbBIdCgl3YWxsZXRfaWQYAyABKAlIAFIId2FsbGV0SWRCCQoHYWNjb3VudA==');
@$core.Deprecated('Use addRoleAssignmentResponseDescriptor instead')
const AddRoleAssignmentResponse$json = const {
  '1': 'AddRoleAssignmentResponse',
};

/// Descriptor for `AddRoleAssignmentResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addRoleAssignmentResponseDescriptor =
    $convert.base64Decode('ChlBZGRSb2xlQXNzaWdubWVudFJlc3BvbnNl');
@$core.Deprecated('Use removeRoleAssignmentRequestDescriptor instead')
const RemoveRoleAssignmentRequest$json = const {
  '1': 'RemoveRoleAssignmentRequest',
  '2': const [
    const {'1': 'role', '3': 1, '4': 1, '5': 9, '10': 'role'},
    const {'1': 'email', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'email'},
    const {'1': 'wallet_id', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'walletId'},
  ],
  '8': const [
    const {'1': 'account'},
  ],
};

/// Descriptor for `RemoveRoleAssignmentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeRoleAssignmentRequestDescriptor =
    $convert.base64Decode(
        'ChtSZW1vdmVSb2xlQXNzaWdubWVudFJlcXVlc3QSEgoEcm9sZRgBIAEoCVIEcm9sZRIWCgVlbWFpbBgCIAEoCUgAUgVlbWFpbBIdCgl3YWxsZXRfaWQYAyABKAlIAFIId2FsbGV0SWRCCQoHYWNjb3VudA==');
@$core.Deprecated('Use removeRoleAssignmentResponseDescriptor instead')
const RemoveRoleAssignmentResponse$json = const {
  '1': 'RemoveRoleAssignmentResponse',
};

/// Descriptor for `RemoveRoleAssignmentResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeRoleAssignmentResponseDescriptor =
    $convert.base64Decode('ChxSZW1vdmVSb2xlQXNzaWdubWVudFJlc3BvbnNl');
@$core.Deprecated('Use listRoleAssignmentsRequestDescriptor instead')
const ListRoleAssignmentsRequest$json = const {
  '1': 'ListRoleAssignmentsRequest',
  '2': const [
    const {'1': 'email', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'email'},
    const {'1': 'wallet_id', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'walletId'},
  ],
  '8': const [
    const {'1': 'account'},
  ],
};

/// Descriptor for `ListRoleAssignmentsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listRoleAssignmentsRequestDescriptor =
    $convert.base64Decode(
        'ChpMaXN0Um9sZUFzc2lnbm1lbnRzUmVxdWVzdBIWCgVlbWFpbBgCIAEoCUgAUgVlbWFpbBIdCgl3YWxsZXRfaWQYAyABKAlIAFIId2FsbGV0SWRCCQoHYWNjb3VudA==');
@$core.Deprecated('Use listRoleAssignmentsResponseDescriptor instead')
const ListRoleAssignmentsResponse$json = const {
  '1': 'ListRoleAssignmentsResponse',
  '2': const [
    const {'1': 'roles', '3': 1, '4': 3, '5': 9, '10': 'roles'},
  ],
};

/// Descriptor for `ListRoleAssignmentsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listRoleAssignmentsResponseDescriptor =
    $convert.base64Decode(
        'ChtMaXN0Um9sZUFzc2lnbm1lbnRzUmVzcG9uc2USFAoFcm9sZXMYASADKAlSBXJvbGVz');
@$core.Deprecated('Use listAvailableRolesRequestDescriptor instead')
const ListAvailableRolesRequest$json = const {
  '1': 'ListAvailableRolesRequest',
};

/// Descriptor for `ListAvailableRolesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listAvailableRolesRequestDescriptor =
    $convert.base64Decode('ChlMaXN0QXZhaWxhYmxlUm9sZXNSZXF1ZXN0');
@$core.Deprecated('Use listAvailableRolesResponseDescriptor instead')
const ListAvailableRolesResponse$json = const {
  '1': 'ListAvailableRolesResponse',
  '2': const [
    const {'1': 'roles', '3': 1, '4': 3, '5': 9, '10': 'roles'},
  ],
};

/// Descriptor for `ListAvailableRolesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listAvailableRolesResponseDescriptor =
    $convert.base64Decode(
        'ChpMaXN0QXZhaWxhYmxlUm9sZXNSZXNwb25zZRIUCgVyb2xlcxgBIAMoCVIFcm9sZXM=');
