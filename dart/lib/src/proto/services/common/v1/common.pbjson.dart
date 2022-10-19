///
//  Generated code. Do not modify.
//  source: services/common/v1/common.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use responseStatusDescriptor instead')
const ResponseStatus$json = {
  '1': 'ResponseStatus',
  '2': [
    {'1': 'SUCCESS', '2': 0},
    {'1': 'WALLET_ACCESS_DENIED', '2': 10},
    {'1': 'WALLET_EXISTS', '2': 11},
    {'1': 'ITEM_NOT_FOUND', '2': 20},
    {'1': 'SERIALIZATION_ERROR', '2': 200},
    {'1': 'UNKNOWN_ERROR', '2': 100},
  ],
};

/// Descriptor for `ResponseStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List responseStatusDescriptor = $convert.base64Decode(
    'Cg5SZXNwb25zZVN0YXR1cxILCgdTVUNDRVNTEAASGAoUV0FMTEVUX0FDQ0VTU19ERU5JRUQQChIRCg1XQUxMRVRfRVhJU1RTEAsSEgoOSVRFTV9OT1RfRk9VTkQQFBIYChNTRVJJQUxJWkFUSU9OX0VSUk9SEMgBEhEKDVVOS05PV05fRVJST1IQZA==');
@$core.Deprecated('Use supportedDidMethodDescriptor instead')
const SupportedDidMethod$json = {
  '1': 'SupportedDidMethod',
  '2': [
    {'1': 'KEY', '2': 0},
    {'1': 'ION', '2': 1},
  ],
};

/// Descriptor for `SupportedDidMethod`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List supportedDidMethodDescriptor = $convert
    .base64Decode('ChJTdXBwb3J0ZWREaWRNZXRob2QSBwoDS0VZEAASBwoDSU9OEAE=');
@$core.Deprecated('Use nonceDescriptor instead')
const Nonce$json = {
  '1': 'Nonce',
  '2': [
    {'1': 'timestamp', '3': 1, '4': 1, '5': 3, '10': 'timestamp'},
    {'1': 'request_hash', '3': 2, '4': 1, '5': 12, '10': 'requestHash'},
  ],
};

/// Descriptor for `Nonce`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nonceDescriptor = $convert.base64Decode(
    'CgVOb25jZRIcCgl0aW1lc3RhbXAYASABKANSCXRpbWVzdGFtcBIhCgxyZXF1ZXN0X2hhc2gYAiABKAxSC3JlcXVlc3RIYXNo');
