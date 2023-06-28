//
//  Generated code. Do not modify.
//  source: services/universal-wallet/v1/universal-wallet.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use searchRequestDescriptor instead')
const SearchRequest$json = {
  '1': 'SearchRequest',
  '2': [
    {'1': 'query', '3': 1, '4': 1, '5': 9, '10': 'query'},
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

/// Descriptor for `SearchRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchRequestDescriptor = $convert.base64Decode(
    'Cg1TZWFyY2hSZXF1ZXN0EhQKBXF1ZXJ5GAEgASgJUgVxdWVyeRIzChJjb250aW51YXRpb25fdG'
    '9rZW4YAiABKAlCBICmHQFSEWNvbnRpbnVhdGlvblRva2Vu');

@$core.Deprecated('Use searchResponseDescriptor instead')
const SearchResponse$json = {
  '1': 'SearchResponse',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 9, '10': 'items'},
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

/// Descriptor for `SearchResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchResponseDescriptor = $convert.base64Decode(
    'Cg5TZWFyY2hSZXNwb25zZRIUCgVpdGVtcxgBIAMoCVIFaXRlbXMSKAoQaGFzX21vcmVfcmVzdW'
    'x0cxgCIAEoCFIOaGFzTW9yZVJlc3VsdHMSLQoSY29udGludWF0aW9uX3Rva2VuGAQgASgJUhFj'
    'b250aW51YXRpb25Ub2tlbg==');

@$core.Deprecated('Use getItemRequestDescriptor instead')
const GetItemRequest$json = {
  '1': 'GetItemRequest',
  '2': [
    {'1': 'item_id', '3': 1, '4': 1, '5': 9, '10': 'itemId'},
  ],
};

/// Descriptor for `GetItemRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getItemRequestDescriptor = $convert
    .base64Decode('Cg5HZXRJdGVtUmVxdWVzdBIXCgdpdGVtX2lkGAEgASgJUgZpdGVtSWQ=');

@$core.Deprecated('Use getItemResponseDescriptor instead')
const GetItemResponse$json = {
  '1': 'GetItemResponse',
  '2': [
    {'1': 'item_json', '3': 1, '4': 1, '5': 9, '10': 'itemJson'},
    {'1': 'item_type', '3': 2, '4': 1, '5': 9, '10': 'itemType'},
  ],
};

/// Descriptor for `GetItemResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getItemResponseDescriptor = $convert.base64Decode(
    'Cg9HZXRJdGVtUmVzcG9uc2USGwoJaXRlbV9qc29uGAEgASgJUghpdGVtSnNvbhIbCglpdGVtX3'
    'R5cGUYAiABKAlSCGl0ZW1UeXBl');

@$core.Deprecated('Use updateItemRequestDescriptor instead')
const UpdateItemRequest$json = {
  '1': 'UpdateItemRequest',
  '2': [
    {'1': 'item_id', '3': 1, '4': 1, '5': 9, '10': 'itemId'},
    {'1': 'item_type', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'itemType'},
  ],
};

/// Descriptor for `UpdateItemRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateItemRequestDescriptor = $convert.base64Decode(
    'ChFVcGRhdGVJdGVtUmVxdWVzdBIXCgdpdGVtX2lkGAEgASgJUgZpdGVtSWQSIQoJaXRlbV90eX'
    'BlGAIgASgJQgSAph0BUghpdGVtVHlwZQ==');

@$core.Deprecated('Use updateItemResponseDescriptor instead')
const UpdateItemResponse$json = {
  '1': 'UpdateItemResponse',
};

/// Descriptor for `UpdateItemResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateItemResponseDescriptor =
    $convert.base64Decode('ChJVcGRhdGVJdGVtUmVzcG9uc2U=');

@$core.Deprecated('Use insertItemRequestDescriptor instead')
const InsertItemRequest$json = {
  '1': 'InsertItemRequest',
  '2': [
    {'1': 'item_json', '3': 1, '4': 1, '5': 9, '10': 'itemJson'},
    {'1': 'item_type', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'itemType'},
  ],
};

/// Descriptor for `InsertItemRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List insertItemRequestDescriptor = $convert.base64Decode(
    'ChFJbnNlcnRJdGVtUmVxdWVzdBIbCglpdGVtX2pzb24YASABKAlSCGl0ZW1Kc29uEiEKCWl0ZW'
    '1fdHlwZRgCIAEoCUIEgKYdAVIIaXRlbVR5cGU=');

