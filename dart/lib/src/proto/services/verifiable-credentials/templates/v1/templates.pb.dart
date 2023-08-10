//
//  Generated code. Do not modify.
//  source: services/verifiable-credentials/templates/v1/templates.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'templates.pbenum.dart';

export 'templates.pbenum.dart';

class GetCredentialTemplateRequest extends $pb.GeneratedMessage {
  factory GetCredentialTemplateRequest() => create();
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
  factory GetCredentialTemplateResponse() => create();
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
  factory SearchCredentialTemplatesRequest() => create();
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
  factory SearchCredentialTemplatesResponse() => create();
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
  factory ListCredentialTemplatesRequest() => create();
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
  factory ListCredentialTemplatesResponse() => create();
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
  factory DeleteCredentialTemplateRequest() => create();
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

class CreateCredentialTemplateRequest extends $pb.GeneratedMessage {
  factory CreateCredentialTemplateRequest() => create();
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
  factory CreateCredentialTemplateResponse() => create();
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
  factory UpdateCredentialTemplateRequest() => create();
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
  factory UpdateCredentialTemplateResponse() => create();
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
  factory TemplateData() => create();
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

  @$pb.TagNumber(14)
  $core.Map<$core.String, FieldOrdering> get fieldOrdering => $_getMap(12);

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

class AppleWalletOptions extends $pb.GeneratedMessage {
  factory AppleWalletOptions() => create();
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
  factory FieldOrdering() => create();
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
  factory TemplateField() => create();
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

class TemplateFieldPatch extends $pb.GeneratedMessage {
  factory TemplateFieldPatch() => create();
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
  factory UriFieldData() => create();
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

class GetVerificationTemplateRequest extends $pb.GeneratedMessage {
  factory GetVerificationTemplateRequest() => create();
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

class GetVerificationTemplateResponse extends $pb.GeneratedMessage {
  factory GetVerificationTemplateResponse() => create();
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
  factory CreateVerificationTemplateRequest() => create();
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
  $core.Map<$core.String, VerificationTemplateField> get fields => $_getMap(1);

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
}

class CreateVerificationTemplateResponse extends $pb.GeneratedMessage {
  factory CreateVerificationTemplateResponse() => create();
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
  factory UpdateVerificationTemplateRequest() => create();
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
  $core.Map<$core.String, VerificationTemplateFieldPatch> get fields =>
      $_getMap(3);
}

class UpdateVerificationTemplateResponse extends $pb.GeneratedMessage {
  factory UpdateVerificationTemplateResponse() => create();
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
  factory DeleteVerificationTemplateRequest() => create();
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

class VerificationTemplateData extends $pb.GeneratedMessage {
  factory VerificationTemplateData() => create();
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
  $core.Map<$core.String, VerificationTemplateField> get fields => $_getMap(3);

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

class ListVerificationTemplatesRequest extends $pb.GeneratedMessage {
  factory ListVerificationTemplatesRequest() => create();
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

class ListVerificationTemplatesResponse extends $pb.GeneratedMessage {
  factory ListVerificationTemplatesResponse() => create();
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

  @$pb.TagNumber(1)
  $core.List<VerificationTemplateData> get templates => $_getList(0);

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

class VerificationTemplateField extends $pb.GeneratedMessage {
  factory VerificationTemplateField() => create();
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

class VerificationTemplateFieldPatch extends $pb.GeneratedMessage {
  factory VerificationTemplateFieldPatch() => create();
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
