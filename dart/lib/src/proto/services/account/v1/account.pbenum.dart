//
//  Generated code. Do not modify.
//  source: services/account/v1/account.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ConfirmationMethod extends $pb.ProtobufEnum {
  static const ConfirmationMethod None =
      ConfirmationMethod._(0, _omitEnumNames ? '' : 'None');
  static const ConfirmationMethod Email =
      ConfirmationMethod._(1, _omitEnumNames ? '' : 'Email');
  static const ConfirmationMethod Sms =
      ConfirmationMethod._(2, _omitEnumNames ? '' : 'Sms');
  static const ConfirmationMethod ConnectedDevice =
      ConfirmationMethod._(3, _omitEnumNames ? '' : 'ConnectedDevice');
  static const ConfirmationMethod Other =
      ConfirmationMethod._(10, _omitEnumNames ? '' : 'Other');

  static const $core.List<ConfirmationMethod> values = <ConfirmationMethod>[
    None,
    Email,
    Sms,
    ConnectedDevice,
    Other,
  ];

  static final $core.Map<$core.int, ConfirmationMethod> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static ConfirmationMethod? valueOf($core.int value) => _byValue[value];

  const ConfirmationMethod._($core.int v, $core.String n) : super(v, n);
}

const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