@$core.Deprecated('Use insertItemResponseDescriptor instead')
const InsertItemResponse$json = {
  '1': 'InsertItemResponse',
  '2': [
    {'1': 'item_id', '3': 2, '4': 1, '5': 9, '10': 'itemId'},
  ],
};

/// Descriptor for `InsertItemResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List insertItemResponseDescriptor =
    $convert.base64Decode(
        'ChJJbnNlcnRJdGVtUmVzcG9uc2USFwoHaXRlbV9pZBgCIAEoCVIGaXRlbUlk');

@$core.Deprecated('Use deleteItemRequestDescriptor instead')
const DeleteItemRequest$json = {
  '1': 'DeleteItemRequest',
  '2': [
    {'1': 'item_id', '3': 1, '4': 1, '5': 9, '10': 'itemId'},
  ],
};

/// Descriptor for `DeleteItemRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteItemRequestDescriptor = $convert.base64Decode(
    'ChFEZWxldGVJdGVtUmVxdWVzdBIXCgdpdGVtX2lkGAEgASgJUgZpdGVtSWQ=');

@$core.Deprecated('Use deleteItemResponseDescriptor instead')
const DeleteItemResponse$json = {
  '1': 'DeleteItemResponse',
};

/// Descriptor for `DeleteItemResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteItemResponseDescriptor =
    $convert.base64Decode('ChJEZWxldGVJdGVtUmVzcG9uc2U=');

@$core.Deprecated('Use deleteWalletRequestDescriptor instead')
const DeleteWalletRequest$json = {
  '1': 'DeleteWalletRequest',
  '2': [
    {'1': 'email', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'email'},
    {'1': 'wallet_id', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'walletId'},
    {'1': 'did_uri', '3': 4, '4': 1, '5': 9, '9': 0, '10': 'didUri'},
  ],
  '8': [
    {'1': 'account'},
  ],
};

/// Descriptor for `DeleteWalletRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteWalletRequestDescriptor = $convert.base64Decode(
    'ChNEZWxldGVXYWxsZXRSZXF1ZXN0EhYKBWVtYWlsGAEgASgJSABSBWVtYWlsEh0KCXdhbGxldF'
    '9pZBgCIAEoCUgAUgh3YWxsZXRJZBIZCgdkaWRfdXJpGAQgASgJSABSBmRpZFVyaUIJCgdhY2Nv'
    'dW50');

@$core.Deprecated('Use deleteWalletResponseDescriptor instead')
const DeleteWalletResponse$json = {
  '1': 'DeleteWalletResponse',
};

/// Descriptor for `DeleteWalletResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteWalletResponseDescriptor =
    $convert.base64Decode('ChREZWxldGVXYWxsZXRSZXNwb25zZQ==');

@$core.Deprecated('Use createWalletRequestDescriptor instead')
const CreateWalletRequest$json = {
  '1': 'CreateWalletRequest',
  '2': [
    {'1': 'ecosystem_id', '3': 1, '4': 1, '5': 9, '10': 'ecosystemId'},
    {
      '1': 'description',
      '3': 2,
      '4': 1,
      '5': 9,
      '8': {},
      '9': 0,
      '10': 'description',
      '17': true
    },
    {
      '1': 'identity',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.services.universalwallet.v1.CreateWalletRequest.ExternalIdentity',
      '8': {},
      '9': 1,
      '10': 'identity',
      '17': true
    },
  ],
  '3': [CreateWalletRequest_ExternalIdentity$json],
  '8': [
    {'1': '_description'},
    {'1': '_identity'},
  ],
};

@$core.Deprecated('Use createWalletRequestDescriptor instead')
const CreateWalletRequest_ExternalIdentity$json = {
  '1': 'ExternalIdentity',
  '2': [
    {'1': 'identity', '3': 1, '4': 1, '5': 9, '10': 'identity'},
    {
      '1': 'provider',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.services.provider.v1.IdentityProvider',
      '10': 'provider'
    },
  ],
};

