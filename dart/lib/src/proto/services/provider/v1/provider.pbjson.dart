///
//  Generated code. Do not modify.
//  source: services/provider/v1/provider.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use identityProviderDescriptor instead')
const IdentityProvider$json = const {
  '1': 'IdentityProvider',
  '2': const [
    const {'1': 'Unknown', '2': 0},
    const {'1': 'Email', '2': 1},
    const {'1': 'Phone', '2': 2},
  ],
};

/// Descriptor for `IdentityProvider`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List identityProviderDescriptor = $convert.base64Decode(
    'ChBJZGVudGl0eVByb3ZpZGVyEgsKB1Vua25vd24QABIJCgVFbWFpbBABEgkKBVBob25lEAI=');
@$core.Deprecated('Use ecosystemDescriptor instead')
const Ecosystem$json = const {
  '1': 'Ecosystem',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
  ],
  '9': const [
    const {'1': 4, '2': 5},
    const {'1': 5, '2': 6},
    const {'1': 6, '2': 7},
    const {'1': 7, '2': 8},
  ],
  '10': const ['uri', 'webhooks', 'display', 'domain'],
};

/// Descriptor for `Ecosystem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ecosystemDescriptor = $convert.base64Decode(
    'CglFY29zeXN0ZW0SDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSIAoLZGVzY3JpcHRpb24YAyABKAlSC2Rlc2NyaXB0aW9uSgQIBBAFSgQIBRAGSgQIBhAHSgQIBxAIUgN1cmlSCHdlYmhvb2tzUgdkaXNwbGF5UgZkb21haW4=');
@$core.Deprecated('Use createEcosystemRequestDescriptor instead')
const CreateEcosystemRequest$json = const {
  '1': 'CreateEcosystemRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '8': const {}, '10': 'name'},
    const {
      '1': 'description',
      '3': 2,
      '4': 1,
      '5': 9,
      '8': const {},
      '10': 'description'
    },
    const {
      '1': 'details',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.services.account.v1.AccountDetails',
      '10': 'details'
    },
    const {'1': 'domain', '3': 5, '4': 1, '5': 9, '10': 'domain'},
  ],
  '9': const [
    const {'1': 3, '2': 4},
  ],
  '10': const ['uri'],
};

/// Descriptor for `CreateEcosystemRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createEcosystemRequestDescriptor =
    $convert.base64Decode(
        'ChZDcmVhdGVFY29zeXN0ZW1SZXF1ZXN0EhgKBG5hbWUYASABKAlCBICmHQFSBG5hbWUSJgoLZGVzY3JpcHRpb24YAiABKAlCBICmHQFSC2Rlc2NyaXB0aW9uEj0KB2RldGFpbHMYBCABKAsyIy5zZXJ2aWNlcy5hY2NvdW50LnYxLkFjY291bnREZXRhaWxzUgdkZXRhaWxzEhYKBmRvbWFpbhgFIAEoCVIGZG9tYWluSgQIAxAEUgN1cmk=');
