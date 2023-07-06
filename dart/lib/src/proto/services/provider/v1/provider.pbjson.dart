//
//  Generated code. Do not modify.
//  source: services/provider/v1/provider.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use identityProviderDescriptor instead')
const IdentityProvider$json = {
  '1': 'IdentityProvider',
  '2': [
    {'1': 'Unknown', '2': 0},
    {'1': 'Email', '2': 1},
    {'1': 'Phone', '2': 2},
    {'1': 'Passkey', '2': 3},
  ],
};

/// Descriptor for `IdentityProvider`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List identityProviderDescriptor = $convert.base64Decode(
    'ChBJZGVudGl0eVByb3ZpZGVyEgsKB1Vua25vd24QABIJCgVFbWFpbBABEgkKBVBob25lEAISCw'
    'oHUGFzc2tleRAD');

@$core.Deprecated('Use ecosystemDescriptor instead')
const Ecosystem$json = {
  '1': 'Ecosystem',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
  ],
  '9': [
    {'1': 4, '2': 5},
    {'1': 5, '2': 6},
    {'1': 6, '2': 7},
    {'1': 7, '2': 8},
  ],
  '10': ['uri', 'webhooks', 'display', 'domain'],
};

/// Descriptor for `Ecosystem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ecosystemDescriptor = $convert.base64Decode(
    'CglFY29zeXN0ZW0SDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSIAoLZGVzY3'
    'JpcHRpb24YAyABKAlSC2Rlc2NyaXB0aW9uSgQIBBAFSgQIBRAGSgQIBhAHSgQIBxAIUgN1cmlS'
    'CHdlYmhvb2tzUgdkaXNwbGF5UgZkb21haW4=');

@$core.Deprecated('Use createEcosystemRequestDescriptor instead')
const CreateEcosystemRequest$json = {
  '1': 'CreateEcosystemRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'name'},
    {'1': 'description', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'description'},
    {
      '1': 'details',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.services.account.v1.AccountDetails',
      '10': 'details'
    },
    {'1': 'domain', '3': 5, '4': 1, '5': 9, '10': 'domain'},
  ],
  '9': [
    {'1': 3, '2': 4},
  ],
  '10': ['uri'],
};

/// Descriptor for `CreateEcosystemRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createEcosystemRequestDescriptor = $convert.base64Decode(
    'ChZDcmVhdGVFY29zeXN0ZW1SZXF1ZXN0EhgKBG5hbWUYASABKAlCBICmHQFSBG5hbWUSJgoLZG'
    'VzY3JpcHRpb24YAiABKAlCBICmHQFSC2Rlc2NyaXB0aW9uEj0KB2RldGFpbHMYBCABKAsyIy5z'
    'ZXJ2aWNlcy5hY2NvdW50LnYxLkFjY291bnREZXRhaWxzUgdkZXRhaWxzEhYKBmRvbWFpbhgFIA'
    'EoCVIGZG9tYWluSgQIAxAEUgN1cmk=');

@$core.Deprecated('Use createEcosystemResponseDescriptor instead')
const CreateEcosystemResponse$json = {
  '1': 'CreateEcosystemResponse',
  '2': [
    {
      '1': 'ecosystem',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.services.provider.v1.Ecosystem',
      '10': 'ecosystem'
    },
    {
      '1': 'profile',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.services.account.v1.AccountProfile',
      '10': 'profile'
    },
    {
      '1': 'confirmation_method',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.services.account.v1.ConfirmationMethod',
      '10': 'confirmationMethod'
    },
  ],
};

/// Descriptor for `CreateEcosystemResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createEcosystemResponseDescriptor = $convert.base64Decode(
    'ChdDcmVhdGVFY29zeXN0ZW1SZXNwb25zZRI9CgllY29zeXN0ZW0YASABKAsyHy5zZXJ2aWNlcy'
    '5wcm92aWRlci52MS5FY29zeXN0ZW1SCWVjb3N5c3RlbRI9Cgdwcm9maWxlGAIgASgLMiMuc2Vy'
    'dmljZXMuYWNjb3VudC52MS5BY2NvdW50UHJvZmlsZVIHcHJvZmlsZRJYChNjb25maXJtYXRpb2'
    '5fbWV0aG9kGAMgASgOMicuc2VydmljZXMuYWNjb3VudC52MS5Db25maXJtYXRpb25NZXRob2RS'
    'EmNvbmZpcm1hdGlvbk1ldGhvZA==');