/// Descriptor for `CreateWalletRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createWalletRequestDescriptor = $convert.base64Decode(
    'ChNDcmVhdGVXYWxsZXRSZXF1ZXN0EiEKDGVjb3N5c3RlbV9pZBgBIAEoCVILZWNvc3lzdGVtSW'
    'QSKwoLZGVzY3JpcHRpb24YAiABKAlCBICmHQFIAFILZGVzY3JpcHRpb26IAQESaAoIaWRlbnRp'
    'dHkYAyABKAsyQS5zZXJ2aWNlcy51bml2ZXJzYWx3YWxsZXQudjEuQ3JlYXRlV2FsbGV0UmVxdW'
    'VzdC5FeHRlcm5hbElkZW50aXR5QgSAph0BSAFSCGlkZW50aXR5iAEBGnIKEEV4dGVybmFsSWRl'
    'bnRpdHkSGgoIaWRlbnRpdHkYASABKAlSCGlkZW50aXR5EkIKCHByb3ZpZGVyGAIgASgOMiYuc2'
    'VydmljZXMucHJvdmlkZXIudjEuSWRlbnRpdHlQcm92aWRlclIIcHJvdmlkZXJCDgoMX2Rlc2Ny'
    'aXB0aW9uQgsKCV9pZGVudGl0eQ==');

@$core.Deprecated('Use createWalletResponseDescriptor instead')
const CreateWalletResponse$json = {
  '1': 'CreateWalletResponse',
  '2': [
    {'1': 'auth_token', '3': 2, '4': 1, '5': 9, '10': 'authToken'},
    {'1': 'token_id', '3': 3, '4': 1, '5': 9, '10': 'tokenId'},
    {
      '1': 'wallet',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.services.provider.v1.WalletConfiguration',
      '10': 'wallet'
    },
  ],
  '9': [
    {'1': 1, '2': 2},
  ],
};

/// Descriptor for `CreateWalletResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createWalletResponseDescriptor = $convert.base64Decode(
    'ChRDcmVhdGVXYWxsZXRSZXNwb25zZRIdCgphdXRoX3Rva2VuGAIgASgJUglhdXRoVG9rZW4SGQ'
    'oIdG9rZW5faWQYAyABKAlSB3Rva2VuSWQSQQoGd2FsbGV0GAQgASgLMikuc2VydmljZXMucHJv'
    'dmlkZXIudjEuV2FsbGV0Q29uZmlndXJhdGlvblIGd2FsbGV0SgQIARAC');

@$core.Deprecated('Use generateAuthTokenRequestDescriptor instead')
const GenerateAuthTokenRequest$json = {
  '1': 'GenerateAuthTokenRequest',
  '2': [
    {'1': 'wallet_id', '3': 1, '4': 1, '5': 9, '10': 'walletId'},
    {
      '1': 'token_description',
      '3': 2,
      '4': 1,
      '5': 9,
      '10': 'tokenDescription'
    },
  ],
};

/// Descriptor for `GenerateAuthTokenRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List generateAuthTokenRequestDescriptor =
    $convert.base64Decode(
        'ChhHZW5lcmF0ZUF1dGhUb2tlblJlcXVlc3QSGwoJd2FsbGV0X2lkGAEgASgJUgh3YWxsZXRJZB'
        'IrChF0b2tlbl9kZXNjcmlwdGlvbhgCIAEoCVIQdG9rZW5EZXNjcmlwdGlvbg==');

@$core.Deprecated('Use generateAuthTokenResponseDescriptor instead')
const GenerateAuthTokenResponse$json = {
  '1': 'GenerateAuthTokenResponse',
  '2': [
    {'1': 'token_id', '3': 1, '4': 1, '5': 9, '10': 'tokenId'},
    {'1': 'auth_token', '3': 2, '4': 1, '5': 9, '10': 'authToken'},
  ],
};

/// Descriptor for `GenerateAuthTokenResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List generateAuthTokenResponseDescriptor =
    $convert.base64Decode(
        'ChlHZW5lcmF0ZUF1dGhUb2tlblJlc3BvbnNlEhkKCHRva2VuX2lkGAEgASgJUgd0b2tlbklkEh'
        '0KCmF1dGhfdG9rZW4YAiABKAlSCWF1dGhUb2tlbg==');

@$core.Deprecated('Use getWalletInfoRequestDescriptor instead')
const GetWalletInfoRequest$json = {
  '1': 'GetWalletInfoRequest',
  '2': [
    {'1': 'wallet_id', '3': 1, '4': 1, '5': 9, '10': 'walletId'},
  ],
};

