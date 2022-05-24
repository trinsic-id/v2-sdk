///
//  Generated code. Do not modify.
//  source: services/trust-registry/v1/trust-registry.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class RegistrationStatus extends $pb.ProtobufEnum {
  static const RegistrationStatus CURRENT = RegistrationStatus._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CURRENT');
  static const RegistrationStatus EXPIRED = RegistrationStatus._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'EXPIRED');
  static const RegistrationStatus TERMINATED = RegistrationStatus._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TERMINATED');
  static const RegistrationStatus REVOKED = RegistrationStatus._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REVOKED');
  static const RegistrationStatus NOT_FOUND = RegistrationStatus._(10, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NOT_FOUND');

  static const $core.List<RegistrationStatus> values = <RegistrationStatus> [
    CURRENT,
    EXPIRED,
    TERMINATED,
    REVOKED,
    NOT_FOUND,
  ];

  static final $core.Map<$core.int, RegistrationStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RegistrationStatus? valueOf($core.int value) => _byValue[value];

  const RegistrationStatus._($core.int v, $core.String n) : super(v, n);
}

