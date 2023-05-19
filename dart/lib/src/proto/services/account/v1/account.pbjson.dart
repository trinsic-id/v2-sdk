///
//  Generated code. Do not modify.
//  source: services/account/v1/account.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use confirmationMethodDescriptor instead')
const ConfirmationMethod$json = const {
  '1': 'ConfirmationMethod',
  '2': const [
    const {'1': 'None', '2': 0},
    const {'1': 'Email', '2': 1},
    const {'1': 'Sms', '2': 2},
    const {'1': 'ConnectedDevice', '2': 3},
    const {'1': 'Other', '2': 10},
  ],
};

/// Descriptor for `ConfirmationMethod`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List confirmationMethodDescriptor = $convert.base64Decode(
    'ChJDb25maXJtYXRpb25NZXRob2QSCAoETm9uZRAAEgkKBUVtYWlsEAESBwoDU21zEAISEwoPQ29ubmVjdGVkRGV2aWNlEAMSCQoFT3RoZXIQCg==');
@$core.Deprecated('Use signInRequestDescriptor instead')
const SignInRequest$json = const {
  '1': 'SignInRequest',
  '2': const [
    const {
      '1': 'details',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.services.account.v1.AccountDetails',
      '8': const {},
      '10': 'details'
    },
    const {
      '1': 'ecosystem_id',
      '3': 3,
      '4': 1,
      '5': 9,
      '8': const {},
      '10': 'ecosystemId'
    },
  ],
  '9': const [
    const {'1': 2, '2': 3},
  ],
  '10': const ['invitation_code'],
};

/// Descriptor for `SignInRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signInRequestDescriptor = $convert.base64Decode(
    'Cg1TaWduSW5SZXF1ZXN0EkMKB2RldGFpbHMYASABKAsyIy5zZXJ2aWNlcy5hY2NvdW50LnYxLkFjY291bnREZXRhaWxzQgSAph0BUgdkZXRhaWxzEicKDGVjb3N5c3RlbV9pZBgDIAEoCUIEgKYdAVILZWNvc3lzdGVtSWRKBAgCEANSD2ludml0YXRpb25fY29kZQ==');
@$core.Deprecated('Use accountDetailsDescriptor instead')
const AccountDetails$json = const {
  '1': 'AccountDetails',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '8': const {}, '10': 'name'},
    const {
      '1': 'email',
      '3': 2,
      '4': 1,
      '5': 9,
      '8': const {'3': true},
      '10': 'email',
    },
    const {
      '1': 'sms',
      '3': 3,
      '4': 1,
      '5': 9,
      '8': const {'3': true},
      '10': 'sms',
    },
  ],
};

/// Descriptor for `AccountDetails`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountDetailsDescriptor = $convert.base64Decode(
    'Cg5BY2NvdW50RGV0YWlscxIYCgRuYW1lGAEgASgJQgSAph0BUgRuYW1lEhwKBWVtYWlsGAIgASgJQgYYAYCmHQFSBWVtYWlsEhgKA3NtcxgDIAEoCUIGGAGAph0BUgNzbXM=');
@$core.Deprecated('Use signInResponseDescriptor instead')
const SignInResponse$json = const {
  '1': 'SignInResponse',
  '2': const [
    const {
      '1': 'confirmation_method',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.services.account.v1.ConfirmationMethod',
      '10': 'confirmationMethod'
    },
    const {
      '1': 'profile',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.services.account.v1.AccountProfile',
      '10': 'profile'
    },
  ],
};

/// Descriptor for `SignInResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signInResponseDescriptor = $convert.base64Decode(
    'Cg5TaWduSW5SZXNwb25zZRJYChNjb25maXJtYXRpb25fbWV0aG9kGAMgASgOMicuc2VydmljZXMuYWNjb3VudC52MS5Db25maXJtYXRpb25NZXRob2RSEmNvbmZpcm1hdGlvbk1ldGhvZBI9Cgdwcm9maWxlGAQgASgLMiMuc2VydmljZXMuYWNjb3VudC52MS5BY2NvdW50UHJvZmlsZVIHcHJvZmlsZQ==');
