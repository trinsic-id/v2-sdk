///
//  Generated code. Do not modify.
//  source: services/trust-registry/v1/trust-registry.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'trust-registry.pbenum.dart';

export 'trust-registry.pbenum.dart';

class AddFrameworkRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'AddFrameworkRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.trustregistry.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'governanceFrameworkUri')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'name')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'description')
    ..hasRequiredFields = false;

  AddFrameworkRequest._() : super();
  factory AddFrameworkRequest({
    $core.String? governanceFrameworkUri,
    $core.String? name,
    $core.String? description,
  }) {
    final _result = create();
    if (governanceFrameworkUri != null) {
      _result.governanceFrameworkUri = governanceFrameworkUri;
    }
    if (name != null) {
      _result.name = name;
    }
    if (description != null) {
      _result.description = description;
    }
    return _result;
  }
  factory AddFrameworkRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AddFrameworkRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AddFrameworkRequest clone() => AddFrameworkRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AddFrameworkRequest copyWith(void Function(AddFrameworkRequest) updates) =>
      super.copyWith((message) => updates(message as AddFrameworkRequest))
          as AddFrameworkRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddFrameworkRequest create() => AddFrameworkRequest._();
  AddFrameworkRequest createEmptyInstance() => create();
  static $pb.PbList<AddFrameworkRequest> createRepeated() =>
      $pb.PbList<AddFrameworkRequest>();
  @$core.pragma('dart2js:noInline')
  static AddFrameworkRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AddFrameworkRequest>(create);
  static AddFrameworkRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get governanceFrameworkUri => $_getSZ(0);
  @$pb.TagNumber(1)
  set governanceFrameworkUri($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasGovernanceFrameworkUri() => $_has(0);
  @$pb.TagNumber(1)
  void clearGovernanceFrameworkUri() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);
}

class AddFrameworkResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'AddFrameworkResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.trustregistry.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'id')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'governingAuthority')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'trustRegistry')
    ..hasRequiredFields = false;

  AddFrameworkResponse._() : super();
  factory AddFrameworkResponse({
    $core.String? id,
    $core.String? governingAuthority,
    $core.String? trustRegistry,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (governingAuthority != null) {
      _result.governingAuthority = governingAuthority;
    }
    if (trustRegistry != null) {
      _result.trustRegistry = trustRegistry;
    }
    return _result;
  }
  factory AddFrameworkResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AddFrameworkResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AddFrameworkResponse clone() =>
      AddFrameworkResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AddFrameworkResponse copyWith(void Function(AddFrameworkResponse) updates) =>
      super.copyWith((message) => updates(message as AddFrameworkResponse))
          as AddFrameworkResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddFrameworkResponse create() => AddFrameworkResponse._();
  AddFrameworkResponse createEmptyInstance() => create();
  static $pb.PbList<AddFrameworkResponse> createRepeated() =>
      $pb.PbList<AddFrameworkResponse>();
  @$core.pragma('dart2js:noInline')
  static AddFrameworkResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AddFrameworkResponse>(create);
  static AddFrameworkResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get governingAuthority => $_getSZ(1);
  @$pb.TagNumber(2)
  set governingAuthority($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasGoverningAuthority() => $_has(1);
  @$pb.TagNumber(2)
  void clearGoverningAuthority() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get trustRegistry => $_getSZ(2);
  @$pb.TagNumber(3)
  set trustRegistry($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasTrustRegistry() => $_has(2);
  @$pb.TagNumber(3)
  void clearTrustRegistry() => clearField(3);
}

class RemoveFrameworkRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'RemoveFrameworkRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.trustregistry.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'id')
    ..hasRequiredFields = false;

  RemoveFrameworkRequest._() : super();
  factory RemoveFrameworkRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory RemoveFrameworkRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RemoveFrameworkRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RemoveFrameworkRequest clone() =>
      RemoveFrameworkRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RemoveFrameworkRequest copyWith(
          void Function(RemoveFrameworkRequest) updates) =>
      super.copyWith((message) => updates(message as RemoveFrameworkRequest))
          as RemoveFrameworkRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RemoveFrameworkRequest create() => RemoveFrameworkRequest._();
  RemoveFrameworkRequest createEmptyInstance() => create();
  static $pb.PbList<RemoveFrameworkRequest> createRepeated() =>
      $pb.PbList<RemoveFrameworkRequest>();
  @$core.pragma('dart2js:noInline')
  static RemoveFrameworkRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RemoveFrameworkRequest>(create);
  static RemoveFrameworkRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class RemoveFrameworkResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'RemoveFrameworkResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.trustregistry.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  RemoveFrameworkResponse._() : super();
  factory RemoveFrameworkResponse() => create();
  factory RemoveFrameworkResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RemoveFrameworkResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RemoveFrameworkResponse clone() =>
      RemoveFrameworkResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RemoveFrameworkResponse copyWith(
          void Function(RemoveFrameworkResponse) updates) =>
      super.copyWith((message) => updates(message as RemoveFrameworkResponse))
          as RemoveFrameworkResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RemoveFrameworkResponse create() => RemoveFrameworkResponse._();
  RemoveFrameworkResponse createEmptyInstance() => create();
  static $pb.PbList<RemoveFrameworkResponse> createRepeated() =>
      $pb.PbList<RemoveFrameworkResponse>();
  @$core.pragma('dart2js:noInline')
  static RemoveFrameworkResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RemoveFrameworkResponse>(create);
  static RemoveFrameworkResponse? _defaultInstance;
}

class SearchRegistryRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SearchRegistryRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.trustregistry.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'query')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'continuationToken')
    ..hasRequiredFields = false;

  SearchRegistryRequest._() : super();
  factory SearchRegistryRequest({
    $core.String? query,
    $core.String? continuationToken,
  }) {
    final _result = create();
    if (query != null) {
      _result.query = query;
    }
    if (continuationToken != null) {
      _result.continuationToken = continuationToken;
    }
    return _result;
  }
  factory SearchRegistryRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SearchRegistryRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SearchRegistryRequest clone() =>
      SearchRegistryRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SearchRegistryRequest copyWith(
          void Function(SearchRegistryRequest) updates) =>
      super.copyWith((message) => updates(message as SearchRegistryRequest))
          as SearchRegistryRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SearchRegistryRequest create() => SearchRegistryRequest._();
  SearchRegistryRequest createEmptyInstance() => create();
  static $pb.PbList<SearchRegistryRequest> createRepeated() =>
      $pb.PbList<SearchRegistryRequest>();
  @$core.pragma('dart2js:noInline')
  static SearchRegistryRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SearchRegistryRequest>(create);
  static SearchRegistryRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get query => $_getSZ(0);
  @$pb.TagNumber(1)
  set query($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasQuery() => $_has(0);
  @$pb.TagNumber(1)
  void clearQuery() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get continuationToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set continuationToken($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasContinuationToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearContinuationToken() => clearField(2);
}

class SearchRegistryResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SearchRegistryResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.trustregistry.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'itemsJson')
    ..aOB(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'hasMore')
    ..aOS(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'continuationToken')
    ..hasRequiredFields = false;

  SearchRegistryResponse._() : super();
  factory SearchRegistryResponse({
    $core.String? itemsJson,
    $core.bool? hasMore,
    $core.String? continuationToken,
  }) {
    final _result = create();
    if (itemsJson != null) {
      _result.itemsJson = itemsJson;
    }
    if (hasMore != null) {
      _result.hasMore = hasMore;
    }
    if (continuationToken != null) {
      _result.continuationToken = continuationToken;
    }
    return _result;
  }
  factory SearchRegistryResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SearchRegistryResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SearchRegistryResponse clone() =>
      SearchRegistryResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SearchRegistryResponse copyWith(
          void Function(SearchRegistryResponse) updates) =>
      super.copyWith((message) => updates(message as SearchRegistryResponse))
          as SearchRegistryResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SearchRegistryResponse create() => SearchRegistryResponse._();
  SearchRegistryResponse createEmptyInstance() => create();
  static $pb.PbList<SearchRegistryResponse> createRepeated() =>
      $pb.PbList<SearchRegistryResponse>();
  @$core.pragma('dart2js:noInline')
  static SearchRegistryResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SearchRegistryResponse>(create);
  static SearchRegistryResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get itemsJson => $_getSZ(0);
  @$pb.TagNumber(1)
  set itemsJson($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasItemsJson() => $_has(0);
  @$pb.TagNumber(1)
  void clearItemsJson() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get hasMore => $_getBF(1);
  @$pb.TagNumber(2)
  set hasMore($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasHasMore() => $_has(1);
  @$pb.TagNumber(2)
  void clearHasMore() => clearField(2);

  @$pb.TagNumber(4)
  $core.String get continuationToken => $_getSZ(2);
  @$pb.TagNumber(4)
  set continuationToken($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasContinuationToken() => $_has(2);
  @$pb.TagNumber(4)
  void clearContinuationToken() => clearField(4);
}

class GovernanceFramework extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GovernanceFramework',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.trustregistry.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'governanceFrameworkUri')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'trustRegistryUri')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'description')
    ..hasRequiredFields = false;

  GovernanceFramework._() : super();
  factory GovernanceFramework({
    $core.String? governanceFrameworkUri,
    $core.String? trustRegistryUri,
    $core.String? description,
  }) {
    final _result = create();
    if (governanceFrameworkUri != null) {
      _result.governanceFrameworkUri = governanceFrameworkUri;
    }
    if (trustRegistryUri != null) {
      _result.trustRegistryUri = trustRegistryUri;
    }
    if (description != null) {
      _result.description = description;
    }
    return _result;
  }
  factory GovernanceFramework.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GovernanceFramework.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GovernanceFramework clone() => GovernanceFramework()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GovernanceFramework copyWith(void Function(GovernanceFramework) updates) =>
      super.copyWith((message) => updates(message as GovernanceFramework))
          as GovernanceFramework; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GovernanceFramework create() => GovernanceFramework._();
  GovernanceFramework createEmptyInstance() => create();
  static $pb.PbList<GovernanceFramework> createRepeated() =>
      $pb.PbList<GovernanceFramework>();
  @$core.pragma('dart2js:noInline')
  static GovernanceFramework getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GovernanceFramework>(create);
  static GovernanceFramework? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get governanceFrameworkUri => $_getSZ(0);
  @$pb.TagNumber(1)
  set governanceFrameworkUri($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasGovernanceFrameworkUri() => $_has(0);
  @$pb.TagNumber(1)
  void clearGovernanceFrameworkUri() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get trustRegistryUri => $_getSZ(1);
  @$pb.TagNumber(2)
  set trustRegistryUri($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasTrustRegistryUri() => $_has(1);
  @$pb.TagNumber(2)
  void clearTrustRegistryUri() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);
}

enum RegisterMemberRequest_Member { didUri, walletId, email, notSet }

class RegisterMemberRequest extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, RegisterMemberRequest_Member>
      _RegisterMemberRequest_MemberByTag = {
    1: RegisterMemberRequest_Member.didUri,
    3: RegisterMemberRequest_Member.walletId,
    4: RegisterMemberRequest_Member.email,
    0: RegisterMemberRequest_Member.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'RegisterMemberRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.trustregistry.v1'),
      createEmptyInstance: create)
    ..oo(0, [1, 3, 4])
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'didUri')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'walletId')
    ..aOS(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'email')
    ..aOS(
        10,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'schemaUri')
    ..a<$fixnum.Int64>(
        11,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'validFromUtc',
        $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        12,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'validUntilUtc',
        $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(
        30,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'frameworkId')
    ..hasRequiredFields = false;

  RegisterMemberRequest._() : super();
  factory RegisterMemberRequest({
    $core.String? didUri,
    $core.String? walletId,
    $core.String? email,
    $core.String? schemaUri,
    $fixnum.Int64? validFromUtc,
    $fixnum.Int64? validUntilUtc,
    $core.String? frameworkId,
  }) {
    final _result = create();
    if (didUri != null) {
      _result.didUri = didUri;
    }
    if (walletId != null) {
      _result.walletId = walletId;
    }
    if (email != null) {
      _result.email = email;
    }
    if (schemaUri != null) {
      _result.schemaUri = schemaUri;
    }
    if (validFromUtc != null) {
      _result.validFromUtc = validFromUtc;
    }
    if (validUntilUtc != null) {
      _result.validUntilUtc = validUntilUtc;
    }
    if (frameworkId != null) {
      _result.frameworkId = frameworkId;
    }
    return _result;
  }
  factory RegisterMemberRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RegisterMemberRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RegisterMemberRequest clone() =>
      RegisterMemberRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RegisterMemberRequest copyWith(
          void Function(RegisterMemberRequest) updates) =>
      super.copyWith((message) => updates(message as RegisterMemberRequest))
          as RegisterMemberRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RegisterMemberRequest create() => RegisterMemberRequest._();
  RegisterMemberRequest createEmptyInstance() => create();
  static $pb.PbList<RegisterMemberRequest> createRepeated() =>
      $pb.PbList<RegisterMemberRequest>();
  @$core.pragma('dart2js:noInline')
  static RegisterMemberRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RegisterMemberRequest>(create);
  static RegisterMemberRequest? _defaultInstance;

  RegisterMemberRequest_Member whichMember() =>
      _RegisterMemberRequest_MemberByTag[$_whichOneof(0)]!;
  void clearMember() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get didUri => $_getSZ(0);
  @$pb.TagNumber(1)
  set didUri($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasDidUri() => $_has(0);
  @$pb.TagNumber(1)
  void clearDidUri() => clearField(1);

  @$pb.TagNumber(3)
  $core.String get walletId => $_getSZ(1);
  @$pb.TagNumber(3)
  set walletId($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasWalletId() => $_has(1);
  @$pb.TagNumber(3)
  void clearWalletId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get email => $_getSZ(2);
  @$pb.TagNumber(4)
  set email($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasEmail() => $_has(2);
  @$pb.TagNumber(4)
  void clearEmail() => clearField(4);

  @$pb.TagNumber(10)
  $core.String get schemaUri => $_getSZ(3);
  @$pb.TagNumber(10)
  set schemaUri($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasSchemaUri() => $_has(3);
  @$pb.TagNumber(10)
  void clearSchemaUri() => clearField(10);

  @$pb.TagNumber(11)
  $fixnum.Int64 get validFromUtc => $_getI64(4);
  @$pb.TagNumber(11)
  set validFromUtc($fixnum.Int64 v) {
    $_setInt64(4, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasValidFromUtc() => $_has(4);
  @$pb.TagNumber(11)
  void clearValidFromUtc() => clearField(11);

  @$pb.TagNumber(12)
  $fixnum.Int64 get validUntilUtc => $_getI64(5);
  @$pb.TagNumber(12)
  set validUntilUtc($fixnum.Int64 v) {
    $_setInt64(5, v);
  }

  @$pb.TagNumber(12)
  $core.bool hasValidUntilUtc() => $_has(5);
  @$pb.TagNumber(12)
  void clearValidUntilUtc() => clearField(12);

  @$pb.TagNumber(30)
  $core.String get frameworkId => $_getSZ(6);
  @$pb.TagNumber(30)
  set frameworkId($core.String v) {
    $_setString(6, v);
  }

  @$pb.TagNumber(30)
  $core.bool hasFrameworkId() => $_has(6);
  @$pb.TagNumber(30)
  void clearFrameworkId() => clearField(30);
}

class RegisterMemberResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'RegisterMemberResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.trustregistry.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  RegisterMemberResponse._() : super();
  factory RegisterMemberResponse() => create();
  factory RegisterMemberResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RegisterMemberResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RegisterMemberResponse clone() =>
      RegisterMemberResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RegisterMemberResponse copyWith(
          void Function(RegisterMemberResponse) updates) =>
      super.copyWith((message) => updates(message as RegisterMemberResponse))
          as RegisterMemberResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RegisterMemberResponse create() => RegisterMemberResponse._();
  RegisterMemberResponse createEmptyInstance() => create();
  static $pb.PbList<RegisterMemberResponse> createRepeated() =>
      $pb.PbList<RegisterMemberResponse>();
  @$core.pragma('dart2js:noInline')
  static RegisterMemberResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RegisterMemberResponse>(create);
  static RegisterMemberResponse? _defaultInstance;
}

enum UnregisterMemberRequest_Member { didUri, walletId, email, notSet }

class UnregisterMemberRequest extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, UnregisterMemberRequest_Member>
      _UnregisterMemberRequest_MemberByTag = {
    1: UnregisterMemberRequest_Member.didUri,
    3: UnregisterMemberRequest_Member.walletId,
    4: UnregisterMemberRequest_Member.email,
    0: UnregisterMemberRequest_Member.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'UnregisterMemberRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.trustregistry.v1'),
      createEmptyInstance: create)
    ..oo(0, [1, 3, 4])
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'didUri')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'walletId')
    ..aOS(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'email')
    ..aOS(
        10,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'schemaUri')
    ..aOS(
        20,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'frameworkId')
    ..hasRequiredFields = false;

  UnregisterMemberRequest._() : super();
  factory UnregisterMemberRequest({
    $core.String? didUri,
    $core.String? walletId,
    $core.String? email,
    $core.String? schemaUri,
    $core.String? frameworkId,
  }) {
    final _result = create();
    if (didUri != null) {
      _result.didUri = didUri;
    }
    if (walletId != null) {
      _result.walletId = walletId;
    }
    if (email != null) {
      _result.email = email;
    }
    if (schemaUri != null) {
      _result.schemaUri = schemaUri;
    }
    if (frameworkId != null) {
      _result.frameworkId = frameworkId;
    }
    return _result;
  }
  factory UnregisterMemberRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UnregisterMemberRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UnregisterMemberRequest clone() =>
      UnregisterMemberRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UnregisterMemberRequest copyWith(
          void Function(UnregisterMemberRequest) updates) =>
      super.copyWith((message) => updates(message as UnregisterMemberRequest))
          as UnregisterMemberRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UnregisterMemberRequest create() => UnregisterMemberRequest._();
  UnregisterMemberRequest createEmptyInstance() => create();
  static $pb.PbList<UnregisterMemberRequest> createRepeated() =>
      $pb.PbList<UnregisterMemberRequest>();
  @$core.pragma('dart2js:noInline')
  static UnregisterMemberRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UnregisterMemberRequest>(create);
  static UnregisterMemberRequest? _defaultInstance;

  UnregisterMemberRequest_Member whichMember() =>
      _UnregisterMemberRequest_MemberByTag[$_whichOneof(0)]!;
  void clearMember() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get didUri => $_getSZ(0);
  @$pb.TagNumber(1)
  set didUri($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasDidUri() => $_has(0);
  @$pb.TagNumber(1)
  void clearDidUri() => clearField(1);

  @$pb.TagNumber(3)
  $core.String get walletId => $_getSZ(1);
  @$pb.TagNumber(3)
  set walletId($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasWalletId() => $_has(1);
  @$pb.TagNumber(3)
  void clearWalletId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get email => $_getSZ(2);
  @$pb.TagNumber(4)
  set email($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasEmail() => $_has(2);
  @$pb.TagNumber(4)
  void clearEmail() => clearField(4);

  @$pb.TagNumber(10)
  $core.String get schemaUri => $_getSZ(3);
  @$pb.TagNumber(10)
  set schemaUri($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasSchemaUri() => $_has(3);
  @$pb.TagNumber(10)
  void clearSchemaUri() => clearField(10);

  @$pb.TagNumber(20)
  $core.String get frameworkId => $_getSZ(4);
  @$pb.TagNumber(20)
  set frameworkId($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(20)
  $core.bool hasFrameworkId() => $_has(4);
  @$pb.TagNumber(20)
  void clearFrameworkId() => clearField(20);
}

class UnregisterMemberResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'UnregisterMemberResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.trustregistry.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  UnregisterMemberResponse._() : super();
  factory UnregisterMemberResponse() => create();
  factory UnregisterMemberResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UnregisterMemberResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UnregisterMemberResponse clone() =>
      UnregisterMemberResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UnregisterMemberResponse copyWith(
          void Function(UnregisterMemberResponse) updates) =>
      super.copyWith((message) => updates(message as UnregisterMemberResponse))
          as UnregisterMemberResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UnregisterMemberResponse create() => UnregisterMemberResponse._();
  UnregisterMemberResponse createEmptyInstance() => create();
  static $pb.PbList<UnregisterMemberResponse> createRepeated() =>
      $pb.PbList<UnregisterMemberResponse>();
  @$core.pragma('dart2js:noInline')
  static UnregisterMemberResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UnregisterMemberResponse>(create);
  static UnregisterMemberResponse? _defaultInstance;
}

enum GetMembershipStatusRequest_Member { didUri, x509Cert, notSet }

class GetMembershipStatusRequest extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, GetMembershipStatusRequest_Member>
      _GetMembershipStatusRequest_MemberByTag = {
    2: GetMembershipStatusRequest_Member.didUri,
    3: GetMembershipStatusRequest_Member.x509Cert,
    0: GetMembershipStatusRequest_Member.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetMembershipStatusRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.trustregistry.v1'),
      createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'governanceFrameworkUri')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'didUri')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'x509Cert')
    ..aOS(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'schemaUri')
    ..hasRequiredFields = false;

  GetMembershipStatusRequest._() : super();
  factory GetMembershipStatusRequest({
    $core.String? governanceFrameworkUri,
    $core.String? didUri,
    $core.String? x509Cert,
    $core.String? schemaUri,
  }) {
    final _result = create();
    if (governanceFrameworkUri != null) {
      _result.governanceFrameworkUri = governanceFrameworkUri;
    }
    if (didUri != null) {
      _result.didUri = didUri;
    }
    if (x509Cert != null) {
      _result.x509Cert = x509Cert;
    }
    if (schemaUri != null) {
      _result.schemaUri = schemaUri;
    }
    return _result;
  }
  factory GetMembershipStatusRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetMembershipStatusRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetMembershipStatusRequest clone() =>
      GetMembershipStatusRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetMembershipStatusRequest copyWith(
          void Function(GetMembershipStatusRequest) updates) =>
      super.copyWith(
              (message) => updates(message as GetMembershipStatusRequest))
          as GetMembershipStatusRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetMembershipStatusRequest create() => GetMembershipStatusRequest._();
  GetMembershipStatusRequest createEmptyInstance() => create();
  static $pb.PbList<GetMembershipStatusRequest> createRepeated() =>
      $pb.PbList<GetMembershipStatusRequest>();
  @$core.pragma('dart2js:noInline')
  static GetMembershipStatusRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetMembershipStatusRequest>(create);
  static GetMembershipStatusRequest? _defaultInstance;

  GetMembershipStatusRequest_Member whichMember() =>
      _GetMembershipStatusRequest_MemberByTag[$_whichOneof(0)]!;
  void clearMember() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get governanceFrameworkUri => $_getSZ(0);
  @$pb.TagNumber(1)
  set governanceFrameworkUri($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasGovernanceFrameworkUri() => $_has(0);
  @$pb.TagNumber(1)
  void clearGovernanceFrameworkUri() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get didUri => $_getSZ(1);
  @$pb.TagNumber(2)
  set didUri($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasDidUri() => $_has(1);
  @$pb.TagNumber(2)
  void clearDidUri() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get x509Cert => $_getSZ(2);
  @$pb.TagNumber(3)
  set x509Cert($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasX509Cert() => $_has(2);
  @$pb.TagNumber(3)
  void clearX509Cert() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get schemaUri => $_getSZ(3);
  @$pb.TagNumber(4)
  set schemaUri($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasSchemaUri() => $_has(3);
  @$pb.TagNumber(4)
  void clearSchemaUri() => clearField(4);
}

class GetMembershipStatusResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetMembershipStatusResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.trustregistry.v1'),
      createEmptyInstance: create)
    ..e<RegistrationStatus>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'status',
        $pb.PbFieldType.OE,
        defaultOrMaker: RegistrationStatus.CURRENT,
        valueOf: RegistrationStatus.valueOf,
        enumValues: RegistrationStatus.values)
    ..hasRequiredFields = false;

  GetMembershipStatusResponse._() : super();
  factory GetMembershipStatusResponse({
    RegistrationStatus? status,
  }) {
    final _result = create();
    if (status != null) {
      _result.status = status;
    }
    return _result;
  }
  factory GetMembershipStatusResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetMembershipStatusResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetMembershipStatusResponse clone() =>
      GetMembershipStatusResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetMembershipStatusResponse copyWith(
          void Function(GetMembershipStatusResponse) updates) =>
      super.copyWith(
              (message) => updates(message as GetMembershipStatusResponse))
          as GetMembershipStatusResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetMembershipStatusResponse create() =>
      GetMembershipStatusResponse._();
  GetMembershipStatusResponse createEmptyInstance() => create();
  static $pb.PbList<GetMembershipStatusResponse> createRepeated() =>
      $pb.PbList<GetMembershipStatusResponse>();
  @$core.pragma('dart2js:noInline')
  static GetMembershipStatusResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetMembershipStatusResponse>(create);
  static GetMembershipStatusResponse? _defaultInstance;

  @$pb.TagNumber(1)
  RegistrationStatus get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(RegistrationStatus v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class FetchDataRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'FetchDataRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.trustregistry.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'governanceFrameworkUri')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'query')
    ..hasRequiredFields = false;

  FetchDataRequest._() : super();
  factory FetchDataRequest({
    $core.String? governanceFrameworkUri,
    $core.String? query,
  }) {
    final _result = create();
    if (governanceFrameworkUri != null) {
      _result.governanceFrameworkUri = governanceFrameworkUri;
    }
    if (query != null) {
      _result.query = query;
    }
    return _result;
  }
  factory FetchDataRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory FetchDataRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  FetchDataRequest clone() => FetchDataRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  FetchDataRequest copyWith(void Function(FetchDataRequest) updates) =>
      super.copyWith((message) => updates(message as FetchDataRequest))
          as FetchDataRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FetchDataRequest create() => FetchDataRequest._();
  FetchDataRequest createEmptyInstance() => create();
  static $pb.PbList<FetchDataRequest> createRepeated() =>
      $pb.PbList<FetchDataRequest>();
  @$core.pragma('dart2js:noInline')
  static FetchDataRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FetchDataRequest>(create);
  static FetchDataRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get governanceFrameworkUri => $_getSZ(0);
  @$pb.TagNumber(1)
  set governanceFrameworkUri($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasGovernanceFrameworkUri() => $_has(0);
  @$pb.TagNumber(1)
  void clearGovernanceFrameworkUri() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get query => $_getSZ(1);
  @$pb.TagNumber(2)
  set query($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasQuery() => $_has(1);
  @$pb.TagNumber(2)
  void clearQuery() => clearField(2);
}

class FetchDataResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'FetchDataResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.trustregistry.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'responseJson')
    ..aOB(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'hasMoreResults')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'continuationToken')
    ..hasRequiredFields = false;

  FetchDataResponse._() : super();
  factory FetchDataResponse({
    $core.String? responseJson,
    $core.bool? hasMoreResults,
    $core.String? continuationToken,
  }) {
    final _result = create();
    if (responseJson != null) {
      _result.responseJson = responseJson;
    }
    if (hasMoreResults != null) {
      _result.hasMoreResults = hasMoreResults;
    }
    if (continuationToken != null) {
      _result.continuationToken = continuationToken;
    }
    return _result;
  }
  factory FetchDataResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory FetchDataResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  FetchDataResponse clone() => FetchDataResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  FetchDataResponse copyWith(void Function(FetchDataResponse) updates) =>
      super.copyWith((message) => updates(message as FetchDataResponse))
          as FetchDataResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FetchDataResponse create() => FetchDataResponse._();
  FetchDataResponse createEmptyInstance() => create();
  static $pb.PbList<FetchDataResponse> createRepeated() =>
      $pb.PbList<FetchDataResponse>();
  @$core.pragma('dart2js:noInline')
  static FetchDataResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FetchDataResponse>(create);
  static FetchDataResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get responseJson => $_getSZ(0);
  @$pb.TagNumber(1)
  set responseJson($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasResponseJson() => $_has(0);
  @$pb.TagNumber(1)
  void clearResponseJson() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get hasMoreResults => $_getBF(1);
  @$pb.TagNumber(2)
  set hasMoreResults($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasHasMoreResults() => $_has(1);
  @$pb.TagNumber(2)
  void clearHasMoreResults() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get continuationToken => $_getSZ(2);
  @$pb.TagNumber(3)
  set continuationToken($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasContinuationToken() => $_has(2);
  @$pb.TagNumber(3)
  void clearContinuationToken() => clearField(3);
}
