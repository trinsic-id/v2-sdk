//
//  Generated code. Do not modify.
//  source: services/verifiable-credentials/templates/v1/templates.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'templates.pbenum.dart';

export 'templates.pbenum.dart';

/// Request to fetch a template by ID
class GetCredentialTemplateRequest extends $pb.GeneratedMessage {
  factory GetCredentialTemplateRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  GetCredentialTemplateRequest._() : super();
  factory GetCredentialTemplateRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetCredentialTemplateRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetCredentialTemplateRequest',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'services.verifiablecredentials.templates.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false;

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
          as GetCredentialTemplateRequest;

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

  /// ID of template to fetch
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

/// Response to `GetCredentialTemplateRequest`
class GetCredentialTemplateResponse extends $pb.GeneratedMessage {
  factory GetCredentialTemplateResponse({
    TemplateData? template,
  }) {
    final $result = create();
    if (template != null) {
      $result.template = template;
    }
    return $result;
  }
  GetCredentialTemplateResponse._() : super();
  factory GetCredentialTemplateResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetCredentialTemplateResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetCredentialTemplateResponse',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'services.verifiablecredentials.templates.v1'),
      createEmptyInstance: create)
    ..aOM<TemplateData>(1, _omitFieldNames ? '' : 'template',
        subBuilder: TemplateData.create)
    ..hasRequiredFields = false;

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
          as GetCredentialTemplateResponse;

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

  /// Template fetched by ID
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

/// Request to search templates using a SQL query
class SearchCredentialTemplatesRequest extends $pb.GeneratedMessage {
  factory SearchCredentialTemplatesRequest({
    $core.String? query,
    $core.String? continuationToken,
  }) {
    final $result = create();
    if (query != null) {
      $result.query = query;
    }
    if (continuationToken != null) {
      $result.continuationToken = continuationToken;
    }
    return $result;
  }
  SearchCredentialTemplatesRequest._() : super();
  factory SearchCredentialTemplatesRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SearchCredentialTemplatesRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SearchCredentialTemplatesRequest',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'services.verifiablecredentials.templates.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'query')
    ..aOS(2, _omitFieldNames ? '' : 'continuationToken')
    ..hasRequiredFields = false;

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
          as SearchCredentialTemplatesRequest;

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

  /// SQL query to execute. Example: `SELECT * FROM c WHERE c.name = 'Diploma'`
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

  /// Token provided by previous `SearchCredentialTemplatesResponse`
  /// if more data is available for query
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

/// Response to `SearchCredentialTemplatesRequest`
class SearchCredentialTemplatesResponse extends $pb.GeneratedMessage {
  factory SearchCredentialTemplatesResponse({
    $core.String? itemsJson,
    $core.bool? hasMoreResults,
    $core.String? continuationToken,
  }) {
    final $result = create();
    if (itemsJson != null) {
      $result.itemsJson = itemsJson;
    }
    if (hasMoreResults != null) {
      $result.hasMoreResults = hasMoreResults;
    }
    if (continuationToken != null) {
      $result.continuationToken = continuationToken;
    }
    return $result;
  }
  SearchCredentialTemplatesResponse._() : super();
  factory SearchCredentialTemplatesResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SearchCredentialTemplatesResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SearchCredentialTemplatesResponse',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'services.verifiablecredentials.templates.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'itemsJson')
    ..aOB(2, _omitFieldNames ? '' : 'hasMoreResults')
    ..aOS(4, _omitFieldNames ? '' : 'continuationToken')
    ..hasRequiredFields = false;

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
          as SearchCredentialTemplatesResponse;

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

  /// Raw JSON data returned from query
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

  /// Whether more results are available for this query via `continuation_token`
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

  /// Token to fetch next set of results via `SearchCredentialTemplatesRequest`
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

/// Request to list templates using a SQL query
class ListCredentialTemplatesRequest extends $pb.GeneratedMessage {
  factory ListCredentialTemplatesRequest({
    $core.String? query,
    $core.String? continuationToken,
  }) {
    final $result = create();
    if (query != null) {
      $result.query = query;
    }
    if (continuationToken != null) {
      $result.continuationToken = continuationToken;
    }
    return $result;
  }
  ListCredentialTemplatesRequest._() : super();
  factory ListCredentialTemplatesRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListCredentialTemplatesRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListCredentialTemplatesRequest',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'services.verifiablecredentials.templates.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'query')
    ..aOS(2, _omitFieldNames ? '' : 'continuationToken')
    ..hasRequiredFields = false;

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
          as ListCredentialTemplatesRequest;

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

  /// SQL query to execute. Example: `SELECT * FROM c WHERE c.name = 'Diploma'`
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

  /// Token provided by previous `ListCredentialTemplatesResponse`
  /// if more data is available for query
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

/// Response to `ListCredentialTemplatesRequest`
class ListCredentialTemplatesResponse extends $pb.GeneratedMessage {
  factory ListCredentialTemplatesResponse({
    $core.Iterable<TemplateData>? templates,
    $core.bool? hasMoreResults,
    $core.String? continuationToken,
  }) {
    final $result = create();
    if (templates != null) {
      $result.templates.addAll(templates);
    }
    if (hasMoreResults != null) {
      $result.hasMoreResults = hasMoreResults;
    }
    if (continuationToken != null) {
      $result.continuationToken = continuationToken;
    }
    return $result;
  }
  ListCredentialTemplatesResponse._() : super();
  factory ListCredentialTemplatesResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListCredentialTemplatesResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListCredentialTemplatesResponse',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'services.verifiablecredentials.templates.v1'),
      createEmptyInstance: create)
    ..pc<TemplateData>(
        1, _omitFieldNames ? '' : 'templates', $pb.PbFieldType.PM,
        subBuilder: TemplateData.create)
    ..aOB(2, _omitFieldNames ? '' : 'hasMoreResults')
    ..aOS(3, _omitFieldNames ? '' : 'continuationToken')
    ..hasRequiredFields = false;

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
          as ListCredentialTemplatesResponse;

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

  /// Templates found by query
  @$pb.TagNumber(1)
  $core.List<TemplateData> get templates => $_getList(0);

  /// Whether more results are available for this query via `continuation_token`
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

  /// Token to fetch next set of results via `ListCredentialTemplatesRequest`
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

/// Request to delete a template by ID
class DeleteCredentialTemplateRequest extends $pb.GeneratedMessage {
  factory DeleteCredentialTemplateRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  DeleteCredentialTemplateRequest._() : super();
  factory DeleteCredentialTemplateRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeleteCredentialTemplateRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeleteCredentialTemplateRequest',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'services.verifiablecredentials.templates.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false;

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
          as DeleteCredentialTemplateRequest;

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

