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
    'ChJDb25maXJtYXRpb25NZXRob2QSCAoETm9uZRAAEgkKBUVtYWlsEAESBwoDU21zEAISEwoPQ29ubmVjdGVkRGV2aWNlEAMSCQoFT3RoZXIQCg==');
@$core.Deprecated('Use signInRequestDescriptor instead')
const SignInRequest$json = {
  '1': 'SignInRequest',
  '2': [
    {
      '1': 'details',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.services.account.v1.AccountDetails',
      '8': {},
      '10': 'details'
    },
    {
      '1': 'invitation_code',
      '3': 2,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'invitationCode'
    },
    {'1': 'ecosystem_id', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'ecosystemId'},
  ],
};

/// Descriptor for `SignInRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signInRequestDescriptor = $convert.base64Decode(
    'Cg1TaWduSW5SZXF1ZXN0EkMKB2RldGFpbHMYASABKAsyIy5zZXJ2aWNlcy5hY2NvdW50LnYxLkFjY291bnREZXRhaWxzQgSAph0BUgdkZXRhaWxzEi0KD2ludml0YXRpb25fY29kZRgCIAEoCUIEgKYdAVIOaW52aXRhdGlvbkNvZGUSJwoMZWNvc3lzdGVtX2lkGAMgASgJQgSAph0BUgtlY29zeXN0ZW1JZA==');
@$core.Deprecated('Use accountDetailsDescriptor instead')
const AccountDetails$json = {
  '1': 'AccountDetails',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'name'},
    {'1': 'email', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'email'},
    {'1': 'sms', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'sms'},
  ],
};

/// Descriptor for `AccountDetails`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountDetailsDescriptor = $convert.base64Decode(
    'Cg5BY2NvdW50RGV0YWlscxIYCgRuYW1lGAEgASgJQgSAph0BUgRuYW1lEhoKBWVtYWlsGAIgASgJQgSAph0BUgVlbWFpbBIWCgNzbXMYAyABKAlCBICmHQFSA3Ntcw==');
@$core.Deprecated('Use signInResponseDescriptor instead')
const SignInResponse$json = {
  '1': 'SignInResponse',
  '2': [
    {
      '1': 'confirmation_method',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.services.account.v1.ConfirmationMethod',
      '10': 'confirmationMethod'
    },
    {
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
    'Cg5BY2NvdW50UHJvZmlsZRIhCgxwcm9maWxlX3R5cGUYASABKAlSC3Byb2ZpbGVUeXBlEhsKCWF1dGhfZGF0YRgCIAEoDFIIYXV0aERhdGESHQoKYXV0aF90b2tlbhgDIAEoDFIJYXV0aFRva2VuEkQKCnByb3RlY3Rpb24YBCABKAsyJC5zZXJ2aWNlcy5hY2NvdW50LnYxLlRva2VuUHJvdGVjdGlvblIKcHJvdGVjdGlvbg==');
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
    'Cg9Ub2tlblByb3RlY3Rpb24SGAoHZW5hYmxlZBgBIAEoCFIHZW5hYmxlZBI/CgZtZXRob2QYAiABKA4yJy5zZXJ2aWNlcy5hY2NvdW50LnYxLkNvbmZpcm1hdGlvbk1ldGhvZFIGbWV0aG9k');
@$core.Deprecated('Use accountInfoRequestDescriptor instead')
const AccountInfoRequest$json = {
  '1': 'AccountInfoRequest',
};

/// Descriptor for `AccountInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountInfoRequestDescriptor =
    $convert.base64Decode('ChJBY2NvdW50SW5mb1JlcXVlc3Q=');
@$core.Deprecated('Use accountInfoResponseDescriptor instead')
const AccountInfoResponse$json = {
  '1': 'AccountInfoResponse',
  '2': [
    {
      '1': 'details',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.services.account.v1.AccountDetails',
      '10': 'details'
    },
    {
      '1': 'ecosystems',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.services.account.v1.AccountEcosystem',
      '8': {'3': true},
      '10': 'ecosystems',
    },
    {'1': 'wallet_id', '3': 3, '4': 1, '5': 9, '10': 'walletId'},
    {'1': 'device_id', '3': 4, '4': 1, '5': 9, '10': 'deviceId'},
    {'1': 'ecosystem_id', '3': 5, '4': 1, '5': 9, '10': 'ecosystemId'},
    {'1': 'public_did', '3': 6, '4': 1, '5': 9, '10': 'publicDid'},
    {
      '1': 'authorized_webhooks',
      '3': 7,
      '4': 3,
      '5': 9,
      '10': 'authorizedWebhooks'
    },
  ],
};

/// Descriptor for `AccountInfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountInfoResponseDescriptor = $convert.base64Decode(
    'ChNBY2NvdW50SW5mb1Jlc3BvbnNlEj0KB2RldGFpbHMYASABKAsyIy5zZXJ2aWNlcy5hY2NvdW50LnYxLkFjY291bnREZXRhaWxzUgdkZXRhaWxzEkkKCmVjb3N5c3RlbXMYAiADKAsyJS5zZXJ2aWNlcy5hY2NvdW50LnYxLkFjY291bnRFY29zeXN0ZW1CAhgBUgplY29zeXN0ZW1zEhsKCXdhbGxldF9pZBgDIAEoCVIId2FsbGV0SWQSGwoJZGV2aWNlX2lkGAQgASgJUghkZXZpY2VJZBIhCgxlY29zeXN0ZW1faWQYBSABKAlSC2Vjb3N5c3RlbUlkEh0KCnB1YmxpY19kaWQYBiABKAlSCXB1YmxpY0RpZBIvChNhdXRob3JpemVkX3dlYmhvb2tzGAcgAygJUhJhdXRob3JpemVkV2ViaG9va3M=');