@$core.Deprecated('Use ecosystemInfoRequestDescriptor instead')
const EcosystemInfoRequest$json = {
  '1': 'EcosystemInfoRequest',
};

/// Descriptor for `EcosystemInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ecosystemInfoRequestDescriptor =
    $convert.base64Decode('ChRFY29zeXN0ZW1JbmZvUmVxdWVzdA==');

@$core.Deprecated('Use ecosystemInfoResponseDescriptor instead')
const EcosystemInfoResponse$json = {
  '1': 'EcosystemInfoResponse',
  '2': [
    {
      '1': 'ecosystem',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.services.provider.v1.Ecosystem',
      '10': 'ecosystem'
    },
  ],
};

/// Descriptor for `EcosystemInfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ecosystemInfoResponseDescriptor = $convert.base64Decode(
    'ChVFY29zeXN0ZW1JbmZvUmVzcG9uc2USPQoJZWNvc3lzdGVtGAEgASgLMh8uc2VydmljZXMucH'
    'JvdmlkZXIudjEuRWNvc3lzdGVtUgllY29zeXN0ZW0=');

@$core.Deprecated('Use getOberonKeyRequestDescriptor instead')
const GetOberonKeyRequest$json = {
  '1': 'GetOberonKeyRequest',
};

/// Descriptor for `GetOberonKeyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOberonKeyRequestDescriptor =
    $convert.base64Decode('ChNHZXRPYmVyb25LZXlSZXF1ZXN0');

@$core.Deprecated('Use getOberonKeyResponseDescriptor instead')
const GetOberonKeyResponse$json = {
  '1': 'GetOberonKeyResponse',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
  ],
};

/// Descriptor for `GetOberonKeyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOberonKeyResponseDescriptor = $convert
    .base64Decode('ChRHZXRPYmVyb25LZXlSZXNwb25zZRIQCgNrZXkYASABKAlSA2tleQ==');

@$core
    .Deprecated('Use retrieveDomainVerificationRecordRequestDescriptor instead')
const RetrieveDomainVerificationRecordRequest$json = {
  '1': 'RetrieveDomainVerificationRecordRequest',
  '7': {'3': true},
};

/// Descriptor for `RetrieveDomainVerificationRecordRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List retrieveDomainVerificationRecordRequestDescriptor =
    $convert.base64Decode(
        'CidSZXRyaWV2ZURvbWFpblZlcmlmaWNhdGlvblJlY29yZFJlcXVlc3Q6AhgB');

@$core.Deprecated(
    'Use retrieveDomainVerificationRecordResponseDescriptor instead')
const RetrieveDomainVerificationRecordResponse$json = {
  '1': 'RetrieveDomainVerificationRecordResponse',
  '2': [
    {
      '1': 'verification_record_name',
      '3': 1,
      '4': 1,
      '5': 9,
      '10': 'verificationRecordName'
    },
    {
      '1': 'verification_record_value',
      '3': 2,
      '4': 1,
      '5': 9,
      '10': 'verificationRecordValue'
    },
  ],
  '7': {'3': true},
};

/// Descriptor for `RetrieveDomainVerificationRecordResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List retrieveDomainVerificationRecordResponseDescriptor =
    $convert.base64Decode(
        'CihSZXRyaWV2ZURvbWFpblZlcmlmaWNhdGlvblJlY29yZFJlc3BvbnNlEjgKGHZlcmlmaWNhdG'
        'lvbl9yZWNvcmRfbmFtZRgBIAEoCVIWdmVyaWZpY2F0aW9uUmVjb3JkTmFtZRI6Chl2ZXJpZmlj'
        'YXRpb25fcmVjb3JkX3ZhbHVlGAIgASgJUhd2ZXJpZmljYXRpb25SZWNvcmRWYWx1ZToCGAE=');

@$core
    .Deprecated('Use refreshDomainVerificationStatusRequestDescriptor instead')
const RefreshDomainVerificationStatusRequest$json = {
  '1': 'RefreshDomainVerificationStatusRequest',
  '7': {'3': true},
};