@$core.Deprecated('Use createEcosystemResponseDescriptor instead')
const CreateEcosystemResponse$json = const {
  '1': 'CreateEcosystemResponse',
  '2': const [
    const {
      '1': 'ecosystem',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.services.provider.v1.Ecosystem',
      '10': 'ecosystem'
    },
    const {
      '1': 'profile',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.services.account.v1.AccountProfile',
      '10': 'profile'
    },
    const {
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
final $typed_data.Uint8List createEcosystemResponseDescriptor =
    $convert.base64Decode(
        'ChdDcmVhdGVFY29zeXN0ZW1SZXNwb25zZRI9CgllY29zeXN0ZW0YASABKAsyHy5zZXJ2aWNlcy5wcm92aWRlci52MS5FY29zeXN0ZW1SCWVjb3N5c3RlbRI9Cgdwcm9maWxlGAIgASgLMiMuc2VydmljZXMuYWNjb3VudC52MS5BY2NvdW50UHJvZmlsZVIHcHJvZmlsZRJYChNjb25maXJtYXRpb25fbWV0aG9kGAMgASgOMicuc2VydmljZXMuYWNjb3VudC52MS5Db25maXJtYXRpb25NZXRob2RSEmNvbmZpcm1hdGlvbk1ldGhvZA==');
@$core.Deprecated('Use ecosystemInfoRequestDescriptor instead')
const EcosystemInfoRequest$json = const {
  '1': 'EcosystemInfoRequest',
};

/// Descriptor for `EcosystemInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ecosystemInfoRequestDescriptor =
    $convert.base64Decode('ChRFY29zeXN0ZW1JbmZvUmVxdWVzdA==');
@$core.Deprecated('Use ecosystemInfoResponseDescriptor instead')
const EcosystemInfoResponse$json = const {
  '1': 'EcosystemInfoResponse',
  '2': const [
    const {
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
    'ChVFY29zeXN0ZW1JbmZvUmVzcG9uc2USPQoJZWNvc3lzdGVtGAEgASgLMh8uc2VydmljZXMucHJvdmlkZXIudjEuRWNvc3lzdGVtUgllY29zeXN0ZW0=');
@$core.Deprecated('Use getOberonKeyRequestDescriptor instead')
const GetOberonKeyRequest$json = const {
  '1': 'GetOberonKeyRequest',
};

/// Descriptor for `GetOberonKeyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOberonKeyRequestDescriptor =
    $convert.base64Decode('ChNHZXRPYmVyb25LZXlSZXF1ZXN0');
@$core.Deprecated('Use getOberonKeyResponseDescriptor instead')
const GetOberonKeyResponse$json = const {
  '1': 'GetOberonKeyResponse',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
  ],
};

/// Descriptor for `GetOberonKeyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOberonKeyResponseDescriptor = $convert
    .base64Decode('ChRHZXRPYmVyb25LZXlSZXNwb25zZRIQCgNrZXkYASABKAlSA2tleQ==');
@$core
    .Deprecated('Use retrieveDomainVerificationRecordRequestDescriptor instead')
const RetrieveDomainVerificationRecordRequest$json = const {
  '1': 'RetrieveDomainVerificationRecordRequest',
  '7': const {'3': true},
};

/// Descriptor for `RetrieveDomainVerificationRecordRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List retrieveDomainVerificationRecordRequestDescriptor =
    $convert.base64Decode(
        'CidSZXRyaWV2ZURvbWFpblZlcmlmaWNhdGlvblJlY29yZFJlcXVlc3Q6AhgB');
@$core.Deprecated(
    'Use retrieveDomainVerificationRecordResponseDescriptor instead')
const RetrieveDomainVerificationRecordResponse$json = const {
  '1': 'RetrieveDomainVerificationRecordResponse',
  '2': const [
    const {
      '1': 'verification_record_name',
      '3': 1,
      '4': 1,
      '5': 9,
      '10': 'verificationRecordName'
    },
    const {
      '1': 'verification_record_value',
      '3': 2,
      '4': 1,
      '5': 9,
      '10': 'verificationRecordValue'
    },
  ],
  '7': const {'3': true},
};

/// Descriptor for `RetrieveDomainVerificationRecordResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List retrieveDomainVerificationRecordResponseDescriptor =
    $convert.base64Decode(
        'CihSZXRyaWV2ZURvbWFpblZlcmlmaWNhdGlvblJlY29yZFJlc3BvbnNlEjgKGHZlcmlmaWNhdGlvbl9yZWNvcmRfbmFtZRgBIAEoCVIWdmVyaWZpY2F0aW9uUmVjb3JkTmFtZRI6Chl2ZXJpZmljYXRpb25fcmVjb3JkX3ZhbHVlGAIgASgJUhd2ZXJpZmljYXRpb25SZWNvcmRWYWx1ZToCGAE=');
@$core
    .Deprecated('Use refreshDomainVerificationStatusRequestDescriptor instead')
const RefreshDomainVerificationStatusRequest$json = const {
  '1': 'RefreshDomainVerificationStatusRequest',
  '7': const {'3': true},
};

/// Descriptor for `RefreshDomainVerificationStatusRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List refreshDomainVerificationStatusRequestDescriptor =
    $convert.base64Decode(
        'CiZSZWZyZXNoRG9tYWluVmVyaWZpY2F0aW9uU3RhdHVzUmVxdWVzdDoCGAE=');
@$core
    .Deprecated('Use refreshDomainVerificationStatusResponseDescriptor instead')
const RefreshDomainVerificationStatusResponse$json = const {
  '1': 'RefreshDomainVerificationStatusResponse',
  '2': const [
    const {'1': 'domain', '3': 1, '4': 1, '5': 9, '10': 'domain'},
    const {
      '1': 'domain_verified',
      '3': 2,
      '4': 1,
      '5': 8,
      '10': 'domainVerified'
    },
  ],
  '7': const {'3': true},
};

/// Descriptor for `RefreshDomainVerificationStatusResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List refreshDomainVerificationStatusResponseDescriptor =
    $convert.base64Decode(
        'CidSZWZyZXNoRG9tYWluVmVyaWZpY2F0aW9uU3RhdHVzUmVzcG9uc2USFgoGZG9tYWluGAEgASgJUgZkb21haW4SJwoPZG9tYWluX3ZlcmlmaWVkGAIgASgIUg5kb21haW5WZXJpZmllZDoCGAE=');
@$core.Deprecated('Use searchWalletConfigurationsRequestDescriptor instead')
const SearchWalletConfigurationsRequest$json = const {
  '1': 'SearchWalletConfigurationsRequest',
  '2': const [
    const {'1': 'query_filter', '3': 1, '4': 1, '5': 9, '10': 'queryFilter'},
    const {
      '1': 'continuation_token',
      '3': 2,
      '4': 1,
      '5': 9,
      '8': const {},
      '10': 'continuationToken'
    },
  ],
};

/// Descriptor for `SearchWalletConfigurationsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchWalletConfigurationsRequestDescriptor =
    $convert.base64Decode(
        'CiFTZWFyY2hXYWxsZXRDb25maWd1cmF0aW9uc1JlcXVlc3QSIQoMcXVlcnlfZmlsdGVyGAEgASgJUgtxdWVyeUZpbHRlchIzChJjb250aW51YXRpb25fdG9rZW4YAiABKAlCBICmHQFSEWNvbnRpbnVhdGlvblRva2Vu');
@$core.Deprecated('Use searchWalletConfigurationResponseDescriptor instead')
const SearchWalletConfigurationResponse$json = const {
  '1': 'SearchWalletConfigurationResponse',
  '2': const [
    const {
      '1': 'results',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.services.provider.v1.WalletConfiguration',
      '10': 'results'
    },
    const {
      '1': 'has_more_results',
      '3': 2,
      '4': 1,
      '5': 8,
      '10': 'hasMoreResults'
    },
    const {
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
        'CiFTZWFyY2hXYWxsZXRDb25maWd1cmF0aW9uUmVzcG9uc2USQwoHcmVzdWx0cxgBIAMoCzIpLnNlcnZpY2VzLnByb3ZpZGVyLnYxLldhbGxldENvbmZpZ3VyYXRpb25SB3Jlc3VsdHMSKAoQaGFzX21vcmVfcmVzdWx0cxgCIAEoCFIOaGFzTW9yZVJlc3VsdHMSLQoSY29udGludWF0aW9uX3Rva2VuGAQgASgJUhFjb250aW51YXRpb25Ub2tlbg==');
@$core.Deprecated('Use walletConfigurationDescriptor instead')
const WalletConfiguration$json = const {
  '1': 'WalletConfiguration',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
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
    const {'1': 'wallet_id', '3': 4, '4': 1, '5': 9, '10': 'walletId'},
    const {'1': 'public_did', '3': 5, '4': 1, '5': 9, '10': 'publicDid'},
    const {'1': 'config_type', '3': 6, '4': 1, '5': 9, '10': 'configType'},
    const {
      '1': 'auth_tokens',
      '3': 7,
      '4': 3,
      '5': 11,
      '6': '.services.account.v1.WalletAuthToken',
      '10': 'authTokens'
    },
    const {
      '1': 'external_identity_ids',
      '3': 8,
      '4': 3,
      '5': 9,
      '8': const {'3': true},
      '10': 'externalIdentityIds',
    },
    const {'1': 'ecosystem_id', '3': 9, '4': 1, '5': 9, '10': 'ecosystemId'},
    const {'1': 'description', '3': 10, '4': 1, '5': 9, '10': 'description'},
    const {
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
    'ChNXYWxsZXRDb25maWd1cmF0aW9uEhIKBG5hbWUYASABKAlSBG5hbWUSHAoFZW1haWwYAiABKAlCBhgBgKYdAVIFZW1haWwSGAoDc21zGAMgASgJQgYYAYCmHQFSA3NtcxIbCgl3YWxsZXRfaWQYBCABKAlSCHdhbGxldElkEh0KCnB1YmxpY19kaWQYBSABKAlSCXB1YmxpY0RpZBIfCgtjb25maWdfdHlwZRgGIAEoCVIKY29uZmlnVHlwZRJFCgthdXRoX3Rva2VucxgHIAMoCzIkLnNlcnZpY2VzLmFjY291bnQudjEuV2FsbGV0QXV0aFRva2VuUgphdXRoVG9rZW5zEjYKFWV4dGVybmFsX2lkZW50aXR5X2lkcxgIIAMoCUICGAFSE2V4dGVybmFsSWRlbnRpdHlJZHMSIQoMZWNvc3lzdGVtX2lkGAkgASgJUgtlY29zeXN0ZW1JZBIgCgtkZXNjcmlwdGlvbhgKIAEoCVILZGVzY3JpcHRpb24SXQoTZXh0ZXJuYWxfaWRlbnRpdGllcxgLIAMoCzIsLnNlcnZpY2VzLnByb3ZpZGVyLnYxLldhbGxldEV4dGVybmFsSWRlbnRpdHlSEmV4dGVybmFsSWRlbnRpdGllcw==');
@$core.Deprecated('Use walletExternalIdentityDescriptor instead')
const WalletExternalIdentity$json = const {
  '1': 'WalletExternalIdentity',
  '2': const [
    const {
      '1': 'provider',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.services.provider.v1.IdentityProvider',
      '10': 'provider'
    },
    const {'1': 'id', '3': 2, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `WalletExternalIdentity`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List walletExternalIdentityDescriptor =
    $convert.base64Decode(
        'ChZXYWxsZXRFeHRlcm5hbElkZW50aXR5EkIKCHByb3ZpZGVyGAEgASgOMiYuc2VydmljZXMucHJvdmlkZXIudjEuSWRlbnRpdHlQcm92aWRlclIIcHJvdmlkZXISDgoCaWQYAiABKAlSAmlk');
@$core.Deprecated('Use ionOptionsDescriptor instead')
const IonOptions$json = const {
  '1': 'IonOptions',
  '2': const [
    const {
      '1': 'network',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.services.provider.v1.IonOptions.IonNetwork',
      '10': 'network'
    },
  ],
  '4': const [IonOptions_IonNetwork$json],
};

@$core.Deprecated('Use ionOptionsDescriptor instead')
const IonOptions_IonNetwork$json = const {
  '1': 'IonNetwork',
  '2': const [
    const {'1': 'TestNet', '2': 0},
    const {'1': 'MainNet', '2': 1},
  ],
};

/// Descriptor for `IonOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ionOptionsDescriptor = $convert.base64Decode(
    'CgpJb25PcHRpb25zEkUKB25ldHdvcmsYASABKA4yKy5zZXJ2aWNlcy5wcm92aWRlci52MS5Jb25PcHRpb25zLklvbk5ldHdvcmtSB25ldHdvcmsiJgoKSW9uTmV0d29yaxILCgdUZXN0TmV0EAASCwoHTWFpbk5ldBAB');
@$core.Deprecated('Use indyOptionsDescriptor instead')
const IndyOptions$json = const {
  '1': 'IndyOptions',
  '2': const [
    const {
      '1': 'network',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.services.provider.v1.IndyOptions.IndyNetwork',
      '10': 'network'
    },
  ],
  '4': const [IndyOptions_IndyNetwork$json],
};

@$core.Deprecated('Use indyOptionsDescriptor instead')
const IndyOptions_IndyNetwork$json = const {
  '1': 'IndyNetwork',
  '2': const [
    const {'1': 'Danube', '2': 0},
    const {'1': 'SovrinBuilder', '2': 1},
    const {'1': 'SovrinStaging', '2': 2},
    const {'1': 'Sovrin', '2': 3},
    const {'1': 'IdUnionTest', '2': 4},
    const {'1': 'IdUnion', '2': 5},
    const {'1': 'IndicioTest', '2': 6},
    const {'1': 'IndicioDemo', '2': 7},
    const {'1': 'Indicio', '2': 8},
  ],
};

/// Descriptor for `IndyOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List indyOptionsDescriptor = $convert.base64Decode(
    'CgtJbmR5T3B0aW9ucxJHCgduZXR3b3JrGAEgASgOMi0uc2VydmljZXMucHJvdmlkZXIudjEuSW5keU9wdGlvbnMuSW5keU5ldHdvcmtSB25ldHdvcmsimAEKC0luZHlOZXR3b3JrEgoKBkRhbnViZRAAEhEKDVNvdnJpbkJ1aWxkZXIQARIRCg1Tb3ZyaW5TdGFnaW5nEAISCgoGU292cmluEAMSDwoLSWRVbmlvblRlc3QQBBILCgdJZFVuaW9uEAUSDwoLSW5kaWNpb1Rlc3QQBhIPCgtJbmRpY2lvRGVtbxAHEgsKB0luZGljaW8QCA==');
@$core.Deprecated('Use upgradeDidRequestDescriptor instead')
const UpgradeDidRequest$json = const {
  '1': 'UpgradeDidRequest',
  '2': const [
    const {'1': 'email', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'email'},
    const {'1': 'wallet_id', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'walletId'},
    const {'1': 'did_uri', '3': 6, '4': 1, '5': 9, '9': 0, '10': 'didUri'},
    const {
      '1': 'method',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.services.common.v1.SupportedDidMethod',
      '10': 'method'
    },
    const {
      '1': 'ion_options',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.services.provider.v1.IonOptions',
      '9': 1,
      '10': 'ionOptions'
    },
    const {
      '1': 'indy_options',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.services.provider.v1.IndyOptions',
      '9': 1,
      '10': 'indyOptions'
    },
  ],
  '8': const [
    const {'1': 'account'},
    const {'1': 'options'},
  ],
};

/// Descriptor for `UpgradeDidRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List upgradeDidRequestDescriptor = $convert.base64Decode(
    'ChFVcGdyYWRlRGlkUmVxdWVzdBIWCgVlbWFpbBgBIAEoCUgAUgVlbWFpbBIdCgl3YWxsZXRfaWQYAiABKAlIAFIId2FsbGV0SWQSGQoHZGlkX3VyaRgGIAEoCUgAUgZkaWRVcmkSPgoGbWV0aG9kGAMgASgOMiYuc2VydmljZXMuY29tbW9uLnYxLlN1cHBvcnRlZERpZE1ldGhvZFIGbWV0aG9kEkMKC2lvbl9vcHRpb25zGAQgASgLMiAuc2VydmljZXMucHJvdmlkZXIudjEuSW9uT3B0aW9uc0gBUgppb25PcHRpb25zEkYKDGluZHlfb3B0aW9ucxgFIAEoCzIhLnNlcnZpY2VzLnByb3ZpZGVyLnYxLkluZHlPcHRpb25zSAFSC2luZHlPcHRpb25zQgkKB2FjY291bnRCCQoHb3B0aW9ucw==');
@$core.Deprecated('Use upgradeDidResponseDescriptor instead')
const UpgradeDidResponse$json = const {
  '1': 'UpgradeDidResponse',
  '2': const [
    const {'1': 'did', '3': 1, '4': 1, '5': 9, '10': 'did'},
  ],
};

/// Descriptor for `UpgradeDidResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List upgradeDidResponseDescriptor = $convert
    .base64Decode('ChJVcGdyYWRlRGlkUmVzcG9uc2USEAoDZGlkGAEgASgJUgNkaWQ=');