/// Descriptor for `GetWalletInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getWalletInfoRequestDescriptor =
    $convert.base64Decode(
        'ChRHZXRXYWxsZXRJbmZvUmVxdWVzdBIbCgl3YWxsZXRfaWQYASABKAlSCHdhbGxldElk');

@$core.Deprecated('Use getWalletInfoResponseDescriptor instead')
const GetWalletInfoResponse$json = {
  '1': 'GetWalletInfoResponse',
  '2': [
    {
      '1': 'wallet',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.services.provider.v1.WalletConfiguration',
      '10': 'wallet'
    },
  ],
};

/// Descriptor for `GetWalletInfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getWalletInfoResponseDescriptor = $convert.base64Decode(
    'ChVHZXRXYWxsZXRJbmZvUmVzcG9uc2USQQoGd2FsbGV0GAEgASgLMikuc2VydmljZXMucHJvdm'
    'lkZXIudjEuV2FsbGV0Q29uZmlndXJhdGlvblIGd2FsbGV0');

@$core.Deprecated('Use getMyInfoRequestDescriptor instead')
const GetMyInfoRequest$json = {
  '1': 'GetMyInfoRequest',
};

/// Descriptor for `GetMyInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMyInfoRequestDescriptor =
    $convert.base64Decode('ChBHZXRNeUluZm9SZXF1ZXN0');

@$core.Deprecated('Use getMyInfoResponseDescriptor instead')
const GetMyInfoResponse$json = {
  '1': 'GetMyInfoResponse',
  '2': [
    {
      '1': 'wallet',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.services.provider.v1.WalletConfiguration',
      '10': 'wallet'
    },
  ],
};

/// Descriptor for `GetMyInfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMyInfoResponseDescriptor = $convert.base64Decode(
    'ChFHZXRNeUluZm9SZXNwb25zZRJBCgZ3YWxsZXQYASABKAsyKS5zZXJ2aWNlcy5wcm92aWRlci'
    '52MS5XYWxsZXRDb25maWd1cmF0aW9uUgZ3YWxsZXQ=');

@$core.Deprecated('Use revokeAuthTokenRequestDescriptor instead')
const RevokeAuthTokenRequest$json = {
  '1': 'RevokeAuthTokenRequest',
  '2': [
    {'1': 'wallet_id', '3': 1, '4': 1, '5': 9, '10': 'walletId'},
    {'1': 'token_id', '3': 2, '4': 1, '5': 9, '10': 'tokenId'},
  ],
};

/// Descriptor for `RevokeAuthTokenRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List revokeAuthTokenRequestDescriptor =
    $convert.base64Decode(
        'ChZSZXZva2VBdXRoVG9rZW5SZXF1ZXN0EhsKCXdhbGxldF9pZBgBIAEoCVIId2FsbGV0SWQSGQ'
        'oIdG9rZW5faWQYAiABKAlSB3Rva2VuSWQ=');

@$core.Deprecated('Use revokeAuthTokenResponseDescriptor instead')
const RevokeAuthTokenResponse$json = {
  '1': 'RevokeAuthTokenResponse',
};

/// Descriptor for `RevokeAuthTokenResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List revokeAuthTokenResponseDescriptor =
    $convert.base64Decode('ChdSZXZva2VBdXRoVG9rZW5SZXNwb25zZQ==');

@$core.Deprecated('Use listWalletsRequestDescriptor instead')
const ListWalletsRequest$json = {
  '1': 'ListWalletsRequest',
  '2': [
    {'1': 'filter', '3': 1, '4': 1, '5': 9, '10': 'filter'},
  ],
};

/// Descriptor for `ListWalletsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listWalletsRequestDescriptor =
    $convert.base64Decode(
        'ChJMaXN0V2FsbGV0c1JlcXVlc3QSFgoGZmlsdGVyGAEgASgJUgZmaWx0ZXI=');

@$core.Deprecated('Use listWalletsResponseDescriptor instead')
const ListWalletsResponse$json = {
  '1': 'ListWalletsResponse',
  '2': [
    {
      '1': 'wallets',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.services.provider.v1.WalletConfiguration',
      '10': 'wallets'
    },
  ],
};

/// Descriptor for `ListWalletsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listWalletsResponseDescriptor = $convert.base64Decode(
    'ChNMaXN0V2FsbGV0c1Jlc3BvbnNlEkMKB3dhbGxldHMYASADKAsyKS5zZXJ2aWNlcy5wcm92aW'
    'Rlci52MS5XYWxsZXRDb25maWd1cmF0aW9uUgd3YWxsZXRz');

