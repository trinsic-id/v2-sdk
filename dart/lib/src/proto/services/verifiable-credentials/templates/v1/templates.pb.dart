///
//  Generated code. Do not modify.
//  source: services/verifiable-credentials/templates/v1/templates.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'templates.pbenum.dart';

export 'templates.pbenum.dart';

class GetCredentialTemplateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetCredentialTemplateRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.verifiablecredentials.templates.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'id')
    ..hasRequiredFields = false;

  GetCredentialTemplateRequest._() : super();
  factory GetCredentialTemplateRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory GetCredentialTemplateRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetCredentialTemplateRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetCredentialTemplateRequest clone() =>
      GetCredentialTemplateRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetCredentialTemplateRequest copyWith(
          void Function(GetCredentialTemplateRequest) updates) =>
      super.copyWith(
              (message) => updates(message as GetCredentialTemplateRequest))
          as GetCredentialTemplateRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetCredentialTemplateRequest create() =>
      GetCredentialTemplateRequest._();
  GetCredentialTemplateRequest createEmptyInstance() => create();
  static $pb.PbList<GetCredentialTemplateRequest> createRepeated() =>
      $pb.PbList<GetCredentialTemplateRequest>();
  @$core.pragma('dart2js:noInline')
  static GetCredentialTemplateRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetCredentialTemplateRequest>(create);
  static GetCredentialTemplateRequest? _defaultInstance;

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

class GetCredentialTemplateResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetCredentialTemplateResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.verifiablecredentials.templates.v1'),
      createEmptyInstance: create)
    ..aOM<TemplateData>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'template',
        subBuilder: TemplateData.create)
    ..hasRequiredFields = false;

  GetCredentialTemplateResponse._() : super();
  factory GetCredentialTemplateResponse({
    TemplateData? template,
  }) {
    final _result = create();
    if (template != null) {
      _result.template = template;
    }
    return _result;
  }
  factory GetCredentialTemplateResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetCredentialTemplateResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetCredentialTemplateResponse clone() =>
      GetCredentialTemplateResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetCredentialTemplateResponse copyWith(
          void Function(GetCredentialTemplateResponse) updates) =>
      super.copyWith(
              (message) => updates(message as GetCredentialTemplateResponse))
          as GetCredentialTemplateResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetCredentialTemplateResponse create() =>
      GetCredentialTemplateResponse._();
  GetCredentialTemplateResponse createEmptyInstance() => create();
  static $pb.PbList<GetCredentialTemplateResponse> createRepeated() =>
      $pb.PbList<GetCredentialTemplateResponse>();
  @$core.pragma('dart2js:noInline')
  static GetCredentialTemplateResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetCredentialTemplateResponse>(create);
  static GetCredentialTemplateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  TemplateData get template => $_getN(0);
  @$pb.TagNumber(1)
  set template(TemplateData v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTemplate() => $_has(0);
  @$pb.TagNumber(1)
  void clearTemplate() => clearField(1);
  @$pb.TagNumber(1)
  TemplateData ensureTemplate() => $_ensure(0);
}

class SearchCredentialTemplatesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SearchCredentialTemplatesRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.verifiablecredentials.templates.v1'),
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

  SearchCredentialTemplatesRequest._() : super();
  factory SearchCredentialTemplatesRequest({
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
  factory SearchCredentialTemplatesRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SearchCredentialTemplatesRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SearchCredentialTemplatesRequest clone() =>
      SearchCredentialTemplatesRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SearchCredentialTemplatesRequest copyWith(
          void Function(SearchCredentialTemplatesRequest) updates) =>
      super.copyWith(
              (message) => updates(message as SearchCredentialTemplatesRequest))
          as SearchCredentialTemplatesRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SearchCredentialTemplatesRequest create() =>
      SearchCredentialTemplatesRequest._();
  SearchCredentialTemplatesRequest createEmptyInstance() => create();
  static $pb.PbList<SearchCredentialTemplatesRequest> createRepeated() =>
      $pb.PbList<SearchCredentialTemplatesRequest>();
  @$core.pragma('dart2js:noInline')
  static SearchCredentialTemplatesRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SearchCredentialTemplatesRequest>(
          create);
  static SearchCredentialTemplatesRequest? _defaultInstance;

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

class SearchCredentialTemplatesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SearchCredentialTemplatesResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.verifiablecredentials.templates.v1'),
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

  SearchCredentialTemplatesResponse._() : super();
  factory SearchCredentialTemplatesResponse({
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
  factory SearchCredentialTemplatesResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SearchCredentialTemplatesResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SearchCredentialTemplatesResponse clone() =>
      SearchCredentialTemplatesResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SearchCredentialTemplatesResponse copyWith(
          void Function(SearchCredentialTemplatesResponse) updates) =>
      super.copyWith((message) =>
              updates(message as SearchCredentialTemplatesResponse))
          as SearchCredentialTemplatesResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SearchCredentialTemplatesResponse create() =>
      SearchCredentialTemplatesResponse._();
  SearchCredentialTemplatesResponse createEmptyInstance() => create();
  static $pb.PbList<SearchCredentialTemplatesResponse> createRepeated() =>
      $pb.PbList<SearchCredentialTemplatesResponse>();
  @$core.pragma('dart2js:noInline')
  static SearchCredentialTemplatesResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SearchCredentialTemplatesResponse>(
          create);
  static SearchCredentialTemplatesResponse? _defaultInstance;

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

class ListCredentialTemplatesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ListCredentialTemplatesRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.verifiablecredentials.templates.v1'),
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

  ListCredentialTemplatesRequest._() : super();
  factory ListCredentialTemplatesRequest({
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
  factory ListCredentialTemplatesRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListCredentialTemplatesRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListCredentialTemplatesRequest clone() =>
      ListCredentialTemplatesRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListCredentialTemplatesRequest copyWith(
          void Function(ListCredentialTemplatesRequest) updates) =>
      super.copyWith(
              (message) => updates(message as ListCredentialTemplatesRequest))
          as ListCredentialTemplatesRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListCredentialTemplatesRequest create() =>
      ListCredentialTemplatesRequest._();
  ListCredentialTemplatesRequest createEmptyInstance() => create();
  static $pb.PbList<ListCredentialTemplatesRequest> createRepeated() =>
      $pb.PbList<ListCredentialTemplatesRequest>();
  @$core.pragma('dart2js:noInline')
  static ListCredentialTemplatesRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListCredentialTemplatesRequest>(create);
  static ListCredentialTemplatesRequest? _defaultInstance;

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

class ListCredentialTemplatesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ListCredentialTemplatesResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.verifiablecredentials.templates.v1'),
      createEmptyInstance: create)
    ..pc<TemplateData>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'templates',
        $pb.PbFieldType.PM,
        subBuilder: TemplateData.create)
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

  ListCredentialTemplatesResponse._() : super();
  factory ListCredentialTemplatesResponse({
    $core.Iterable<TemplateData>? templates,
    $core.bool? hasMoreResults,
    $core.String? continuationToken,
  }) {
    final _result = create();
    if (templates != null) {
      _result.templates.addAll(templates);
    }
    if (hasMoreResults != null) {
      _result.hasMoreResults = hasMoreResults;
    }
    if (continuationToken != null) {
      _result.continuationToken = continuationToken;
    }
    return _result;
  }
  factory ListCredentialTemplatesResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListCredentialTemplatesResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListCredentialTemplatesResponse clone() =>
      ListCredentialTemplatesResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListCredentialTemplatesResponse copyWith(
          void Function(ListCredentialTemplatesResponse) updates) =>
      super.copyWith(
              (message) => updates(message as ListCredentialTemplatesResponse))
          as ListCredentialTemplatesResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListCredentialTemplatesResponse create() =>
      ListCredentialTemplatesResponse._();
  ListCredentialTemplatesResponse createEmptyInstance() => create();
  static $pb.PbList<ListCredentialTemplatesResponse> createRepeated() =>
      $pb.PbList<ListCredentialTemplatesResponse>();
  @$core.pragma('dart2js:noInline')
  static ListCredentialTemplatesResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListCredentialTemplatesResponse>(
          create);
  static ListCredentialTemplatesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TemplateData> get templates => $_getList(0);

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

class DeleteCredentialTemplateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'DeleteCredentialTemplateRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.verifiablecredentials.templates.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'id')
    ..hasRequiredFields = false;

  DeleteCredentialTemplateRequest._() : super();
  factory DeleteCredentialTemplateRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory DeleteCredentialTemplateRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeleteCredentialTemplateRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DeleteCredentialTemplateRequest clone() =>
      DeleteCredentialTemplateRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DeleteCredentialTemplateRequest copyWith(
          void Function(DeleteCredentialTemplateRequest) updates) =>
      super.copyWith(
              (message) => updates(message as DeleteCredentialTemplateRequest))
          as DeleteCredentialTemplateRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteCredentialTemplateRequest create() =>
      DeleteCredentialTemplateRequest._();
  DeleteCredentialTemplateRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteCredentialTemplateRequest> createRepeated() =>
      $pb.PbList<DeleteCredentialTemplateRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteCredentialTemplateRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteCredentialTemplateRequest>(
          create);
  static DeleteCredentialTemplateRequest? _defaultInstance;

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

class DeleteCredentialTemplateResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'DeleteCredentialTemplateResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.verifiablecredentials.templates.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  DeleteCredentialTemplateResponse._() : super();
  factory DeleteCredentialTemplateResponse() => create();
  factory DeleteCredentialTemplateResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeleteCredentialTemplateResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DeleteCredentialTemplateResponse clone() =>
      DeleteCredentialTemplateResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DeleteCredentialTemplateResponse copyWith(
          void Function(DeleteCredentialTemplateResponse) updates) =>
      super.copyWith(
              (message) => updates(message as DeleteCredentialTemplateResponse))
          as DeleteCredentialTemplateResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteCredentialTemplateResponse create() =>
      DeleteCredentialTemplateResponse._();
  DeleteCredentialTemplateResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteCredentialTemplateResponse> createRepeated() =>
      $pb.PbList<DeleteCredentialTemplateResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteCredentialTemplateResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteCredentialTemplateResponse>(
          create);
  static DeleteCredentialTemplateResponse? _defaultInstance;
}

class CreateCredentialTemplateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'CreateCredentialTemplateRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.verifiablecredentials.templates.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'name')
    ..m<$core.String, TemplateField>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'fields',
        entryClassName: 'CreateCredentialTemplateRequest.FieldsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: TemplateField.create,
        packageName: const $pb.PackageName(
            'services.verifiablecredentials.templates.v1'))
    ..aOB(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'allowAdditionalFields')
    ..hasRequiredFields = false;

  CreateCredentialTemplateRequest._() : super();
  factory CreateCredentialTemplateRequest({
    $core.String? name,
    $core.Map<$core.String, TemplateField>? fields,
    $core.bool? allowAdditionalFields,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (fields != null) {
      _result.fields.addAll(fields);
    }
    if (allowAdditionalFields != null) {
      _result.allowAdditionalFields = allowAdditionalFields;
    }
    return _result;
  }
  factory CreateCredentialTemplateRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreateCredentialTemplateRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CreateCredentialTemplateRequest clone() =>
      CreateCredentialTemplateRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CreateCredentialTemplateRequest copyWith(
          void Function(CreateCredentialTemplateRequest) updates) =>
      super.copyWith(
              (message) => updates(message as CreateCredentialTemplateRequest))
          as CreateCredentialTemplateRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateCredentialTemplateRequest create() =>
      CreateCredentialTemplateRequest._();
  CreateCredentialTemplateRequest createEmptyInstance() => create();
  static $pb.PbList<CreateCredentialTemplateRequest> createRepeated() =>
      $pb.PbList<CreateCredentialTemplateRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateCredentialTemplateRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateCredentialTemplateRequest>(
          create);
  static CreateCredentialTemplateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.Map<$core.String, TemplateField> get fields => $_getMap(1);

  @$pb.TagNumber(3)
  $core.bool get allowAdditionalFields => $_getBF(2);
  @$pb.TagNumber(3)
  set allowAdditionalFields($core.bool v) {
    $_setBool(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasAllowAdditionalFields() => $_has(2);
  @$pb.TagNumber(3)
  void clearAllowAdditionalFields() => clearField(3);
}

class CreateCredentialTemplateResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'CreateCredentialTemplateResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.verifiablecredentials.templates.v1'),
      createEmptyInstance: create)
    ..aOM<TemplateData>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'data',
        subBuilder: TemplateData.create)
    ..hasRequiredFields = false;

  CreateCredentialTemplateResponse._() : super();
  factory CreateCredentialTemplateResponse({
    TemplateData? data,
  }) {
    final _result = create();
    if (data != null) {
      _result.data = data;
    }
    return _result;
  }
  factory CreateCredentialTemplateResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreateCredentialTemplateResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CreateCredentialTemplateResponse clone() =>
      CreateCredentialTemplateResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CreateCredentialTemplateResponse copyWith(
          void Function(CreateCredentialTemplateResponse) updates) =>
      super.copyWith(
              (message) => updates(message as CreateCredentialTemplateResponse))
          as CreateCredentialTemplateResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateCredentialTemplateResponse create() =>
      CreateCredentialTemplateResponse._();
  CreateCredentialTemplateResponse createEmptyInstance() => create();
  static $pb.PbList<CreateCredentialTemplateResponse> createRepeated() =>
      $pb.PbList<CreateCredentialTemplateResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateCredentialTemplateResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateCredentialTemplateResponse>(
          create);
  static CreateCredentialTemplateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  TemplateData get data => $_getN(0);
  @$pb.TagNumber(1)
  set data(TemplateData v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => clearField(1);
  @$pb.TagNumber(1)
  TemplateData ensureData() => $_ensure(0);
}

class TemplateField extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'TemplateField',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.verifiablecredentials.templates.v1'),
      createEmptyInstance: create)
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'description')
    ..aOB(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'optional')
    ..e<FieldType>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'type',
        $pb.PbFieldType.OE,
        defaultOrMaker: FieldType.STRING,
        valueOf: FieldType.valueOf,
        enumValues: FieldType.values)
    ..m<$core.String, $core.String>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'annotations',
        entryClassName: 'TemplateField.AnnotationsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName(
            'services.verifiablecredentials.templates.v1'))
    ..hasRequiredFields = false;

  TemplateField._() : super();
  factory TemplateField({
    $core.String? description,
    $core.bool? optional,
    FieldType? type,
    $core.Map<$core.String, $core.String>? annotations,
  }) {
    final _result = create();
    if (description != null) {
      _result.description = description;
    }
    if (optional != null) {
      _result.optional = optional;
    }
    if (type != null) {
      _result.type = type;
    }
    if (annotations != null) {
      _result.annotations.addAll(annotations);
    }
    return _result;
  }
  factory TemplateField.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TemplateField.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TemplateField clone() => TemplateField()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TemplateField copyWith(void Function(TemplateField) updates) =>
      super.copyWith((message) => updates(message as TemplateField))
          as TemplateField; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TemplateField create() => TemplateField._();
  TemplateField createEmptyInstance() => create();
  static $pb.PbList<TemplateField> createRepeated() =>
      $pb.PbList<TemplateField>();
  @$core.pragma('dart2js:noInline')
  static TemplateField getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TemplateField>(create);
  static TemplateField? _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(0);
  @$pb.TagNumber(2)
  set description($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(0);
  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get optional => $_getBF(1);
  @$pb.TagNumber(3)
  set optional($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasOptional() => $_has(1);
  @$pb.TagNumber(3)
  void clearOptional() => clearField(3);

  @$pb.TagNumber(4)
  FieldType get type => $_getN(2);
  @$pb.TagNumber(4)
  set type(FieldType v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(4)
  void clearType() => clearField(4);

  @$pb.TagNumber(5)
  $core.Map<$core.String, $core.String> get annotations => $_getMap(3);
}

class GetTemplateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetTemplateRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.verifiablecredentials.templates.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'id')
    ..hasRequiredFields = false;

  GetTemplateRequest._() : super();
  factory GetTemplateRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory GetTemplateRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetTemplateRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetTemplateRequest clone() => GetTemplateRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetTemplateRequest copyWith(void Function(GetTemplateRequest) updates) =>
      super.copyWith((message) => updates(message as GetTemplateRequest))
          as GetTemplateRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetTemplateRequest create() => GetTemplateRequest._();
  GetTemplateRequest createEmptyInstance() => create();
  static $pb.PbList<GetTemplateRequest> createRepeated() =>
      $pb.PbList<GetTemplateRequest>();
  @$core.pragma('dart2js:noInline')
  static GetTemplateRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetTemplateRequest>(create);
  static GetTemplateRequest? _defaultInstance;

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

class GetTemplateResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetTemplateResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.verifiablecredentials.templates.v1'),
      createEmptyInstance: create)
    ..aOM<TemplateData>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'data',
        subBuilder: TemplateData.create)
    ..hasRequiredFields = false;

  GetTemplateResponse._() : super();
  factory GetTemplateResponse({
    TemplateData? data,
  }) {
    final _result = create();
    if (data != null) {
      _result.data = data;
    }
    return _result;
  }
  factory GetTemplateResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetTemplateResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetTemplateResponse clone() => GetTemplateResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetTemplateResponse copyWith(void Function(GetTemplateResponse) updates) =>
      super.copyWith((message) => updates(message as GetTemplateResponse))
          as GetTemplateResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetTemplateResponse create() => GetTemplateResponse._();
  GetTemplateResponse createEmptyInstance() => create();
  static $pb.PbList<GetTemplateResponse> createRepeated() =>
      $pb.PbList<GetTemplateResponse>();
  @$core.pragma('dart2js:noInline')
  static GetTemplateResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetTemplateResponse>(create);
  static GetTemplateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  TemplateData get data => $_getN(0);
  @$pb.TagNumber(1)
  set data(TemplateData v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => clearField(1);
  @$pb.TagNumber(1)
  TemplateData ensureData() => $_ensure(0);
}

class ListTemplatesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ListTemplatesRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.verifiablecredentials.templates.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  ListTemplatesRequest._() : super();
  factory ListTemplatesRequest() => create();
  factory ListTemplatesRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListTemplatesRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListTemplatesRequest clone() =>
      ListTemplatesRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListTemplatesRequest copyWith(void Function(ListTemplatesRequest) updates) =>
      super.copyWith((message) => updates(message as ListTemplatesRequest))
          as ListTemplatesRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListTemplatesRequest create() => ListTemplatesRequest._();
  ListTemplatesRequest createEmptyInstance() => create();
  static $pb.PbList<ListTemplatesRequest> createRepeated() =>
      $pb.PbList<ListTemplatesRequest>();
  @$core.pragma('dart2js:noInline')
  static ListTemplatesRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListTemplatesRequest>(create);
  static ListTemplatesRequest? _defaultInstance;
}

class ListTemplatesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ListTemplatesResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.verifiablecredentials.templates.v1'),
      createEmptyInstance: create)
    ..pc<TemplateData>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'templates',
        $pb.PbFieldType.PM,
        subBuilder: TemplateData.create)
    ..hasRequiredFields = false;

  ListTemplatesResponse._() : super();
  factory ListTemplatesResponse({
    $core.Iterable<TemplateData>? templates,
  }) {
    final _result = create();
    if (templates != null) {
      _result.templates.addAll(templates);
    }
    return _result;
  }
  factory ListTemplatesResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListTemplatesResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListTemplatesResponse clone() =>
      ListTemplatesResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListTemplatesResponse copyWith(
          void Function(ListTemplatesResponse) updates) =>
      super.copyWith((message) => updates(message as ListTemplatesResponse))
          as ListTemplatesResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListTemplatesResponse create() => ListTemplatesResponse._();
  ListTemplatesResponse createEmptyInstance() => create();
  static $pb.PbList<ListTemplatesResponse> createRepeated() =>
      $pb.PbList<ListTemplatesResponse>();
  @$core.pragma('dart2js:noInline')
  static ListTemplatesResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListTemplatesResponse>(create);
  static ListTemplatesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TemplateData> get templates => $_getList(0);
}

