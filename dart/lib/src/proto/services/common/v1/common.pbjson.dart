///
//  Generated code. Do not modify.
//  source: services/common/v1/common.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

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
@$core.Deprecated('Use serverConfigDescriptor instead')
const ServerConfig$json = const {
  '1': 'ServerConfig',
  '2': const [
    const {'1': 'endpoint', '3': 1, '4': 1, '5': 9, '10': 'endpoint'},
    const {'1': 'port', '3': 2, '4': 1, '5': 5, '10': 'port'},
    const {'1': 'use_tls', '3': 3, '4': 1, '5': 8, '10': 'useTls'},
  ],
};

/// Descriptor for `ServerConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serverConfigDescriptor = $convert.base64Decode(
    'CgxTZXJ2ZXJDb25maWcSGgoIZW5kcG9pbnQYASABKAlSCGVuZHBvaW50EhIKBHBvcnQYAiABKAVSBHBvcnQSFwoHdXNlX3RscxgDIAEoCFIGdXNlVGxz');
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