  /// ID of template to delete
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

/// Response to `DeleteCredentialTemplateRequest`
class DeleteCredentialTemplateResponse extends $pb.GeneratedMessage {
  factory DeleteCredentialTemplateResponse() => create();
  DeleteCredentialTemplateResponse._() : super();
  factory DeleteCredentialTemplateResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeleteCredentialTemplateResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeleteCredentialTemplateResponse',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'services.verifiablecredentials.templates.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

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
          as DeleteCredentialTemplateResponse;

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

/// Request to create a new template
class CreateCredentialTemplateRequest extends $pb.GeneratedMessage {
  factory CreateCredentialTemplateRequest({
    $core.String? name,
    $core.Map<$core.String, TemplateField>? fields,
    $core.bool? allowAdditionalFields,
    $core.String? title,
    $core.String? description,
    $core.Map<$core.String, FieldOrdering>? fieldOrdering,
    AppleWalletOptions? appleWalletOptions,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (fields != null) {
      $result.fields.addAll(fields);
    }
    if (allowAdditionalFields != null) {
      $result.allowAdditionalFields = allowAdditionalFields;
    }
    if (title != null) {
      $result.title = title;
    }
    if (description != null) {
      $result.description = description;
    }
    if (fieldOrdering != null) {
      $result.fieldOrdering.addAll(fieldOrdering);
    }
    if (appleWalletOptions != null) {
      $result.appleWalletOptions = appleWalletOptions;
    }
    return $result;
  }
  CreateCredentialTemplateRequest._() : super();
  factory CreateCredentialTemplateRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreateCredentialTemplateRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateCredentialTemplateRequest',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'services.verifiablecredentials.templates.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..m<$core.String, TemplateField>(2, _omitFieldNames ? '' : 'fields',
        entryClassName: 'CreateCredentialTemplateRequest.FieldsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: TemplateField.create,
        valueDefaultOrMaker: TemplateField.getDefault,
        packageName: const $pb.PackageName(
            'services.verifiablecredentials.templates.v1'))
    ..aOB(3, _omitFieldNames ? '' : 'allowAdditionalFields')
    ..aOS(4, _omitFieldNames ? '' : 'title')
    ..aOS(5, _omitFieldNames ? '' : 'description')
    ..m<$core.String, FieldOrdering>(6, _omitFieldNames ? '' : 'fieldOrdering',
        entryClassName: 'CreateCredentialTemplateRequest.FieldOrderingEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: FieldOrdering.create,
        valueDefaultOrMaker: FieldOrdering.getDefault,
        packageName: const $pb.PackageName(
            'services.verifiablecredentials.templates.v1'))
    ..aOM<AppleWalletOptions>(7, _omitFieldNames ? '' : 'appleWalletOptions',
        subBuilder: AppleWalletOptions.create)
    ..hasRequiredFields = false;

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
          as CreateCredentialTemplateRequest;

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

  /// Name of new template. Must be a unique identifier within its ecosystem.
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

  /// Fields which compose the template
  @$pb.TagNumber(2)
  $core.Map<$core.String, TemplateField> get fields => $_getMap(1);

  /// Whether credentials may be issued against this template which have fields
  /// not specified in `fields`
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

  /// Human-readable name of template
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

  /// Human-readable description of template
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

  /// Optional map describing how to order and categorize the fields within the template. The key of this map is the field `name`.
  /// If not provided, this will be auto-generated.
  @$pb.TagNumber(6)
  $core.Map<$core.String, FieldOrdering> get fieldOrdering => $_getMap(5);

  /// Options for rendering the template in Apple Wallet
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

/// Response to `CreateCredentialTemplateRequest`
class CreateCredentialTemplateResponse extends $pb.GeneratedMessage {
  factory CreateCredentialTemplateResponse({
    TemplateData? data,
  }) {
    final $result = create();
    if (data != null) {
      $result.data = data;
    }
    return $result;
  }
  CreateCredentialTemplateResponse._() : super();
  factory CreateCredentialTemplateResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreateCredentialTemplateResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateCredentialTemplateResponse',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'services.verifiablecredentials.templates.v1'),
      createEmptyInstance: create)
    ..aOM<TemplateData>(1, _omitFieldNames ? '' : 'data',
        subBuilder: TemplateData.create)
    ..hasRequiredFields = false;

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
          as CreateCredentialTemplateResponse;

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

  /// Created template
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

/// Request to update display information for a template
class UpdateCredentialTemplateRequest extends $pb.GeneratedMessage {
  factory UpdateCredentialTemplateRequest({
    $core.String? id,
    $core.String? title,
    $core.String? description,
    $core.Map<$core.String, TemplateFieldPatch>? fields,
    $core.Map<$core.String, FieldOrdering>? fieldOrdering,
    AppleWalletOptions? appleWalletOptions,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (title != null) {
      $result.title = title;
    }
    if (description != null) {
      $result.description = description;
    }
    if (fields != null) {
      $result.fields.addAll(fields);
    }
    if (fieldOrdering != null) {
      $result.fieldOrdering.addAll(fieldOrdering);
    }
    if (appleWalletOptions != null) {
      $result.appleWalletOptions = appleWalletOptions;
    }
    return $result;
  }
  UpdateCredentialTemplateRequest._() : super();
  factory UpdateCredentialTemplateRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UpdateCredentialTemplateRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpdateCredentialTemplateRequest',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'services.verifiablecredentials.templates.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..m<$core.String, TemplateFieldPatch>(4, _omitFieldNames ? '' : 'fields',
        entryClassName: 'UpdateCredentialTemplateRequest.FieldsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: TemplateFieldPatch.create,
        valueDefaultOrMaker: TemplateFieldPatch.getDefault,
        packageName: const $pb.PackageName(
            'services.verifiablecredentials.templates.v1'))
    ..m<$core.String, FieldOrdering>(5, _omitFieldNames ? '' : 'fieldOrdering',
        entryClassName: 'UpdateCredentialTemplateRequest.FieldOrderingEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: FieldOrdering.create,
        valueDefaultOrMaker: FieldOrdering.getDefault,
        packageName: const $pb.PackageName(
            'services.verifiablecredentials.templates.v1'))
    ..aOM<AppleWalletOptions>(6, _omitFieldNames ? '' : 'appleWalletOptions',
        subBuilder: AppleWalletOptions.create)
    ..hasRequiredFields = false;

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
          as UpdateCredentialTemplateRequest;

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

  /// ID of Template to update
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

  /// New human-readable title of Template
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

  /// New human-readable description of Template
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

  /// Fields to update within the Template
  @$pb.TagNumber(4)
  $core.Map<$core.String, TemplateFieldPatch> get fields => $_getMap(3);

  /// New field ordering options. See documentation for template creation for usage information.
  @$pb.TagNumber(5)
  $core.Map<$core.String, FieldOrdering> get fieldOrdering => $_getMap(4);

  /// New Apple Wallet configuration
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

/// Response to `UpdateCredentialTemplateRequest`
class UpdateCredentialTemplateResponse extends $pb.GeneratedMessage {
  factory UpdateCredentialTemplateResponse({
    TemplateData? updatedTemplate,
  }) {
    final $result = create();
    if (updatedTemplate != null) {
      $result.updatedTemplate = updatedTemplate;
    }
    return $result;
  }
  UpdateCredentialTemplateResponse._() : super();
  factory UpdateCredentialTemplateResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UpdateCredentialTemplateResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpdateCredentialTemplateResponse',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'services.verifiablecredentials.templates.v1'),
      createEmptyInstance: create)
    ..aOM<TemplateData>(1, _omitFieldNames ? '' : 'updatedTemplate',
        subBuilder: TemplateData.create)
    ..hasRequiredFields = false;

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
          as UpdateCredentialTemplateResponse;

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

  /// The Template after the update has been applied
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

/// Credential Template
class TemplateData extends $pb.GeneratedMessage {
  factory TemplateData({
    $core.String? id,
    $core.String? name,
    $core.int? version,
    $core.Map<$core.String, TemplateField>? fields,
    $core.bool? allowAdditionalFields,
    $core.String? schemaUri,
    $core.String? ecosystemId,
    $core.String? type,
    $core.String? createdBy,
    $core.String? dateCreated,
    $core.String? title,
    $core.String? description,
    $core.Map<$core.String, FieldOrdering>? fieldOrdering,
    AppleWalletOptions? appleWalletOptions,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (version != null) {
      $result.version = version;
    }
    if (fields != null) {
      $result.fields.addAll(fields);
    }
    if (allowAdditionalFields != null) {
      $result.allowAdditionalFields = allowAdditionalFields;
    }
    if (schemaUri != null) {
      $result.schemaUri = schemaUri;
    }
    if (ecosystemId != null) {
      $result.ecosystemId = ecosystemId;
    }
    if (type != null) {
      $result.type = type;
    }
    if (createdBy != null) {
      $result.createdBy = createdBy;
    }
    if (dateCreated != null) {
      $result.dateCreated = dateCreated;
    }
    if (title != null) {
      $result.title = title;
    }
    if (description != null) {
      $result.description = description;
    }
    if (fieldOrdering != null) {
      $result.fieldOrdering.addAll(fieldOrdering);
    }
    if (appleWalletOptions != null) {
      $result.appleWalletOptions = appleWalletOptions;
    }
    return $result;
  }
  TemplateData._() : super();
  factory TemplateData.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TemplateData.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TemplateData',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'services.verifiablecredentials.templates.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'version', $pb.PbFieldType.O3)
    ..m<$core.String, TemplateField>(4, _omitFieldNames ? '' : 'fields',
        entryClassName: 'TemplateData.FieldsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: TemplateField.create,
        valueDefaultOrMaker: TemplateField.getDefault,
        packageName: const $pb.PackageName(
            'services.verifiablecredentials.templates.v1'))
    ..aOB(5, _omitFieldNames ? '' : 'allowAdditionalFields')
    ..aOS(6, _omitFieldNames ? '' : 'schemaUri')
    ..aOS(8, _omitFieldNames ? '' : 'ecosystemId')
    ..aOS(9, _omitFieldNames ? '' : 'type')
    ..aOS(10, _omitFieldNames ? '' : 'createdBy')
    ..aOS(11, _omitFieldNames ? '' : 'dateCreated')
    ..aOS(12, _omitFieldNames ? '' : 'title')
    ..aOS(13, _omitFieldNames ? '' : 'description')
    ..m<$core.String, FieldOrdering>(14, _omitFieldNames ? '' : 'fieldOrdering',
        entryClassName: 'TemplateData.FieldOrderingEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: FieldOrdering.create,
        valueDefaultOrMaker: FieldOrdering.getDefault,
        packageName: const $pb.PackageName(
            'services.verifiablecredentials.templates.v1'))
    ..aOM<AppleWalletOptions>(15, _omitFieldNames ? '' : 'appleWalletOptions',
        subBuilder: AppleWalletOptions.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TemplateData clone() => TemplateData()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TemplateData copyWith(void Function(TemplateData) updates) =>
      super.copyWith((message) => updates(message as TemplateData))
          as TemplateData;

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

  /// Template ID
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

  /// Template name
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

  /// Template version number
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

  /// Fields defined for the template
  @$pb.TagNumber(4)
  $core.Map<$core.String, TemplateField> get fields => $_getMap(3);

  /// Whether credentials issued against this template may
  /// contain fields not defined by template
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

  /// URI pointing to template JSON schema document
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

  /// ID of ecosystem in which template resides
  @$pb.TagNumber(8)
  $core.String get ecosystemId => $_getSZ(6);
  @$pb.TagNumber(8)
  set ecosystemId($core.String v) {
    $_setString(6, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasEcosystemId() => $_has(6);
  @$pb.TagNumber(8)
  void clearEcosystemId() => clearField(8);

  /// Template type (`VerifiableCredential`)
  @$pb.TagNumber(9)
  $core.String get type => $_getSZ(7);
  @$pb.TagNumber(9)
  set type($core.String v) {
    $_setString(7, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasType() => $_has(7);
  @$pb.TagNumber(9)
  void clearType() => clearField(9);

  /// ID of template creator
  @$pb.TagNumber(10)
  $core.String get createdBy => $_getSZ(8);
  @$pb.TagNumber(10)
  set createdBy($core.String v) {
    $_setString(8, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasCreatedBy() => $_has(8);
  @$pb.TagNumber(10)
  void clearCreatedBy() => clearField(10);

  /// Date when template was created as ISO 8601 utc string
  @$pb.TagNumber(11)
  $core.String get dateCreated => $_getSZ(9);
  @$pb.TagNumber(11)
  set dateCreated($core.String v) {
    $_setString(9, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasDateCreated() => $_has(9);
  @$pb.TagNumber(11)
  void clearDateCreated() => clearField(11);

  /// Human-readable template title
  @$pb.TagNumber(12)
  $core.String get title => $_getSZ(10);
  @$pb.TagNumber(12)
  set title($core.String v) {
    $_setString(10, v);
  }

  @$pb.TagNumber(12)
  $core.bool hasTitle() => $_has(10);
  @$pb.TagNumber(12)
  void clearTitle() => clearField(12);

  /// Human-readable template description
  @$pb.TagNumber(13)
  $core.String get description => $_getSZ(11);
  @$pb.TagNumber(13)
  set description($core.String v) {
    $_setString(11, v);
  }

  @$pb.TagNumber(13)
  $core.bool hasDescription() => $_has(11);
  @$pb.TagNumber(13)
  void clearDescription() => clearField(13);

  /// Map describing how to order and categorize the fields within the template. The key of this map is the field `name`.
  @$pb.TagNumber(14)
  $core.Map<$core.String, FieldOrdering> get fieldOrdering => $_getMap(12);

  /// Options for rendering the template in Apple Wallet
  @$pb.TagNumber(15)
  AppleWalletOptions get appleWalletOptions => $_getN(13);
  @$pb.TagNumber(15)
  set appleWalletOptions(AppleWalletOptions v) {
    setField(15, v);
  }

  @$pb.TagNumber(15)
  $core.bool hasAppleWalletOptions() => $_has(13);
  @$pb.TagNumber(15)
  void clearAppleWalletOptions() => clearField(15);
  @$pb.TagNumber(15)
  AppleWalletOptions ensureAppleWalletOptions() => $_ensure(13);
}

/// Configuration options for Apple Wallet when
class AppleWalletOptions extends $pb.GeneratedMessage {
  factory AppleWalletOptions({
    $core.String? backgroundColor,
    $core.String? foregroundColor,
    $core.String? labelColor,
    $core.String? primaryField,
    $core.Iterable<$core.String>? secondaryFields,
    $core.Iterable<$core.String>? auxiliaryFields,
  }) {
    final $result = create();
    if (backgroundColor != null) {
      $result.backgroundColor = backgroundColor;
    }
    if (foregroundColor != null) {
      $result.foregroundColor = foregroundColor;
    }
    if (labelColor != null) {
      $result.labelColor = labelColor;
    }
    if (primaryField != null) {
      $result.primaryField = primaryField;
    }
    if (secondaryFields != null) {
      $result.secondaryFields.addAll(secondaryFields);
    }
    if (auxiliaryFields != null) {
      $result.auxiliaryFields.addAll(auxiliaryFields);
    }
    return $result;
  }
  AppleWalletOptions._() : super();
  factory AppleWalletOptions.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AppleWalletOptions.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AppleWalletOptions',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'services.verifiablecredentials.templates.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'backgroundColor')
    ..aOS(2, _omitFieldNames ? '' : 'foregroundColor')
    ..aOS(3, _omitFieldNames ? '' : 'labelColor')
    ..aOS(4, _omitFieldNames ? '' : 'primaryField')
    ..pPS(5, _omitFieldNames ? '' : 'secondaryFields')
    ..pPS(6, _omitFieldNames ? '' : 'auxiliaryFields')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AppleWalletOptions clone() => AppleWalletOptions()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AppleWalletOptions copyWith(void Function(AppleWalletOptions) updates) =>
      super.copyWith((message) => updates(message as AppleWalletOptions))
          as AppleWalletOptions;

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

  /// Background color, in hex format, of credential when stored in an Apple Wallet.
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

  /// Foreground color, in hex format, of credential when stored in an Apple Wallet.
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

  /// Label color, in hex format, of credential when stored in an Apple Wallet.
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

  /// The ID of the template field which should be used as the primary field of a credential.
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

  /// The secondary fields of the credential. This is a mapping between the order of a secondary field (0 or 1) and the field name.
  @$pb.TagNumber(5)
  $core.List<$core.String> get secondaryFields => $_getList(4);

  /// The auxiliary fields of the credential. This is a mapping between the order of an auxiliary field (0 or 1) and the field name.
  @$pb.TagNumber(6)
  $core.List<$core.String> get auxiliaryFields => $_getList(5);
}

/// Ordering information for a template field
class FieldOrdering extends $pb.GeneratedMessage {
  factory FieldOrdering({
    $core.int? order,
    $core.String? section,
  }) {
    final $result = create();
    if (order != null) {
      $result.order = order;
    }
    if (section != null) {
      $result.section = section;
    }
    return $result;
  }
  FieldOrdering._() : super();
  factory FieldOrdering.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory FieldOrdering.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FieldOrdering',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'services.verifiablecredentials.templates.v1'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'order', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'section')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  FieldOrdering clone() => FieldOrdering()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  FieldOrdering copyWith(void Function(FieldOrdering) updates) =>
      super.copyWith((message) => updates(message as FieldOrdering))
          as FieldOrdering;

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

  /// The order of the field; must be unique within the Template. Fields are sorted by order ascending when displaying a credential.
  /// Field orders must be contiguous from `0` to the number of fields minus 1.
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

  /// The human-readable name of the section this field appears in; used to group together fields when displaying a credential.
  /// Sections must be contiguous with respect to `order`.
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

/// A field defined in a template
class TemplateField extends $pb.GeneratedMessage {
  factory TemplateField({
    $core.String? title,
    $core.String? description,
    $core.bool? optional,
    FieldType? type,
    UriFieldData? uriData,
  }) {
    final $result = create();
    if (title != null) {
      $result.title = title;
    }
    if (description != null) {
      $result.description = description;
    }
    if (optional != null) {
      $result.optional = optional;
    }
    if (type != null) {
      $result.type = type;
    }
    if (uriData != null) {
      $result.uriData = uriData;
    }
    return $result;
  }
  TemplateField._() : super();
  factory TemplateField.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TemplateField.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TemplateField',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'services.verifiablecredentials.templates.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOS(2, _omitFieldNames ? '' : 'description')
    ..aOB(3, _omitFieldNames ? '' : 'optional')
    ..e<FieldType>(4, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE,
        defaultOrMaker: FieldType.STRING,
        valueOf: FieldType.valueOf,
        enumValues: FieldType.values)
    ..aOM<UriFieldData>(6, _omitFieldNames ? '' : 'uriData',
        subBuilder: UriFieldData.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TemplateField clone() => TemplateField()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TemplateField copyWith(void Function(TemplateField) updates) =>
      super.copyWith((message) => updates(message as TemplateField))
          as TemplateField;

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

  /// Human-readable name of the field
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

  /// Human-readable description of the field
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

  /// Whether this field may be omitted when a credential is issued against the template
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

  /// The type of the field
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

  /// How to deal with this URI field when rendering credential. Only use if `type` is `URI`.
  @$pb.TagNumber(6)
  UriFieldData get uriData => $_getN(4);
  @$pb.TagNumber(6)
  set uriData(UriFieldData v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasUriData() => $_has(4);
  @$pb.TagNumber(6)
  void clearUriData() => clearField(6);
  @$pb.TagNumber(6)
  UriFieldData ensureUriData() => $_ensure(4);
}

/// A patch to apply to an existing template field
class TemplateFieldPatch extends $pb.GeneratedMessage {
  factory TemplateFieldPatch({
    $core.String? title,
    $core.String? description,
    UriFieldData? uriData,
  }) {
    final $result = create();
    if (title != null) {
      $result.title = title;
    }
    if (description != null) {
      $result.description = description;
    }
    if (uriData != null) {
      $result.uriData = uriData;
    }
    return $result;
  }
  TemplateFieldPatch._() : super();
  factory TemplateFieldPatch.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TemplateFieldPatch.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TemplateFieldPatch',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'services.verifiablecredentials.templates.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOS(2, _omitFieldNames ? '' : 'description')
    ..aOM<UriFieldData>(3, _omitFieldNames ? '' : 'uriData',
        subBuilder: UriFieldData.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TemplateFieldPatch clone() => TemplateFieldPatch()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TemplateFieldPatch copyWith(void Function(TemplateFieldPatch) updates) =>
      super.copyWith((message) => updates(message as TemplateFieldPatch))
          as TemplateFieldPatch;

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

  /// Human-readable name of the field
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

  /// Human-readable description of the field
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

  /// How to deal with this URI field when rendering credential. Only use if `type` is `URI`.
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

/// Data pertaining to a URI Field
class UriFieldData extends $pb.GeneratedMessage {
  factory UriFieldData({
    $core.String? mimeType,
    UriRenderMethod? renderMethod,
  }) {
    final $result = create();
    if (mimeType != null) {
      $result.mimeType = mimeType;
    }
    if (renderMethod != null) {
      $result.renderMethod = renderMethod;
    }
    return $result;
  }
  UriFieldData._() : super();
  factory UriFieldData.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UriFieldData.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UriFieldData',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'services.verifiablecredentials.templates.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'mimeType')
    ..e<UriRenderMethod>(
        2, _omitFieldNames ? '' : 'renderMethod', $pb.PbFieldType.OE,
        defaultOrMaker: UriRenderMethod.TEXT,
        valueOf: UriRenderMethod.valueOf,
        enumValues: UriRenderMethod.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UriFieldData clone() => UriFieldData()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UriFieldData copyWith(void Function(UriFieldData) updates) =>
      super.copyWith((message) => updates(message as UriFieldData))
          as UriFieldData;

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

  /// Expected MIME Type of content pointed to by URI. Can be generic (eg, "image/") or specific ("image/png").
  /// Defaults to "application/octet-stream".
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

  /// How to display the URI value when rendering a credential.
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

/// Request to fetch a template by ID
class GetVerificationTemplateRequest extends $pb.GeneratedMessage {
  factory GetVerificationTemplateRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  GetVerificationTemplateRequest._() : super();
  factory GetVerificationTemplateRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetVerificationTemplateRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetVerificationTemplateRequest',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'services.verifiablecredentials.templates.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetVerificationTemplateRequest clone() =>
      GetVerificationTemplateRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetVerificationTemplateRequest copyWith(
          void Function(GetVerificationTemplateRequest) updates) =>
      super.copyWith(
              (message) => updates(message as GetVerificationTemplateRequest))
          as GetVerificationTemplateRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetVerificationTemplateRequest create() =>
      GetVerificationTemplateRequest._();
  GetVerificationTemplateRequest createEmptyInstance() => create();
  static $pb.PbList<GetVerificationTemplateRequest> createRepeated() =>
      $pb.PbList<GetVerificationTemplateRequest>();
  @$core.pragma('dart2js:noInline')
  static GetVerificationTemplateRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetVerificationTemplateRequest>(create);
  static GetVerificationTemplateRequest? _defaultInstance;

  /// ID of template to fetch
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

/// Response to `GetCredentialTemplateRequest`
class GetVerificationTemplateResponse extends $pb.GeneratedMessage {
  factory GetVerificationTemplateResponse({
    VerificationTemplateData? template,
  }) {
    final $result = create();
    if (template != null) {
      $result.template = template;
    }
    return $result;
  }
  GetVerificationTemplateResponse._() : super();
  factory GetVerificationTemplateResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetVerificationTemplateResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetVerificationTemplateResponse',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'services.verifiablecredentials.templates.v1'),
      createEmptyInstance: create)
    ..aOM<VerificationTemplateData>(1, _omitFieldNames ? '' : 'template',
        subBuilder: VerificationTemplateData.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetVerificationTemplateResponse clone() =>
      GetVerificationTemplateResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetVerificationTemplateResponse copyWith(
          void Function(GetVerificationTemplateResponse) updates) =>
      super.copyWith(
              (message) => updates(message as GetVerificationTemplateResponse))
          as GetVerificationTemplateResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetVerificationTemplateResponse create() =>
      GetVerificationTemplateResponse._();
  GetVerificationTemplateResponse createEmptyInstance() => create();
  static $pb.PbList<GetVerificationTemplateResponse> createRepeated() =>
      $pb.PbList<GetVerificationTemplateResponse>();
  @$core.pragma('dart2js:noInline')
  static GetVerificationTemplateResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetVerificationTemplateResponse>(
          create);
  static GetVerificationTemplateResponse? _defaultInstance;

  /// Template fetched by ID
  @$pb.TagNumber(1)
  VerificationTemplateData get template => $_getN(0);
  @$pb.TagNumber(1)
  set template(VerificationTemplateData v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTemplate() => $_has(0);
  @$pb.TagNumber(1)
  void clearTemplate() => clearField(1);
  @$pb.TagNumber(1)
  VerificationTemplateData ensureTemplate() => $_ensure(0);
}

class CreateVerificationTemplateRequest extends $pb.GeneratedMessage {
  factory CreateVerificationTemplateRequest({
    $core.String? name,
    $core.Map<$core.String, VerificationTemplateField>? fields,
    $core.String? credentialTemplateId,
    $core.String? title,
    $core.String? description,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (fields != null) {
      $result.fields.addAll(fields);
    }
    if (credentialTemplateId != null) {
      $result.credentialTemplateId = credentialTemplateId;
    }
    if (title != null) {
      $result.title = title;
    }
    if (description != null) {
      $result.description = description;
    }
    return $result;
  }
  CreateVerificationTemplateRequest._() : super();
  factory CreateVerificationTemplateRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreateVerificationTemplateRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateVerificationTemplateRequest',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'services.verifiablecredentials.templates.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..m<$core.String, VerificationTemplateField>(
        2, _omitFieldNames ? '' : 'fields',
        entryClassName: 'CreateVerificationTemplateRequest.FieldsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: VerificationTemplateField.create,
        valueDefaultOrMaker: VerificationTemplateField.getDefault,
        packageName: const $pb.PackageName(
            'services.verifiablecredentials.templates.v1'))
    ..aOS(3, _omitFieldNames ? '' : 'credentialTemplateId')
    ..aOS(4, _omitFieldNames ? '' : 'title')
    ..aOS(5, _omitFieldNames ? '' : 'description')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CreateVerificationTemplateRequest clone() =>
      CreateVerificationTemplateRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CreateVerificationTemplateRequest copyWith(
          void Function(CreateVerificationTemplateRequest) updates) =>
      super.copyWith((message) =>
              updates(message as CreateVerificationTemplateRequest))
          as CreateVerificationTemplateRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateVerificationTemplateRequest create() =>
      CreateVerificationTemplateRequest._();
  CreateVerificationTemplateRequest createEmptyInstance() => create();
  static $pb.PbList<CreateVerificationTemplateRequest> createRepeated() =>
      $pb.PbList<CreateVerificationTemplateRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateVerificationTemplateRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateVerificationTemplateRequest>(
          create);
  static CreateVerificationTemplateRequest? _defaultInstance;

  /// Name of new template. Must be a unique identifier within its ecosystem.
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

  /// Fields which will be required in the verification proof template
  @$pb.TagNumber(2)
  $core.Map<$core.String, VerificationTemplateField> get fields => $_getMap(1);

  /// Source credential template, used for verifying that the specified `fields` are present in the credential template
  @$pb.TagNumber(3)
  $core.String get credentialTemplateId => $_getSZ(2);
  @$pb.TagNumber(3)
  set credentialTemplateId($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasCredentialTemplateId() => $_has(2);
  @$pb.TagNumber(3)
  void clearCredentialTemplateId() => clearField(3);

  /// Human-readable name of template
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

  /// Human-readable description of template
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
}

class CreateVerificationTemplateResponse extends $pb.GeneratedMessage {
  factory CreateVerificationTemplateResponse({
    VerificationTemplateData? data,
  }) {
    final $result = create();
    if (data != null) {
      $result.data = data;
    }
    return $result;
  }
  CreateVerificationTemplateResponse._() : super();
  factory CreateVerificationTemplateResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreateVerificationTemplateResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateVerificationTemplateResponse',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'services.verifiablecredentials.templates.v1'),
      createEmptyInstance: create)
    ..aOM<VerificationTemplateData>(1, _omitFieldNames ? '' : 'data',
        subBuilder: VerificationTemplateData.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CreateVerificationTemplateResponse clone() =>
      CreateVerificationTemplateResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CreateVerificationTemplateResponse copyWith(
          void Function(CreateVerificationTemplateResponse) updates) =>
      super.copyWith((message) =>
              updates(message as CreateVerificationTemplateResponse))
          as CreateVerificationTemplateResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateVerificationTemplateResponse create() =>
      CreateVerificationTemplateResponse._();
  CreateVerificationTemplateResponse createEmptyInstance() => create();
  static $pb.PbList<CreateVerificationTemplateResponse> createRepeated() =>
      $pb.PbList<CreateVerificationTemplateResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateVerificationTemplateResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateVerificationTemplateResponse>(
          create);
  static CreateVerificationTemplateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  VerificationTemplateData get data => $_getN(0);
  @$pb.TagNumber(1)
  set data(VerificationTemplateData v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => clearField(1);
  @$pb.TagNumber(1)
  VerificationTemplateData ensureData() => $_ensure(0);
}

class UpdateVerificationTemplateRequest extends $pb.GeneratedMessage {
  factory UpdateVerificationTemplateRequest({
    $core.String? id,
    $core.String? title,
    $core.String? description,
    $core.Map<$core.String, VerificationTemplateFieldPatch>? fields,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (title != null) {
      $result.title = title;
    }
    if (description != null) {
      $result.description = description;
    }
    if (fields != null) {
      $result.fields.addAll(fields);
    }
    return $result;
  }
  UpdateVerificationTemplateRequest._() : super();
  factory UpdateVerificationTemplateRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UpdateVerificationTemplateRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpdateVerificationTemplateRequest',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'services.verifiablecredentials.templates.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..m<$core.String, VerificationTemplateFieldPatch>(
        4, _omitFieldNames ? '' : 'fields',
        entryClassName: 'UpdateVerificationTemplateRequest.FieldsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: VerificationTemplateFieldPatch.create,
        valueDefaultOrMaker: VerificationTemplateFieldPatch.getDefault,
        packageName: const $pb.PackageName(
            'services.verifiablecredentials.templates.v1'))
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UpdateVerificationTemplateRequest clone() =>
      UpdateVerificationTemplateRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UpdateVerificationTemplateRequest copyWith(
          void Function(UpdateVerificationTemplateRequest) updates) =>
      super.copyWith((message) =>
              updates(message as UpdateVerificationTemplateRequest))
          as UpdateVerificationTemplateRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateVerificationTemplateRequest create() =>
      UpdateVerificationTemplateRequest._();
  UpdateVerificationTemplateRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateVerificationTemplateRequest> createRepeated() =>
      $pb.PbList<UpdateVerificationTemplateRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateVerificationTemplateRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateVerificationTemplateRequest>(
          create);
  static UpdateVerificationTemplateRequest? _defaultInstance;

  /// ID of Template to update
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

  /// New human-readable title of Template
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

  /// New human-readable description of Template
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

  /// Fields to update within the Template
  @$pb.TagNumber(4)
  $core.Map<$core.String, VerificationTemplateFieldPatch> get fields =>
      $_getMap(3);
}

class UpdateVerificationTemplateResponse extends $pb.GeneratedMessage {
  factory UpdateVerificationTemplateResponse({
    VerificationTemplateData? template,
  }) {
    final $result = create();
    if (template != null) {
      $result.template = template;
    }
    return $result;
  }
  UpdateVerificationTemplateResponse._() : super();
  factory UpdateVerificationTemplateResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UpdateVerificationTemplateResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpdateVerificationTemplateResponse',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'services.verifiablecredentials.templates.v1'),
      createEmptyInstance: create)
    ..aOM<VerificationTemplateData>(1, _omitFieldNames ? '' : 'template',
        subBuilder: VerificationTemplateData.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UpdateVerificationTemplateResponse clone() =>
      UpdateVerificationTemplateResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UpdateVerificationTemplateResponse copyWith(
          void Function(UpdateVerificationTemplateResponse) updates) =>
      super.copyWith((message) =>
              updates(message as UpdateVerificationTemplateResponse))
          as UpdateVerificationTemplateResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateVerificationTemplateResponse create() =>
      UpdateVerificationTemplateResponse._();
  UpdateVerificationTemplateResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateVerificationTemplateResponse> createRepeated() =>
      $pb.PbList<UpdateVerificationTemplateResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateVerificationTemplateResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateVerificationTemplateResponse>(
          create);
  static UpdateVerificationTemplateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  VerificationTemplateData get template => $_getN(0);
  @$pb.TagNumber(1)
  set template(VerificationTemplateData v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTemplate() => $_has(0);
  @$pb.TagNumber(1)
  void clearTemplate() => clearField(1);
  @$pb.TagNumber(1)
  VerificationTemplateData ensureTemplate() => $_ensure(0);
}

class DeleteVerificationTemplateRequest extends $pb.GeneratedMessage {
  factory DeleteVerificationTemplateRequest({
    $core.String? verificationTemplateId,
  }) {
    final $result = create();
    if (verificationTemplateId != null) {
      $result.verificationTemplateId = verificationTemplateId;
    }
    return $result;
  }
  DeleteVerificationTemplateRequest._() : super();
  factory DeleteVerificationTemplateRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeleteVerificationTemplateRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeleteVerificationTemplateRequest',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'services.verifiablecredentials.templates.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'verificationTemplateId')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DeleteVerificationTemplateRequest clone() =>
      DeleteVerificationTemplateRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DeleteVerificationTemplateRequest copyWith(
          void Function(DeleteVerificationTemplateRequest) updates) =>
      super.copyWith((message) =>
              updates(message as DeleteVerificationTemplateRequest))
          as DeleteVerificationTemplateRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteVerificationTemplateRequest create() =>
      DeleteVerificationTemplateRequest._();
  DeleteVerificationTemplateRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteVerificationTemplateRequest> createRepeated() =>
      $pb.PbList<DeleteVerificationTemplateRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteVerificationTemplateRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteVerificationTemplateRequest>(
          create);
  static DeleteVerificationTemplateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get verificationTemplateId => $_getSZ(0);
  @$pb.TagNumber(1)
  set verificationTemplateId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasVerificationTemplateId() => $_has(0);
  @$pb.TagNumber(1)
  void clearVerificationTemplateId() => clearField(1);
}

class DeleteVerificationTemplateResponse extends $pb.GeneratedMessage {
  factory DeleteVerificationTemplateResponse() => create();
  DeleteVerificationTemplateResponse._() : super();
  factory DeleteVerificationTemplateResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeleteVerificationTemplateResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeleteVerificationTemplateResponse',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'services.verifiablecredentials.templates.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DeleteVerificationTemplateResponse clone() =>
      DeleteVerificationTemplateResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DeleteVerificationTemplateResponse copyWith(
          void Function(DeleteVerificationTemplateResponse) updates) =>
      super.copyWith((message) =>
              updates(message as DeleteVerificationTemplateResponse))
          as DeleteVerificationTemplateResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteVerificationTemplateResponse create() =>
      DeleteVerificationTemplateResponse._();
  DeleteVerificationTemplateResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteVerificationTemplateResponse> createRepeated() =>
      $pb.PbList<DeleteVerificationTemplateResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteVerificationTemplateResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteVerificationTemplateResponse>(
          create);
  static DeleteVerificationTemplateResponse? _defaultInstance;
}

/// Verification Template
class VerificationTemplateData extends $pb.GeneratedMessage {
  factory VerificationTemplateData({
    $core.String? id,
    $core.String? name,
    $core.int? version,
    $core.Map<$core.String, VerificationTemplateField>? fields,
    $core.String? credentialTemplateId,
    $core.String? ecosystemId,
    $core.String? type,
    $core.String? createdBy,
    $core.String? dateCreated,
    $core.String? title,
    $core.String? description,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (version != null) {
      $result.version = version;
    }
    if (fields != null) {
      $result.fields.addAll(fields);
    }
    if (credentialTemplateId != null) {
      $result.credentialTemplateId = credentialTemplateId;
    }
    if (ecosystemId != null) {
      $result.ecosystemId = ecosystemId;
    }
    if (type != null) {
      $result.type = type;
    }
    if (createdBy != null) {
      $result.createdBy = createdBy;
    }
    if (dateCreated != null) {
      $result.dateCreated = dateCreated;
    }
    if (title != null) {
      $result.title = title;
    }
    if (description != null) {
      $result.description = description;
    }
    return $result;
  }
  VerificationTemplateData._() : super();
  factory VerificationTemplateData.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory VerificationTemplateData.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VerificationTemplateData',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'services.verifiablecredentials.templates.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'version', $pb.PbFieldType.O3)
    ..m<$core.String, VerificationTemplateField>(
        4, _omitFieldNames ? '' : 'fields',
        entryClassName: 'VerificationTemplateData.FieldsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: VerificationTemplateField.create,
        valueDefaultOrMaker: VerificationTemplateField.getDefault,
        packageName: const $pb.PackageName(
            'services.verifiablecredentials.templates.v1'))
    ..aOS(5, _omitFieldNames ? '' : 'credentialTemplateId')
    ..aOS(8, _omitFieldNames ? '' : 'ecosystemId')
    ..aOS(9, _omitFieldNames ? '' : 'type')
    ..aOS(10, _omitFieldNames ? '' : 'createdBy')
    ..aOS(11, _omitFieldNames ? '' : 'dateCreated')
    ..aOS(12, _omitFieldNames ? '' : 'title')
    ..aOS(13, _omitFieldNames ? '' : 'description')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  VerificationTemplateData clone() =>
      VerificationTemplateData()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  VerificationTemplateData copyWith(
          void Function(VerificationTemplateData) updates) =>
      super.copyWith((message) => updates(message as VerificationTemplateData))
          as VerificationTemplateData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VerificationTemplateData create() => VerificationTemplateData._();
  VerificationTemplateData createEmptyInstance() => create();
  static $pb.PbList<VerificationTemplateData> createRepeated() =>
      $pb.PbList<VerificationTemplateData>();
  @$core.pragma('dart2js:noInline')
  static VerificationTemplateData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VerificationTemplateData>(create);
  static VerificationTemplateData? _defaultInstance;

  /// Template ID
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

  /// Template name
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

  /// Template version number
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

  /// Fields defined for the template
  @$pb.TagNumber(4)
  $core.Map<$core.String, VerificationTemplateField> get fields => $_getMap(3);

  /// Source credential template, used for verifying that the specified `fields` are present in the credential template
  @$pb.TagNumber(5)
  $core.String get credentialTemplateId => $_getSZ(4);
  @$pb.TagNumber(5)
  set credentialTemplateId($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasCredentialTemplateId() => $_has(4);
  @$pb.TagNumber(5)
  void clearCredentialTemplateId() => clearField(5);

  /// ID of ecosystem in which template resides
  @$pb.TagNumber(8)
  $core.String get ecosystemId => $_getSZ(5);
  @$pb.TagNumber(8)
  set ecosystemId($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasEcosystemId() => $_has(5);
  @$pb.TagNumber(8)
  void clearEcosystemId() => clearField(8);

  /// Template type (`VerificationTemplate`)
  @$pb.TagNumber(9)
  $core.String get type => $_getSZ(6);
  @$pb.TagNumber(9)
  set type($core.String v) {
    $_setString(6, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasType() => $_has(6);
  @$pb.TagNumber(9)
  void clearType() => clearField(9);

  /// ID of template creator
  @$pb.TagNumber(10)
  $core.String get createdBy => $_getSZ(7);
  @$pb.TagNumber(10)
  set createdBy($core.String v) {
    $_setString(7, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasCreatedBy() => $_has(7);
  @$pb.TagNumber(10)
  void clearCreatedBy() => clearField(10);

  /// Date when template was created as ISO 8601 utc string
  @$pb.TagNumber(11)
  $core.String get dateCreated => $_getSZ(8);
  @$pb.TagNumber(11)
  set dateCreated($core.String v) {
    $_setString(8, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasDateCreated() => $_has(8);
  @$pb.TagNumber(11)
  void clearDateCreated() => clearField(11);

  /// Human-readable template title
  @$pb.TagNumber(12)
  $core.String get title => $_getSZ(9);
  @$pb.TagNumber(12)
  set title($core.String v) {
    $_setString(9, v);
  }

  @$pb.TagNumber(12)
  $core.bool hasTitle() => $_has(9);
  @$pb.TagNumber(12)
  void clearTitle() => clearField(12);

  /// Human-readable template description
  @$pb.TagNumber(13)
  $core.String get description => $_getSZ(10);
  @$pb.TagNumber(13)
  set description($core.String v) {
    $_setString(10, v);
  }

  @$pb.TagNumber(13)
  $core.bool hasDescription() => $_has(10);
  @$pb.TagNumber(13)
  void clearDescription() => clearField(13);
}

/// Request to list templates using a SQL query
class ListVerificationTemplatesRequest extends $pb.GeneratedMessage {
  factory ListVerificationTemplatesRequest({
    $core.String? query,
    $core.String? continuationToken,
  }) {
    final $result = create();
    if (query != null) {
      $result.query = query;
    }
    if (continuationToken != null) {
      $result.continuationToken = continuationToken;
    }
    return $result;
  }
  ListVerificationTemplatesRequest._() : super();
  factory ListVerificationTemplatesRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListVerificationTemplatesRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListVerificationTemplatesRequest',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'services.verifiablecredentials.templates.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'query')
    ..aOS(2, _omitFieldNames ? '' : 'continuationToken')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListVerificationTemplatesRequest clone() =>
      ListVerificationTemplatesRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListVerificationTemplatesRequest copyWith(
          void Function(ListVerificationTemplatesRequest) updates) =>
      super.copyWith(
              (message) => updates(message as ListVerificationTemplatesRequest))
          as ListVerificationTemplatesRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListVerificationTemplatesRequest create() =>
      ListVerificationTemplatesRequest._();
  ListVerificationTemplatesRequest createEmptyInstance() => create();
  static $pb.PbList<ListVerificationTemplatesRequest> createRepeated() =>
      $pb.PbList<ListVerificationTemplatesRequest>();
  @$core.pragma('dart2js:noInline')
  static ListVerificationTemplatesRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListVerificationTemplatesRequest>(
          create);
  static ListVerificationTemplatesRequest? _defaultInstance;

  /// SQL query to execute. Example: `SELECT * FROM c WHERE c.name = 'Diploma'`
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

  /// Token provided by previous `ListCredentialTemplatesResponse`
  /// if more data is available for query
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

class ListVerificationTemplatesResponse extends $pb.GeneratedMessage {
  factory ListVerificationTemplatesResponse({
    $core.Iterable<VerificationTemplateData>? templates,
    $core.bool? hasMoreResults,
    $core.String? continuationToken,
  }) {
    final $result = create();
    if (templates != null) {
      $result.templates.addAll(templates);
    }
    if (hasMoreResults != null) {
      $result.hasMoreResults = hasMoreResults;
    }
    if (continuationToken != null) {
      $result.continuationToken = continuationToken;
    }
    return $result;
  }
  ListVerificationTemplatesResponse._() : super();
  factory ListVerificationTemplatesResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListVerificationTemplatesResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListVerificationTemplatesResponse',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'services.verifiablecredentials.templates.v1'),
      createEmptyInstance: create)
    ..pc<VerificationTemplateData>(
        1, _omitFieldNames ? '' : 'templates', $pb.PbFieldType.PM,
        subBuilder: VerificationTemplateData.create)
    ..aOB(2, _omitFieldNames ? '' : 'hasMoreResults')
    ..aOS(3, _omitFieldNames ? '' : 'continuationToken')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListVerificationTemplatesResponse clone() =>
      ListVerificationTemplatesResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListVerificationTemplatesResponse copyWith(
          void Function(ListVerificationTemplatesResponse) updates) =>
      super.copyWith((message) =>
              updates(message as ListVerificationTemplatesResponse))
          as ListVerificationTemplatesResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListVerificationTemplatesResponse create() =>
      ListVerificationTemplatesResponse._();
  ListVerificationTemplatesResponse createEmptyInstance() => create();
  static $pb.PbList<ListVerificationTemplatesResponse> createRepeated() =>
      $pb.PbList<ListVerificationTemplatesResponse>();
  @$core.pragma('dart2js:noInline')
  static ListVerificationTemplatesResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListVerificationTemplatesResponse>(
          create);
  static ListVerificationTemplatesResponse? _defaultInstance;

  /// Templates found by query
  @$pb.TagNumber(1)
  $core.List<VerificationTemplateData> get templates => $_getList(0);

  /// Whether more results are available for this query via `continuation_token`
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

  /// Token to fetch next set of results via `ListVerificationTemplatesRequest`
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

/// A field defined in a template
class VerificationTemplateField extends $pb.GeneratedMessage {
  factory VerificationTemplateField({
    VerificationShareType? fieldShareType,
    $core.String? usagePolicy,
  }) {
    final $result = create();
    if (fieldShareType != null) {
      $result.fieldShareType = fieldShareType;
    }
    if (usagePolicy != null) {
      $result.usagePolicy = usagePolicy;
    }
    return $result;
  }
  VerificationTemplateField._() : super();
  factory VerificationTemplateField.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory VerificationTemplateField.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VerificationTemplateField',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'services.verifiablecredentials.templates.v1'),
      createEmptyInstance: create)
    ..e<VerificationShareType>(
        1, _omitFieldNames ? '' : 'fieldShareType', $pb.PbFieldType.OE,
        defaultOrMaker: VerificationShareType.OPTIONAL,
        valueOf: VerificationShareType.valueOf,
        enumValues: VerificationShareType.values)
    ..aOS(2, _omitFieldNames ? '' : 'usagePolicy')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  VerificationTemplateField clone() =>
      VerificationTemplateField()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  VerificationTemplateField copyWith(
          void Function(VerificationTemplateField) updates) =>
      super.copyWith((message) => updates(message as VerificationTemplateField))
          as VerificationTemplateField;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VerificationTemplateField create() => VerificationTemplateField._();
  VerificationTemplateField createEmptyInstance() => create();
  static $pb.PbList<VerificationTemplateField> createRepeated() =>
      $pb.PbList<VerificationTemplateField>();
  @$core.pragma('dart2js:noInline')
  static VerificationTemplateField getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VerificationTemplateField>(create);
  static VerificationTemplateField? _defaultInstance;

  /// Whether this field may be omitted on proof creation
  @$pb.TagNumber(1)
  VerificationShareType get fieldShareType => $_getN(0);
  @$pb.TagNumber(1)
  set fieldShareType(VerificationShareType v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFieldShareType() => $_has(0);
  @$pb.TagNumber(1)
  void clearFieldShareType() => clearField(1);

  /// User-facing explanation of what is done with this data
  @$pb.TagNumber(2)
  $core.String get usagePolicy => $_getSZ(1);
  @$pb.TagNumber(2)
  set usagePolicy($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasUsagePolicy() => $_has(1);
  @$pb.TagNumber(2)
  void clearUsagePolicy() => clearField(2);
}

/// A patch to apply to an existing template field
class VerificationTemplateFieldPatch extends $pb.GeneratedMessage {
  factory VerificationTemplateFieldPatch({
    VerificationShareType? fieldShareType,
    $core.String? usagePolicy,
  }) {
    final $result = create();
    if (fieldShareType != null) {
      $result.fieldShareType = fieldShareType;
    }
    if (usagePolicy != null) {
      $result.usagePolicy = usagePolicy;
    }
    return $result;
  }
  VerificationTemplateFieldPatch._() : super();
  factory VerificationTemplateFieldPatch.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory VerificationTemplateFieldPatch.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VerificationTemplateFieldPatch',
      package: const $pb.PackageName(_omitMessageNames
          ? ''
          : 'services.verifiablecredentials.templates.v1'),
      createEmptyInstance: create)
    ..e<VerificationShareType>(
        1, _omitFieldNames ? '' : 'fieldShareType', $pb.PbFieldType.OE,
        defaultOrMaker: VerificationShareType.OPTIONAL,
        valueOf: VerificationShareType.valueOf,
        enumValues: VerificationShareType.values)
    ..aOS(2, _omitFieldNames ? '' : 'usagePolicy')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  VerificationTemplateFieldPatch clone() =>
      VerificationTemplateFieldPatch()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  VerificationTemplateFieldPatch copyWith(
          void Function(VerificationTemplateFieldPatch) updates) =>
      super.copyWith(
              (message) => updates(message as VerificationTemplateFieldPatch))
          as VerificationTemplateFieldPatch;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VerificationTemplateFieldPatch create() =>
      VerificationTemplateFieldPatch._();
  VerificationTemplateFieldPatch createEmptyInstance() => create();
  static $pb.PbList<VerificationTemplateFieldPatch> createRepeated() =>
      $pb.PbList<VerificationTemplateFieldPatch>();
  @$core.pragma('dart2js:noInline')
  static VerificationTemplateFieldPatch getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VerificationTemplateFieldPatch>(create);
  static VerificationTemplateFieldPatch? _defaultInstance;

  /// Human-readable name of the field
  @$pb.TagNumber(1)
  VerificationShareType get fieldShareType => $_getN(0);
  @$pb.TagNumber(1)
  set fieldShareType(VerificationShareType v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFieldShareType() => $_has(0);
  @$pb.TagNumber(1)
  void clearFieldShareType() => clearField(1);

  /// User-facing explanation of what is done with this data
  @$pb.TagNumber(2)
  $core.String get usagePolicy => $_getSZ(1);
  @$pb.TagNumber(2)
  set usagePolicy($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasUsagePolicy() => $_has(1);
  @$pb.TagNumber(2)
  void clearUsagePolicy() => clearField(2);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
