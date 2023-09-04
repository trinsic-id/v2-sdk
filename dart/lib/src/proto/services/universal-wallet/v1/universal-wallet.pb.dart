//
//  Generated code. Do not modify.
//  source: services/universal-wallet/v1/universal-wallet.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../provider/v1/provider.pb.dart' as $2;
import '../../provider/v1/provider.pbenum.dart' as $2;

/// Request to search items in wallet
class SearchRequest extends $pb.GeneratedMessage {
  factory SearchRequest({
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
  SearchRequest._() : super();
  factory SearchRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SearchRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SearchRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.universalwallet.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'query')
    ..aOS(2, _omitFieldNames ? '' : 'continuationToken')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SearchRequest clone() => SearchRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SearchRequest copyWith(void Function(SearchRequest) updates) =>
      super.copyWith((message) => updates(message as SearchRequest))
          as SearchRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SearchRequest create() => SearchRequest._();
  SearchRequest createEmptyInstance() => create();
  static $pb.PbList<SearchRequest> createRepeated() =>
      $pb.PbList<SearchRequest>();
  @$core.pragma('dart2js:noInline')
  static SearchRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SearchRequest>(create);
  static SearchRequest? _defaultInstance;

  /// SQL Query to execute against items in wallet
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

  /// Token provided by previous `SearchResponse`
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

/// Response to `SearchRequest`
class SearchResponse extends $pb.GeneratedMessage {
  factory SearchResponse({
    $core.Iterable<$core.String>? items,
    $core.bool? hasMoreResults,
    $core.String? continuationToken,
  }) {
    final $result = create();
    if (items != null) {
      $result.items.addAll(items);
    }
    if (hasMoreResults != null) {
      $result.hasMoreResults = hasMoreResults;
    }
    if (continuationToken != null) {
      $result.continuationToken = continuationToken;
    }
    return $result;
  }
  SearchResponse._() : super();
  factory SearchResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SearchResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SearchResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.universalwallet.v1'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'items')
    ..aOB(2, _omitFieldNames ? '' : 'hasMoreResults')
    ..aOS(4, _omitFieldNames ? '' : 'continuationToken')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SearchResponse clone() => SearchResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SearchResponse copyWith(void Function(SearchResponse) updates) =>
      super.copyWith((message) => updates(message as SearchResponse))
          as SearchResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SearchResponse create() => SearchResponse._();
  SearchResponse createEmptyInstance() => create();
  static $pb.PbList<SearchResponse> createRepeated() =>
      $pb.PbList<SearchResponse>();
  @$core.pragma('dart2js:noInline')
  static SearchResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SearchResponse>(create);
  static SearchResponse? _defaultInstance;

  /// Array of query results, as JSON strings
  @$pb.TagNumber(1)
  $core.List<$core.String> get items => $_getList(0);

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

  /// Token to fetch next set of results via `SearchRequest`
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

/// Request to fetch an item from wallet
class GetItemRequest extends $pb.GeneratedMessage {
  factory GetItemRequest({
    $core.String? itemId,
  }) {
    final $result = create();
    if (itemId != null) {
      $result.itemId = itemId;
    }
    return $result;
  }
  GetItemRequest._() : super();
  factory GetItemRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetItemRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetItemRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.universalwallet.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'itemId')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetItemRequest clone() => GetItemRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetItemRequest copyWith(void Function(GetItemRequest) updates) =>
      super.copyWith((message) => updates(message as GetItemRequest))
          as GetItemRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetItemRequest create() => GetItemRequest._();
  GetItemRequest createEmptyInstance() => create();
  static $pb.PbList<GetItemRequest> createRepeated() =>
      $pb.PbList<GetItemRequest>();
  @$core.pragma('dart2js:noInline')
  static GetItemRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetItemRequest>(create);
  static GetItemRequest? _defaultInstance;

  /// ID of item in wallet
  @$pb.TagNumber(1)
  $core.String get itemId => $_getSZ(0);
  @$pb.TagNumber(1)
  set itemId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasItemId() => $_has(0);
  @$pb.TagNumber(1)
  void clearItemId() => clearField(1);
}

/// Response to `GetItemRequest`
class GetItemResponse extends $pb.GeneratedMessage {
  factory GetItemResponse({
    $core.String? itemJson,
    $core.String? itemType,
  }) {
    final $result = create();
    if (itemJson != null) {
      $result.itemJson = itemJson;
    }
    if (itemType != null) {
      $result.itemType = itemType;
    }
    return $result;
  }
  GetItemResponse._() : super();
  factory GetItemResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetItemResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetItemResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.universalwallet.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'itemJson')
    ..aOS(2, _omitFieldNames ? '' : 'itemType')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetItemResponse clone() => GetItemResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetItemResponse copyWith(void Function(GetItemResponse) updates) =>
      super.copyWith((message) => updates(message as GetItemResponse))
          as GetItemResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetItemResponse create() => GetItemResponse._();
  GetItemResponse createEmptyInstance() => create();
  static $pb.PbList<GetItemResponse> createRepeated() =>
      $pb.PbList<GetItemResponse>();
  @$core.pragma('dart2js:noInline')
  static GetItemResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetItemResponse>(create);
  static GetItemResponse? _defaultInstance;

  /// Item data as a JSON string
  @$pb.TagNumber(1)
  $core.String get itemJson => $_getSZ(0);
  @$pb.TagNumber(1)
  set itemJson($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasItemJson() => $_has(0);
  @$pb.TagNumber(1)
  void clearItemJson() => clearField(1);

  /// Type of item specified when item was inserted into wallet
  @$pb.TagNumber(2)
  $core.String get itemType => $_getSZ(1);
  @$pb.TagNumber(2)
  set itemType($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasItemType() => $_has(1);
  @$pb.TagNumber(2)
  void clearItemType() => clearField(2);
}

/// Request to update item in wallet
class UpdateItemRequest extends $pb.GeneratedMessage {
  factory UpdateItemRequest({
    $core.String? itemId,
    $core.String? itemType,
  }) {
    final $result = create();
    if (itemId != null) {
      $result.itemId = itemId;
    }
    if (itemType != null) {
      $result.itemType = itemType;
    }
    return $result;
  }
  UpdateItemRequest._() : super();
  factory UpdateItemRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UpdateItemRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpdateItemRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.universalwallet.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'itemId')
    ..aOS(2, _omitFieldNames ? '' : 'itemType')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UpdateItemRequest clone() => UpdateItemRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UpdateItemRequest copyWith(void Function(UpdateItemRequest) updates) =>
      super.copyWith((message) => updates(message as UpdateItemRequest))
          as UpdateItemRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateItemRequest create() => UpdateItemRequest._();
  UpdateItemRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateItemRequest> createRepeated() =>
      $pb.PbList<UpdateItemRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateItemRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateItemRequest>(create);
  static UpdateItemRequest? _defaultInstance;

  /// ID of item in wallet
  @$pb.TagNumber(1)
  $core.String get itemId => $_getSZ(0);
  @$pb.TagNumber(1)
  set itemId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasItemId() => $_has(0);
  @$pb.TagNumber(1)
  void clearItemId() => clearField(1);

  /// Item type (ex. "VerifiableCredential")
  @$pb.TagNumber(2)
  $core.String get itemType => $_getSZ(1);
  @$pb.TagNumber(2)
  set itemType($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasItemType() => $_has(1);
  @$pb.TagNumber(2)
  void clearItemType() => clearField(2);
}

/// Response to `UpdateItemRequest`
class UpdateItemResponse extends $pb.GeneratedMessage {
  factory UpdateItemResponse() => create();
  UpdateItemResponse._() : super();
  factory UpdateItemResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UpdateItemResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpdateItemResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.universalwallet.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UpdateItemResponse clone() => UpdateItemResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UpdateItemResponse copyWith(void Function(UpdateItemResponse) updates) =>
      super.copyWith((message) => updates(message as UpdateItemResponse))
          as UpdateItemResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateItemResponse create() => UpdateItemResponse._();
  UpdateItemResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateItemResponse> createRepeated() =>
      $pb.PbList<UpdateItemResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateItemResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateItemResponse>(create);
  static UpdateItemResponse? _defaultInstance;
}

/// Request to insert a JSON document into a wallet
class InsertItemRequest extends $pb.GeneratedMessage {
  factory InsertItemRequest({
    $core.String? itemJson,
    $core.String? itemType,
  }) {
    final $result = create();
    if (itemJson != null) {
      $result.itemJson = itemJson;
    }
    if (itemType != null) {
      $result.itemType = itemType;
    }
    return $result;
  }
  InsertItemRequest._() : super();
  factory InsertItemRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory InsertItemRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'InsertItemRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.universalwallet.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'itemJson')
    ..aOS(2, _omitFieldNames ? '' : 'itemType')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  InsertItemRequest clone() => InsertItemRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  InsertItemRequest copyWith(void Function(InsertItemRequest) updates) =>
      super.copyWith((message) => updates(message as InsertItemRequest))
          as InsertItemRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InsertItemRequest create() => InsertItemRequest._();
  InsertItemRequest createEmptyInstance() => create();
  static $pb.PbList<InsertItemRequest> createRepeated() =>
      $pb.PbList<InsertItemRequest>();
  @$core.pragma('dart2js:noInline')
  static InsertItemRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<InsertItemRequest>(create);
  static InsertItemRequest? _defaultInstance;

  /// Document to insert; must be stringified JSON
  @$pb.TagNumber(1)
  $core.String get itemJson => $_getSZ(0);
  @$pb.TagNumber(1)
  set itemJson($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasItemJson() => $_has(0);
  @$pb.TagNumber(1)
  void clearItemJson() => clearField(1);

  /// Item type (ex. "VerifiableCredential")
  @$pb.TagNumber(2)
  $core.String get itemType => $_getSZ(1);
  @$pb.TagNumber(2)
  set itemType($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasItemType() => $_has(1);
  @$pb.TagNumber(2)
  void clearItemType() => clearField(2);
}

/// Response to `InsertItemRequest`
class InsertItemResponse extends $pb.GeneratedMessage {
  factory InsertItemResponse({
    $core.String? itemId,
  }) {
    final $result = create();
    if (itemId != null) {
      $result.itemId = itemId;
    }
    return $result;
  }
  InsertItemResponse._() : super();
  factory InsertItemResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory InsertItemResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'InsertItemResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.universalwallet.v1'),
      createEmptyInstance: create)
    ..aOS(2, _omitFieldNames ? '' : 'itemId')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  InsertItemResponse clone() => InsertItemResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  InsertItemResponse copyWith(void Function(InsertItemResponse) updates) =>
      super.copyWith((message) => updates(message as InsertItemResponse))
          as InsertItemResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InsertItemResponse create() => InsertItemResponse._();
  InsertItemResponse createEmptyInstance() => create();
  static $pb.PbList<InsertItemResponse> createRepeated() =>
      $pb.PbList<InsertItemResponse>();
  @$core.pragma('dart2js:noInline')
  static InsertItemResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<InsertItemResponse>(create);
  static InsertItemResponse? _defaultInstance;

  /// ID of item inserted into wallet
  @$pb.TagNumber(2)
  $core.String get itemId => $_getSZ(0);
  @$pb.TagNumber(2)
  set itemId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasItemId() => $_has(0);
  @$pb.TagNumber(2)
  void clearItemId() => clearField(2);
}

/// Request to delete an item in a wallet
class DeleteItemRequest extends $pb.GeneratedMessage {
  factory DeleteItemRequest({
    $core.String? itemId,
  }) {
    final $result = create();
    if (itemId != null) {
      $result.itemId = itemId;
    }
    return $result;
  }
  DeleteItemRequest._() : super();
  factory DeleteItemRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeleteItemRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeleteItemRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.universalwallet.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'itemId')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DeleteItemRequest clone() => DeleteItemRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DeleteItemRequest copyWith(void Function(DeleteItemRequest) updates) =>
      super.copyWith((message) => updates(message as DeleteItemRequest))
          as DeleteItemRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteItemRequest create() => DeleteItemRequest._();
  DeleteItemRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteItemRequest> createRepeated() =>
      $pb.PbList<DeleteItemRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteItemRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteItemRequest>(create);
  static DeleteItemRequest? _defaultInstance;

  /// ID of item to delete
  @$pb.TagNumber(1)
  $core.String get itemId => $_getSZ(0);
  @$pb.TagNumber(1)
  set itemId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasItemId() => $_has(0);
  @$pb.TagNumber(1)
  void clearItemId() => clearField(1);
}

/// Response to `DeleteItemRequest`
class DeleteItemResponse extends $pb.GeneratedMessage {
  factory DeleteItemResponse() => create();
  DeleteItemResponse._() : super();
  factory DeleteItemResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeleteItemResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeleteItemResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.universalwallet.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DeleteItemResponse clone() => DeleteItemResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DeleteItemResponse copyWith(void Function(DeleteItemResponse) updates) =>
      super.copyWith((message) => updates(message as DeleteItemResponse))
          as DeleteItemResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteItemResponse create() => DeleteItemResponse._();
  DeleteItemResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteItemResponse> createRepeated() =>
      $pb.PbList<DeleteItemResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteItemResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteItemResponse>(create);
  static DeleteItemResponse? _defaultInstance;
}

enum DeleteWalletRequest_Account { email, walletId, didUri, notSet }

/// Request to delete a wallet
class DeleteWalletRequest extends $pb.GeneratedMessage {
  factory DeleteWalletRequest({
    $core.String? email,
    $core.String? walletId,
    $core.String? didUri,
  }) {
    final $result = create();
    if (email != null) {
      $result.email = email;
    }
    if (walletId != null) {
      $result.walletId = walletId;
    }
    if (didUri != null) {
      $result.didUri = didUri;
    }
    return $result;
  }
  DeleteWalletRequest._() : super();
  factory DeleteWalletRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeleteWalletRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, DeleteWalletRequest_Account>
      _DeleteWalletRequest_AccountByTag = {
    1: DeleteWalletRequest_Account.email,
    2: DeleteWalletRequest_Account.walletId,
    4: DeleteWalletRequest_Account.didUri,
    0: DeleteWalletRequest_Account.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeleteWalletRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.universalwallet.v1'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 4])
    ..aOS(1, _omitFieldNames ? '' : 'email')
    ..aOS(2, _omitFieldNames ? '' : 'walletId')
    ..aOS(4, _omitFieldNames ? '' : 'didUri')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DeleteWalletRequest clone() => DeleteWalletRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DeleteWalletRequest copyWith(void Function(DeleteWalletRequest) updates) =>
      super.copyWith((message) => updates(message as DeleteWalletRequest))
          as DeleteWalletRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteWalletRequest create() => DeleteWalletRequest._();
  DeleteWalletRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteWalletRequest> createRepeated() =>
      $pb.PbList<DeleteWalletRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteWalletRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteWalletRequest>(create);
  static DeleteWalletRequest? _defaultInstance;

  DeleteWalletRequest_Account whichAccount() =>
      _DeleteWalletRequest_AccountByTag[$_whichOneof(0)]!;
  void clearAccount() => clearField($_whichOneof(0));

  /// Email address of account to delete.
  /// Mutually exclusive with `walletId` and `didUri`.
  @$pb.TagNumber(1)
  $core.String get email => $_getSZ(0);
  @$pb.TagNumber(1)
  set email($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasEmail() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmail() => clearField(1);

  /// Wallet ID of account to delete.
  /// Mutually exclusive with `email` and `didUri`.
  @$pb.TagNumber(2)
  $core.String get walletId => $_getSZ(1);
  @$pb.TagNumber(2)
  set walletId($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasWalletId() => $_has(1);
  @$pb.TagNumber(2)
  void clearWalletId() => clearField(2);

  /// DID URI of the account to delete.
  /// Mutually exclusive with `email` and `walletId`.
  @$pb.TagNumber(4)
  $core.String get didUri => $_getSZ(2);
  @$pb.TagNumber(4)
  set didUri($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasDidUri() => $_has(2);
  @$pb.TagNumber(4)
  void clearDidUri() => clearField(4);
}

/// Response to `DeleteWalletRequest`. Empty payload.
class DeleteWalletResponse extends $pb.GeneratedMessage {
  factory DeleteWalletResponse() => create();
  DeleteWalletResponse._() : super();
  factory DeleteWalletResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeleteWalletResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeleteWalletResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.universalwallet.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DeleteWalletResponse clone() =>
      DeleteWalletResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DeleteWalletResponse copyWith(void Function(DeleteWalletResponse) updates) =>
      super.copyWith((message) => updates(message as DeleteWalletResponse))
          as DeleteWalletResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteWalletResponse create() => DeleteWalletResponse._();
  DeleteWalletResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteWalletResponse> createRepeated() =>
      $pb.PbList<DeleteWalletResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteWalletResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteWalletResponse>(create);
  static DeleteWalletResponse? _defaultInstance;
}

class CreateWalletRequest_ExternalIdentity extends $pb.GeneratedMessage {
  factory CreateWalletRequest_ExternalIdentity({
    $core.String? identity,
    $2.IdentityProvider? provider,
  }) {
    final $result = create();
    if (identity != null) {
      $result.identity = identity;
    }
    if (provider != null) {
      $result.provider = provider;
    }
    return $result;
  }
  CreateWalletRequest_ExternalIdentity._() : super();
  factory CreateWalletRequest_ExternalIdentity.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreateWalletRequest_ExternalIdentity.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateWalletRequest.ExternalIdentity',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.universalwallet.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'identity')
    ..e<$2.IdentityProvider>(
        2, _omitFieldNames ? '' : 'provider', $pb.PbFieldType.OE,
        defaultOrMaker: $2.IdentityProvider.Unknown,
        valueOf: $2.IdentityProvider.valueOf,
        enumValues: $2.IdentityProvider.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CreateWalletRequest_ExternalIdentity clone() =>
      CreateWalletRequest_ExternalIdentity()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CreateWalletRequest_ExternalIdentity copyWith(
          void Function(CreateWalletRequest_ExternalIdentity) updates) =>
      super.copyWith((message) =>
              updates(message as CreateWalletRequest_ExternalIdentity))
          as CreateWalletRequest_ExternalIdentity;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateWalletRequest_ExternalIdentity create() =>
      CreateWalletRequest_ExternalIdentity._();
  CreateWalletRequest_ExternalIdentity createEmptyInstance() => create();
  static $pb.PbList<CreateWalletRequest_ExternalIdentity> createRepeated() =>
      $pb.PbList<CreateWalletRequest_ExternalIdentity>();
  @$core.pragma('dart2js:noInline')
  static CreateWalletRequest_ExternalIdentity getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          CreateWalletRequest_ExternalIdentity>(create);
  static CreateWalletRequest_ExternalIdentity? _defaultInstance;

  /// The user identity to add to the wallet
  /// This can be an email address or phone number (formatted as +[country code][phone number])
  @$pb.TagNumber(1)
  $core.String get identity => $_getSZ(0);
  @$pb.TagNumber(1)
  set identity($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasIdentity() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdentity() => clearField(1);

  /// The type of identity provider, like EMAIL or PHONE
  @$pb.TagNumber(2)
  $2.IdentityProvider get provider => $_getN(1);
  @$pb.TagNumber(2)
  set provider($2.IdentityProvider v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasProvider() => $_has(1);
  @$pb.TagNumber(2)
  void clearProvider() => clearField(2);
}

class CreateWalletRequest extends $pb.GeneratedMessage {
  factory CreateWalletRequest({
    $core.String? ecosystemId,
    $core.String? description,
    CreateWalletRequest_ExternalIdentity? identity,
  }) {
    final $result = create();
    if (ecosystemId != null) {
      $result.ecosystemId = ecosystemId;
    }
    if (description != null) {
      $result.description = description;
    }
    if (identity != null) {
      $result.identity = identity;
    }
    return $result;
  }
  CreateWalletRequest._() : super();
  factory CreateWalletRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreateWalletRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateWalletRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.universalwallet.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ecosystemId')
    ..aOS(2, _omitFieldNames ? '' : 'description')
    ..aOM<CreateWalletRequest_ExternalIdentity>(
        3, _omitFieldNames ? '' : 'identity',
        subBuilder: CreateWalletRequest_ExternalIdentity.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CreateWalletRequest clone() => CreateWalletRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CreateWalletRequest copyWith(void Function(CreateWalletRequest) updates) =>
      super.copyWith((message) => updates(message as CreateWalletRequest))
          as CreateWalletRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateWalletRequest create() => CreateWalletRequest._();
  CreateWalletRequest createEmptyInstance() => create();
  static $pb.PbList<CreateWalletRequest> createRepeated() =>
      $pb.PbList<CreateWalletRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateWalletRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateWalletRequest>(create);
  static CreateWalletRequest? _defaultInstance;

  /// Ecosystem ID of the wallet to create
  @$pb.TagNumber(1)
  $core.String get ecosystemId => $_getSZ(0);
  @$pb.TagNumber(1)
  set ecosystemId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasEcosystemId() => $_has(0);
  @$pb.TagNumber(1)
  void clearEcosystemId() => clearField(1);

  /// Wallet name or description.
  /// Use this field to add vendor specific information about this wallet,
  /// such as email, phone, internal ID, or anything you'd like to associate
  /// with this wallet. This field is searchable.
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

  /// Optional identity to add to the wallet (email or sms).
  /// Use this field when inviting participants into an ecosystem.
  /// If this field is set, an auth token will not be sent in the response.
  @$pb.TagNumber(3)
  CreateWalletRequest_ExternalIdentity get identity => $_getN(2);
  @$pb.TagNumber(3)
  set identity(CreateWalletRequest_ExternalIdentity v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasIdentity() => $_has(2);
  @$pb.TagNumber(3)
  void clearIdentity() => clearField(3);
  @$pb.TagNumber(3)
  CreateWalletRequest_ExternalIdentity ensureIdentity() => $_ensure(2);
}

class CreateWalletResponse extends $pb.GeneratedMessage {
  factory CreateWalletResponse({
    $core.String? authToken,
    $core.String? tokenId,
    $2.WalletConfiguration? wallet,
  }) {
    final $result = create();
    if (authToken != null) {
      $result.authToken = authToken;
    }
    if (tokenId != null) {
      $result.tokenId = tokenId;
    }
    if (wallet != null) {
      $result.wallet = wallet;
    }
    return $result;
  }
  CreateWalletResponse._() : super();
  factory CreateWalletResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreateWalletResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateWalletResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.universalwallet.v1'),
      createEmptyInstance: create)
    ..aOS(2, _omitFieldNames ? '' : 'authToken')
    ..aOS(3, _omitFieldNames ? '' : 'tokenId')
    ..aOM<$2.WalletConfiguration>(4, _omitFieldNames ? '' : 'wallet',
        subBuilder: $2.WalletConfiguration.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CreateWalletResponse clone() =>
      CreateWalletResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CreateWalletResponse copyWith(void Function(CreateWalletResponse) updates) =>
      super.copyWith((message) => updates(message as CreateWalletResponse))
          as CreateWalletResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateWalletResponse create() => CreateWalletResponse._();
  CreateWalletResponse createEmptyInstance() => create();
  static $pb.PbList<CreateWalletResponse> createRepeated() =>
      $pb.PbList<CreateWalletResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateWalletResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateWalletResponse>(create);
  static CreateWalletResponse? _defaultInstance;

  /// Auth token for the newly created wallet
  @$pb.TagNumber(2)
  $core.String get authToken => $_getSZ(0);
  @$pb.TagNumber(2)
  set authToken($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasAuthToken() => $_has(0);
  @$pb.TagNumber(2)
  void clearAuthToken() => clearField(2);

  /// Token ID of the newly generated token
  @$pb.TagNumber(3)
  $core.String get tokenId => $_getSZ(1);
  @$pb.TagNumber(3)
  set tokenId($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasTokenId() => $_has(1);
  @$pb.TagNumber(3)
  void clearTokenId() => clearField(3);

  /// Wallet configuration
  @$pb.TagNumber(4)
  $2.WalletConfiguration get wallet => $_getN(2);
  @$pb.TagNumber(4)
  set wallet($2.WalletConfiguration v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasWallet() => $_has(2);
  @$pb.TagNumber(4)
  void clearWallet() => clearField(4);
  @$pb.TagNumber(4)
  $2.WalletConfiguration ensureWallet() => $_ensure(2);
}

class GenerateAuthTokenRequest extends $pb.GeneratedMessage {
  factory GenerateAuthTokenRequest({
    $core.String? walletId,
    $core.String? tokenDescription,
  }) {
    final $result = create();
    if (walletId != null) {
      $result.walletId = walletId;
    }
    if (tokenDescription != null) {
      $result.tokenDescription = tokenDescription;
    }
    return $result;
  }
  GenerateAuthTokenRequest._() : super();
  factory GenerateAuthTokenRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GenerateAuthTokenRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GenerateAuthTokenRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.universalwallet.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'walletId')
    ..aOS(2, _omitFieldNames ? '' : 'tokenDescription')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GenerateAuthTokenRequest clone() =>
      GenerateAuthTokenRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GenerateAuthTokenRequest copyWith(
          void Function(GenerateAuthTokenRequest) updates) =>
      super.copyWith((message) => updates(message as GenerateAuthTokenRequest))
          as GenerateAuthTokenRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GenerateAuthTokenRequest create() => GenerateAuthTokenRequest._();
  GenerateAuthTokenRequest createEmptyInstance() => create();
  static $pb.PbList<GenerateAuthTokenRequest> createRepeated() =>
      $pb.PbList<GenerateAuthTokenRequest>();
  @$core.pragma('dart2js:noInline')
  static GenerateAuthTokenRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GenerateAuthTokenRequest>(create);
  static GenerateAuthTokenRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get walletId => $_getSZ(0);
  @$pb.TagNumber(1)
  set walletId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasWalletId() => $_has(0);
  @$pb.TagNumber(1)
  void clearWalletId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get tokenDescription => $_getSZ(1);
  @$pb.TagNumber(2)
  set tokenDescription($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasTokenDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearTokenDescription() => clearField(2);
}

class GenerateAuthTokenResponse extends $pb.GeneratedMessage {
  factory GenerateAuthTokenResponse({
    $core.String? tokenId,
    $core.String? authToken,
  }) {
    final $result = create();
    if (tokenId != null) {
      $result.tokenId = tokenId;
    }
    if (authToken != null) {
      $result.authToken = authToken;
    }
    return $result;
  }
  GenerateAuthTokenResponse._() : super();
  factory GenerateAuthTokenResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GenerateAuthTokenResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GenerateAuthTokenResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.universalwallet.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'tokenId')
    ..aOS(2, _omitFieldNames ? '' : 'authToken')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GenerateAuthTokenResponse clone() =>
      GenerateAuthTokenResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GenerateAuthTokenResponse copyWith(
          void Function(GenerateAuthTokenResponse) updates) =>
      super.copyWith((message) => updates(message as GenerateAuthTokenResponse))
          as GenerateAuthTokenResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GenerateAuthTokenResponse create() => GenerateAuthTokenResponse._();
  GenerateAuthTokenResponse createEmptyInstance() => create();
  static $pb.PbList<GenerateAuthTokenResponse> createRepeated() =>
      $pb.PbList<GenerateAuthTokenResponse>();
  @$core.pragma('dart2js:noInline')
  static GenerateAuthTokenResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GenerateAuthTokenResponse>(create);
  static GenerateAuthTokenResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get tokenId => $_getSZ(0);
  @$pb.TagNumber(1)
  set tokenId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTokenId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTokenId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get authToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set authToken($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasAuthToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearAuthToken() => clearField(2);
}

/// Request to retrieve wallet information about a given wallet identified by its wallet ID
class GetWalletInfoRequest extends $pb.GeneratedMessage {
  factory GetWalletInfoRequest({
    $core.String? walletId,
  }) {
    final $result = create();
    if (walletId != null) {
      $result.walletId = walletId;
    }
    return $result;
  }
  GetWalletInfoRequest._() : super();
  factory GetWalletInfoRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetWalletInfoRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetWalletInfoRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.universalwallet.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'walletId')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetWalletInfoRequest clone() =>
      GetWalletInfoRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetWalletInfoRequest copyWith(void Function(GetWalletInfoRequest) updates) =>
      super.copyWith((message) => updates(message as GetWalletInfoRequest))
          as GetWalletInfoRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetWalletInfoRequest create() => GetWalletInfoRequest._();
  GetWalletInfoRequest createEmptyInstance() => create();
  static $pb.PbList<GetWalletInfoRequest> createRepeated() =>
      $pb.PbList<GetWalletInfoRequest>();
  @$core.pragma('dart2js:noInline')
  static GetWalletInfoRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetWalletInfoRequest>(create);
  static GetWalletInfoRequest? _defaultInstance;

  /// Wallet ID of the wallet to retrieve
  @$pb.TagNumber(1)
  $core.String get walletId => $_getSZ(0);
  @$pb.TagNumber(1)
  set walletId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasWalletId() => $_has(0);
  @$pb.TagNumber(1)
  void clearWalletId() => clearField(1);
}

/// Response to `GetWalletInfoRequest`
class GetWalletInfoResponse extends $pb.GeneratedMessage {
  factory GetWalletInfoResponse({
    $2.WalletConfiguration? wallet,
  }) {
    final $result = create();
    if (wallet != null) {
      $result.wallet = wallet;
    }
    return $result;
  }
  GetWalletInfoResponse._() : super();
  factory GetWalletInfoResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetWalletInfoResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetWalletInfoResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.universalwallet.v1'),
      createEmptyInstance: create)
    ..aOM<$2.WalletConfiguration>(1, _omitFieldNames ? '' : 'wallet',
        subBuilder: $2.WalletConfiguration.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetWalletInfoResponse clone() =>
      GetWalletInfoResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetWalletInfoResponse copyWith(
          void Function(GetWalletInfoResponse) updates) =>
      super.copyWith((message) => updates(message as GetWalletInfoResponse))
          as GetWalletInfoResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetWalletInfoResponse create() => GetWalletInfoResponse._();
  GetWalletInfoResponse createEmptyInstance() => create();
  static $pb.PbList<GetWalletInfoResponse> createRepeated() =>
      $pb.PbList<GetWalletInfoResponse>();
  @$core.pragma('dart2js:noInline')
  static GetWalletInfoResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetWalletInfoResponse>(create);
  static GetWalletInfoResponse? _defaultInstance;

  /// Wallet configuration
  @$pb.TagNumber(1)
  $2.WalletConfiguration get wallet => $_getN(0);
  @$pb.TagNumber(1)
  set wallet($2.WalletConfiguration v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasWallet() => $_has(0);
  @$pb.TagNumber(1)
  void clearWallet() => clearField(1);
  @$pb.TagNumber(1)
  $2.WalletConfiguration ensureWallet() => $_ensure(0);
}

/// Request to retrieve wallet information about the currently authenticated wallet
class GetMyInfoRequest extends $pb.GeneratedMessage {
  factory GetMyInfoRequest() => create();
  GetMyInfoRequest._() : super();
  factory GetMyInfoRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetMyInfoRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetMyInfoRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.universalwallet.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetMyInfoRequest clone() => GetMyInfoRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetMyInfoRequest copyWith(void Function(GetMyInfoRequest) updates) =>
      super.copyWith((message) => updates(message as GetMyInfoRequest))
          as GetMyInfoRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMyInfoRequest create() => GetMyInfoRequest._();
  GetMyInfoRequest createEmptyInstance() => create();
  static $pb.PbList<GetMyInfoRequest> createRepeated() =>
      $pb.PbList<GetMyInfoRequest>();
  @$core.pragma('dart2js:noInline')
  static GetMyInfoRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetMyInfoRequest>(create);
  static GetMyInfoRequest? _defaultInstance;
}

/// Response to `GetMyInfoRequest`
class GetMyInfoResponse extends $pb.GeneratedMessage {
  factory GetMyInfoResponse({
    $2.WalletConfiguration? wallet,
  }) {
    final $result = create();
    if (wallet != null) {
      $result.wallet = wallet;
    }
    return $result;
  }
  GetMyInfoResponse._() : super();
  factory GetMyInfoResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetMyInfoResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetMyInfoResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.universalwallet.v1'),
      createEmptyInstance: create)
    ..aOM<$2.WalletConfiguration>(1, _omitFieldNames ? '' : 'wallet',
        subBuilder: $2.WalletConfiguration.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetMyInfoResponse clone() => GetMyInfoResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetMyInfoResponse copyWith(void Function(GetMyInfoResponse) updates) =>
      super.copyWith((message) => updates(message as GetMyInfoResponse))
          as GetMyInfoResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMyInfoResponse create() => GetMyInfoResponse._();
  GetMyInfoResponse createEmptyInstance() => create();
  static $pb.PbList<GetMyInfoResponse> createRepeated() =>
      $pb.PbList<GetMyInfoResponse>();
  @$core.pragma('dart2js:noInline')
  static GetMyInfoResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetMyInfoResponse>(create);
  static GetMyInfoResponse? _defaultInstance;

  /// Wallet configuration
  @$pb.TagNumber(1)
  $2.WalletConfiguration get wallet => $_getN(0);
  @$pb.TagNumber(1)
  set wallet($2.WalletConfiguration v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasWallet() => $_has(0);
  @$pb.TagNumber(1)
  void clearWallet() => clearField(1);
  @$pb.TagNumber(1)
  $2.WalletConfiguration ensureWallet() => $_ensure(0);
}

/// Request to revoke a previously issued auth token
class RevokeAuthTokenRequest extends $pb.GeneratedMessage {
  factory RevokeAuthTokenRequest({
    $core.String? walletId,
    $core.String? tokenId,
  }) {
    final $result = create();
    if (walletId != null) {
      $result.walletId = walletId;
    }
    if (tokenId != null) {
      $result.tokenId = tokenId;
    }
    return $result;
  }
  RevokeAuthTokenRequest._() : super();
  factory RevokeAuthTokenRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RevokeAuthTokenRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RevokeAuthTokenRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.universalwallet.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'walletId')
    ..aOS(2, _omitFieldNames ? '' : 'tokenId')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RevokeAuthTokenRequest clone() =>
      RevokeAuthTokenRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RevokeAuthTokenRequest copyWith(
          void Function(RevokeAuthTokenRequest) updates) =>
      super.copyWith((message) => updates(message as RevokeAuthTokenRequest))
          as RevokeAuthTokenRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RevokeAuthTokenRequest create() => RevokeAuthTokenRequest._();
  RevokeAuthTokenRequest createEmptyInstance() => create();
  static $pb.PbList<RevokeAuthTokenRequest> createRepeated() =>
      $pb.PbList<RevokeAuthTokenRequest>();
  @$core.pragma('dart2js:noInline')
  static RevokeAuthTokenRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RevokeAuthTokenRequest>(create);
  static RevokeAuthTokenRequest? _defaultInstance;

  /// Wallet ID of the wallet to from which to revoke the token
  @$pb.TagNumber(1)
  $core.String get walletId => $_getSZ(0);
  @$pb.TagNumber(1)
  set walletId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasWalletId() => $_has(0);
  @$pb.TagNumber(1)
  void clearWalletId() => clearField(1);

  /// Token ID of the token to revoke
  @$pb.TagNumber(2)
  $core.String get tokenId => $_getSZ(1);
  @$pb.TagNumber(2)
  set tokenId($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasTokenId() => $_has(1);
  @$pb.TagNumber(2)
  void clearTokenId() => clearField(2);
}

class RevokeAuthTokenResponse extends $pb.GeneratedMessage {
  factory RevokeAuthTokenResponse() => create();
  RevokeAuthTokenResponse._() : super();
  factory RevokeAuthTokenResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RevokeAuthTokenResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RevokeAuthTokenResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.universalwallet.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RevokeAuthTokenResponse clone() =>
      RevokeAuthTokenResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RevokeAuthTokenResponse copyWith(
          void Function(RevokeAuthTokenResponse) updates) =>
      super.copyWith((message) => updates(message as RevokeAuthTokenResponse))
          as RevokeAuthTokenResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RevokeAuthTokenResponse create() => RevokeAuthTokenResponse._();
  RevokeAuthTokenResponse createEmptyInstance() => create();
  static $pb.PbList<RevokeAuthTokenResponse> createRepeated() =>
      $pb.PbList<RevokeAuthTokenResponse>();
  @$core.pragma('dart2js:noInline')
  static RevokeAuthTokenResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RevokeAuthTokenResponse>(create);
  static RevokeAuthTokenResponse? _defaultInstance;
}

class ListWalletsRequest extends $pb.GeneratedMessage {
  factory ListWalletsRequest({
    $core.String? filter,
  }) {
    final $result = create();
    if (filter != null) {
      $result.filter = filter;
    }
    return $result;
  }
  ListWalletsRequest._() : super();
  factory ListWalletsRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListWalletsRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListWalletsRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.universalwallet.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'filter')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListWalletsRequest clone() => ListWalletsRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListWalletsRequest copyWith(void Function(ListWalletsRequest) updates) =>
      super.copyWith((message) => updates(message as ListWalletsRequest))
          as ListWalletsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListWalletsRequest create() => ListWalletsRequest._();
  ListWalletsRequest createEmptyInstance() => create();
  static $pb.PbList<ListWalletsRequest> createRepeated() =>
      $pb.PbList<ListWalletsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListWalletsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListWalletsRequest>(create);
  static ListWalletsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get filter => $_getSZ(0);
  @$pb.TagNumber(1)
  set filter($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFilter() => $_has(0);
  @$pb.TagNumber(1)
  void clearFilter() => clearField(1);
}

class ListWalletsResponse extends $pb.GeneratedMessage {
  factory ListWalletsResponse({
    $core.Iterable<$2.WalletConfiguration>? wallets,
  }) {
    final $result = create();
    if (wallets != null) {
      $result.wallets.addAll(wallets);
    }
    return $result;
  }
  ListWalletsResponse._() : super();
  factory ListWalletsResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListWalletsResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListWalletsResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.universalwallet.v1'),
      createEmptyInstance: create)
    ..pc<$2.WalletConfiguration>(
        1, _omitFieldNames ? '' : 'wallets', $pb.PbFieldType.PM,
        subBuilder: $2.WalletConfiguration.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListWalletsResponse clone() => ListWalletsResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListWalletsResponse copyWith(void Function(ListWalletsResponse) updates) =>
      super.copyWith((message) => updates(message as ListWalletsResponse))
          as ListWalletsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListWalletsResponse create() => ListWalletsResponse._();
  ListWalletsResponse createEmptyInstance() => create();
  static $pb.PbList<ListWalletsResponse> createRepeated() =>
      $pb.PbList<ListWalletsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListWalletsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListWalletsResponse>(create);
  static ListWalletsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$2.WalletConfiguration> get wallets => $_getList(0);
}

class AddExternalIdentityInitRequest extends $pb.GeneratedMessage {
  factory AddExternalIdentityInitRequest({
    $core.String? identity,
    $2.IdentityProvider? provider,
  }) {
    final $result = create();
    if (identity != null) {
      $result.identity = identity;
    }
    if (provider != null) {
      $result.provider = provider;
    }
    return $result;
  }
  AddExternalIdentityInitRequest._() : super();
  factory AddExternalIdentityInitRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AddExternalIdentityInitRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AddExternalIdentityInitRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.universalwallet.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'identity')
    ..e<$2.IdentityProvider>(
        2, _omitFieldNames ? '' : 'provider', $pb.PbFieldType.OE,
        defaultOrMaker: $2.IdentityProvider.Unknown,
        valueOf: $2.IdentityProvider.valueOf,
        enumValues: $2.IdentityProvider.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AddExternalIdentityInitRequest clone() =>
      AddExternalIdentityInitRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AddExternalIdentityInitRequest copyWith(
          void Function(AddExternalIdentityInitRequest) updates) =>
      super.copyWith(
              (message) => updates(message as AddExternalIdentityInitRequest))
          as AddExternalIdentityInitRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddExternalIdentityInitRequest create() =>
      AddExternalIdentityInitRequest._();
  AddExternalIdentityInitRequest createEmptyInstance() => create();
  static $pb.PbList<AddExternalIdentityInitRequest> createRepeated() =>
      $pb.PbList<AddExternalIdentityInitRequest>();
  @$core.pragma('dart2js:noInline')
  static AddExternalIdentityInitRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AddExternalIdentityInitRequest>(create);
  static AddExternalIdentityInitRequest? _defaultInstance;

  /// The user identity to add to the wallet
  /// This can be an email address or phone number (formatted as +[country code][phone number])
  @$pb.TagNumber(1)
  $core.String get identity => $_getSZ(0);
  @$pb.TagNumber(1)
  set identity($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasIdentity() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdentity() => clearField(1);

  /// The type of identity provider, like EMAIL or PHONE
  @$pb.TagNumber(2)
  $2.IdentityProvider get provider => $_getN(1);
  @$pb.TagNumber(2)
  set provider($2.IdentityProvider v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasProvider() => $_has(1);
  @$pb.TagNumber(2)
  void clearProvider() => clearField(2);
}

class AddExternalIdentityInitResponse extends $pb.GeneratedMessage {
  factory AddExternalIdentityInitResponse({
    $core.String? challenge,
  }) {
    final $result = create();
    if (challenge != null) {
      $result.challenge = challenge;
    }
    return $result;
  }
  AddExternalIdentityInitResponse._() : super();
  factory AddExternalIdentityInitResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AddExternalIdentityInitResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AddExternalIdentityInitResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.universalwallet.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'challenge')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AddExternalIdentityInitResponse clone() =>
      AddExternalIdentityInitResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AddExternalIdentityInitResponse copyWith(
          void Function(AddExternalIdentityInitResponse) updates) =>
      super.copyWith(
              (message) => updates(message as AddExternalIdentityInitResponse))
          as AddExternalIdentityInitResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddExternalIdentityInitResponse create() =>
      AddExternalIdentityInitResponse._();
  AddExternalIdentityInitResponse createEmptyInstance() => create();
  static $pb.PbList<AddExternalIdentityInitResponse> createRepeated() =>
      $pb.PbList<AddExternalIdentityInitResponse>();
  @$core.pragma('dart2js:noInline')
  static AddExternalIdentityInitResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AddExternalIdentityInitResponse>(
          create);
  static AddExternalIdentityInitResponse? _defaultInstance;

  /// Challenge or reference to the challenge to be used in the `AddExternalIdentityConfirm` endpoint
  @$pb.TagNumber(1)
  $core.String get challenge => $_getSZ(0);
  @$pb.TagNumber(1)
  set challenge($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasChallenge() => $_has(0);
  @$pb.TagNumber(1)
  void clearChallenge() => clearField(1);
}

class AddExternalIdentityConfirmRequest extends $pb.GeneratedMessage {
  factory AddExternalIdentityConfirmRequest({
    $core.String? challenge,
    $core.String? response,
  }) {
    final $result = create();
    if (challenge != null) {
      $result.challenge = challenge;
    }
    if (response != null) {
      $result.response = response;
    }
    return $result;
  }
  AddExternalIdentityConfirmRequest._() : super();
  factory AddExternalIdentityConfirmRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AddExternalIdentityConfirmRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AddExternalIdentityConfirmRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.universalwallet.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'challenge')
    ..aOS(2, _omitFieldNames ? '' : 'response')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AddExternalIdentityConfirmRequest clone() =>
      AddExternalIdentityConfirmRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AddExternalIdentityConfirmRequest copyWith(
          void Function(AddExternalIdentityConfirmRequest) updates) =>
      super.copyWith((message) =>
              updates(message as AddExternalIdentityConfirmRequest))
          as AddExternalIdentityConfirmRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddExternalIdentityConfirmRequest create() =>
      AddExternalIdentityConfirmRequest._();
  AddExternalIdentityConfirmRequest createEmptyInstance() => create();
  static $pb.PbList<AddExternalIdentityConfirmRequest> createRepeated() =>
      $pb.PbList<AddExternalIdentityConfirmRequest>();
  @$core.pragma('dart2js:noInline')
  static AddExternalIdentityConfirmRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AddExternalIdentityConfirmRequest>(
          create);
  static AddExternalIdentityConfirmRequest? _defaultInstance;

  /// The challenge received from the `AddExternalIdentityInit` endpoint
  @$pb.TagNumber(1)
  $core.String get challenge => $_getSZ(0);
  @$pb.TagNumber(1)
  set challenge($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasChallenge() => $_has(0);
  @$pb.TagNumber(1)
  void clearChallenge() => clearField(1);

  /// The response to the challenge. If using Email or Phone,
  /// this is the OTP code sent to the user's email or phone
  @$pb.TagNumber(2)
  $core.String get response => $_getSZ(1);
  @$pb.TagNumber(2)
  set response($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasResponse() => $_has(1);
  @$pb.TagNumber(2)
  void clearResponse() => clearField(2);
}

class AddExternalIdentityConfirmResponse extends $pb.GeneratedMessage {
  factory AddExternalIdentityConfirmResponse() => create();
  AddExternalIdentityConfirmResponse._() : super();
  factory AddExternalIdentityConfirmResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AddExternalIdentityConfirmResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AddExternalIdentityConfirmResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.universalwallet.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AddExternalIdentityConfirmResponse clone() =>
      AddExternalIdentityConfirmResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AddExternalIdentityConfirmResponse copyWith(
          void Function(AddExternalIdentityConfirmResponse) updates) =>
      super.copyWith((message) =>
              updates(message as AddExternalIdentityConfirmResponse))
          as AddExternalIdentityConfirmResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddExternalIdentityConfirmResponse create() =>
      AddExternalIdentityConfirmResponse._();
  AddExternalIdentityConfirmResponse createEmptyInstance() => create();
  static $pb.PbList<AddExternalIdentityConfirmResponse> createRepeated() =>
      $pb.PbList<AddExternalIdentityConfirmResponse>();
  @$core.pragma('dart2js:noInline')
  static AddExternalIdentityConfirmResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AddExternalIdentityConfirmResponse>(
          create);
  static AddExternalIdentityConfirmResponse? _defaultInstance;
}

class RemoveExternalIdentityRequest extends $pb.GeneratedMessage {
  factory RemoveExternalIdentityRequest({
    $core.String? identity,
  }) {
    final $result = create();
    if (identity != null) {
      $result.identity = identity;
    }
    return $result;
  }
  RemoveExternalIdentityRequest._() : super();
  factory RemoveExternalIdentityRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RemoveExternalIdentityRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RemoveExternalIdentityRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.universalwallet.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'identity')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RemoveExternalIdentityRequest clone() =>
      RemoveExternalIdentityRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RemoveExternalIdentityRequest copyWith(
          void Function(RemoveExternalIdentityRequest) updates) =>
      super.copyWith(
              (message) => updates(message as RemoveExternalIdentityRequest))
          as RemoveExternalIdentityRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RemoveExternalIdentityRequest create() =>
      RemoveExternalIdentityRequest._();
  RemoveExternalIdentityRequest createEmptyInstance() => create();
  static $pb.PbList<RemoveExternalIdentityRequest> createRepeated() =>
      $pb.PbList<RemoveExternalIdentityRequest>();
  @$core.pragma('dart2js:noInline')
  static RemoveExternalIdentityRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RemoveExternalIdentityRequest>(create);
  static RemoveExternalIdentityRequest? _defaultInstance;

  /// The user identity to remove from the wallet
  /// This can be an email address or phone number (formatted as +[country code][phone number])
  @$pb.TagNumber(1)
  $core.String get identity => $_getSZ(0);
  @$pb.TagNumber(1)
  set identity($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasIdentity() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdentity() => clearField(1);
}

class RemoveExternalIdentityResponse extends $pb.GeneratedMessage {
  factory RemoveExternalIdentityResponse() => create();
  RemoveExternalIdentityResponse._() : super();
  factory RemoveExternalIdentityResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RemoveExternalIdentityResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RemoveExternalIdentityResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.universalwallet.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RemoveExternalIdentityResponse clone() =>
      RemoveExternalIdentityResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RemoveExternalIdentityResponse copyWith(
          void Function(RemoveExternalIdentityResponse) updates) =>
      super.copyWith(
              (message) => updates(message as RemoveExternalIdentityResponse))
          as RemoveExternalIdentityResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RemoveExternalIdentityResponse create() =>
      RemoveExternalIdentityResponse._();
  RemoveExternalIdentityResponse createEmptyInstance() => create();
  static $pb.PbList<RemoveExternalIdentityResponse> createRepeated() =>
      $pb.PbList<RemoveExternalIdentityResponse>();
  @$core.pragma('dart2js:noInline')
  static RemoveExternalIdentityResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RemoveExternalIdentityResponse>(create);
  static RemoveExternalIdentityResponse? _defaultInstance;
}

class AuthenticateInitRequest extends $pb.GeneratedMessage {
  factory AuthenticateInitRequest({
    $core.String? identity,
    $2.IdentityProvider? provider,
    $core.String? ecosystemId,
  }) {
    final $result = create();
    if (identity != null) {
      $result.identity = identity;
    }
    if (provider != null) {
      $result.provider = provider;
    }
    if (ecosystemId != null) {
      $result.ecosystemId = ecosystemId;
    }
    return $result;
  }
  AuthenticateInitRequest._() : super();
  factory AuthenticateInitRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AuthenticateInitRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AuthenticateInitRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.universalwallet.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'identity')
    ..e<$2.IdentityProvider>(
        2, _omitFieldNames ? '' : 'provider', $pb.PbFieldType.OE,
        defaultOrMaker: $2.IdentityProvider.Unknown,
        valueOf: $2.IdentityProvider.valueOf,
        enumValues: $2.IdentityProvider.values)
    ..aOS(3, _omitFieldNames ? '' : 'ecosystemId')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AuthenticateInitRequest clone() =>
      AuthenticateInitRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AuthenticateInitRequest copyWith(
          void Function(AuthenticateInitRequest) updates) =>
      super.copyWith((message) => updates(message as AuthenticateInitRequest))
          as AuthenticateInitRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthenticateInitRequest create() => AuthenticateInitRequest._();
  AuthenticateInitRequest createEmptyInstance() => create();
  static $pb.PbList<AuthenticateInitRequest> createRepeated() =>
      $pb.PbList<AuthenticateInitRequest>();
  @$core.pragma('dart2js:noInline')
  static AuthenticateInitRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AuthenticateInitRequest>(create);
  static AuthenticateInitRequest? _defaultInstance;

  /// Identity to add to the wallet
  @$pb.TagNumber(1)
  $core.String get identity => $_getSZ(0);
  @$pb.TagNumber(1)
  set identity($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasIdentity() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdentity() => clearField(1);

  /// Identity provider
  @$pb.TagNumber(2)
  $2.IdentityProvider get provider => $_getN(1);
  @$pb.TagNumber(2)
  set provider($2.IdentityProvider v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasProvider() => $_has(1);
  @$pb.TagNumber(2)
  void clearProvider() => clearField(2);

  /// Ecosystem ID to which the wallet belongs
  @$pb.TagNumber(3)
  $core.String get ecosystemId => $_getSZ(2);
  @$pb.TagNumber(3)
  set ecosystemId($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasEcosystemId() => $_has(2);
  @$pb.TagNumber(3)
  void clearEcosystemId() => clearField(3);
}

class AuthenticateInitResponse extends $pb.GeneratedMessage {
  factory AuthenticateInitResponse({
    $core.String? challenge,
  }) {
    final $result = create();
    if (challenge != null) {
      $result.challenge = challenge;
    }
    return $result;
  }
  AuthenticateInitResponse._() : super();
  factory AuthenticateInitResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AuthenticateInitResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AuthenticateInitResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.universalwallet.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'challenge')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AuthenticateInitResponse clone() =>
      AuthenticateInitResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AuthenticateInitResponse copyWith(
          void Function(AuthenticateInitResponse) updates) =>
      super.copyWith((message) => updates(message as AuthenticateInitResponse))
          as AuthenticateInitResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthenticateInitResponse create() => AuthenticateInitResponse._();
  AuthenticateInitResponse createEmptyInstance() => create();
  static $pb.PbList<AuthenticateInitResponse> createRepeated() =>
      $pb.PbList<AuthenticateInitResponse>();
  @$core.pragma('dart2js:noInline')
  static AuthenticateInitResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AuthenticateInitResponse>(create);
  static AuthenticateInitResponse? _defaultInstance;

  /// The challenge received from the `AcquireAuthTokenInit` endpoint
  /// Pass this challenge back to the `AcquireAuthTokenConfirm` endpoint
  @$pb.TagNumber(1)
  $core.String get challenge => $_getSZ(0);
  @$pb.TagNumber(1)
  set challenge($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasChallenge() => $_has(0);
  @$pb.TagNumber(1)
  void clearChallenge() => clearField(1);
}

class AuthenticateResendCodeRequest extends $pb.GeneratedMessage {
  factory AuthenticateResendCodeRequest({
    $core.String? challenge,
  }) {
    final $result = create();
    if (challenge != null) {
      $result.challenge = challenge;
    }
    return $result;
  }
  AuthenticateResendCodeRequest._() : super();
  factory AuthenticateResendCodeRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AuthenticateResendCodeRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AuthenticateResendCodeRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.universalwallet.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'challenge')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AuthenticateResendCodeRequest clone() =>
      AuthenticateResendCodeRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AuthenticateResendCodeRequest copyWith(
          void Function(AuthenticateResendCodeRequest) updates) =>
      super.copyWith(
              (message) => updates(message as AuthenticateResendCodeRequest))
          as AuthenticateResendCodeRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthenticateResendCodeRequest create() =>
      AuthenticateResendCodeRequest._();
  AuthenticateResendCodeRequest createEmptyInstance() => create();
  static $pb.PbList<AuthenticateResendCodeRequest> createRepeated() =>
      $pb.PbList<AuthenticateResendCodeRequest>();
  @$core.pragma('dart2js:noInline')
  static AuthenticateResendCodeRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AuthenticateResendCodeRequest>(create);
  static AuthenticateResendCodeRequest? _defaultInstance;

  /// Challenge for the code you want resent.
  @$pb.TagNumber(1)
  $core.String get challenge => $_getSZ(0);
  @$pb.TagNumber(1)
  set challenge($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasChallenge() => $_has(0);
  @$pb.TagNumber(1)
  void clearChallenge() => clearField(1);
}

class AuthenticateResendCodeResponse extends $pb.GeneratedMessage {
  factory AuthenticateResendCodeResponse() => create();
  AuthenticateResendCodeResponse._() : super();
  factory AuthenticateResendCodeResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AuthenticateResendCodeResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AuthenticateResendCodeResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.universalwallet.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AuthenticateResendCodeResponse clone() =>
      AuthenticateResendCodeResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AuthenticateResendCodeResponse copyWith(
          void Function(AuthenticateResendCodeResponse) updates) =>
      super.copyWith(
              (message) => updates(message as AuthenticateResendCodeResponse))
          as AuthenticateResendCodeResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthenticateResendCodeResponse create() =>
      AuthenticateResendCodeResponse._();
  AuthenticateResendCodeResponse createEmptyInstance() => create();
  static $pb.PbList<AuthenticateResendCodeResponse> createRepeated() =>
      $pb.PbList<AuthenticateResendCodeResponse>();
  @$core.pragma('dart2js:noInline')
  static AuthenticateResendCodeResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AuthenticateResendCodeResponse>(create);
  static AuthenticateResendCodeResponse? _defaultInstance;
}

class AuthenticateConfirmRequest extends $pb.GeneratedMessage {
  factory AuthenticateConfirmRequest({
    $core.String? challenge,
    $core.String? response,
  }) {
    final $result = create();
    if (challenge != null) {
      $result.challenge = challenge;
    }
    if (response != null) {
      $result.response = response;
    }
    return $result;
  }
  AuthenticateConfirmRequest._() : super();
  factory AuthenticateConfirmRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AuthenticateConfirmRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AuthenticateConfirmRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.universalwallet.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'challenge')
    ..aOS(2, _omitFieldNames ? '' : 'response')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AuthenticateConfirmRequest clone() =>
      AuthenticateConfirmRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AuthenticateConfirmRequest copyWith(
          void Function(AuthenticateConfirmRequest) updates) =>
      super.copyWith(
              (message) => updates(message as AuthenticateConfirmRequest))
          as AuthenticateConfirmRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthenticateConfirmRequest create() => AuthenticateConfirmRequest._();
  AuthenticateConfirmRequest createEmptyInstance() => create();
  static $pb.PbList<AuthenticateConfirmRequest> createRepeated() =>
      $pb.PbList<AuthenticateConfirmRequest>();
  @$core.pragma('dart2js:noInline')
  static AuthenticateConfirmRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AuthenticateConfirmRequest>(create);
  static AuthenticateConfirmRequest? _defaultInstance;

  /// The challenge received from the `AcquireAuthTokenInit` endpoint
  @$pb.TagNumber(1)
  $core.String get challenge => $_getSZ(0);
  @$pb.TagNumber(1)
  set challenge($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasChallenge() => $_has(0);
  @$pb.TagNumber(1)
  void clearChallenge() => clearField(1);

  /// The response to the challenge. If using Email or Phone,
  /// this is the OTP code sent to the user's email or phone
  @$pb.TagNumber(2)
  $core.String get response => $_getSZ(1);
  @$pb.TagNumber(2)
  set response($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasResponse() => $_has(1);
  @$pb.TagNumber(2)
  void clearResponse() => clearField(2);
}

class AuthenticateConfirmResponse extends $pb.GeneratedMessage {
  factory AuthenticateConfirmResponse({
    $core.String? authToken,
  }) {
    final $result = create();
    if (authToken != null) {
      $result.authToken = authToken;
    }
    return $result;
  }
  AuthenticateConfirmResponse._() : super();
  factory AuthenticateConfirmResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AuthenticateConfirmResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AuthenticateConfirmResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.universalwallet.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'authToken')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AuthenticateConfirmResponse clone() =>
      AuthenticateConfirmResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AuthenticateConfirmResponse copyWith(
          void Function(AuthenticateConfirmResponse) updates) =>
      super.copyWith(
              (message) => updates(message as AuthenticateConfirmResponse))
          as AuthenticateConfirmResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthenticateConfirmResponse create() =>
      AuthenticateConfirmResponse._();
  AuthenticateConfirmResponse createEmptyInstance() => create();
  static $pb.PbList<AuthenticateConfirmResponse> createRepeated() =>
      $pb.PbList<AuthenticateConfirmResponse>();
  @$core.pragma('dart2js:noInline')
  static AuthenticateConfirmResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AuthenticateConfirmResponse>(create);
  static AuthenticateConfirmResponse? _defaultInstance;

  /// Auth token for the wallet
  @$pb.TagNumber(1)
  $core.String get authToken => $_getSZ(0);
  @$pb.TagNumber(1)
  set authToken($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasAuthToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearAuthToken() => clearField(1);
}

/// Request to list templates by
class ListByVerificationTemplateRequest extends $pb.GeneratedMessage {
  factory ListByVerificationTemplateRequest({
    $core.String? verificationTemplateId,
    $core.String? continuationToken,
  }) {
    final $result = create();
    if (verificationTemplateId != null) {
      $result.verificationTemplateId = verificationTemplateId;
    }
    if (continuationToken != null) {
      $result.continuationToken = continuationToken;
    }
    return $result;
  }
  ListByVerificationTemplateRequest._() : super();
  factory ListByVerificationTemplateRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListByVerificationTemplateRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListByVerificationTemplateRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.universalwallet.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'verificationTemplateId')
    ..aOS(2, _omitFieldNames ? '' : 'continuationToken')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListByVerificationTemplateRequest clone() =>
      ListByVerificationTemplateRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListByVerificationTemplateRequest copyWith(
          void Function(ListByVerificationTemplateRequest) updates) =>
      super.copyWith((message) =>
              updates(message as ListByVerificationTemplateRequest))
          as ListByVerificationTemplateRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListByVerificationTemplateRequest create() =>
      ListByVerificationTemplateRequest._();
  ListByVerificationTemplateRequest createEmptyInstance() => create();
  static $pb.PbList<ListByVerificationTemplateRequest> createRepeated() =>
      $pb.PbList<ListByVerificationTemplateRequest>();
  @$core.pragma('dart2js:noInline')
  static ListByVerificationTemplateRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListByVerificationTemplateRequest>(
          create);
  static ListByVerificationTemplateRequest? _defaultInstance;

  /// ID of verification template to list matching credentials
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

/// Response to `ListByVerificationTemplateRequest`
class ListByVerificationTemplateResponse extends $pb.GeneratedMessage {
  factory ListByVerificationTemplateResponse({
    $core.Iterable<$core.String>? items,
    $core.bool? hasMoreResults,
    $core.String? continuationToken,
  }) {
    final $result = create();
    if (items != null) {
      $result.items.addAll(items);
    }
    if (hasMoreResults != null) {
      $result.hasMoreResults = hasMoreResults;
    }
    if (continuationToken != null) {
      $result.continuationToken = continuationToken;
    }
    return $result;
  }
  ListByVerificationTemplateResponse._() : super();
  factory ListByVerificationTemplateResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListByVerificationTemplateResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListByVerificationTemplateResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.universalwallet.v1'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'items')
    ..aOB(2, _omitFieldNames ? '' : 'hasMoreResults')
    ..aOS(3, _omitFieldNames ? '' : 'continuationToken')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListByVerificationTemplateResponse clone() =>
      ListByVerificationTemplateResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListByVerificationTemplateResponse copyWith(
          void Function(ListByVerificationTemplateResponse) updates) =>
      super.copyWith((message) =>
              updates(message as ListByVerificationTemplateResponse))
          as ListByVerificationTemplateResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListByVerificationTemplateResponse create() =>
      ListByVerificationTemplateResponse._();
  ListByVerificationTemplateResponse createEmptyInstance() => create();
  static $pb.PbList<ListByVerificationTemplateResponse> createRepeated() =>
      $pb.PbList<ListByVerificationTemplateResponse>();
  @$core.pragma('dart2js:noInline')
  static ListByVerificationTemplateResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListByVerificationTemplateResponse>(
          create);
  static ListByVerificationTemplateResponse? _defaultInstance;

  /// Array of query results, as JSON strings
  @$pb.TagNumber(1)
  $core.List<$core.String> get items => $_getList(0);

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

  /// Token to fetch next set of results via `ListByVerificationTemplateRequest`
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

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
