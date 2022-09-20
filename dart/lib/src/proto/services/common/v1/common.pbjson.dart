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
const ResponseStatus$json = const {
  '1': 'ResponseStatus',
  '2': const [
    const {'1': 'SUCCESS', '2': 0},
    const {'1': 'WALLET_ACCESS_DENIED', '2': 10},
    const {'1': 'WALLET_EXISTS', '2': 11},
    const {'1': 'ITEM_NOT_FOUND', '2': 20},
    const {'1': 'SERIALIZATION_ERROR', '2': 200},
    const {'1': 'UNKNOWN_ERROR', '2': 100},
  ],
};

/// Descriptor for `ResponseStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List responseStatusDescriptor = $convert.base64Decode(
    'Cg5SZXNwb25zZVN0YXR1cxILCgdTVUNDRVNTEAASGAoUV0FMTEVUX0FDQ0VTU19ERU5JRUQQChIRCg1XQUxMRVRfRVhJU1RTEAsSEgoOSVRFTV9OT1RfRk9VTkQQFBIYChNTRVJJQUxJWkFUSU9OX0VSUk9SEMgBEhEKDVVOS05PV05fRVJST1IQZA==');
@$core.Deprecated('Use supportedDIDMethodDescriptor instead')
const SupportedDIDMethod$json = const {
  '1': 'SupportedDIDMethod',
  '2': const [
    const {'1': 'KEY', '2': 0},
    const {'1': 'ION', '2': 1},
  ],
};

/// Descriptor for `SupportedDIDMethod`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List supportedDIDMethodDescriptor = $convert
    .base64Decode('ChJTdXBwb3J0ZWRESURNZXRob2QSBwoDS0VZEAASBwoDSU9OEAE=');
@$core.Deprecated('Use nonceDescriptor instead')
const Nonce$json = const {
  '1': 'Nonce',
  '2': const [
    const {'1': 'timestamp', '3': 1, '4': 1, '5': 3, '10': 'timestamp'},
    const {'1': 'request_hash', '3': 2, '4': 1, '5': 12, '10': 'requestHash'},
  ],
};

/// Descriptor for `Nonce`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nonceDescriptor = $convert.base64Decode(
    'CgVOb25jZRIcCgl0aW1lc3RhbXAYASABKANSCXRpbWVzdGFtcBIhCgxyZXF1ZXN0X2hhc2gYAiABKAxSC3JlcXVlc3RIYXNo');
