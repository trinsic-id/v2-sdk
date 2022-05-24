///
//  Generated code. Do not modify.
//  source: services/provider/v1/provider.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class ParticipantType extends $pb.ProtobufEnum {
  static const ParticipantType participant_type_individual = ParticipantType._(
      0,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'participant_type_individual');
  static const ParticipantType participant_type_organization =
      ParticipantType._(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'participant_type_organization');

  static const $core.List<ParticipantType> values = <ParticipantType>[
    participant_type_individual,
    participant_type_organization,
  ];

  static final $core.Map<$core.int, ParticipantType> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static ParticipantType? valueOf($core.int value) => _byValue[value];

  const ParticipantType._($core.int v, $core.String n) : super(v, n);
}

class InvitationStatusResponse_Status extends $pb.ProtobufEnum {
  static const InvitationStatusResponse_Status Error =
      InvitationStatusResponse_Status._(
          0,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'Error');
  static const InvitationStatusResponse_Status InvitationSent =
      InvitationStatusResponse_Status._(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'InvitationSent');
  static const InvitationStatusResponse_Status Completed =
      InvitationStatusResponse_Status._(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'Completed');
  static const InvitationStatusResponse_Status Expired =
      InvitationStatusResponse_Status._(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'Expired');

  static const $core.List<InvitationStatusResponse_Status> values =
      <InvitationStatusResponse_Status>[
    Error,
    InvitationSent,
    Completed,
    Expired,
  ];

  static final $core.Map<$core.int, InvitationStatusResponse_Status> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static InvitationStatusResponse_Status? valueOf($core.int value) =>
      _byValue[value];

  const InvitationStatusResponse_Status._($core.int v, $core.String n)
      : super(v, n);
}
