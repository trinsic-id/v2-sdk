///
//  Generated code. Do not modify.
//  source: services/verifiable-credentials/templates/v1/templates.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class FieldType extends $pb.ProtobufEnum {
  static const FieldType STRING = FieldType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'STRING');
  static const FieldType NUMBER = FieldType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NUMBER');
  static const FieldType BOOL = FieldType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BOOL');
  static const FieldType DATETIME = FieldType._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DATETIME');

  static const $core.List<FieldType> values = <FieldType> [
    STRING,
    NUMBER,
    BOOL,
    DATETIME,
  ];

  static final $core.Map<$core.int, FieldType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static FieldType? valueOf($core.int value) => _byValue[value];

  const FieldType._($core.int v, $core.String n) : super(v, n);
}