/// Descriptor for `RefreshDomainVerificationStatusRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List refreshDomainVerificationStatusRequestDescriptor =
    $convert.base64Decode(
        'CiZSZWZyZXNoRG9tYWluVmVyaWZpY2F0aW9uU3RhdHVzUmVxdWVzdDoCGAE=');

@$core
    .Deprecated('Use refreshDomainVerificationStatusResponseDescriptor instead')
const RefreshDomainVerificationStatusResponse$json = {
  '1': 'RefreshDomainVerificationStatusResponse',
  '2': [
    {'1': 'domain', '3': 1, '4': 1, '5': 9, '10': 'domain'},
    {'1': 'domain_verified', '3': 2, '4': 1, '5': 8, '10': 'domainVerified'},
  ],
  '7': {'3': true},
};

/// Descriptor for `RefreshDomainVerificationStatusResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List refreshDomainVerificationStatusResponseDescriptor =
    $convert.base64Decode(
        'CidSZWZyZXNoRG9tYWluVmVyaWZpY2F0aW9uU3RhdHVzUmVzcG9uc2USFgoGZG9tYWluGAEgAS'
        'gJUgZkb21haW4SJwoPZG9tYWluX3ZlcmlmaWVkGAIgASgIUg5kb21haW5WZXJpZmllZDoCGAE=');

@$core.Deprecated('Use searchWalletConfigurationsRequestDescriptor instead')
const SearchWalletConfigurationsRequest$json = {
  '1': 'SearchWalletConfigurationsRequest',
  '2': [
    {'1': 'query_filter', '3': 1, '4': 1, '5': 9, '10': 'queryFilter'},
    {
      '1': 'continuation_token',
      '3': 2,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'continuationToken'
    },
  ],
};

/// Descriptor for `SearchWalletConfigurationsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchWalletConfigurationsRequestDescriptor =
    $convert.base64Decode(
        'CiFTZWFyY2hXYWxsZXRDb25maWd1cmF0aW9uc1JlcXVlc3QSIQoMcXVlcnlfZmlsdGVyGAEgAS'
        'gJUgtxdWVyeUZpbHRlchIzChJjb250aW51YXRpb25fdG9rZW4YAiABKAlCBICmHQFSEWNvbnRp'
        'bnVhdGlvblRva2Vu');

@$core.Deprecated('Use searchWalletConfigurationResponseDescriptor instead')
const SearchWalletConfigurationResponse$json = {
  '1': 'SearchWalletConfigurationResponse',
  '2': [
    {
      '1': 'results',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.services.provider.v1.WalletConfiguration',
      '10': 'results'
    },
    {'1': 'has_more_results', '3': 2, '4': 1, '5': 8, '10': 'hasMoreResults'},
    {
      '1': 'continuation_token',
      '3': 4,
      '4': 1,
      '5': 9,
      '10': 'continuationToken'
    },
  ],
};

/// Descriptor for `SearchWalletConfigurationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchWalletConfigurationResponseDescriptor =
    $convert.base64Decode(
        'CiFTZWFyY2hXYWxsZXRDb25maWd1cmF0aW9uUmVzcG9uc2USQwoHcmVzdWx0cxgBIAMoCzIpLn'
        'NlcnZpY2VzLnByb3ZpZGVyLnYxLldhbGxldENvbmZpZ3VyYXRpb25SB3Jlc3VsdHMSKAoQaGFz'
        'X21vcmVfcmVzdWx0cxgCIAEoCFIOaGFzTW9yZVJlc3VsdHMSLQoSY29udGludWF0aW9uX3Rva2'
        'VuGAQgASgJUhFjb250aW51YXRpb25Ub2tlbg==');

@$core.Deprecated('Use walletConfigurationDescriptor instead')
const WalletConfiguration$json = {
  '1': 'WalletConfiguration',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
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
    {'1': 'wallet_id', '3': 4, '4': 1, '5': 9, '10': 'walletId'},
    {'1': 'public_did', '3': 5, '4': 1, '5': 9, '10': 'publicDid'},
    {'1': 'config_type', '3': 6, '4': 1, '5': 9, '10': 'configType'},
    {
      '1': 'auth_tokens',
      '3': 7,
      '4': 3,
      '5': 11,
      '6': '.services.account.v1.WalletAuthToken',
      '10': 'authTokens'
    },
    {
      '1': 'external_identity_ids',
      '3': 8,
      '4': 3,
      '5': 9,
      '8': {'3': true},
      '10': 'externalIdentityIds',
    },
    {'1': 'ecosystem_id', '3': 9, '4': 1, '5': 9, '10': 'ecosystemId'},
    {'1': 'description', '3': 10, '4': 1, '5': 9, '10': 'description'},
    {
      '1': 'external_identities',
      '3': 11,
      '4': 3,
      '5': 11,
      '6': '.services.provider.v1.WalletExternalIdentity',
      '10': 'externalIdentities'
    },
  ],
};