@$core.Deprecated('Use accountProfileDescriptor instead')
const AccountProfile$json = const {
  '1': 'AccountProfile',
  '2': const [
    const {'1': 'profile_type', '3': 1, '4': 1, '5': 9, '10': 'profileType'},
    const {'1': 'auth_data', '3': 2, '4': 1, '5': 12, '10': 'authData'},
    const {'1': 'auth_token', '3': 3, '4': 1, '5': 12, '10': 'authToken'},
    const {
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
    'Cg5BY2NvdW50UHJvZmlsZRIhCgxwcm9maWxlX3R5cGUYASABKAlSC3Byb2ZpbGVUeXBlEhsKCWF1dGhfZGF0YRgCIAEoDFIIYXV0aERhdGESHQoKYXV0aF90b2tlbhgDIAEoDFIJYXV0aFRva2VuEkQKCnByb3RlY3Rpb24YBCABKAsyJC5zZXJ2aWNlcy5hY2NvdW50LnYxLlRva2VuUHJvdGVjdGlvblIKcHJvdGVjdGlvbg==');
@$core.Deprecated('Use tokenProtectionDescriptor instead')
const TokenProtection$json = const {
  '1': 'TokenProtection',
  '2': const [
    const {'1': 'enabled', '3': 1, '4': 1, '5': 8, '10': 'enabled'},
    const {
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
    'Cg9Ub2tlblByb3RlY3Rpb24SGAoHZW5hYmxlZBgBIAEoCFIHZW5hYmxlZBI/CgZtZXRob2QYAiABKA4yJy5zZXJ2aWNlcy5hY2NvdW50LnYxLkNvbmZpcm1hdGlvbk1ldGhvZFIGbWV0aG9k');
@$core.Deprecated('Use accountInfoRequestDescriptor instead')
const AccountInfoRequest$json = const {
  '1': 'AccountInfoRequest',
};

/// Descriptor for `AccountInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountInfoRequestDescriptor =
    $convert.base64Decode('ChJBY2NvdW50SW5mb1JlcXVlc3Q=');
@$core.Deprecated('Use accountInfoResponseDescriptor instead')
const AccountInfoResponse$json = const {
  '1': 'AccountInfoResponse',
  '2': const [
    const {
      '1': 'details',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.services.account.v1.AccountDetails',
      '10': 'details'
    },
    const {'1': 'wallet_id', '3': 3, '4': 1, '5': 9, '10': 'walletId'},
    const {'1': 'device_id', '3': 4, '4': 1, '5': 9, '10': 'deviceId'},
    const {'1': 'ecosystem_id', '3': 5, '4': 1, '5': 9, '10': 'ecosystemId'},
    const {'1': 'public_did', '3': 6, '4': 1, '5': 9, '10': 'publicDid'},
    const {
      '1': 'auth_tokens',
      '3': 8,
      '4': 3,
      '5': 11,
      '6': '.services.account.v1.WalletAuthToken',
      '10': 'authTokens'
    },
  ],
  '9': const [
    const {'1': 2, '2': 3},
    const {'1': 7, '2': 8},
  ],
  '10': const ['ecosystems', 'authorized_webhooks'],
};

/// Descriptor for `AccountInfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountInfoResponseDescriptor = $convert.base64Decode(
    'ChNBY2NvdW50SW5mb1Jlc3BvbnNlEj0KB2RldGFpbHMYASABKAsyIy5zZXJ2aWNlcy5hY2NvdW50LnYxLkFjY291bnREZXRhaWxzUgdkZXRhaWxzEhsKCXdhbGxldF9pZBgDIAEoCVIId2FsbGV0SWQSGwoJZGV2aWNlX2lkGAQgASgJUghkZXZpY2VJZBIhCgxlY29zeXN0ZW1faWQYBSABKAlSC2Vjb3N5c3RlbUlkEh0KCnB1YmxpY19kaWQYBiABKAlSCXB1YmxpY0RpZBJFCgthdXRoX3Rva2VucxgIIAMoCzIkLnNlcnZpY2VzLmFjY291bnQudjEuV2FsbGV0QXV0aFRva2VuUgphdXRoVG9rZW5zSgQIAhADSgQIBxAIUgplY29zeXN0ZW1zUhNhdXRob3JpemVkX3dlYmhvb2tz');
@$core.Deprecated('Use loginRequestDescriptor instead')
const LoginRequest$json = const {
  '1': 'LoginRequest',
  '2': const [
    const {'1': 'email', '3': 1, '4': 1, '5': 9, '8': const {}, '10': 'email'},
    const {
      '1': 'ecosystem_id',
      '3': 3,
      '4': 1,
      '5': 9,
      '8': const {},
      '10': 'ecosystemId'
    },
  ],
  '9': const [
    const {'1': 2, '2': 3},
  ],
  '10': const ['invitation_code'],
};

/// Descriptor for `LoginRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginRequestDescriptor = $convert.base64Decode(
    'CgxMb2dpblJlcXVlc3QSGgoFZW1haWwYASABKAlCBICmHQFSBWVtYWlsEicKDGVjb3N5c3RlbV9pZBgDIAEoCUIEgKYdAVILZWNvc3lzdGVtSWRKBAgCEANSD2ludml0YXRpb25fY29kZQ==');
@$core.Deprecated('Use loginResponseDescriptor instead')
const LoginResponse$json = const {
  '1': 'LoginResponse',
  '2': const [
    const {
      '1': 'challenge',
      '3': 1,
      '4': 1,
      '5': 12,
      '9': 0,
      '10': 'challenge'
    },
    const {
      '1': 'profile',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.services.account.v1.AccountProfile',
      '9': 0,
      '10': 'profile'
    },
  ],
  '8': const [
    const {'1': 'response'},
  ],
};

/// Descriptor for `LoginResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginResponseDescriptor = $convert.base64Decode(
    'Cg1Mb2dpblJlc3BvbnNlEh4KCWNoYWxsZW5nZRgBIAEoDEgAUgljaGFsbGVuZ2USPwoHcHJvZmlsZRgCIAEoCzIjLnNlcnZpY2VzLmFjY291bnQudjEuQWNjb3VudFByb2ZpbGVIAFIHcHJvZmlsZUIKCghyZXNwb25zZQ==');
@$core.Deprecated('Use loginConfirmRequestDescriptor instead')
const LoginConfirmRequest$json = const {
  '1': 'LoginConfirmRequest',
  '2': const [
    const {'1': 'challenge', '3': 1, '4': 1, '5': 12, '10': 'challenge'},
    const {
      '1': 'confirmation_code_hashed',
      '3': 2,
      '4': 1,
      '5': 12,
      '10': 'confirmationCodeHashed'
    },
  ],
};

/// Descriptor for `LoginConfirmRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginConfirmRequestDescriptor = $convert.base64Decode(
    'ChNMb2dpbkNvbmZpcm1SZXF1ZXN0EhwKCWNoYWxsZW5nZRgBIAEoDFIJY2hhbGxlbmdlEjgKGGNvbmZpcm1hdGlvbl9jb2RlX2hhc2hlZBgCIAEoDFIWY29uZmlybWF0aW9uQ29kZUhhc2hlZA==');
