//
//  Generated code. Do not modify.
//  source: services/common/v1/common.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

export 'common.pbenum.dart';

/// Nonce used to generate an oberon proof
class Nonce extends $pb.GeneratedMessage {
  factory Nonce({
    $fixnum.Int64? timestamp,
    $core.List<$core.int>? requestHash,
  }) {
    final $result = create();
    if (timestamp != null) {
      $result.timestamp = timestamp;
    }
    if (requestHash != null) {
      $result.requestHash = requestHash;
    }
    return $result;
  }
  Nonce._() : super();
  factory Nonce.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Nonce.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Nonce',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'services.common.v1'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'timestamp')
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'requestHash', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Nonce clone() => Nonce()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Nonce copyWith(void Function(Nonce) updates) =>
      super.copyWith((message) => updates(message as Nonce)) as Nonce;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Nonce create() => Nonce._();
  Nonce createEmptyInstance() => create();
  static $pb.PbList<Nonce> createRepeated() => $pb.PbList<Nonce>();
  @$core.pragma('dart2js:noInline')
  static Nonce getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Nonce>(create);
  static Nonce? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get timestamp => $_getI64(0);
  @$pb.TagNumber(1)
  set timestamp($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTimestamp() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestamp() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get requestHash => $_getN(1);
  @$pb.TagNumber(2)
  set requestHash($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasRequestHash() => $_has(1);
  @$pb.TagNumber(2)
  void clearRequestHash() => clearField(2);
}

class TrinsicClientOptions extends $pb.GeneratedMessage {
  factory TrinsicClientOptions({
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
  TrinsicClientOptions._() : super();
  factory TrinsicClientOptions.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TrinsicClientOptions.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TrinsicClientOptions',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'services.common.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'serverEndpoint')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'serverPort', $pb.PbFieldType.O3)
    ..aOB(3, _omitFieldNames ? '' : 'serverUseTls')
    ..aOS(4, _omitFieldNames ? '' : 'authToken')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TrinsicClientOptions clone() =>
      TrinsicClientOptions()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TrinsicClientOptions copyWith(void Function(TrinsicClientOptions) updates) =>
      super.copyWith((message) => updates(message as TrinsicClientOptions))
          as TrinsicClientOptions;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TrinsicClientOptions create() => TrinsicClientOptions._();
  TrinsicClientOptions createEmptyInstance() => create();
  static $pb.PbList<TrinsicClientOptions> createRepeated() =>
      $pb.PbList<TrinsicClientOptions>();
  @$core.pragma('dart2js:noInline')
  static TrinsicClientOptions getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TrinsicClientOptions>(create);
  static TrinsicClientOptions? _defaultInstance;

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
