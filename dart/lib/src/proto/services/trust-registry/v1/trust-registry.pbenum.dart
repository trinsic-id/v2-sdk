//
//  Generated code. Do not modify.
//  source: services/trust-registry/v1/trust-registry.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class RegistrationStatus extends $pb.ProtobufEnum {
  static const RegistrationStatus CURRENT =
      RegistrationStatus._(0, _omitEnumNames ? '' : 'CURRENT');
  static const RegistrationStatus EXPIRED =
      RegistrationStatus._(1, _omitEnumNames ? '' : 'EXPIRED');
  static const RegistrationStatus TERMINATED =
      RegistrationStatus._(2, _omitEnumNames ? '' : 'TERMINATED');
  static const RegistrationStatus REVOKED =
      RegistrationStatus._(3, _omitEnumNames ? '' : 'REVOKED');
  static const RegistrationStatus NOT_FOUND =
      RegistrationStatus._(10, _omitEnumNames ? '' : 'NOT_FOUND');

  static const $core.List<RegistrationStatus> values = <RegistrationStatus>[
    CURRENT,
    EXPIRED,
    TERMINATED,
    REVOKED,
    NOT_FOUND,
  ];

  static final $core.Map<$core.int, RegistrationStatus> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static RegistrationStatus? valueOf($core.int value) => _byValue[value];

  const RegistrationStatus._($core.int v, $core.String n) : super(v, n);
}

const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