@$core.Deprecated('Use loginConfirmResponseDescriptor instead')
const LoginConfirmResponse$json = const {
  '1': 'LoginConfirmResponse',
  '2': const [
    const {
      '1': 'profile',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.services.account.v1.AccountProfile',
      '10': 'profile'
    },
  ],
};

/// Descriptor for `LoginConfirmResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginConfirmResponseDescriptor = $convert.base64Decode(
    'ChRMb2dpbkNvbmZpcm1SZXNwb25zZRI9Cgdwcm9maWxlGAEgASgLMiMuc2VydmljZXMuYWNjb3VudC52MS5BY2NvdW50UHJvZmlsZVIHcHJvZmlsZQ==');
@$core.Deprecated('Use walletAuthTokenDescriptor instead')
const WalletAuthToken$json = const {
  '1': 'WalletAuthToken',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {
      '1': 'description',
      '3': 2,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'description',
      '17': true
    },
    const {'1': 'date_created', '3': 3, '4': 1, '5': 9, '10': 'dateCreated'},
  ],
  '8': const [
    const {'1': '_description'},
  ],
};

/// Descriptor for `WalletAuthToken`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List walletAuthTokenDescriptor = $convert.base64Decode(
    'Cg9XYWxsZXRBdXRoVG9rZW4SDgoCaWQYASABKAlSAmlkEiUKC2Rlc2NyaXB0aW9uGAIgASgJSABSC2Rlc2NyaXB0aW9uiAEBEiEKDGRhdGVfY3JlYXRlZBgDIAEoCVILZGF0ZUNyZWF0ZWRCDgoMX2Rlc2NyaXB0aW9u');
