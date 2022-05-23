///
//  Generated code. Do not modify.
//  source: services/account/v1/account.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class ConfirmationMethod extends $pb.ProtobufEnum {
  static const ConfirmationMethod None = ConfirmationMethod._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'None');
  static const ConfirmationMethod Email = ConfirmationMethod._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Email');
  static const ConfirmationMethod Sms = ConfirmationMethod._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Sms');
  static const ConfirmationMethod ConnectedDevice = ConfirmationMethod._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ConnectedDevice');
  static const ConfirmationMethod Other = ConfirmationMethod._(10, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Other');

  static const $core.List<ConfirmationMethod> values = <ConfirmationMethod> [
    None,
    Email,
    Sms,
    ConnectedDevice,
    Other,
  ];

  static final $core.Map<$core.int, ConfirmationMethod> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ConfirmationMethod? valueOf($core.int value) => _byValue[value];

  const ConfirmationMethod._($core.int v, $core.String n) : super(v, n);
}

