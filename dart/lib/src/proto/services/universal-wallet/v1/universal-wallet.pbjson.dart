///
//  Generated code. Do not modify.
//  source: services/universal-wallet/v1/universal-wallet.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use searchRequestDescriptor instead')
const SearchRequest$json = const {
  '1': 'SearchRequest',
  '2': const [
    const {'1': 'query', '3': 1, '4': 1, '5': 9, '10': 'query'},
    const {'1': 'continuation_token', '3': 2, '4': 1, '5': 9, '8': const {}, '10': 'continuationToken'},
  ],
};

/// Descriptor for `SearchRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchRequestDescriptor = $convert.base64Decode('Cg1TZWFyY2hSZXF1ZXN0EhQKBXF1ZXJ5GAEgASgJUgVxdWVyeRIzChJjb250aW51YXRpb25fdG9rZW4YAiABKAlCBICmHQFSEWNvbnRpbnVhdGlvblRva2Vu');
@$core.Deprecated('Use searchResponseDescriptor instead')
const SearchResponse$json = const {
  '1': 'SearchResponse',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 9, '10': 'items'},
    const {'1': 'has_more', '3': 2, '4': 1, '5': 8, '10': 'hasMore'},
    const {'1': 'continuation_token', '3': 4, '4': 1, '5': 9, '10': 'continuationToken'},
  ],
};

/// Descriptor for `SearchResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchResponseDescriptor = $convert.base64Decode('Cg5TZWFyY2hSZXNwb25zZRIUCgVpdGVtcxgBIAMoCVIFaXRlbXMSGQoIaGFzX21vcmUYAiABKAhSB2hhc01vcmUSLQoSY29udGludWF0aW9uX3Rva2VuGAQgASgJUhFjb250aW51YXRpb25Ub2tlbg==');
@$core.Deprecated('Use getItemRequestDescriptor instead')
const GetItemRequest$json = const {
  '1': 'GetItemRequest',
  '2': const [
    const {'1': 'item_id', '3': 1, '4': 1, '5': 9, '10': 'itemId'},
  ],
};

/// Descriptor for `GetItemRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getItemRequestDescriptor = $convert.base64Decode('Cg5HZXRJdGVtUmVxdWVzdBIXCgdpdGVtX2lkGAEgASgJUgZpdGVtSWQ=');
@$core.Deprecated('Use getItemResponseDescriptor instead')
const GetItemResponse$json = const {
  '1': 'GetItemResponse',
  '2': const [
    const {'1': 'item_json', '3': 1, '4': 1, '5': 9, '10': 'itemJson'},
    const {'1': 'item_type', '3': 2, '4': 1, '5': 9, '10': 'itemType'},
  ],
};

/// Descriptor for `GetItemResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getItemResponseDescriptor = $convert.base64Decode('Cg9HZXRJdGVtUmVzcG9uc2USGwoJaXRlbV9qc29uGAEgASgJUghpdGVtSnNvbhIbCglpdGVtX3R5cGUYAiABKAlSCGl0ZW1UeXBl');
@$core.Deprecated('Use updateItemRequestDescriptor instead')
const UpdateItemRequest$json = const {
  '1': 'UpdateItemRequest',
  '2': const [
    const {'1': 'item_id', '3': 1, '4': 1, '5': 9, '10': 'itemId'},
    const {'1': 'item_type', '3': 2, '4': 1, '5': 9, '8': const {}, '10': 'itemType'},
  ],
};

/// Descriptor for `UpdateItemRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateItemRequestDescriptor = $convert.base64Decode('ChFVcGRhdGVJdGVtUmVxdWVzdBIXCgdpdGVtX2lkGAEgASgJUgZpdGVtSWQSIQoJaXRlbV90eXBlGAIgASgJQgSAph0BUghpdGVtVHlwZQ==');
@$core.Deprecated('Use updateItemResponseDescriptor instead')
const UpdateItemResponse$json = const {
  '1': 'UpdateItemResponse',
};

/// Descriptor for `UpdateItemResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateItemResponseDescriptor = $convert.base64Decode('ChJVcGRhdGVJdGVtUmVzcG9uc2U=');
@$core.Deprecated('Use insertItemRequestDescriptor instead')
const InsertItemRequest$json = const {
  '1': 'InsertItemRequest',
  '2': const [
    const {'1': 'item_json', '3': 1, '4': 1, '5': 9, '10': 'itemJson'},
    const {'1': 'item_type', '3': 2, '4': 1, '5': 9, '8': const {}, '10': 'itemType'},
  ],
};

/// Descriptor for `InsertItemRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List insertItemRequestDescriptor = $convert.base64Decode('ChFJbnNlcnRJdGVtUmVxdWVzdBIbCglpdGVtX2pzb24YASABKAlSCGl0ZW1Kc29uEiEKCWl0ZW1fdHlwZRgCIAEoCUIEgKYdAVIIaXRlbVR5cGU=');
@$core.Deprecated('Use insertItemResponseDescriptor instead')
const InsertItemResponse$json = const {
  '1': 'InsertItemResponse',
  '2': const [
    const {'1': 'item_id', '3': 2, '4': 1, '5': 9, '10': 'itemId'},
  ],
};

