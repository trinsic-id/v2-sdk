///
//  Generated code. Do not modify.
//  source: services/universal-wallet/v1/universal-wallet.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class IdentityProvider extends $pb.ProtobufEnum {
  static const IdentityProvider UNKNOWN = IdentityProvider._(
      0,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'UNKNOWN');
  static const IdentityProvider EMAIL = IdentityProvider._(
      1,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'EMAIL');
  static const IdentityProvider PHONE = IdentityProvider._(
      2,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'PHONE');

  static const $core.List<IdentityProvider> values = <IdentityProvider>[
    UNKNOWN,
    EMAIL,
    PHONE,
  ];

  static final $core.Map<$core.int, IdentityProvider> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static IdentityProvider? valueOf($core.int value) => _byValue[value];

  const IdentityProvider._($core.int v, $core.String n) : super(v, n);
}
