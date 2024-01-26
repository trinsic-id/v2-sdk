//
//  Generated code. Do not modify.
//  source: services/provider/v1/provider.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../account/v1/account.pb.dart' as $9;
import '../../account/v1/account.pbenum.dart' as $9;
import '../../common/v1/common.pbenum.dart' as $10;
import 'provider.pbenum.dart';

export 'provider.pbenum.dart';

/// Details of an ecosystem
class Ecosystem extends $pb.GeneratedMessage {
  factory Ecosystem({
    $core.String? id,
    $core.String? name,
    $core.String? description,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (description != null) {
      $result.description = description;
    }
    return $result;
  }
  Ecosystem._() : super();
  factory Ecosystem.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Ecosystem.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Ecosystem',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.provider.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Ecosystem clone() => Ecosystem()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Ecosystem copyWith(void Function(Ecosystem) updates) =>
      super.copyWith((message) => updates(message as Ecosystem)) as Ecosystem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Ecosystem create() => Ecosystem._();
  Ecosystem createEmptyInstance() => create();
  static $pb.PbList<Ecosystem> createRepeated() => $pb.PbList<Ecosystem>();
  @$core.pragma('dart2js:noInline')
  static Ecosystem getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Ecosystem>(create);
  static Ecosystem? _defaultInstance;

  /// URN of the ecosystem
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

  /// Globally unique name for the ecosystem
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

  /// Ecosystem description
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

/// Request to create an ecosystem
class CreateEcosystemRequest extends $pb.GeneratedMessage {
  factory CreateEcosystemRequest({
    $core.String? name,
    $core.String? description,
    $9.AccountDetails? details,
    $core.String? domain,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (description != null) {
      $result.description = description;
    }
    if (details != null) {
      $result.details = details;
    }
    if (domain != null) {
      $result.domain = domain;
    }
    return $result;
  }
  CreateEcosystemRequest._() : super();
  factory CreateEcosystemRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreateEcosystemRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateEcosystemRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.provider.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'description')
    ..aOM<$9.AccountDetails>(4, _omitFieldNames ? '' : 'details',
        subBuilder: $9.AccountDetails.create)
    ..aOS(5, _omitFieldNames ? '' : 'domain')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CreateEcosystemRequest clone() =>
      CreateEcosystemRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CreateEcosystemRequest copyWith(
          void Function(CreateEcosystemRequest) updates) =>
      super.copyWith((message) => updates(message as CreateEcosystemRequest))
          as CreateEcosystemRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateEcosystemRequest create() => CreateEcosystemRequest._();
  CreateEcosystemRequest createEmptyInstance() => create();
  static $pb.PbList<CreateEcosystemRequest> createRepeated() =>
      $pb.PbList<CreateEcosystemRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateEcosystemRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateEcosystemRequest>(create);
  static CreateEcosystemRequest? _defaultInstance;

  /// Globally unique name for the Ecosystem. This name will be
  /// part of the ecosystem-specific URLs and namespaces.
  /// Allowed characters are lowercase letters, numbers, underscore and hyphen.
  /// If not passed, ecosystem name will be auto-generated.
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

  /// Ecosystem description
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

  /// The account details of the owner of the ecosystem
  @$pb.TagNumber(4)
  $9.AccountDetails get details => $_getN(2);
  @$pb.TagNumber(4)
  set details($9.AccountDetails v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasDetails() => $_has(2);
  @$pb.TagNumber(4)
  void clearDetails() => clearField(4);
  @$pb.TagNumber(4)
  $9.AccountDetails ensureDetails() => $_ensure(2);

  /// New domain URL
  @$pb.TagNumber(5)
  $core.String get domain => $_getSZ(3);
  @$pb.TagNumber(5)
  set domain($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasDomain() => $_has(3);
  @$pb.TagNumber(5)
  void clearDomain() => clearField(5);
}

/// Response to `CreateEcosystemRequest`
class CreateEcosystemResponse extends $pb.GeneratedMessage {
  factory CreateEcosystemResponse({
    Ecosystem? ecosystem,
    $9.AccountProfile? profile,
    $9.ConfirmationMethod? confirmationMethod,
  }) {
    final $result = create();
    if (ecosystem != null) {
      $result.ecosystem = ecosystem;
    }
    if (profile != null) {
      $result.profile = profile;
    }
    if (confirmationMethod != null) {
      $result.confirmationMethod = confirmationMethod;
    }
    return $result;
  }
  CreateEcosystemResponse._() : super();
  factory CreateEcosystemResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreateEcosystemResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateEcosystemResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.provider.v1'),
      createEmptyInstance: create)
    ..aOM<Ecosystem>(1, _omitFieldNames ? '' : 'ecosystem',
        subBuilder: Ecosystem.create)
    ..aOM<$9.AccountProfile>(2, _omitFieldNames ? '' : 'profile',
        subBuilder: $9.AccountProfile.create)
    ..e<$9.ConfirmationMethod>(
        3, _omitFieldNames ? '' : 'confirmationMethod', $pb.PbFieldType.OE,
        defaultOrMaker: $9.ConfirmationMethod.None,
        valueOf: $9.ConfirmationMethod.valueOf,
        enumValues: $9.ConfirmationMethod.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CreateEcosystemResponse clone() =>
      CreateEcosystemResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CreateEcosystemResponse copyWith(
          void Function(CreateEcosystemResponse) updates) =>
      super.copyWith((message) => updates(message as CreateEcosystemResponse))
          as CreateEcosystemResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateEcosystemResponse create() => CreateEcosystemResponse._();
  CreateEcosystemResponse createEmptyInstance() => create();
  static $pb.PbList<CreateEcosystemResponse> createRepeated() =>
      $pb.PbList<CreateEcosystemResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateEcosystemResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateEcosystemResponse>(create);
  static CreateEcosystemResponse? _defaultInstance;

  /// Details of the created ecosystem
  @$pb.TagNumber(1)
  Ecosystem get ecosystem => $_getN(0);
  @$pb.TagNumber(1)
  set ecosystem(Ecosystem v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasEcosystem() => $_has(0);
  @$pb.TagNumber(1)
  void clearEcosystem() => clearField(1);
  @$pb.TagNumber(1)
  Ecosystem ensureEcosystem() => $_ensure(0);

  /// Account profile for auth of the owner of the ecosystem
  @$pb.TagNumber(2)
  $9.AccountProfile get profile => $_getN(1);
  @$pb.TagNumber(2)
  set profile($9.AccountProfile v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasProfile() => $_has(1);
  @$pb.TagNumber(2)
  void clearProfile() => clearField(2);
  @$pb.TagNumber(2)
  $9.AccountProfile ensureProfile() => $_ensure(1);

  /// Indicates if confirmation of account is required.
  @$pb.TagNumber(3)
  $9.ConfirmationMethod get confirmationMethod => $_getN(2);
  @$pb.TagNumber(3)
  set confirmationMethod($9.ConfirmationMethod v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasConfirmationMethod() => $_has(2);
  @$pb.TagNumber(3)
  void clearConfirmationMethod() => clearField(3);
}

/// Request to fetch information about an ecosystem
class EcosystemInfoRequest extends $pb.GeneratedMessage {
  factory EcosystemInfoRequest() => create();
  EcosystemInfoRequest._() : super();
  factory EcosystemInfoRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory EcosystemInfoRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EcosystemInfoRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.provider.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  EcosystemInfoRequest clone() =>
      EcosystemInfoRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  EcosystemInfoRequest copyWith(void Function(EcosystemInfoRequest) updates) =>
      super.copyWith((message) => updates(message as EcosystemInfoRequest))
          as EcosystemInfoRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EcosystemInfoRequest create() => EcosystemInfoRequest._();
  EcosystemInfoRequest createEmptyInstance() => create();
  static $pb.PbList<EcosystemInfoRequest> createRepeated() =>
      $pb.PbList<EcosystemInfoRequest>();
  @$core.pragma('dart2js:noInline')
  static EcosystemInfoRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EcosystemInfoRequest>(create);
  static EcosystemInfoRequest? _defaultInstance;
}

/// Response to `InfoRequest`
class EcosystemInfoResponse extends $pb.GeneratedMessage {
  factory EcosystemInfoResponse({
    Ecosystem? ecosystem,
  }) {
    final $result = create();
    if (ecosystem != null) {
      $result.ecosystem = ecosystem;
    }
    return $result;
  }
  EcosystemInfoResponse._() : super();
  factory EcosystemInfoResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory EcosystemInfoResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EcosystemInfoResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.provider.v1'),
      createEmptyInstance: create)
    ..aOM<Ecosystem>(1, _omitFieldNames ? '' : 'ecosystem',
        subBuilder: Ecosystem.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  EcosystemInfoResponse clone() =>
      EcosystemInfoResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  EcosystemInfoResponse copyWith(
          void Function(EcosystemInfoResponse) updates) =>
      super.copyWith((message) => updates(message as EcosystemInfoResponse))
          as EcosystemInfoResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EcosystemInfoResponse create() => EcosystemInfoResponse._();
  EcosystemInfoResponse createEmptyInstance() => create();
  static $pb.PbList<EcosystemInfoResponse> createRepeated() =>
      $pb.PbList<EcosystemInfoResponse>();
  @$core.pragma('dart2js:noInline')
  static EcosystemInfoResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EcosystemInfoResponse>(create);
  static EcosystemInfoResponse? _defaultInstance;

  /// Ecosystem corresponding to current ecosystem in the account token
  @$pb.TagNumber(1)
  Ecosystem get ecosystem => $_getN(0);
  @$pb.TagNumber(1)
  set ecosystem(Ecosystem v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasEcosystem() => $_has(0);
  @$pb.TagNumber(1)
  void clearEcosystem() => clearField(1);
  @$pb.TagNumber(1)
  Ecosystem ensureEcosystem() => $_ensure(0);
}

/// Request to fetch the Trinsic public key used
/// to verify authentication token validity
class GetOberonKeyRequest extends $pb.GeneratedMessage {
  factory GetOberonKeyRequest() => create();
  GetOberonKeyRequest._() : super();
  factory GetOberonKeyRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetOberonKeyRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetOberonKeyRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.provider.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetOberonKeyRequest clone() => GetOberonKeyRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetOberonKeyRequest copyWith(void Function(GetOberonKeyRequest) updates) =>
      super.copyWith((message) => updates(message as GetOberonKeyRequest))
          as GetOberonKeyRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetOberonKeyRequest create() => GetOberonKeyRequest._();
  GetOberonKeyRequest createEmptyInstance() => create();
  static $pb.PbList<GetOberonKeyRequest> createRepeated() =>
      $pb.PbList<GetOberonKeyRequest>();
  @$core.pragma('dart2js:noInline')
  static GetOberonKeyRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetOberonKeyRequest>(create);
  static GetOberonKeyRequest? _defaultInstance;
}

/// Response to `GetOberonKeyRequest`
class GetOberonKeyResponse extends $pb.GeneratedMessage {
  factory GetOberonKeyResponse({
    $core.String? key,
  }) {
    final $result = create();
    if (key != null) {
      $result.key = key;
    }
    return $result;
  }
  GetOberonKeyResponse._() : super();
  factory GetOberonKeyResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetOberonKeyResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetOberonKeyResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.provider.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetOberonKeyResponse clone() =>
      GetOberonKeyResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetOberonKeyResponse copyWith(void Function(GetOberonKeyResponse) updates) =>
      super.copyWith((message) => updates(message as GetOberonKeyResponse))
          as GetOberonKeyResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetOberonKeyResponse create() => GetOberonKeyResponse._();
  GetOberonKeyResponse createEmptyInstance() => create();
  static $pb.PbList<GetOberonKeyResponse> createRepeated() =>
      $pb.PbList<GetOberonKeyResponse>();
  @$core.pragma('dart2js:noInline')
  static GetOberonKeyResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetOberonKeyResponse>(create);
  static GetOberonKeyResponse? _defaultInstance;

  /// Oberon Public Key as RAW base64-url encoded string
  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);
}

/// Search for issuers/holders/verifiers
class SearchWalletConfigurationsRequest extends $pb.GeneratedMessage {
  factory SearchWalletConfigurationsRequest({
    $core.String? queryFilter,
    $core.String? continuationToken,
  }) {
    final $result = create();
    if (queryFilter != null) {
      $result.queryFilter = queryFilter;
    }
    if (continuationToken != null) {
      $result.continuationToken = continuationToken;
    }
    return $result;
  }
  SearchWalletConfigurationsRequest._() : super();
  factory SearchWalletConfigurationsRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SearchWalletConfigurationsRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SearchWalletConfigurationsRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.provider.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'queryFilter')
    ..aOS(2, _omitFieldNames ? '' : 'continuationToken')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SearchWalletConfigurationsRequest clone() =>
      SearchWalletConfigurationsRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SearchWalletConfigurationsRequest copyWith(
          void Function(SearchWalletConfigurationsRequest) updates) =>
      super.copyWith((message) =>
              updates(message as SearchWalletConfigurationsRequest))
          as SearchWalletConfigurationsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SearchWalletConfigurationsRequest create() =>
      SearchWalletConfigurationsRequest._();
  SearchWalletConfigurationsRequest createEmptyInstance() => create();
  static $pb.PbList<SearchWalletConfigurationsRequest> createRepeated() =>
      $pb.PbList<SearchWalletConfigurationsRequest>();
  @$core.pragma('dart2js:noInline')
  static SearchWalletConfigurationsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SearchWalletConfigurationsRequest>(
          create);
  static SearchWalletConfigurationsRequest? _defaultInstance;

  /// SQL filter to execute. `SELECT * FROM c WHERE [**queryFilter**]`
  @$pb.TagNumber(1)
  $core.String get queryFilter => $_getSZ(0);
  @$pb.TagNumber(1)
  set queryFilter($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasQueryFilter() => $_has(0);
  @$pb.TagNumber(1)
  void clearQueryFilter() => clearField(1);

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

class SearchWalletConfigurationResponse extends $pb.GeneratedMessage {
  factory SearchWalletConfigurationResponse({
    $core.Iterable<WalletConfiguration>? results,
    $core.bool? hasMoreResults,
    $core.String? continuationToken,
  }) {
    final $result = create();
    if (results != null) {
      $result.results.addAll(results);
    }
    if (hasMoreResults != null) {
      $result.hasMoreResults = hasMoreResults;
    }
    if (continuationToken != null) {
      $result.continuationToken = continuationToken;
    }
    return $result;
  }
  SearchWalletConfigurationResponse._() : super();
  factory SearchWalletConfigurationResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SearchWalletConfigurationResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SearchWalletConfigurationResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.provider.v1'),
      createEmptyInstance: create)
    ..pc<WalletConfiguration>(
        1, _omitFieldNames ? '' : 'results', $pb.PbFieldType.PM,
        subBuilder: WalletConfiguration.create)
    ..aOB(2, _omitFieldNames ? '' : 'hasMoreResults')
    ..aOS(4, _omitFieldNames ? '' : 'continuationToken')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SearchWalletConfigurationResponse clone() =>
      SearchWalletConfigurationResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SearchWalletConfigurationResponse copyWith(
          void Function(SearchWalletConfigurationResponse) updates) =>
      super.copyWith((message) =>
              updates(message as SearchWalletConfigurationResponse))
          as SearchWalletConfigurationResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SearchWalletConfigurationResponse create() =>
      SearchWalletConfigurationResponse._();
  SearchWalletConfigurationResponse createEmptyInstance() => create();
  static $pb.PbList<SearchWalletConfigurationResponse> createRepeated() =>
      $pb.PbList<SearchWalletConfigurationResponse>();
  @$core.pragma('dart2js:noInline')
  static SearchWalletConfigurationResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SearchWalletConfigurationResponse>(
          create);
  static SearchWalletConfigurationResponse? _defaultInstance;

  /// Results matching the search query
  @$pb.TagNumber(1)
  $core.List<WalletConfiguration> get results => $_getList(0);

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

/// Strongly typed information about wallet configurations
class WalletConfiguration extends $pb.GeneratedMessage {
  factory WalletConfiguration({
    $core.String? name,
    @$core.Deprecated('This field is deprecated.') $core.String? email,
    @$core.Deprecated('This field is deprecated.') $core.String? sms,
    $core.String? walletId,
    $core.String? publicDid,
    $core.String? configType,
    $core.Iterable<$9.WalletAuthToken>? authTokens,
    @$core.Deprecated('This field is deprecated.')
    $core.Iterable<$core.String>? externalIdentityIds,
    $core.String? ecosystemId,
    $core.String? description,
    $core.Iterable<WalletExternalIdentity>? externalIdentities,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (email != null) {
      // ignore: deprecated_member_use_from_same_package
      $result.email = email;
    }
    if (sms != null) {
      // ignore: deprecated_member_use_from_same_package
      $result.sms = sms;
    }
    if (walletId != null) {
      $result.walletId = walletId;
    }
    if (publicDid != null) {
      $result.publicDid = publicDid;
    }
    if (configType != null) {
      $result.configType = configType;
    }
    if (authTokens != null) {
      $result.authTokens.addAll(authTokens);
    }
    if (externalIdentityIds != null) {
      // ignore: deprecated_member_use_from_same_package
      $result.externalIdentityIds.addAll(externalIdentityIds);
    }
    if (ecosystemId != null) {
      $result.ecosystemId = ecosystemId;
    }
    if (description != null) {
      $result.description = description;
    }
    if (externalIdentities != null) {
      $result.externalIdentities.addAll(externalIdentities);
    }
    return $result;
  }
  WalletConfiguration._() : super();
  factory WalletConfiguration.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory WalletConfiguration.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WalletConfiguration',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.provider.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'email')
    ..aOS(3, _omitFieldNames ? '' : 'sms')
    ..aOS(4, _omitFieldNames ? '' : 'walletId')
    ..aOS(5, _omitFieldNames ? '' : 'publicDid')
    ..aOS(6, _omitFieldNames ? '' : 'configType')
    ..pc<$9.WalletAuthToken>(
        7, _omitFieldNames ? '' : 'authTokens', $pb.PbFieldType.PM,
        subBuilder: $9.WalletAuthToken.create)
    ..pPS(8, _omitFieldNames ? '' : 'externalIdentityIds')
    ..aOS(9, _omitFieldNames ? '' : 'ecosystemId')
    ..aOS(10, _omitFieldNames ? '' : 'description')
    ..pc<WalletExternalIdentity>(
        11, _omitFieldNames ? '' : 'externalIdentities', $pb.PbFieldType.PM,
        subBuilder: WalletExternalIdentity.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  WalletConfiguration clone() => WalletConfiguration()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  WalletConfiguration copyWith(void Function(WalletConfiguration) updates) =>
      super.copyWith((message) => updates(message as WalletConfiguration))
          as WalletConfiguration;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WalletConfiguration create() => WalletConfiguration._();
  WalletConfiguration createEmptyInstance() => create();
  static $pb.PbList<WalletConfiguration> createRepeated() =>
      $pb.PbList<WalletConfiguration>();
  @$core.pragma('dart2js:noInline')
  static WalletConfiguration getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WalletConfiguration>(create);
  static WalletConfiguration? _defaultInstance;

  /// Name/description of the wallet
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

  /// Deprecated and will be removed on August 1, 2023 -- use external_identities.
  /// This field is set to the first email address present in `external_identities`, if any.
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  $core.String get email => $_getSZ(1);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  set email($core.String v) {
    $_setString(1, v);
  }

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  $core.bool hasEmail() => $_has(1);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  void clearEmail() => clearField(2);

  /// Deprecated -- use external_identities
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  $core.String get sms => $_getSZ(2);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  set sms($core.String v) {
    $_setString(2, v);
  }

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  $core.bool hasSms() => $_has(2);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  void clearSms() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get walletId => $_getSZ(3);
  @$pb.TagNumber(4)
  set walletId($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasWalletId() => $_has(3);
  @$pb.TagNumber(4)
  void clearWalletId() => clearField(4);

  /// The DID of the wallet
  @$pb.TagNumber(5)
  $core.String get publicDid => $_getSZ(4);
  @$pb.TagNumber(5)
  set publicDid($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasPublicDid() => $_has(4);
  @$pb.TagNumber(5)
  void clearPublicDid() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get configType => $_getSZ(5);
  @$pb.TagNumber(6)
  set configType($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasConfigType() => $_has(5);
  @$pb.TagNumber(6)
  void clearConfigType() => clearField(6);

  /// List of active authentication tokens for this wallet.
  /// This list does not contain the issued token, only metadata
  /// such as ID, description, and creation date.
  @$pb.TagNumber(7)
  $core.List<$9.WalletAuthToken> get authTokens => $_getList(6);

  /// List of external identity IDs (email addresses, phone numbers, etc.) associated with this wallet.
  /// This is deprecated; use `external_identities` instead.
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(8)
  $core.List<$core.String> get externalIdentityIds => $_getList(7);

  /// Ecosystem in which this wallet is contained.
  @$pb.TagNumber(9)
  $core.String get ecosystemId => $_getSZ(8);
  @$pb.TagNumber(9)
  set ecosystemId($core.String v) {
    $_setString(8, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasEcosystemId() => $_has(8);
  @$pb.TagNumber(9)
  void clearEcosystemId() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get description => $_getSZ(9);
  @$pb.TagNumber(10)
  set description($core.String v) {
    $_setString(9, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasDescription() => $_has(9);
  @$pb.TagNumber(10)
  void clearDescription() => clearField(10);

  /// List of external identities associated with this wallet.
  @$pb.TagNumber(11)
  $core.List<WalletExternalIdentity> get externalIdentities => $_getList(10);
}

/// An external identity (email address, phone number, etc.) associated with a wallet for authentication purposes.
class WalletExternalIdentity extends $pb.GeneratedMessage {
  factory WalletExternalIdentity({
    IdentityProvider? provider,
    $core.String? id,
  }) {
    final $result = create();
    if (provider != null) {
      $result.provider = provider;
    }
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  WalletExternalIdentity._() : super();
  factory WalletExternalIdentity.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory WalletExternalIdentity.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WalletExternalIdentity',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.provider.v1'),
      createEmptyInstance: create)
    ..e<IdentityProvider>(
        1, _omitFieldNames ? '' : 'provider', $pb.PbFieldType.OE,
        defaultOrMaker: IdentityProvider.Unknown,
        valueOf: IdentityProvider.valueOf,
        enumValues: IdentityProvider.values)
    ..aOS(2, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  WalletExternalIdentity clone() =>
      WalletExternalIdentity()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  WalletExternalIdentity copyWith(
          void Function(WalletExternalIdentity) updates) =>
      super.copyWith((message) => updates(message as WalletExternalIdentity))
          as WalletExternalIdentity;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WalletExternalIdentity create() => WalletExternalIdentity._();
  WalletExternalIdentity createEmptyInstance() => create();
  static $pb.PbList<WalletExternalIdentity> createRepeated() =>
      $pb.PbList<WalletExternalIdentity>();
  @$core.pragma('dart2js:noInline')
  static WalletExternalIdentity getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WalletExternalIdentity>(create);
  static WalletExternalIdentity? _defaultInstance;

  /// The type of this identity (whether this identity is an email address, phone number, etc.)
  @$pb.TagNumber(1)
  IdentityProvider get provider => $_getN(0);
  @$pb.TagNumber(1)
  set provider(IdentityProvider v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasProvider() => $_has(0);
  @$pb.TagNumber(1)
  void clearProvider() => clearField(1);

  /// The actual email address/phone number/etc. for this identity
  @$pb.TagNumber(2)
  $core.String get id => $_getSZ(1);
  @$pb.TagNumber(2)
  set id($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);
}

/// Options for creation of DID on the ION network
class IonOptions extends $pb.GeneratedMessage {
  factory IonOptions({
    IonOptions_IonNetwork? network,
  }) {
    final $result = create();
    if (network != null) {
      $result.network = network;
    }
    return $result;
  }
  IonOptions._() : super();
  factory IonOptions.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory IonOptions.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'IonOptions',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.provider.v1'),
      createEmptyInstance: create)
    ..e<IonOptions_IonNetwork>(
        1, _omitFieldNames ? '' : 'network', $pb.PbFieldType.OE,
        defaultOrMaker: IonOptions_IonNetwork.TestNet,
        valueOf: IonOptions_IonNetwork.valueOf,
        enumValues: IonOptions_IonNetwork.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  IonOptions clone() => IonOptions()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  IonOptions copyWith(void Function(IonOptions) updates) =>
      super.copyWith((message) => updates(message as IonOptions)) as IonOptions;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IonOptions create() => IonOptions._();
  IonOptions createEmptyInstance() => create();
  static $pb.PbList<IonOptions> createRepeated() => $pb.PbList<IonOptions>();
  @$core.pragma('dart2js:noInline')
  static IonOptions getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<IonOptions>(create);
  static IonOptions? _defaultInstance;

  /// ION network on which DID should be published
  @$pb.TagNumber(1)
  IonOptions_IonNetwork get network => $_getN(0);
  @$pb.TagNumber(1)
  set network(IonOptions_IonNetwork v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasNetwork() => $_has(0);
  @$pb.TagNumber(1)
  void clearNetwork() => clearField(1);
}

/// Options for creation of DID on the SOV network
class IndyOptions extends $pb.GeneratedMessage {
  factory IndyOptions({
    IndyOptions_IndyNetwork? network,
  }) {
    final $result = create();
    if (network != null) {
      $result.network = network;
    }
    return $result;
  }
  IndyOptions._() : super();
  factory IndyOptions.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory IndyOptions.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'IndyOptions',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.provider.v1'),
      createEmptyInstance: create)
    ..e<IndyOptions_IndyNetwork>(
        1, _omitFieldNames ? '' : 'network', $pb.PbFieldType.OE,
        defaultOrMaker: IndyOptions_IndyNetwork.Danube,
        valueOf: IndyOptions_IndyNetwork.valueOf,
        enumValues: IndyOptions_IndyNetwork.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  IndyOptions clone() => IndyOptions()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  IndyOptions copyWith(void Function(IndyOptions) updates) =>
      super.copyWith((message) => updates(message as IndyOptions))
          as IndyOptions;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IndyOptions create() => IndyOptions._();
  IndyOptions createEmptyInstance() => create();
  static $pb.PbList<IndyOptions> createRepeated() => $pb.PbList<IndyOptions>();
  @$core.pragma('dart2js:noInline')
  static IndyOptions getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<IndyOptions>(create);
  static IndyOptions? _defaultInstance;

  /// SOV network on which DID should be published
  @$pb.TagNumber(1)
  IndyOptions_IndyNetwork get network => $_getN(0);
  @$pb.TagNumber(1)
  set network(IndyOptions_IndyNetwork v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasNetwork() => $_has(0);
  @$pb.TagNumber(1)
  void clearNetwork() => clearField(1);
}

enum UpgradeDidRequest_Account { email, walletId, didUri, notSet }

enum UpgradeDidRequest_Options { ionOptions, indyOptions, notSet }

/// Request to upgrade a wallet
class UpgradeDidRequest extends $pb.GeneratedMessage {
  factory UpgradeDidRequest({
    $core.String? email,
    $core.String? walletId,
    $10.SupportedDidMethod? method,
    IonOptions? ionOptions,
    IndyOptions? indyOptions,
    $core.String? didUri,
  }) {
    final $result = create();
    if (email != null) {
      $result.email = email;
    }
    if (walletId != null) {
      $result.walletId = walletId;
    }
    if (method != null) {
      $result.method = method;
    }
    if (ionOptions != null) {
      $result.ionOptions = ionOptions;
    }
    if (indyOptions != null) {
      $result.indyOptions = indyOptions;
    }
    if (didUri != null) {
      $result.didUri = didUri;
    }
    return $result;
  }
  UpgradeDidRequest._() : super();
  factory UpgradeDidRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UpgradeDidRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, UpgradeDidRequest_Account>
      _UpgradeDidRequest_AccountByTag = {
    1: UpgradeDidRequest_Account.email,
    2: UpgradeDidRequest_Account.walletId,
    6: UpgradeDidRequest_Account.didUri,
    0: UpgradeDidRequest_Account.notSet
  };
  static const $core.Map<$core.int, UpgradeDidRequest_Options>
      _UpgradeDidRequest_OptionsByTag = {
    4: UpgradeDidRequest_Options.ionOptions,
    5: UpgradeDidRequest_Options.indyOptions,
    0: UpgradeDidRequest_Options.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpgradeDidRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.provider.v1'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 6])
    ..oo(1, [4, 5])
    ..aOS(1, _omitFieldNames ? '' : 'email')
    ..aOS(2, _omitFieldNames ? '' : 'walletId')
    ..e<$10.SupportedDidMethod>(
        3, _omitFieldNames ? '' : 'method', $pb.PbFieldType.OE,
        defaultOrMaker: $10.SupportedDidMethod.KEY,
        valueOf: $10.SupportedDidMethod.valueOf,
        enumValues: $10.SupportedDidMethod.values)
    ..aOM<IonOptions>(4, _omitFieldNames ? '' : 'ionOptions',
        subBuilder: IonOptions.create)
    ..aOM<IndyOptions>(5, _omitFieldNames ? '' : 'indyOptions',
        subBuilder: IndyOptions.create)
    ..aOS(6, _omitFieldNames ? '' : 'didUri')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UpgradeDidRequest clone() => UpgradeDidRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UpgradeDidRequest copyWith(void Function(UpgradeDidRequest) updates) =>
      super.copyWith((message) => updates(message as UpgradeDidRequest))
          as UpgradeDidRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpgradeDidRequest create() => UpgradeDidRequest._();
  UpgradeDidRequest createEmptyInstance() => create();
  static $pb.PbList<UpgradeDidRequest> createRepeated() =>
      $pb.PbList<UpgradeDidRequest>();
  @$core.pragma('dart2js:noInline')
  static UpgradeDidRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpgradeDidRequest>(create);
  static UpgradeDidRequest? _defaultInstance;

  UpgradeDidRequest_Account whichAccount() =>
      _UpgradeDidRequest_AccountByTag[$_whichOneof(0)]!;
  void clearAccount() => clearField($_whichOneof(0));

  UpgradeDidRequest_Options whichOptions() =>
      _UpgradeDidRequest_OptionsByTag[$_whichOneof(1)]!;
  void clearOptions() => clearField($_whichOneof(1));

  /// Email address of account to upgrade.
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

  /// Wallet ID of account to upgrade.
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

  /// DID Method to which wallet should be upgraded
  @$pb.TagNumber(3)
  $10.SupportedDidMethod get method => $_getN(2);
  @$pb.TagNumber(3)
  set method($10.SupportedDidMethod v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasMethod() => $_has(2);
  @$pb.TagNumber(3)
  void clearMethod() => clearField(3);

  /// Configuration for creation of DID on ION network
  @$pb.TagNumber(4)
  IonOptions get ionOptions => $_getN(3);
  @$pb.TagNumber(4)
  set ionOptions(IonOptions v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasIonOptions() => $_has(3);
  @$pb.TagNumber(4)
  void clearIonOptions() => clearField(4);
  @$pb.TagNumber(4)
  IonOptions ensureIonOptions() => $_ensure(3);

  /// Configuration for creation of DID on INDY network
  @$pb.TagNumber(5)
  IndyOptions get indyOptions => $_getN(4);
  @$pb.TagNumber(5)
  set indyOptions(IndyOptions v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasIndyOptions() => $_has(4);
  @$pb.TagNumber(5)
  void clearIndyOptions() => clearField(5);
  @$pb.TagNumber(5)
  IndyOptions ensureIndyOptions() => $_ensure(4);

  /// DID URI of the account to upgrade.
  /// Mutually exclusive with `email` and `walletId`.
  @$pb.TagNumber(6)
  $core.String get didUri => $_getSZ(5);
  @$pb.TagNumber(6)
  set didUri($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasDidUri() => $_has(5);
  @$pb.TagNumber(6)
  void clearDidUri() => clearField(6);
}

/// Response to `UpgradeDIDRequest`
class UpgradeDidResponse extends $pb.GeneratedMessage {
  factory UpgradeDidResponse({
    $core.String? did,
  }) {
    final $result = create();
    if (did != null) {
      $result.did = did;
    }
    return $result;
  }
  UpgradeDidResponse._() : super();
  factory UpgradeDidResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UpgradeDidResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpgradeDidResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.provider.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'did')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UpgradeDidResponse clone() => UpgradeDidResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UpgradeDidResponse copyWith(void Function(UpgradeDidResponse) updates) =>
      super.copyWith((message) => updates(message as UpgradeDidResponse))
          as UpgradeDidResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpgradeDidResponse create() => UpgradeDidResponse._();
  UpgradeDidResponse createEmptyInstance() => create();
  static $pb.PbList<UpgradeDidResponse> createRepeated() =>
      $pb.PbList<UpgradeDidResponse>();
  @$core.pragma('dart2js:noInline')
  static UpgradeDidResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpgradeDidResponse>(create);
  static UpgradeDidResponse? _defaultInstance;

  /// New DID of wallet
  @$pb.TagNumber(1)
  $core.String get did => $_getSZ(0);
  @$pb.TagNumber(1)
  set did($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasDid() => $_has(0);
  @$pb.TagNumber(1)
  void clearDid() => clearField(1);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
