///
//  Generated code. Do not modify.
//  source: services/provider/v1/provider.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class IdentityProvider extends $pb.ProtobufEnum {
  static const IdentityProvider Unknown = IdentityProvider._(
      0,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'Unknown');
  static const IdentityProvider Email = IdentityProvider._(
      1,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'Email');
  static const IdentityProvider Phone = IdentityProvider._(
      2,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'Phone');

  static const $core.List<IdentityProvider> values = <IdentityProvider>[
    Unknown,
    Email,
    Phone,
  ];

  static final $core.Map<$core.int, IdentityProvider> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static IdentityProvider? valueOf($core.int value) => _byValue[value];

  const IdentityProvider._($core.int v, $core.String n) : super(v, n);
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
