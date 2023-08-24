//
//  Generated code. Do not modify.
//  source: services/connect/v1/connect.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// The type of verification to perform
class VerificationType extends $pb.ProtobufEnum {
  static const VerificationType GOVERNMENT_ID =
      VerificationType._(0, _omitEnumNames ? '' : 'GOVERNMENT_ID');

  static const $core.List<VerificationType> values = <VerificationType>[
    GOVERNMENT_ID,
  ];

  static final $core.Map<$core.int, VerificationType> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static VerificationType? valueOf($core.int value) => _byValue[value];

  const VerificationType._($core.int v, $core.String n) : super(v, n);
}

/// The states a VerificationSession can be in
class IDVSessionState extends $pb.ProtobufEnum {
  static const IDVSessionState IDV_CREATED =
      IDVSessionState._(0, _omitEnumNames ? '' : 'IDV_CREATED');
  static const IDVSessionState IDV_INITIATED =
      IDVSessionState._(1, _omitEnumNames ? '' : 'IDV_INITIATED');
  static const IDVSessionState IDV_AUTHENTICATING =
      IDVSessionState._(2, _omitEnumNames ? '' : 'IDV_AUTHENTICATING');
  static const IDVSessionState IDV_IN_PROGRESS =
      IDVSessionState._(3, _omitEnumNames ? '' : 'IDV_IN_PROGRESS');
  static const IDVSessionState IDV_SUCCESS =
      IDVSessionState._(4, _omitEnumNames ? '' : 'IDV_SUCCESS');
  static const IDVSessionState IDV_USER_CANCELED =
      IDVSessionState._(5, _omitEnumNames ? '' : 'IDV_USER_CANCELED');
  static const IDVSessionState IDV_EXPIRED =
      IDVSessionState._(6, _omitEnumNames ? '' : 'IDV_EXPIRED');
  static const IDVSessionState IDV_RP_CANCELED =
      IDVSessionState._(7, _omitEnumNames ? '' : 'IDV_RP_CANCELED');
  static const IDVSessionState IDV_FAILED =
      IDVSessionState._(8, _omitEnumNames ? '' : 'IDV_FAILED');

  static const $core.List<IDVSessionState> values = <IDVSessionState>[
    IDV_CREATED,
    IDV_INITIATED,
    IDV_AUTHENTICATING,
    IDV_IN_PROGRESS,
    IDV_SUCCESS,
    IDV_USER_CANCELED,
    IDV_EXPIRED,
    IDV_RP_CANCELED,
    IDV_FAILED,
  ];

  static final $core.Map<$core.int, IDVSessionState> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static IDVSessionState? valueOf($core.int value) => _byValue[value];

  const IDVSessionState._($core.int v, $core.String n) : super(v, n);
}

/// The states an individual Verification can be in
class VerificationState extends $pb.ProtobufEnum {
  static const VerificationState VERIFICATION_PENDING =
      VerificationState._(0, _omitEnumNames ? '' : 'VERIFICATION_PENDING');
  static const VerificationState VERIFICATION_PENDING_REUSE =
      VerificationState._(
          1, _omitEnumNames ? '' : 'VERIFICATION_PENDING_REUSE');
  static const VerificationState VERIFICATION_STARTED =
      VerificationState._(2, _omitEnumNames ? '' : 'VERIFICATION_STARTED');
  static const VerificationState VERIFICATION_SUCCESS =
      VerificationState._(3, _omitEnumNames ? '' : 'VERIFICATION_SUCCESS');
  static const VerificationState VERIFICATION_FAILED =
      VerificationState._(4, _omitEnumNames ? '' : 'VERIFICATION_FAILED');

  static const $core.List<VerificationState> values = <VerificationState>[
    VERIFICATION_PENDING,
    VERIFICATION_PENDING_REUSE,
    VERIFICATION_STARTED,
    VERIFICATION_SUCCESS,
    VERIFICATION_FAILED,
  ];

  static final $core.Map<$core.int, VerificationState> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static VerificationState? valueOf($core.int value) => _byValue[value];

  const VerificationState._($core.int v, $core.String n) : super(v, n);
}

const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
