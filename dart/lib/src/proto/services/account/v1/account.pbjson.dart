///
//  Generated code. Do not modify.
//  source: services/account/v1/account.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

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
      '10': 'details'
    },
    const {
      '1': 'invitation_code',
      '3': 2,
      '4': 1,
      '5': 9,
      '8': const {},
      '10': 'invitationCode'
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
};

/// Descriptor for `SignInRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signInRequestDescriptor = $convert.base64Decode(
    'Cg1TaWduSW5SZXF1ZXN0Ej0KB2RldGFpbHMYASABKAsyIy5zZXJ2aWNlcy5hY2NvdW50LnYxLkFjY291bnREZXRhaWxzUgdkZXRhaWxzEi0KD2ludml0YXRpb25fY29kZRgCIAEoCUIEgKYdAVIOaW52aXRhdGlvbkNvZGUSJwoMZWNvc3lzdGVtX2lkGAMgASgJQgSAph0BUgtlY29zeXN0ZW1JZA==');
@$core.Deprecated('Use accountDetailsDescriptor instead')
const AccountDetails$json = const {
  '1': 'AccountDetails',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '8': const {}, '10': 'name'},
    const {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'sms', '3': 3, '4': 1, '5': 9, '8': const {}, '10': 'sms'},
  ],
};

/// Descriptor for `AccountDetails`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountDetailsDescriptor = $convert.base64Decode(
    'Cg5BY2NvdW50RGV0YWlscxIYCgRuYW1lGAEgASgJQgSAph0BUgRuYW1lEhQKBWVtYWlsGAIgASgJUgVlbWFpbBIWCgNzbXMYAyABKAlCBICmHQFSA3Ntcw==');
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
@$core.Deprecated('Use infoRequestDescriptor instead')
const InfoRequest$json = const {
  '1': 'InfoRequest',
};

/// Descriptor for `InfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List infoRequestDescriptor =
    $convert.base64Decode('CgtJbmZvUmVxdWVzdA==');
@$core.Deprecated('Use infoResponseDescriptor instead')
const InfoResponse$json = const {
  '1': 'InfoResponse',
  '2': const [
    const {
      '1': 'details',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.services.account.v1.AccountDetails',
      '10': 'details'
    },
    const {
      '1': 'ecosystems',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.services.account.v1.AccountEcosystem',
      '8': const {'3': true},
      '10': 'ecosystems',
    },
    const {'1': 'wallet_id', '3': 3, '4': 1, '5': 9, '10': 'walletId'},
    const {'1': 'device_id', '3': 4, '4': 1, '5': 9, '10': 'deviceId'},
    const {'1': 'ecosystem_id', '3': 5, '4': 1, '5': 9, '10': 'ecosystemId'},
    const {'1': 'public_did', '3': 6, '4': 1, '5': 9, '10': 'publicDid'},
  ],
};

/// Descriptor for `InfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List infoResponseDescriptor = $convert.base64Decode(
    'CgxJbmZvUmVzcG9uc2USPQoHZGV0YWlscxgBIAEoCzIjLnNlcnZpY2VzLmFjY291bnQudjEuQWNjb3VudERldGFpbHNSB2RldGFpbHMSSQoKZWNvc3lzdGVtcxgCIAMoCzIlLnNlcnZpY2VzLmFjY291bnQudjEuQWNjb3VudEVjb3N5c3RlbUICGAFSCmVjb3N5c3RlbXMSGwoJd2FsbGV0X2lkGAMgASgJUgh3YWxsZXRJZBIbCglkZXZpY2VfaWQYBCABKAlSCGRldmljZUlkEiEKDGVjb3N5c3RlbV9pZBgFIAEoCVILZWNvc3lzdGVtSWQSHQoKcHVibGljX2RpZBgGIAEoCVIJcHVibGljRGlk');
@$core.Deprecated('Use listDevicesRequestDescriptor instead')
const ListDevicesRequest$json = const {
  '1': 'ListDevicesRequest',
};

/// Descriptor for `ListDevicesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listDevicesRequestDescriptor =
    $convert.base64Decode('ChJMaXN0RGV2aWNlc1JlcXVlc3Q=');
@$core.Deprecated('Use listDevicesResponseDescriptor instead')
const ListDevicesResponse$json = const {
  '1': 'ListDevicesResponse',
};

/// Descriptor for `ListDevicesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listDevicesResponseDescriptor =
    $convert.base64Decode('ChNMaXN0RGV2aWNlc1Jlc3BvbnNl');
@$core.Deprecated('Use revokeDeviceRequestDescriptor instead')
const RevokeDeviceRequest$json = const {
  '1': 'RevokeDeviceRequest',
};

/// Descriptor for `RevokeDeviceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List revokeDeviceRequestDescriptor =
    $convert.base64Decode('ChNSZXZva2VEZXZpY2VSZXF1ZXN0');
@$core.Deprecated('Use revokeDeviceResponseDescriptor instead')
const RevokeDeviceResponse$json = const {
  '1': 'RevokeDeviceResponse',
};

/// Descriptor for `RevokeDeviceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List revokeDeviceResponseDescriptor =
    $convert.base64Decode('ChRSZXZva2VEZXZpY2VSZXNwb25zZQ==');
@$core.Deprecated('Use accountEcosystemDescriptor instead')
const AccountEcosystem$json = const {
  '1': 'AccountEcosystem',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'uri', '3': 4, '4': 1, '5': 9, '10': 'uri'},
  ],
};

/// Descriptor for `AccountEcosystem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountEcosystemDescriptor = $convert.base64Decode(
    'ChBBY2NvdW50RWNvc3lzdGVtEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEiAKC2Rlc2NyaXB0aW9uGAMgASgJUgtkZXNjcmlwdGlvbhIQCgN1cmkYBCABKAlSA3VyaQ==');
