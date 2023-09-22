//
//  Generated code. Do not modify.
//  source: services/account/v1/account.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use confirmationMethodDescriptor instead')
const ConfirmationMethod$json = {
  '1': 'ConfirmationMethod',
  '2': [
    {'1': 'None', '2': 0},
    {'1': 'Email', '2': 1},
    {'1': 'Sms', '2': 2},
    {'1': 'ConnectedDevice', '2': 3},
    {'1': 'Other', '2': 10},
  ],
};

/// Descriptor for `ConfirmationMethod`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List confirmationMethodDescriptor = $convert.base64Decode(
    'ChJDb25maXJtYXRpb25NZXRob2QSCAoETm9uZRAAEgkKBUVtYWlsEAESBwoDU21zEAISEwoPQ2'
    '9ubmVjdGVkRGV2aWNlEAMSCQoFT3RoZXIQCg==');

@$core.Deprecated('Use accountDetailsDescriptor instead')
const AccountDetails$json = {
  '1': 'AccountDetails',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'name'},
    {
      '1': 'email',
      '3': 2,
      '4': 1,
      '5': 9,
      '8': {'3': true},
      '10': 'email',
    },
    {
      '1': 'sms',
      '3': 3,
      '4': 1,
      '5': 9,
      '8': {'3': true},
      '10': 'sms',
    },
  ],
};

/// Descriptor for `AccountDetails`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountDetailsDescriptor = $convert.base64Decode(
    'Cg5BY2NvdW50RGV0YWlscxIYCgRuYW1lGAEgASgJQgSAph0BUgRuYW1lEhwKBWVtYWlsGAIgAS'
    'gJQgYYAYCmHQFSBWVtYWlsEhgKA3NtcxgDIAEoCUIGGAGAph0BUgNzbXM=');

@$core.Deprecated('Use tokenProtectionDescriptor instead')
const TokenProtection$json = {
  '1': 'TokenProtection',
  '2': [
    {'1': 'enabled', '3': 1, '4': 1, '5': 8, '10': 'enabled'},
    {
      '1': 'method',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.services.account.v1.ConfirmationMethod',
      '10': 'method'
    },
  ],
};

/// Descriptor for `TokenProtection`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tokenProtectionDescriptor = $convert.base64Decode(
    'Cg9Ub2tlblByb3RlY3Rpb24SGAoHZW5hYmxlZBgBIAEoCFIHZW5hYmxlZBI/CgZtZXRob2QYAi'
    'ABKA4yJy5zZXJ2aWNlcy5hY2NvdW50LnYxLkNvbmZpcm1hdGlvbk1ldGhvZFIGbWV0aG9k');

@$core.Deprecated('Use accountProfileDescriptor instead')
const AccountProfile$json = {
  '1': 'AccountProfile',
  '2': [
    {'1': 'profile_type', '3': 1, '4': 1, '5': 9, '10': 'profileType'},
    {'1': 'auth_data', '3': 2, '4': 1, '5': 12, '10': 'authData'},
    {'1': 'auth_token', '3': 3, '4': 1, '5': 12, '10': 'authToken'},
    {
      '1': 'protection',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.services.account.v1.TokenProtection',
      '10': 'protection'
    },
  ],
};

/// Descriptor for `AccountProfile`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountProfileDescriptor = $convert.base64Decode(
    'Cg5BY2NvdW50UHJvZmlsZRIhCgxwcm9maWxlX3R5cGUYASABKAlSC3Byb2ZpbGVUeXBlEhsKCW'
    'F1dGhfZGF0YRgCIAEoDFIIYXV0aERhdGESHQoKYXV0aF90b2tlbhgDIAEoDFIJYXV0aFRva2Vu'
    'EkQKCnByb3RlY3Rpb24YBCABKAsyJC5zZXJ2aWNlcy5hY2NvdW50LnYxLlRva2VuUHJvdGVjdG'
    'lvblIKcHJvdGVjdGlvbg==');

@$core.Deprecated('Use walletAuthTokenDescriptor instead')
const WalletAuthToken$json = {
  '1': 'WalletAuthToken',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {
      '1': 'description',
      '3': 2,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'description',
      '17': true
    },
    {'1': 'date_created', '3': 3, '4': 1, '5': 9, '10': 'dateCreated'},
  ],
  '8': [
    {'1': '_description'},
  ],
};

/// Descriptor for `WalletAuthToken`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List walletAuthTokenDescriptor = $convert.base64Decode(
    'Cg9XYWxsZXRBdXRoVG9rZW4SDgoCaWQYASABKAlSAmlkEiUKC2Rlc2NyaXB0aW9uGAIgASgJSA'
    'BSC2Rlc2NyaXB0aW9uiAEBEiEKDGRhdGVfY3JlYXRlZBgDIAEoCVILZGF0ZUNyZWF0ZWRCDgoM'
    'X2Rlc2NyaXB0aW9u');