@$core.Deprecated('Use addExternalIdentityInitRequestDescriptor instead')
const AddExternalIdentityInitRequest$json = {
  '1': 'AddExternalIdentityInitRequest',
  '2': [
    {'1': 'identity', '3': 1, '4': 1, '5': 9, '10': 'identity'},
    {
      '1': 'provider',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.services.provider.v1.IdentityProvider',
      '10': 'provider'
    },
  ],
};

/// Descriptor for `AddExternalIdentityInitRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addExternalIdentityInitRequestDescriptor =
    $convert.base64Decode(
        'Ch5BZGRFeHRlcm5hbElkZW50aXR5SW5pdFJlcXVlc3QSGgoIaWRlbnRpdHkYASABKAlSCGlkZW'
        '50aXR5EkIKCHByb3ZpZGVyGAIgASgOMiYuc2VydmljZXMucHJvdmlkZXIudjEuSWRlbnRpdHlQ'
        'cm92aWRlclIIcHJvdmlkZXI=');

@$core.Deprecated('Use addExternalIdentityInitResponseDescriptor instead')
const AddExternalIdentityInitResponse$json = {
  '1': 'AddExternalIdentityInitResponse',
  '2': [
    {'1': 'challenge', '3': 1, '4': 1, '5': 9, '10': 'challenge'},
  ],
};

/// Descriptor for `AddExternalIdentityInitResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addExternalIdentityInitResponseDescriptor =
    $convert.base64Decode(
        'Ch9BZGRFeHRlcm5hbElkZW50aXR5SW5pdFJlc3BvbnNlEhwKCWNoYWxsZW5nZRgBIAEoCVIJY2'
        'hhbGxlbmdl');

@$core.Deprecated('Use addExternalIdentityConfirmRequestDescriptor instead')
const AddExternalIdentityConfirmRequest$json = {
  '1': 'AddExternalIdentityConfirmRequest',
  '2': [
    {'1': 'challenge', '3': 1, '4': 1, '5': 9, '10': 'challenge'},
    {'1': 'response', '3': 2, '4': 1, '5': 9, '10': 'response'},
  ],
};

/// Descriptor for `AddExternalIdentityConfirmRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addExternalIdentityConfirmRequestDescriptor =
    $convert.base64Decode(
        'CiFBZGRFeHRlcm5hbElkZW50aXR5Q29uZmlybVJlcXVlc3QSHAoJY2hhbGxlbmdlGAEgASgJUg'
        'ljaGFsbGVuZ2USGgoIcmVzcG9uc2UYAiABKAlSCHJlc3BvbnNl');

@$core.Deprecated('Use addExternalIdentityConfirmResponseDescriptor instead')
const AddExternalIdentityConfirmResponse$json = {
  '1': 'AddExternalIdentityConfirmResponse',
};

/// Descriptor for `AddExternalIdentityConfirmResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addExternalIdentityConfirmResponseDescriptor =
    $convert.base64Decode('CiJBZGRFeHRlcm5hbElkZW50aXR5Q29uZmlybVJlc3BvbnNl');

@$core.Deprecated('Use removeExternalIdentityRequestDescriptor instead')
const RemoveExternalIdentityRequest$json = {
  '1': 'RemoveExternalIdentityRequest',
  '2': [
    {'1': 'identity', '3': 1, '4': 1, '5': 9, '10': 'identity'},
  ],
};

/// Descriptor for `RemoveExternalIdentityRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeExternalIdentityRequestDescriptor =
    $convert.base64Decode(
        'Ch1SZW1vdmVFeHRlcm5hbElkZW50aXR5UmVxdWVzdBIaCghpZGVudGl0eRgBIAEoCVIIaWRlbn'
        'RpdHk=');

@$core.Deprecated('Use removeExternalIdentityResponseDescriptor instead')
const RemoveExternalIdentityResponse$json = {
  '1': 'RemoveExternalIdentityResponse',
};

/// Descriptor for `RemoveExternalIdentityResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeExternalIdentityResponseDescriptor =
    $convert.base64Decode('Ch5SZW1vdmVFeHRlcm5hbElkZW50aXR5UmVzcG9uc2U=');