/// Descriptor for `WalletConfiguration`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List walletConfigurationDescriptor = $convert.base64Decode(
    'ChNXYWxsZXRDb25maWd1cmF0aW9uEhIKBG5hbWUYASABKAlSBG5hbWUSHAoFZW1haWwYAiABKA'
    'lCBhgBgKYdAVIFZW1haWwSGAoDc21zGAMgASgJQgYYAYCmHQFSA3NtcxIbCgl3YWxsZXRfaWQY'
    'BCABKAlSCHdhbGxldElkEh0KCnB1YmxpY19kaWQYBSABKAlSCXB1YmxpY0RpZBIfCgtjb25maW'
    'dfdHlwZRgGIAEoCVIKY29uZmlnVHlwZRJFCgthdXRoX3Rva2VucxgHIAMoCzIkLnNlcnZpY2Vz'
    'LmFjY291bnQudjEuV2FsbGV0QXV0aFRva2VuUgphdXRoVG9rZW5zEjYKFWV4dGVybmFsX2lkZW'
    '50aXR5X2lkcxgIIAMoCUICGAFSE2V4dGVybmFsSWRlbnRpdHlJZHMSIQoMZWNvc3lzdGVtX2lk'
    'GAkgASgJUgtlY29zeXN0ZW1JZBIgCgtkZXNjcmlwdGlvbhgKIAEoCVILZGVzY3JpcHRpb24SXQ'
    'oTZXh0ZXJuYWxfaWRlbnRpdGllcxgLIAMoCzIsLnNlcnZpY2VzLnByb3ZpZGVyLnYxLldhbGxl'
    'dEV4dGVybmFsSWRlbnRpdHlSEmV4dGVybmFsSWRlbnRpdGllcw==');

