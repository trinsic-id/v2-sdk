//
//  Generated code. Do not modify.
//  source: services/verifiable-credentials/templates/v1/templates.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class FieldType extends $pb.ProtobufEnum {
  static const FieldType STRING =
      FieldType._(0, _omitEnumNames ? '' : 'STRING');
  static const FieldType NUMBER =
      FieldType._(1, _omitEnumNames ? '' : 'NUMBER');
  static const FieldType BOOL = FieldType._(2, _omitEnumNames ? '' : 'BOOL');
  static const FieldType DATETIME =
      FieldType._(4, _omitEnumNames ? '' : 'DATETIME');
  static const FieldType URI = FieldType._(5, _omitEnumNames ? '' : 'URI');

  static const $core.List<FieldType> values = <FieldType>[
    STRING,
    NUMBER,
    BOOL,
    DATETIME,
    URI,
  ];

  static final $core.Map<$core.int, FieldType> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static FieldType? valueOf($core.int value) => _byValue[value];

  const FieldType._($core.int v, $core.String n) : super(v, n);
}

class UriRenderMethod extends $pb.ProtobufEnum {
  static const UriRenderMethod TEXT =
      UriRenderMethod._(0, _omitEnumNames ? '' : 'TEXT');
  static const UriRenderMethod LINK =
      UriRenderMethod._(1, _omitEnumNames ? '' : 'LINK');
  static const UriRenderMethod INLINE_IMAGE =
      UriRenderMethod._(2, _omitEnumNames ? '' : 'INLINE_IMAGE');

  static const $core.List<UriRenderMethod> values = <UriRenderMethod>[
    TEXT,
    LINK,
    INLINE_IMAGE,
  ];

  static final $core.Map<$core.int, UriRenderMethod> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static UriRenderMethod? valueOf($core.int value) => _byValue[value];

  const UriRenderMethod._($core.int v, $core.String n) : super(v, n);
}

class VerificationShareType extends $pb.ProtobufEnum {
  static const VerificationShareType OPTIONAL =
      VerificationShareType._(0, _omitEnumNames ? '' : 'OPTIONAL');
  static const VerificationShareType REQUIRED =
      VerificationShareType._(1, _omitEnumNames ? '' : 'REQUIRED');

  static const $core.List<VerificationShareType> values =
      <VerificationShareType>[
    OPTIONAL,
    REQUIRED,
  ];

  static final $core.Map<$core.int, VerificationShareType> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static VerificationShareType? valueOf($core.int value) => _byValue[value];

  const VerificationShareType._($core.int v, $core.String n) : super(v, n);
}

const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
