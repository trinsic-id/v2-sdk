///
//  Generated code. Do not modify.
//  source: services/options/field-options.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class SdkTemplateOption extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SdkTemplateOption',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.options'),
      createEmptyInstance: create)
    ..aOB(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'anonymous')
    ..aOB(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'ignore')
    ..aOB(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'noArguments')
    ..hasRequiredFields = false;

  SdkTemplateOption._() : super();
  factory SdkTemplateOption({
    $core.bool? anonymous,
    $core.bool? ignore,
    $core.bool? noArguments,
  }) {
    final _result = create();
    if (anonymous != null) {
      _result.anonymous = anonymous;
    }
    if (ignore != null) {
      _result.ignore = ignore;
    }
    if (noArguments != null) {
      _result.noArguments = noArguments;
    }
    return _result;
  }
  factory SdkTemplateOption.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SdkTemplateOption.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SdkTemplateOption clone() => SdkTemplateOption()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SdkTemplateOption copyWith(void Function(SdkTemplateOption) updates) =>
      super.copyWith((message) => updates(message as SdkTemplateOption))
          as SdkTemplateOption; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SdkTemplateOption create() => SdkTemplateOption._();
  SdkTemplateOption createEmptyInstance() => create();
  static $pb.PbList<SdkTemplateOption> createRepeated() =>
      $pb.PbList<SdkTemplateOption>();
  @$core.pragma('dart2js:noInline')
  static SdkTemplateOption getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SdkTemplateOption>(create);
  static SdkTemplateOption? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get anonymous => $_getBF(0);
  @$pb.TagNumber(1)
  set anonymous($core.bool v) {
    $_setBool(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasAnonymous() => $_has(0);
  @$pb.TagNumber(1)
  void clearAnonymous() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get ignore => $_getBF(1);
  @$pb.TagNumber(2)
  set ignore($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasIgnore() => $_has(1);
  @$pb.TagNumber(2)
  void clearIgnore() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get noArguments => $_getBF(2);
  @$pb.TagNumber(3)
  set noArguments($core.bool v) {
    $_setBool(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasNoArguments() => $_has(2);
  @$pb.TagNumber(3)
  void clearNoArguments() => clearField(3);
}

class Field_options {
  static final optional = $pb.Extension<$core.bool>(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'google.protobuf.FieldOptions',
      const $core.bool.fromEnvironment('protobuf.omit_field_names')
          ? ''
          : 'optional',
      60000,
      $pb.PbFieldType.OB);
  static final sdkTemplateOption = $pb.Extension<SdkTemplateOption>(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'google.protobuf.MethodOptions',
      const $core.bool.fromEnvironment('protobuf.omit_field_names')
          ? ''
          : 'sdkTemplateOption',
      60001,
      $pb.PbFieldType.OM,
      defaultOrMaker: SdkTemplateOption.getDefault,
      subBuilder: SdkTemplateOption.create);
  static void registerAllExtensions($pb.ExtensionRegistry registry) {
    registry.add(optional);
    registry.add(sdkTemplateOption);
  }
}