/// Descriptor for `InsertItemResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List insertItemResponseDescriptor = $convert.base64Decode('ChJJbnNlcnRJdGVtUmVzcG9uc2USFwoHaXRlbV9pZBgCIAEoCVIGaXRlbUlk');
@$core.Deprecated('Use deleteItemRequestDescriptor instead')
const DeleteItemRequest$json = const {
  '1': 'DeleteItemRequest',
  '2': const [
    const {'1': 'item_id', '3': 1, '4': 1, '5': 9, '10': 'itemId'},
  ],
};

/// Descriptor for `DeleteItemRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteItemRequestDescriptor = $convert.base64Decode('ChFEZWxldGVJdGVtUmVxdWVzdBIXCgdpdGVtX2lkGAEgASgJUgZpdGVtSWQ=');
@$core.Deprecated('Use deleteItemResponseDescriptor instead')
const DeleteItemResponse$json = const {
  '1': 'DeleteItemResponse',
};

/// Descriptor for `DeleteItemResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteItemResponseDescriptor = $convert.base64Decode('ChJEZWxldGVJdGVtUmVzcG9uc2U=');
const $core.Map<$core.String, $core.dynamic> UniversalWalletServiceBase$json = const {
  '1': 'UniversalWallet',
  '2': const [
    const {'1': 'GetItem', '2': '.services.universalwallet.v1.GetItemRequest', '3': '.services.universalwallet.v1.GetItemResponse'},
    const {'1': 'Search', '2': '.services.universalwallet.v1.SearchRequest', '3': '.services.universalwallet.v1.SearchResponse'},
    const {'1': 'InsertItem', '2': '.services.universalwallet.v1.InsertItemRequest', '3': '.services.universalwallet.v1.InsertItemResponse'},
    const {'1': 'UpdateItem', '2': '.services.universalwallet.v1.UpdateItemRequest', '3': '.services.universalwallet.v1.UpdateItemResponse'},
    const {'1': 'DeleteItem', '2': '.services.universalwallet.v1.DeleteItemRequest', '3': '.services.universalwallet.v1.DeleteItemResponse'},
  ],
};

@$core.Deprecated('Use universalWalletServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> UniversalWalletServiceBase$messageJson = const {
  '.services.universalwallet.v1.GetItemRequest': GetItemRequest$json,
  '.services.universalwallet.v1.GetItemResponse': GetItemResponse$json,
  '.services.universalwallet.v1.SearchRequest': SearchRequest$json,
  '.services.universalwallet.v1.SearchResponse': SearchResponse$json,
  '.services.universalwallet.v1.InsertItemRequest': InsertItemRequest$json,
  '.services.universalwallet.v1.InsertItemResponse': InsertItemResponse$json,
  '.services.universalwallet.v1.UpdateItemRequest': UpdateItemRequest$json,
  '.services.universalwallet.v1.UpdateItemResponse': UpdateItemResponse$json,
  '.services.universalwallet.v1.DeleteItemRequest': DeleteItemRequest$json,
  '.services.universalwallet.v1.DeleteItemResponse': DeleteItemResponse$json,
};

/// Descriptor for `UniversalWallet`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List universalWalletServiceDescriptor = $convert.base64Decode('Cg9Vbml2ZXJzYWxXYWxsZXQSZAoHR2V0SXRlbRIrLnNlcnZpY2VzLnVuaXZlcnNhbHdhbGxldC52MS5HZXRJdGVtUmVxdWVzdBosLnNlcnZpY2VzLnVuaXZlcnNhbHdhbGxldC52MS5HZXRJdGVtUmVzcG9uc2USYQoGU2VhcmNoEiouc2VydmljZXMudW5pdmVyc2Fsd2FsbGV0LnYxLlNlYXJjaFJlcXVlc3QaKy5zZXJ2aWNlcy51bml2ZXJzYWx3YWxsZXQudjEuU2VhcmNoUmVzcG9uc2USbQoKSW5zZXJ0SXRlbRIuLnNlcnZpY2VzLnVuaXZlcnNhbHdhbGxldC52MS5JbnNlcnRJdGVtUmVxdWVzdBovLnNlcnZpY2VzLnVuaXZlcnNhbHdhbGxldC52MS5JbnNlcnRJdGVtUmVzcG9uc2USbQoKVXBkYXRlSXRlbRIuLnNlcnZpY2VzLnVuaXZlcnNhbHdhbGxldC52MS5VcGRhdGVJdGVtUmVxdWVzdBovLnNlcnZpY2VzLnVuaXZlcnNhbHdhbGxldC52MS5VcGRhdGVJdGVtUmVzcG9uc2USbQoKRGVsZXRlSXRlbRIuLnNlcnZpY2VzLnVuaXZlcnNhbHdhbGxldC52MS5EZWxldGVJdGVtUmVxdWVzdBovLnNlcnZpY2VzLnVuaXZlcnNhbHdhbGxldC52MS5EZWxldGVJdGVtUmVzcG9uc2U=');