@$core.Deprecated('Use authenticateInitRequestDescriptor instead')
const AuthenticateInitRequest$json = {
  '1': 'AuthenticateInitRequest',
  '2': [
    {'1': 'identity', '3': 1, '4': 1, '5': 9, '10': 'identity'},
    {
      '1': 'provider',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.services.provider.v1.IdentityProvider',
      '10': 'provider'
    },
    {'1': 'ecosystem_id', '3': 3, '4': 1, '5': 9, '10': 'ecosystemId'},
  ],
};

/// Descriptor for `AuthenticateInitRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authenticateInitRequestDescriptor = $convert.base64Decode(
    'ChdBdXRoZW50aWNhdGVJbml0UmVxdWVzdBIaCghpZGVudGl0eRgBIAEoCVIIaWRlbnRpdHkSQg'
    'oIcHJvdmlkZXIYAiABKA4yJi5zZXJ2aWNlcy5wcm92aWRlci52MS5JZGVudGl0eVByb3ZpZGVy'
    'Ughwcm92aWRlchIhCgxlY29zeXN0ZW1faWQYAyABKAlSC2Vjb3N5c3RlbUlk');

@$core.Deprecated('Use authenticateInitResponseDescriptor instead')
const AuthenticateInitResponse$json = {
  '1': 'AuthenticateInitResponse',
  '2': [
    {'1': 'challenge', '3': 1, '4': 1, '5': 9, '10': 'challenge'},
  ],
};

/// Descriptor for `AuthenticateInitResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authenticateInitResponseDescriptor =
    $convert.base64Decode(
        'ChhBdXRoZW50aWNhdGVJbml0UmVzcG9uc2USHAoJY2hhbGxlbmdlGAEgASgJUgljaGFsbGVuZ2'
        'U=');

@$core.Deprecated('Use authenticateResendCodeRequestDescriptor instead')
const AuthenticateResendCodeRequest$json = {
  '1': 'AuthenticateResendCodeRequest',
  '2': [
    {'1': 'challenge', '3': 1, '4': 1, '5': 9, '10': 'challenge'},
  ],
};

/// Descriptor for `AuthenticateResendCodeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authenticateResendCodeRequestDescriptor =
    $convert.base64Decode(
        'Ch1BdXRoZW50aWNhdGVSZXNlbmRDb2RlUmVxdWVzdBIcCgljaGFsbGVuZ2UYASABKAlSCWNoYW'
        'xsZW5nZQ==');

@$core.Deprecated('Use authenticateResendCodeResponseDescriptor instead')
const AuthenticateResendCodeResponse$json = {
  '1': 'AuthenticateResendCodeResponse',
};

/// Descriptor for `AuthenticateResendCodeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authenticateResendCodeResponseDescriptor =
    $convert.base64Decode('Ch5BdXRoZW50aWNhdGVSZXNlbmRDb2RlUmVzcG9uc2U=');

@$core.Deprecated('Use authenticateConfirmRequestDescriptor instead')
const AuthenticateConfirmRequest$json = {
  '1': 'AuthenticateConfirmRequest',
  '2': [
    {'1': 'challenge', '3': 1, '4': 1, '5': 9, '10': 'challenge'},
    {'1': 'response', '3': 2, '4': 1, '5': 9, '10': 'response'},
  ],
};

/// Descriptor for `AuthenticateConfirmRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authenticateConfirmRequestDescriptor =
    $convert.base64Decode(
        'ChpBdXRoZW50aWNhdGVDb25maXJtUmVxdWVzdBIcCgljaGFsbGVuZ2UYASABKAlSCWNoYWxsZW'
        '5nZRIaCghyZXNwb25zZRgCIAEoCVIIcmVzcG9uc2U=');

@$core.Deprecated('Use authenticateConfirmResponseDescriptor instead')
const AuthenticateConfirmResponse$json = {
  '1': 'AuthenticateConfirmResponse',
  '2': [
    {'1': 'auth_token', '3': 1, '4': 1, '5': 9, '10': 'authToken'},
  ],
};

/// Descriptor for `AuthenticateConfirmResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authenticateConfirmResponseDescriptor =
    $convert.base64Decode(
        'ChtBdXRoZW50aWNhdGVDb25maXJtUmVzcG9uc2USHQoKYXV0aF90b2tlbhgBIAEoCVIJYXV0aF'
        'Rva2Vu');