@$core.Deprecated('Use listDevicesRequestDescriptor instead')
const ListDevicesRequest$json = {
  '1': 'ListDevicesRequest',
};

/// Descriptor for `ListDevicesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listDevicesRequestDescriptor =
    $convert.base64Decode('ChJMaXN0RGV2aWNlc1JlcXVlc3Q=');
@$core.Deprecated('Use listDevicesResponseDescriptor instead')
const ListDevicesResponse$json = {
  '1': 'ListDevicesResponse',
};

/// Descriptor for `ListDevicesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listDevicesResponseDescriptor =
    $convert.base64Decode('ChNMaXN0RGV2aWNlc1Jlc3BvbnNl');
@$core.Deprecated('Use revokeDeviceRequestDescriptor instead')
const RevokeDeviceRequest$json = {
  '1': 'RevokeDeviceRequest',
};

/// Descriptor for `RevokeDeviceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List revokeDeviceRequestDescriptor =
    $convert.base64Decode('ChNSZXZva2VEZXZpY2VSZXF1ZXN0');
@$core.Deprecated('Use revokeDeviceResponseDescriptor instead')
const RevokeDeviceResponse$json = {
  '1': 'RevokeDeviceResponse',
};

/// Descriptor for `RevokeDeviceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List revokeDeviceResponseDescriptor =
    $convert.base64Decode('ChRSZXZva2VEZXZpY2VSZXNwb25zZQ==');
@$core.Deprecated('Use accountEcosystemDescriptor instead')
const AccountEcosystem$json = {
  '1': 'AccountEcosystem',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'uri', '3': 4, '4': 1, '5': 9, '10': 'uri'},
  ],
};

/// Descriptor for `AccountEcosystem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountEcosystemDescriptor = $convert.base64Decode(
    'ChBBY2NvdW50RWNvc3lzdGVtEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEiAKC2Rlc2NyaXB0aW9uGAMgASgJUgtkZXNjcmlwdGlvbhIQCgN1cmkYBCABKAlSA3VyaQ==');
@$core.Deprecated('Use loginRequestDescriptor instead')
const LoginRequest$json = {
  '1': 'LoginRequest',
  '2': [
    {'1': 'email', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'email'},
    {
      '1': 'invitation_code',
      '3': 2,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'invitationCode'
    },
    {'1': 'ecosystem_id', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'ecosystemId'},
  ],
};

/// Descriptor for `LoginRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginRequestDescriptor = $convert.base64Decode(
    'CgxMb2dpblJlcXVlc3QSGgoFZW1haWwYASABKAlCBICmHQFSBWVtYWlsEi0KD2ludml0YXRpb25fY29kZRgCIAEoCUIEgKYdAVIOaW52aXRhdGlvbkNvZGUSJwoMZWNvc3lzdGVtX2lkGAMgASgJQgSAph0BUgtlY29zeXN0ZW1JZA==');
@$core.Deprecated('Use loginResponseDescriptor instead')
const LoginResponse$json = {
  '1': 'LoginResponse',
  '2': [
    {'1': 'challenge', '3': 1, '4': 1, '5': 12, '9': 0, '10': 'challenge'},
    {
      '1': 'profile',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.services.account.v1.AccountProfile',
      '9': 0,
      '10': 'profile'
    },
  ],
  '8': [
    {'1': 'response'},
  ],
};

/// Descriptor for `LoginResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginResponseDescriptor = $convert.base64Decode(
    'Cg1Mb2dpblJlc3BvbnNlEh4KCWNoYWxsZW5nZRgBIAEoDEgAUgljaGFsbGVuZ2USPwoHcHJvZmlsZRgCIAEoCzIjLnNlcnZpY2VzLmFjY291bnQudjEuQWNjb3VudFByb2ZpbGVIAFIHcHJvZmlsZUIKCghyZXNwb25zZQ==');
@$core.Deprecated('Use loginConfirmRequestDescriptor instead')
const LoginConfirmRequest$json = {
  '1': 'LoginConfirmRequest',
  '2': [
    {'1': 'challenge', '3': 1, '4': 1, '5': 12, '10': 'challenge'},
    {
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
const LoginConfirmResponse$json = {
  '1': 'LoginConfirmResponse',
  '2': [
    {
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
@$core.Deprecated('Use authorizeWebhookRequestDescriptor instead')
const AuthorizeWebhookRequest$json = {
  '1': 'AuthorizeWebhookRequest',
  '2': [
    {'1': 'events', '3': 1, '4': 3, '5': 9, '10': 'events'},
  ],
};

/// Descriptor for `AuthorizeWebhookRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authorizeWebhookRequestDescriptor =
    $convert.base64Decode(
        'ChdBdXRob3JpemVXZWJob29rUmVxdWVzdBIWCgZldmVudHMYASADKAlSBmV2ZW50cw==');
@$core.Deprecated('Use authorizeWebhookResponseDescriptor instead')
const AuthorizeWebhookResponse$json = {
  '1': 'AuthorizeWebhookResponse',
};

/// Descriptor for `AuthorizeWebhookResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authorizeWebhookResponseDescriptor =
    $convert.base64Decode('ChhBdXRob3JpemVXZWJob29rUmVzcG9uc2U=');
