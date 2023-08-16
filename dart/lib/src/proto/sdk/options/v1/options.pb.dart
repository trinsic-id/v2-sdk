//
//  Generated code. Do not modify.
//  source: sdk/options/v1/options.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// Configuration for Trinsic SDK Services
class TrinsicOptions extends $pb.GeneratedMessage {
  factory TrinsicOptions({
    $core.String? serverEndpoint,
    $core.int? serverPort,
    $core.bool? serverUseTls,
    $core.String? authToken,
  }) {
    final $result = create();
    if (serverEndpoint != null) {
      $result.serverEndpoint = serverEndpoint;
    }
    if (serverPort != null) {
      $result.serverPort = serverPort;
    }
    if (serverUseTls != null) {
      $result.serverUseTls = serverUseTls;
    }
    if (authToken != null) {
      $result.authToken = authToken;
    }
    return $result;
  }
  TrinsicOptions._() : super();
  factory TrinsicOptions.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TrinsicOptions.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TrinsicOptions',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'sdk.options.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'serverEndpoint')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'serverPort', $pb.PbFieldType.O3)
    ..aOB(3, _omitFieldNames ? '' : 'serverUseTls')
    ..aOS(4, _omitFieldNames ? '' : 'authToken')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TrinsicOptions clone() => TrinsicOptions()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TrinsicOptions copyWith(void Function(TrinsicOptions) updates) =>
      super.copyWith((message) => updates(message as TrinsicOptions))
          as TrinsicOptions;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TrinsicOptions create() => TrinsicOptions._();
  TrinsicOptions createEmptyInstance() => create();
  static $pb.PbList<TrinsicOptions> createRepeated() =>
      $pb.PbList<TrinsicOptions>();
  @$core.pragma('dart2js:noInline')
  static TrinsicOptions getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TrinsicOptions>(create);
  static TrinsicOptions? _defaultInstance;

  /// Trinsic API endpoint. Defaults to `prod.trinsic.cloud`
  @$pb.TagNumber(1)
  $core.String get serverEndpoint => $_getSZ(0);
  @$pb.TagNumber(1)
  set serverEndpoint($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasServerEndpoint() => $_has(0);
  @$pb.TagNumber(1)
  void clearServerEndpoint() => clearField(1);

  /// Trinsic API port; defaults to `443`
  @$pb.TagNumber(2)
  $core.int get serverPort => $_getIZ(1);
  @$pb.TagNumber(2)
  set serverPort($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasServerPort() => $_has(1);
  @$pb.TagNumber(2)
  void clearServerPort() => clearField(2);

  /// Whether TLS is enabled between SDK and Trinsic API; defaults to `true`
  @$pb.TagNumber(3)
  $core.bool get serverUseTls => $_getBF(2);
  @$pb.TagNumber(3)
  set serverUseTls($core.bool v) {
    $_setBool(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasServerUseTls() => $_has(2);
  @$pb.TagNumber(3)
  void clearServerUseTls() => clearField(3);

  /// Authentication token for SDK calls; defaults to empty string (unauthenticated)
  @$pb.TagNumber(4)
  $core.String get authToken => $_getSZ(3);
  @$pb.TagNumber(4)
  set authToken($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasAuthToken() => $_has(3);
  @$pb.TagNumber(4)
  void clearAuthToken() => clearField(4);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
