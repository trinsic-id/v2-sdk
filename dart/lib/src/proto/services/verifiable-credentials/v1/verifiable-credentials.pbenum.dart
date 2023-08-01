//
//  Generated code. Do not modify.
//  source: services/verifiable-credentials/v1/verifiable-credentials.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class SignatureType extends $pb.ProtobufEnum {
  static const SignatureType UNSPECIFIED =
      SignatureType._(0, _omitEnumNames ? '' : 'UNSPECIFIED');
  static const SignatureType STANDARD =
      SignatureType._(1, _omitEnumNames ? '' : 'STANDARD');
  static const SignatureType EXPERIMENTAL =
      SignatureType._(2, _omitEnumNames ? '' : 'EXPERIMENTAL');

  static const $core.List<SignatureType> values = <SignatureType>[
    UNSPECIFIED,
    STANDARD,
    EXPERIMENTAL,
  ];

  static final $core.Map<$core.int, SignatureType> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static SignatureType? valueOf($core.int value) => _byValue[value];

  const SignatureType._($core.int v, $core.String n) : super(v, n);
}

const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
