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
            : 'hasMoreResults')
    ..aOS(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'continuationToken')
    ..hasRequiredFields = false;

  SearchCredentialTemplatesResponse._() : super();
  factory SearchCredentialTemplatesResponse({
    $core.String? itemsJson,
    $core.bool? hasMoreResults,
    $core.String? continuationToken,
  }) {
    final _result = create();
    if (itemsJson != null) {
      _result.itemsJson = itemsJson;
    }
    if (hasMoreResults != null) {
      _result.hasMoreResults = hasMoreResults;
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
  $core.bool get hasMoreResults => $_getBF(1);
  @$pb.TagNumber(2)
  set hasMoreResults($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasHasMoreResults() => $_has(1);
  @$pb.TagNumber(2)
  void clearHasMoreResults() => clearField(2);

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
    ..aOS(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'title')
    ..aOS(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'description')
    ..m<$core.String, FieldOrdering>(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'fieldOrdering',
        entryClassName: 'CreateCredentialTemplateRequest.FieldOrderingEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: FieldOrdering.create,
        packageName: const $pb.PackageName(
            'services.verifiablecredentials.templates.v1'))
    ..aOM<AppleWalletOptions>(
        7,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'appleWalletOptions',
        subBuilder: AppleWalletOptions.create)
    ..hasRequiredFields = false;

  CreateCredentialTemplateRequest._() : super();
  factory CreateCredentialTemplateRequest({
    $core.String? name,
    $core.Map<$core.String, TemplateField>? fields,
    $core.bool? allowAdditionalFields,
    $core.String? title,
    $core.String? description,
    $core.Map<$core.String, FieldOrdering>? fieldOrdering,
    AppleWalletOptions? appleWalletOptions,
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
    if (title != null) {
      _result.title = title;
    }
    if (description != null) {
      _result.description = description;
    }
    if (fieldOrdering != null) {
      _result.fieldOrdering.addAll(fieldOrdering);
    }
    if (appleWalletOptions != null) {
      _result.appleWalletOptions = appleWalletOptions;
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

  @$pb.TagNumber(4)
  $core.String get title => $_getSZ(3);
  @$pb.TagNumber(4)
  set title($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasTitle() => $_has(3);
  @$pb.TagNumber(4)
  void clearTitle() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get description => $_getSZ(4);
  @$pb.TagNumber(5)
  set description($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasDescription() => $_has(4);
  @$pb.TagNumber(5)
  void clearDescription() => clearField(5);

  @$pb.TagNumber(6)
  $core.Map<$core.String, FieldOrdering> get fieldOrdering => $_getMap(5);

  @$pb.TagNumber(7)
  AppleWalletOptions get appleWalletOptions => $_getN(6);
  @$pb.TagNumber(7)
  set appleWalletOptions(AppleWalletOptions v) {
    setField(7, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasAppleWalletOptions() => $_has(6);
  @$pb.TagNumber(7)
  void clearAppleWalletOptions() => clearField(7);
  @$pb.TagNumber(7)
  AppleWalletOptions ensureAppleWalletOptions() => $_ensure(6);
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

class UpdateCredentialTemplateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'UpdateCredentialTemplateRequest',
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
            : 'title')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'description')
    ..m<$core.String, TemplateFieldPatch>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'fields',
        entryClassName: 'UpdateCredentialTemplateRequest.FieldsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: TemplateFieldPatch.create,
        packageName: const $pb.PackageName(
            'services.verifiablecredentials.templates.v1'))
    ..m<$core.String, FieldOrdering>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'fieldOrdering',
        entryClassName: 'UpdateCredentialTemplateRequest.FieldOrderingEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: FieldOrdering.create,
        packageName: const $pb.PackageName(
            'services.verifiablecredentials.templates.v1'))
    ..aOM<AppleWalletOptions>(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'appleWalletOptions',
        subBuilder: AppleWalletOptions.create)
    ..hasRequiredFields = false;

  UpdateCredentialTemplateRequest._() : super();
  factory UpdateCredentialTemplateRequest({
    $core.String? id,
    $core.String? title,
    $core.String? description,
    $core.Map<$core.String, TemplateFieldPatch>? fields,
    $core.Map<$core.String, FieldOrdering>? fieldOrdering,
    AppleWalletOptions? appleWalletOptions,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (title != null) {
      _result.title = title;
    }
    if (description != null) {
      _result.description = description;
    }
    if (fields != null) {
      _result.fields.addAll(fields);
    }
    if (fieldOrdering != null) {
      _result.fieldOrdering.addAll(fieldOrdering);
    }
    if (appleWalletOptions != null) {
      _result.appleWalletOptions = appleWalletOptions;
    }
    return _result;
  }
  factory UpdateCredentialTemplateRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UpdateCredentialTemplateRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UpdateCredentialTemplateRequest clone() =>
      UpdateCredentialTemplateRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UpdateCredentialTemplateRequest copyWith(
          void Function(UpdateCredentialTemplateRequest) updates) =>
      super.copyWith(
              (message) => updates(message as UpdateCredentialTemplateRequest))
          as UpdateCredentialTemplateRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateCredentialTemplateRequest create() =>
      UpdateCredentialTemplateRequest._();
  UpdateCredentialTemplateRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateCredentialTemplateRequest> createRepeated() =>
      $pb.PbList<UpdateCredentialTemplateRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateCredentialTemplateRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateCredentialTemplateRequest>(
          create);
  static UpdateCredentialTemplateRequest? _defaultInstance;

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
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

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

  @$pb.TagNumber(4)
  $core.Map<$core.String, TemplateFieldPatch> get fields => $_getMap(3);

  @$pb.TagNumber(5)
  $core.Map<$core.String, FieldOrdering> get fieldOrdering => $_getMap(4);

  @$pb.TagNumber(6)
  AppleWalletOptions get appleWalletOptions => $_getN(5);
  @$pb.TagNumber(6)
  set appleWalletOptions(AppleWalletOptions v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasAppleWalletOptions() => $_has(5);
  @$pb.TagNumber(6)
  void clearAppleWalletOptions() => clearField(6);
  @$pb.TagNumber(6)
  AppleWalletOptions ensureAppleWalletOptions() => $_ensure(5);
}

class UpdateCredentialTemplateResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'UpdateCredentialTemplateResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.verifiablecredentials.templates.v1'),
      createEmptyInstance: create)
    ..aOM<TemplateData>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'updatedTemplate',
        subBuilder: TemplateData.create)
    ..hasRequiredFields = false;

  UpdateCredentialTemplateResponse._() : super();
  factory UpdateCredentialTemplateResponse({
    TemplateData? updatedTemplate,
  }) {
    final _result = create();
    if (updatedTemplate != null) {
      _result.updatedTemplate = updatedTemplate;
    }
    return _result;
  }
  factory UpdateCredentialTemplateResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UpdateCredentialTemplateResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UpdateCredentialTemplateResponse clone() =>
      UpdateCredentialTemplateResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UpdateCredentialTemplateResponse copyWith(
          void Function(UpdateCredentialTemplateResponse) updates) =>
      super.copyWith(
              (message) => updates(message as UpdateCredentialTemplateResponse))
          as UpdateCredentialTemplateResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateCredentialTemplateResponse create() =>
      UpdateCredentialTemplateResponse._();
  UpdateCredentialTemplateResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateCredentialTemplateResponse> createRepeated() =>
      $pb.PbList<UpdateCredentialTemplateResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateCredentialTemplateResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateCredentialTemplateResponse>(
          create);
  static UpdateCredentialTemplateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  TemplateData get updatedTemplate => $_getN(0);
  @$pb.TagNumber(1)
  set updatedTemplate(TemplateData v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasUpdatedTemplate() => $_has(0);
  @$pb.TagNumber(1)
  void clearUpdatedTemplate() => clearField(1);
  @$pb.TagNumber(1)
  TemplateData ensureUpdatedTemplate() => $_ensure(0);
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
    ..aOS(
        12,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'title')
    ..aOS(
        13,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'description')
    ..m<$core.String, FieldOrdering>(
        14,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'fieldOrdering',
        entryClassName: 'TemplateData.FieldOrderingEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: FieldOrdering.create,
        packageName: const $pb.PackageName(
            'services.verifiablecredentials.templates.v1'))
    ..aOM<AppleWalletOptions>(
        15,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'appleWalletOptions',
        subBuilder: AppleWalletOptions.create)
    ..hasRequiredFields = false;

  TemplateData._() : super();
  factory TemplateData({
    $core.String? id,
    $core.String? name,
    $core.int? version,
    $core.Map<$core.String, TemplateField>? fields,
    $core.bool? allowAdditionalFields,
    $core.String? schemaUri,
    @$core.Deprecated('This field is deprecated.') $core.String? contextUri,
    $core.String? ecosystemId,
    $core.String? type,
    $core.String? createdBy,
    $core.String? dateCreated,
    $core.String? title,
    $core.String? description,
    $core.Map<$core.String, FieldOrdering>? fieldOrdering,
    AppleWalletOptions? appleWalletOptions,
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
      // ignore: deprecated_member_use_from_same_package
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
    if (title != null) {
      _result.title = title;
    }
    if (description != null) {
      _result.description = description;
    }
    if (fieldOrdering != null) {
      _result.fieldOrdering.addAll(fieldOrdering);
    }
    if (appleWalletOptions != null) {
      _result.appleWalletOptions = appleWalletOptions;
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

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(7)
  $core.String get contextUri => $_getSZ(6);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(7)
  set contextUri($core.String v) {
    $_setString(6, v);
  }

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(7)
  $core.bool hasContextUri() => $_has(6);
  @$core.Deprecated('This field is deprecated.')
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

  @$pb.TagNumber(12)
  $core.String get title => $_getSZ(11);
  @$pb.TagNumber(12)
  set title($core.String v) {
    $_setString(11, v);
  }

  @$pb.TagNumber(12)
  $core.bool hasTitle() => $_has(11);
  @$pb.TagNumber(12)
  void clearTitle() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get description => $_getSZ(12);
  @$pb.TagNumber(13)
  set description($core.String v) {
    $_setString(12, v);
  }

  @$pb.TagNumber(13)
  $core.bool hasDescription() => $_has(12);
  @$pb.TagNumber(13)
  void clearDescription() => clearField(13);

  @$pb.TagNumber(14)
  $core.Map<$core.String, FieldOrdering> get fieldOrdering => $_getMap(13);

  @$pb.TagNumber(15)
  AppleWalletOptions get appleWalletOptions => $_getN(14);
  @$pb.TagNumber(15)
  set appleWalletOptions(AppleWalletOptions v) {
    setField(15, v);
  }

  @$pb.TagNumber(15)
  $core.bool hasAppleWalletOptions() => $_has(14);
  @$pb.TagNumber(15)
  void clearAppleWalletOptions() => clearField(15);
  @$pb.TagNumber(15)
  AppleWalletOptions ensureAppleWalletOptions() => $_ensure(14);
}

class AppleWalletOptions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'AppleWalletOptions',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.verifiablecredentials.templates.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'backgroundColor')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'foregroundColor')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'labelColor')
    ..aOS(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'primaryField')
    ..pPS(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'secondaryFields')
    ..pPS(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'auxiliaryFields')
    ..hasRequiredFields = false;

  AppleWalletOptions._() : super();
  factory AppleWalletOptions({
    $core.String? backgroundColor,
    $core.String? foregroundColor,
    $core.String? labelColor,
    $core.String? primaryField,
    $core.Iterable<$core.String>? secondaryFields,
    $core.Iterable<$core.String>? auxiliaryFields,
  }) {
    final _result = create();
    if (backgroundColor != null) {
      _result.backgroundColor = backgroundColor;
    }
    if (foregroundColor != null) {
      _result.foregroundColor = foregroundColor;
    }
    if (labelColor != null) {
      _result.labelColor = labelColor;
    }
    if (primaryField != null) {
      _result.primaryField = primaryField;
    }
    if (secondaryFields != null) {
      _result.secondaryFields.addAll(secondaryFields);
    }
    if (auxiliaryFields != null) {
      _result.auxiliaryFields.addAll(auxiliaryFields);
    }
    return _result;
  }
  factory AppleWalletOptions.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AppleWalletOptions.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AppleWalletOptions clone() => AppleWalletOptions()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AppleWalletOptions copyWith(void Function(AppleWalletOptions) updates) =>
      super.copyWith((message) => updates(message as AppleWalletOptions))
          as AppleWalletOptions; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AppleWalletOptions create() => AppleWalletOptions._();
  AppleWalletOptions createEmptyInstance() => create();
  static $pb.PbList<AppleWalletOptions> createRepeated() =>
      $pb.PbList<AppleWalletOptions>();
  @$core.pragma('dart2js:noInline')
  static AppleWalletOptions getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AppleWalletOptions>(create);
  static AppleWalletOptions? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get backgroundColor => $_getSZ(0);
  @$pb.TagNumber(1)
  set backgroundColor($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasBackgroundColor() => $_has(0);
  @$pb.TagNumber(1)
  void clearBackgroundColor() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get foregroundColor => $_getSZ(1);
  @$pb.TagNumber(2)
  set foregroundColor($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasForegroundColor() => $_has(1);
  @$pb.TagNumber(2)
  void clearForegroundColor() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get labelColor => $_getSZ(2);
  @$pb.TagNumber(3)
  set labelColor($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasLabelColor() => $_has(2);
  @$pb.TagNumber(3)
  void clearLabelColor() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get primaryField => $_getSZ(3);
  @$pb.TagNumber(4)
  set primaryField($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasPrimaryField() => $_has(3);
  @$pb.TagNumber(4)
  void clearPrimaryField() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.String> get secondaryFields => $_getList(4);

  @$pb.TagNumber(6)
  $core.List<$core.String> get auxiliaryFields => $_getList(5);
}

class FieldOrdering extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'FieldOrdering',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.verifiablecredentials.templates.v1'),
      createEmptyInstance: create)
    ..a<$core.int>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'order',
        $pb.PbFieldType.O3)
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'section')
    ..hasRequiredFields = false;

  FieldOrdering._() : super();
  factory FieldOrdering({
    $core.int? order,
    $core.String? section,
  }) {
    final _result = create();
    if (order != null) {
      _result.order = order;
    }
    if (section != null) {
      _result.section = section;
    }
    return _result;
  }
  factory FieldOrdering.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory FieldOrdering.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  FieldOrdering clone() => FieldOrdering()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  FieldOrdering copyWith(void Function(FieldOrdering) updates) =>
      super.copyWith((message) => updates(message as FieldOrdering))
          as FieldOrdering; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FieldOrdering create() => FieldOrdering._();
  FieldOrdering createEmptyInstance() => create();
  static $pb.PbList<FieldOrdering> createRepeated() =>
      $pb.PbList<FieldOrdering>();
  @$core.pragma('dart2js:noInline')
  static FieldOrdering getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FieldOrdering>(create);
  static FieldOrdering? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get order => $_getIZ(0);
  @$pb.TagNumber(1)
  set order($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasOrder() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrder() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get section => $_getSZ(1);
  @$pb.TagNumber(2)
  set section($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSection() => $_has(1);
  @$pb.TagNumber(2)
  void clearSection() => clearField(2);
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
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'title')
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
    ..aOM<UriFieldData>(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'uriData',
        subBuilder: UriFieldData.create)
    ..hasRequiredFields = false;

  TemplateField._() : super();
  factory TemplateField({
    $core.String? title,
    $core.String? description,
    $core.bool? optional,
    FieldType? type,
    @$core.Deprecated('This field is deprecated.')
        $core.Map<$core.String, $core.String>? annotations,
    UriFieldData? uriData,
  }) {
    final _result = create();
    if (title != null) {
      _result.title = title;
    }
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
      // ignore: deprecated_member_use_from_same_package
      _result.annotations.addAll(annotations);
    }
    if (uriData != null) {
      _result.uriData = uriData;
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

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get optional => $_getBF(2);
  @$pb.TagNumber(3)
  set optional($core.bool v) {
    $_setBool(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasOptional() => $_has(2);
  @$pb.TagNumber(3)
  void clearOptional() => clearField(3);

  @$pb.TagNumber(4)
  FieldType get type => $_getN(3);
  @$pb.TagNumber(4)
  set type(FieldType v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasType() => $_has(3);
  @$pb.TagNumber(4)
  void clearType() => clearField(4);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  $core.Map<$core.String, $core.String> get annotations => $_getMap(4);

  @$pb.TagNumber(6)
  UriFieldData get uriData => $_getN(5);
  @$pb.TagNumber(6)
  set uriData(UriFieldData v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasUriData() => $_has(5);
  @$pb.TagNumber(6)
  void clearUriData() => clearField(6);
  @$pb.TagNumber(6)
  UriFieldData ensureUriData() => $_ensure(5);
}

class TemplateFieldPatch extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'TemplateFieldPatch',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.verifiablecredentials.templates.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'title')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'description')
    ..aOM<UriFieldData>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'uriData',
        subBuilder: UriFieldData.create)
    ..hasRequiredFields = false;

  TemplateFieldPatch._() : super();
  factory TemplateFieldPatch({
    $core.String? title,
    $core.String? description,
    UriFieldData? uriData,
  }) {
    final _result = create();
    if (title != null) {
      _result.title = title;
    }
    if (description != null) {
      _result.description = description;
    }
    if (uriData != null) {
      _result.uriData = uriData;
    }
    return _result;
  }
  factory TemplateFieldPatch.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TemplateFieldPatch.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TemplateFieldPatch clone() => TemplateFieldPatch()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TemplateFieldPatch copyWith(void Function(TemplateFieldPatch) updates) =>
      super.copyWith((message) => updates(message as TemplateFieldPatch))
          as TemplateFieldPatch; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TemplateFieldPatch create() => TemplateFieldPatch._();
  TemplateFieldPatch createEmptyInstance() => create();
  static $pb.PbList<TemplateFieldPatch> createRepeated() =>
      $pb.PbList<TemplateFieldPatch>();
  @$core.pragma('dart2js:noInline')
  static TemplateFieldPatch getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TemplateFieldPatch>(create);
  static TemplateFieldPatch? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);

  @$pb.TagNumber(3)
  UriFieldData get uriData => $_getN(2);
  @$pb.TagNumber(3)
  set uriData(UriFieldData v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasUriData() => $_has(2);
  @$pb.TagNumber(3)
  void clearUriData() => clearField(3);
  @$pb.TagNumber(3)
  UriFieldData ensureUriData() => $_ensure(2);
}

class UriFieldData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'UriFieldData',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.verifiablecredentials.templates.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'mimeType')
    ..e<UriRenderMethod>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'renderMethod',
        $pb.PbFieldType.OE,
        defaultOrMaker: UriRenderMethod.TEXT,
        valueOf: UriRenderMethod.valueOf,
        enumValues: UriRenderMethod.values)
    ..hasRequiredFields = false;

  UriFieldData._() : super();
  factory UriFieldData({
    $core.String? mimeType,
    UriRenderMethod? renderMethod,
  }) {
    final _result = create();
    if (mimeType != null) {
      _result.mimeType = mimeType;
    }
    if (renderMethod != null) {
      _result.renderMethod = renderMethod;
    }
    return _result;
  }
  factory UriFieldData.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UriFieldData.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UriFieldData clone() => UriFieldData()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UriFieldData copyWith(void Function(UriFieldData) updates) =>
      super.copyWith((message) => updates(message as UriFieldData))
          as UriFieldData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UriFieldData create() => UriFieldData._();
  UriFieldData createEmptyInstance() => create();
  static $pb.PbList<UriFieldData> createRepeated() =>
      $pb.PbList<UriFieldData>();
  @$core.pragma('dart2js:noInline')
  static UriFieldData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UriFieldData>(create);
  static UriFieldData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get mimeType => $_getSZ(0);
  @$pb.TagNumber(1)
  set mimeType($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasMimeType() => $_has(0);
  @$pb.TagNumber(1)
  void clearMimeType() => clearField(1);

  @$pb.TagNumber(2)
  UriRenderMethod get renderMethod => $_getN(1);
  @$pb.TagNumber(2)
  set renderMethod(UriRenderMethod v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasRenderMethod() => $_has(1);
  @$pb.TagNumber(2)
  void clearRenderMethod() => clearField(2);
}
