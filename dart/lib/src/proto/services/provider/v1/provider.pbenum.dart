///
//  Generated code. Do not modify.
//  source: services/provider/v1/provider.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

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

class IonOptions_IonNetwork extends $pb.ProtobufEnum {
  static const IonOptions_IonNetwork TestNet = IonOptions_IonNetwork._(
      0,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'TestNet');
  static const IonOptions_IonNetwork MainNet = IonOptions_IonNetwork._(
      1,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'MainNet');

  static const $core.List<IonOptions_IonNetwork> values =
      <IonOptions_IonNetwork>[
    TestNet,
    MainNet,
  ];

  static final $core.Map<$core.int, IonOptions_IonNetwork> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static IonOptions_IonNetwork? valueOf($core.int value) => _byValue[value];

  const IonOptions_IonNetwork._($core.int v, $core.String n) : super(v, n);
}

class IndyOptions_IndyNetwork extends $pb.ProtobufEnum {
  static const IndyOptions_IndyNetwork Danube = IndyOptions_IndyNetwork._(
      0,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'Danube');
  static const IndyOptions_IndyNetwork SovrinBuilder =
      IndyOptions_IndyNetwork._(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'SovrinBuilder');
  static const IndyOptions_IndyNetwork SovrinStaging =
      IndyOptions_IndyNetwork._(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'SovrinStaging');
  static const IndyOptions_IndyNetwork Sovrin = IndyOptions_IndyNetwork._(
      3,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'Sovrin');
  static const IndyOptions_IndyNetwork IdUnionTest = IndyOptions_IndyNetwork._(
      4,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'IdUnionTest');
  static const IndyOptions_IndyNetwork IdUnion = IndyOptions_IndyNetwork._(
      5,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'IdUnion');
  static const IndyOptions_IndyNetwork IndicioTest = IndyOptions_IndyNetwork._(
      6,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'IndicioTest');
  static const IndyOptions_IndyNetwork IndicioDemo = IndyOptions_IndyNetwork._(
      7,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'IndicioDemo');
  static const IndyOptions_IndyNetwork Indicio = IndyOptions_IndyNetwork._(
      8,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'Indicio');

  static const $core.List<IndyOptions_IndyNetwork> values =
      <IndyOptions_IndyNetwork>[
    Danube,
    SovrinBuilder,
    SovrinStaging,
    Sovrin,
    IdUnionTest,
    IdUnion,
    IndicioTest,
    IndicioDemo,
    Indicio,
  ];

  static final $core.Map<$core.int, IndyOptions_IndyNetwork> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static IndyOptions_IndyNetwork? valueOf($core.int value) => _byValue[value];

  const IndyOptions_IndyNetwork._($core.int v, $core.String n) : super(v, n);
}
