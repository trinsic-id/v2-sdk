//
//  Generated code. Do not modify.
//  source: services/common/v1/common.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ResponseStatus extends $pb.ProtobufEnum {
  static const ResponseStatus SUCCESS =
      ResponseStatus._(0, _omitEnumNames ? '' : 'SUCCESS');
  static const ResponseStatus WALLET_ACCESS_DENIED =
      ResponseStatus._(10, _omitEnumNames ? '' : 'WALLET_ACCESS_DENIED');
  static const ResponseStatus WALLET_EXISTS =
      ResponseStatus._(11, _omitEnumNames ? '' : 'WALLET_EXISTS');
  static const ResponseStatus ITEM_NOT_FOUND =
      ResponseStatus._(20, _omitEnumNames ? '' : 'ITEM_NOT_FOUND');
  static const ResponseStatus SERIALIZATION_ERROR =
      ResponseStatus._(200, _omitEnumNames ? '' : 'SERIALIZATION_ERROR');
  static const ResponseStatus UNKNOWN_ERROR =
      ResponseStatus._(100, _omitEnumNames ? '' : 'UNKNOWN_ERROR');

  static const $core.List<ResponseStatus> values = <ResponseStatus>[
    SUCCESS,
    WALLET_ACCESS_DENIED,
    WALLET_EXISTS,
    ITEM_NOT_FOUND,
    SERIALIZATION_ERROR,
    UNKNOWN_ERROR,
  ];

  static final $core.Map<$core.int, ResponseStatus> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static ResponseStatus? valueOf($core.int value) => _byValue[value];

  const ResponseStatus._($core.int v, $core.String n) : super(v, n);
}

/// Enum of all supported DID Methods
/// https://docs.godiddy.com/en/supported-methods
class SupportedDidMethod extends $pb.ProtobufEnum {
  static const SupportedDidMethod KEY =
      SupportedDidMethod._(0, _omitEnumNames ? '' : 'KEY');
  static const SupportedDidMethod ION =
      SupportedDidMethod._(1, _omitEnumNames ? '' : 'ION');
  static const SupportedDidMethod INDY =
      SupportedDidMethod._(2, _omitEnumNames ? '' : 'INDY');

  static const $core.List<SupportedDidMethod> values = <SupportedDidMethod>[
    KEY,
    ION,
    INDY,
  ];

  static final $core.Map<$core.int, SupportedDidMethod> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static SupportedDidMethod? valueOf($core.int value) => _byValue[value];

  const SupportedDidMethod._($core.int v, $core.String n) : super(v, n);
}

const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
