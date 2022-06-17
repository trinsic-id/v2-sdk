///
//  Generated code. Do not modify.
//  source: services/universal-wallet/v1/universal-wallet.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use searchRequestDescriptor instead')
const SearchRequest$json = const {
  '1': 'SearchRequest',
  '2': const [
    const {'1': 'query', '3': 1, '4': 1, '5': 9, '10': 'query'},
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

/// Descriptor for `SearchRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchRequestDescriptor = $convert.base64Decode(
    'Cg1TZWFyY2hSZXF1ZXN0EhQKBXF1ZXJ5GAEgASgJUgVxdWVyeRIzChJjb250aW51YXRpb25fdG9rZW4YAiABKAlCBICmHQFSEWNvbnRpbnVhdGlvblRva2Vu');
@$core.Deprecated('Use searchResponseDescriptor instead')
const SearchResponse$json = const {
  '1': 'SearchResponse',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 9, '10': 'items'},
    const {'1': 'has_more', '3': 2, '4': 1, '5': 8, '10': 'hasMore'},
    const {
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
    'Cg5TZWFyY2hSZXNwb25zZRIUCgVpdGVtcxgBIAMoCVIFaXRlbXMSGQoIaGFzX21vcmUYAiABKAhSB2hhc01vcmUSLQoSY29udGludWF0aW9uX3Rva2VuGAQgASgJUhFjb250aW51YXRpb25Ub2tlbg==');
@$core.Deprecated('Use getItemRequestDescriptor instead')
const GetItemRequest$json = const {
  '1': 'GetItemRequest',
  '2': const [
    const {'1': 'item_id', '3': 1, '4': 1, '5': 9, '10': 'itemId'},
  ],
};

/// Descriptor for `GetItemRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getItemRequestDescriptor = $convert
    .base64Decode('Cg5HZXRJdGVtUmVxdWVzdBIXCgdpdGVtX2lkGAEgASgJUgZpdGVtSWQ=');
@$core.Deprecated('Use getItemResponseDescriptor instead')
const GetItemResponse$json = const {
  '1': 'GetItemResponse',
  '2': const [
    const {'1': 'item_json', '3': 1, '4': 1, '5': 9, '10': 'itemJson'},
    const {'1': 'item_type', '3': 2, '4': 1, '5': 9, '10': 'itemType'},
  ],
};

/// Descriptor for `GetItemResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getItemResponseDescriptor = $convert.base64Decode(
    'Cg9HZXRJdGVtUmVzcG9uc2USGwoJaXRlbV9qc29uGAEgASgJUghpdGVtSnNvbhIbCglpdGVtX3R5cGUYAiABKAlSCGl0ZW1UeXBl');
@$core.Deprecated('Use updateItemRequestDescriptor instead')
const UpdateItemRequest$json = const {
  '1': 'UpdateItemRequest',
  '2': const [
    const {'1': 'item_id', '3': 1, '4': 1, '5': 9, '10': 'itemId'},
    const {
      '1': 'item_type',
      '3': 2,
      '4': 1,
      '5': 9,
      '8': const {},
      '10': 'itemType'
    },
  ],
};

/// Descriptor for `UpdateItemRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateItemRequestDescriptor = $convert.base64Decode(
    'ChFVcGRhdGVJdGVtUmVxdWVzdBIXCgdpdGVtX2lkGAEgASgJUgZpdGVtSWQSIQoJaXRlbV90eXBlGAIgASgJQgSAph0BUghpdGVtVHlwZQ==');
@$core.Deprecated('Use updateItemResponseDescriptor instead')
const UpdateItemResponse$json = const {
  '1': 'UpdateItemResponse',
};

/// Descriptor for `UpdateItemResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateItemResponseDescriptor =
    $convert.base64Decode('ChJVcGRhdGVJdGVtUmVzcG9uc2U=');
@$core.Deprecated('Use insertItemRequestDescriptor instead')
const InsertItemRequest$json = const {
  '1': 'InsertItemRequest',
  '2': const [
    const {'1': 'item_json', '3': 1, '4': 1, '5': 9, '10': 'itemJson'},
    const {
      '1': 'item_type',
      '3': 2,
      '4': 1,
      '5': 9,
      '8': const {},
      '10': 'itemType'
    },
  ],
};

/// Descriptor for `InsertItemRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List insertItemRequestDescriptor = $convert.base64Decode(
    'ChFJbnNlcnRJdGVtUmVxdWVzdBIbCglpdGVtX2pzb24YASABKAlSCGl0ZW1Kc29uEiEKCWl0ZW1fdHlwZRgCIAEoCUIEgKYdAVIIaXRlbVR5cGU=');
@$core.Deprecated('Use insertItemResponseDescriptor instead')
const InsertItemResponse$json = const {
  '1': 'InsertItemResponse',
  '2': const [
    const {'1': 'item_id', '3': 2, '4': 1, '5': 9, '10': 'itemId'},
  ],
};

/// Descriptor for `InsertItemResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List insertItemResponseDescriptor =
    $convert.base64Decode(
        'ChJJbnNlcnRJdGVtUmVzcG9uc2USFwoHaXRlbV9pZBgCIAEoCVIGaXRlbUlk');
@$core.Deprecated('Use deleteItemRequestDescriptor instead')
const DeleteItemRequest$json = const {
  '1': 'DeleteItemRequest',
  '2': const [
    const {'1': 'item_id', '3': 1, '4': 1, '5': 9, '10': 'itemId'},
  ],
};

/// Descriptor for `DeleteItemRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteItemRequestDescriptor = $convert.base64Decode(
    'ChFEZWxldGVJdGVtUmVxdWVzdBIXCgdpdGVtX2lkGAEgASgJUgZpdGVtSWQ=');
@$core.Deprecated('Use deleteItemResponseDescriptor instead')
const DeleteItemResponse$json = const {
  '1': 'DeleteItemResponse',
};

/// Descriptor for `DeleteItemResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteItemResponseDescriptor =
    $convert.base64Decode('ChJEZWxldGVJdGVtUmVzcG9uc2U=');