class TemplateData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'TemplateData',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.verifiablecredentials.templates.v1'),
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
            : 'name')
    ..a<$core.int>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'version',
        $pb.PbFieldType.O3)
    ..m<$core.String, TemplateField>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'fields',
        entryClassName: 'TemplateData.FieldsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: TemplateField.create,
        packageName: const $pb.PackageName(
            'services.verifiablecredentials.templates.v1'))
    ..aOB(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'allowAdditionalFields')
    ..aOS(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'schemaUri')
    ..aOS(
        7,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'contextUri')
    ..aOS(
        8,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'ecosystemId')
    ..aOS(
        9,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'type')
    ..aOS(
        10,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'createdBy')
    ..aOS(
        11,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'dateCreated')
    ..hasRequiredFields = false;

  TemplateData._() : super();
  factory TemplateData({
    $core.String? id,
    $core.String? name,
    $core.int? version,
    $core.Map<$core.String, TemplateField>? fields,
    $core.bool? allowAdditionalFields,
    $core.String? schemaUri,
    $core.String? contextUri,
    $core.String? ecosystemId,
    $core.String? type,
    $core.String? createdBy,
    $core.String? dateCreated,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    if (version != null) {
      _result.version = version;
    }
    if (fields != null) {
      _result.fields.addAll(fields);
    }
    if (allowAdditionalFields != null) {
      _result.allowAdditionalFields = allowAdditionalFields;
    }
    if (schemaUri != null) {
      _result.schemaUri = schemaUri;
    }
    if (contextUri != null) {
      _result.contextUri = contextUri;
    }
    if (ecosystemId != null) {
      _result.ecosystemId = ecosystemId;
    }
    if (type != null) {
      _result.type = type;
    }
    if (createdBy != null) {
      _result.createdBy = createdBy;
    }
    if (dateCreated != null) {
      _result.dateCreated = dateCreated;
    }
    return _result;
  }
  factory TemplateData.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TemplateData.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TemplateData clone() => TemplateData()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TemplateData copyWith(void Function(TemplateData) updates) =>
      super.copyWith((message) => updates(message as TemplateData))
          as TemplateData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TemplateData create() => TemplateData._();
  TemplateData createEmptyInstance() => create();
  static $pb.PbList<TemplateData> createRepeated() =>
      $pb.PbList<TemplateData>();
  @$core.pragma('dart2js:noInline')
  static TemplateData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TemplateData>(create);
  static TemplateData? _defaultInstance;

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
  $core.int get version => $_getIZ(2);
  @$pb.TagNumber(3)
  set version($core.int v) {
    $_setSignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearVersion() => clearField(3);

  @$pb.TagNumber(4)
  $core.Map<$core.String, TemplateField> get fields => $_getMap(3);

  @$pb.TagNumber(5)
  $core.bool get allowAdditionalFields => $_getBF(4);
  @$pb.TagNumber(5)
  set allowAdditionalFields($core.bool v) {
    $_setBool(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasAllowAdditionalFields() => $_has(4);
  @$pb.TagNumber(5)
  void clearAllowAdditionalFields() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get schemaUri => $_getSZ(5);
  @$pb.TagNumber(6)
  set schemaUri($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasSchemaUri() => $_has(5);
  @$pb.TagNumber(6)
  void clearSchemaUri() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get contextUri => $_getSZ(6);
  @$pb.TagNumber(7)
  set contextUri($core.String v) {
    $_setString(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasContextUri() => $_has(6);
  @$pb.TagNumber(7)
  void clearContextUri() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get ecosystemId => $_getSZ(7);
  @$pb.TagNumber(8)
  set ecosystemId($core.String v) {
    $_setString(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasEcosystemId() => $_has(7);
  @$pb.TagNumber(8)
  void clearEcosystemId() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get type => $_getSZ(8);
  @$pb.TagNumber(9)
  set type($core.String v) {
    $_setString(8, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasType() => $_has(8);
  @$pb.TagNumber(9)
  void clearType() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get createdBy => $_getSZ(9);
  @$pb.TagNumber(10)
  set createdBy($core.String v) {
    $_setString(9, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasCreatedBy() => $_has(9);
  @$pb.TagNumber(10)
  void clearCreatedBy() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get dateCreated => $_getSZ(10);
  @$pb.TagNumber(11)
  set dateCreated($core.String v) {
    $_setString(10, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasDateCreated() => $_has(10);
  @$pb.TagNumber(11)
  void clearDateCreated() => clearField(11);
}