@$core.Deprecated('Use walletExternalIdentityDescriptor instead')
const WalletExternalIdentity$json = {
  '1': 'WalletExternalIdentity',
  '2': [
    {
      '1': 'provider',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.services.provider.v1.IdentityProvider',
      '10': 'provider'
    },
    {'1': 'id', '3': 2, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `WalletExternalIdentity`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List walletExternalIdentityDescriptor = $convert.base64Decode(
    'ChZXYWxsZXRFeHRlcm5hbElkZW50aXR5EkIKCHByb3ZpZGVyGAEgASgOMiYuc2VydmljZXMucH'
    'JvdmlkZXIudjEuSWRlbnRpdHlQcm92aWRlclIIcHJvdmlkZXISDgoCaWQYAiABKAlSAmlk');

@$core.Deprecated('Use ionOptionsDescriptor instead')
const IonOptions$json = {
  '1': 'IonOptions',
  '2': [
    {
      '1': 'network',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.services.provider.v1.IonOptions.IonNetwork',
      '10': 'network'
    },
  ],
  '4': [IonOptions_IonNetwork$json],
};

@$core.Deprecated('Use ionOptionsDescriptor instead')
const IonOptions_IonNetwork$json = {
  '1': 'IonNetwork',
  '2': [
    {'1': 'TestNet', '2': 0},
    {'1': 'MainNet', '2': 1},
  ],
};

/// Descriptor for `IonOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ionOptionsDescriptor = $convert.base64Decode(
    'CgpJb25PcHRpb25zEkUKB25ldHdvcmsYASABKA4yKy5zZXJ2aWNlcy5wcm92aWRlci52MS5Jb2'
    '5PcHRpb25zLklvbk5ldHdvcmtSB25ldHdvcmsiJgoKSW9uTmV0d29yaxILCgdUZXN0TmV0EAAS'
    'CwoHTWFpbk5ldBAB');

@$core.Deprecated('Use indyOptionsDescriptor instead')
const IndyOptions$json = {
  '1': 'IndyOptions',
  '2': [
    {
      '1': 'network',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.services.provider.v1.IndyOptions.IndyNetwork',
      '10': 'network'
    },
  ],
  '4': [IndyOptions_IndyNetwork$json],
};

@$core.Deprecated('Use indyOptionsDescriptor instead')
const IndyOptions_IndyNetwork$json = {
  '1': 'IndyNetwork',
  '2': [
    {'1': 'Danube', '2': 0},
    {'1': 'SovrinBuilder', '2': 1},
    {'1': 'SovrinStaging', '2': 2},
    {'1': 'Sovrin', '2': 3},
    {'1': 'IdUnionTest', '2': 4},
    {'1': 'IdUnion', '2': 5},
    {'1': 'IndicioTest', '2': 6},
    {'1': 'IndicioDemo', '2': 7},
    {'1': 'Indicio', '2': 8},
  ],
};

/// Descriptor for `IndyOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List indyOptionsDescriptor = $convert.base64Decode(
    'CgtJbmR5T3B0aW9ucxJHCgduZXR3b3JrGAEgASgOMi0uc2VydmljZXMucHJvdmlkZXIudjEuSW'
    '5keU9wdGlvbnMuSW5keU5ldHdvcmtSB25ldHdvcmsimAEKC0luZHlOZXR3b3JrEgoKBkRhbnVi'
    'ZRAAEhEKDVNvdnJpbkJ1aWxkZXIQARIRCg1Tb3ZyaW5TdGFnaW5nEAISCgoGU292cmluEAMSDw'
    'oLSWRVbmlvblRlc3QQBBILCgdJZFVuaW9uEAUSDwoLSW5kaWNpb1Rlc3QQBhIPCgtJbmRpY2lv'
    'RGVtbxAHEgsKB0luZGljaW8QCA==');

@$core.Deprecated('Use upgradeDidRequestDescriptor instead')
const UpgradeDidRequest$json = {
  '1': 'UpgradeDidRequest',
  '2': [
    {'1': 'email', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'email'},
    {'1': 'wallet_id', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'walletId'},
    {'1': 'did_uri', '3': 6, '4': 1, '5': 9, '9': 0, '10': 'didUri'},
    {
      '1': 'method',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.services.common.v1.SupportedDidMethod',
      '10': 'method'
    },
    {
      '1': 'ion_options',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.services.provider.v1.IonOptions',
      '9': 1,
      '10': 'ionOptions'
    },
    {
      '1': 'indy_options',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.services.provider.v1.IndyOptions',
      '9': 1,
      '10': 'indyOptions'
    },
  ],
  '8': [
    {'1': 'account'},
    {'1': 'options'},
  ],
};

/// Descriptor for `UpgradeDidRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List upgradeDidRequestDescriptor = $convert.base64Decode(
    'ChFVcGdyYWRlRGlkUmVxdWVzdBIWCgVlbWFpbBgBIAEoCUgAUgVlbWFpbBIdCgl3YWxsZXRfaW'
    'QYAiABKAlIAFIId2FsbGV0SWQSGQoHZGlkX3VyaRgGIAEoCUgAUgZkaWRVcmkSPgoGbWV0aG9k'
    'GAMgASgOMiYuc2VydmljZXMuY29tbW9uLnYxLlN1cHBvcnRlZERpZE1ldGhvZFIGbWV0aG9kEk'
    'MKC2lvbl9vcHRpb25zGAQgASgLMiAuc2VydmljZXMucHJvdmlkZXIudjEuSW9uT3B0aW9uc0gB'
    'Ugppb25PcHRpb25zEkYKDGluZHlfb3B0aW9ucxgFIAEoCzIhLnNlcnZpY2VzLnByb3ZpZGVyLn'
    'YxLkluZHlPcHRpb25zSAFSC2luZHlPcHRpb25zQgkKB2FjY291bnRCCQoHb3B0aW9ucw==');

@$core.Deprecated('Use upgradeDidResponseDescriptor instead')
const UpgradeDidResponse$json = {
  '1': 'UpgradeDidResponse',
  '2': [
    {'1': 'did', '3': 1, '4': 1, '5': 9, '10': 'did'},
  ],
};

/// Descriptor for `UpgradeDidResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List upgradeDidResponseDescriptor = $convert
    .base64Decode('ChJVcGdyYWRlRGlkUmVzcG9uc2USEAoDZGlkGAEgASgJUgNkaWQ=');
