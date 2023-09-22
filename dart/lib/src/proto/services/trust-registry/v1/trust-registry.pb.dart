//
//  Generated code. Do not modify.
//  source: services/trust-registry/v1/trust-registry.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'trust-registry.pbenum.dart';

export 'trust-registry.pbenum.dart';

enum RegisterMemberRequest_Member { didUri, walletId, email, notSet }

/// Request to register a member as a valid issuer of a specific credential schema.
/// Only one of `did_uri`, `wallet_id`, or `email` may be specified.
class RegisterMemberRequest extends $pb.GeneratedMessage {
  factory RegisterMemberRequest({
    $core.String? didUri,
    $core.String? walletId,
    $core.String? email,
    $core.String? schemaUri,
    $fixnum.Int64? validFromUtc,
    $fixnum.Int64? validUntilUtc,
  }) {
    final $result = create();
    if (didUri != null) {
      $result.didUri = didUri;
    }
    if (walletId != null) {
      $result.walletId = walletId;
    }
    if (email != null) {
      $result.email = email;
    }
    if (schemaUri != null) {
      $result.schemaUri = schemaUri;
    }
    if (validFromUtc != null) {
      $result.validFromUtc = validFromUtc;
    }
    if (validUntilUtc != null) {
      $result.validUntilUtc = validUntilUtc;
    }
    return $result;
  }
  RegisterMemberRequest._() : super();
  factory RegisterMemberRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RegisterMemberRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, RegisterMemberRequest_Member>
      _RegisterMemberRequest_MemberByTag = {
    1: RegisterMemberRequest_Member.didUri,
    3: RegisterMemberRequest_Member.walletId,
    4: RegisterMemberRequest_Member.email,
    0: RegisterMemberRequest_Member.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RegisterMemberRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.trustregistry.v1'),
      createEmptyInstance: create)
    ..oo(0, [1, 3, 4])
    ..aOS(1, _omitFieldNames ? '' : 'didUri')
    ..aOS(3, _omitFieldNames ? '' : 'walletId')
    ..aOS(4, _omitFieldNames ? '' : 'email')
    ..aOS(10, _omitFieldNames ? '' : 'schemaUri')
    ..a<$fixnum.Int64>(
        11, _omitFieldNames ? '' : 'validFromUtc', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        12, _omitFieldNames ? '' : 'validUntilUtc', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

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
          as RegisterMemberRequest;

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

  /// DID URI of member to register
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

  /// Trinsic Wallet ID of member to register
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

  /// Email address of member to register. Must be associated with an existing Trinsic account.
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

  /// URI of credential schema to register member as authorized issuer of
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

  /// Unix Timestamp member is valid from. Member will not be considered valid before this timestamp.
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

  /// Unix Timestamp member is valid until. Member will not be considered valid after this timestamp.
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
}

/// Response to `RegisterMemberRequest`
class RegisterMemberResponse extends $pb.GeneratedMessage {
  factory RegisterMemberResponse() => create();
  RegisterMemberResponse._() : super();
  factory RegisterMemberResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RegisterMemberResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RegisterMemberResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.trustregistry.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

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
          as RegisterMemberResponse;

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

/// Request to unregister a member as a valid issuer of a specific credential schema.
/// Only one of `did_uri`, `wallet_id`, or `email` may be specified.
class UnregisterMemberRequest extends $pb.GeneratedMessage {
  factory UnregisterMemberRequest({
    $core.String? didUri,
    $core.String? walletId,
    $core.String? email,
    $core.String? schemaUri,
  }) {
    final $result = create();
    if (didUri != null) {
      $result.didUri = didUri;
    }
    if (walletId != null) {
      $result.walletId = walletId;
    }
    if (email != null) {
      $result.email = email;
    }
    if (schemaUri != null) {
      $result.schemaUri = schemaUri;
    }
    return $result;
  }
  UnregisterMemberRequest._() : super();
  factory UnregisterMemberRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UnregisterMemberRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, UnregisterMemberRequest_Member>
      _UnregisterMemberRequest_MemberByTag = {
    1: UnregisterMemberRequest_Member.didUri,
    3: UnregisterMemberRequest_Member.walletId,
    4: UnregisterMemberRequest_Member.email,
    0: UnregisterMemberRequest_Member.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UnregisterMemberRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.trustregistry.v1'),
      createEmptyInstance: create)
    ..oo(0, [1, 3, 4])
    ..aOS(1, _omitFieldNames ? '' : 'didUri')
    ..aOS(3, _omitFieldNames ? '' : 'walletId')
    ..aOS(4, _omitFieldNames ? '' : 'email')
    ..aOS(10, _omitFieldNames ? '' : 'schemaUri')
    ..hasRequiredFields = false;

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
          as UnregisterMemberRequest;

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

  /// DID URI of member to unregister
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

  /// Trinsic Wallet ID of member to unregister
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

  /// Email address of member to unregister. Must be associated with an existing Trinsic account.
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

  /// URI of credential schema to unregister member as authorized issuer of
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
}

/// Response to `UnregisterMemberRequest`
class UnregisterMemberResponse extends $pb.GeneratedMessage {
  factory UnregisterMemberResponse() => create();
  UnregisterMemberResponse._() : super();
  factory UnregisterMemberResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UnregisterMemberResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UnregisterMemberResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.trustregistry.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

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
          as UnregisterMemberResponse;

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

/// Request to fetch member status in Trust Registry for a specific credential schema.
class GetMemberAuthorizationStatusRequest extends $pb.GeneratedMessage {
  factory GetMemberAuthorizationStatusRequest({
    $core.String? didUri,
    $core.String? schemaUri,
  }) {
    final $result = create();
    if (didUri != null) {
      $result.didUri = didUri;
    }
    if (schemaUri != null) {
      $result.schemaUri = schemaUri;
    }
    return $result;
  }
  GetMemberAuthorizationStatusRequest._() : super();
  factory GetMemberAuthorizationStatusRequest.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetMemberAuthorizationStatusRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetMemberAuthorizationStatusRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.trustregistry.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'didUri')
    ..aOS(2, _omitFieldNames ? '' : 'schemaUri')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetMemberAuthorizationStatusRequest clone() =>
      GetMemberAuthorizationStatusRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetMemberAuthorizationStatusRequest copyWith(
          void Function(GetMemberAuthorizationStatusRequest) updates) =>
      super.copyWith((message) =>
              updates(message as GetMemberAuthorizationStatusRequest))
          as GetMemberAuthorizationStatusRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMemberAuthorizationStatusRequest create() =>
      GetMemberAuthorizationStatusRequest._();
  GetMemberAuthorizationStatusRequest createEmptyInstance() => create();
  static $pb.PbList<GetMemberAuthorizationStatusRequest> createRepeated() =>
      $pb.PbList<GetMemberAuthorizationStatusRequest>();
  @$core.pragma('dart2js:noInline')
  static GetMemberAuthorizationStatusRequest getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          GetMemberAuthorizationStatusRequest>(create);
  static GetMemberAuthorizationStatusRequest? _defaultInstance;

  /// DID URI of member
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

  /// URI of credential schema associated with member
  @$pb.TagNumber(2)
  $core.String get schemaUri => $_getSZ(1);
  @$pb.TagNumber(2)
  set schemaUri($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSchemaUri() => $_has(1);
  @$pb.TagNumber(2)
  void clearSchemaUri() => clearField(2);
}

/// Response to `GetMemberAuthorizationStatusRequest`
class GetMemberAuthorizationStatusResponse extends $pb.GeneratedMessage {
  factory GetMemberAuthorizationStatusResponse({
    RegistrationStatus? status,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  GetMemberAuthorizationStatusResponse._() : super();
  factory GetMemberAuthorizationStatusResponse.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetMemberAuthorizationStatusResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetMemberAuthorizationStatusResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.trustregistry.v1'),
      createEmptyInstance: create)
    ..e<RegistrationStatus>(
        1, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE,
        defaultOrMaker: RegistrationStatus.CURRENT,
        valueOf: RegistrationStatus.valueOf,
        enumValues: RegistrationStatus.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetMemberAuthorizationStatusResponse clone() =>
      GetMemberAuthorizationStatusResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetMemberAuthorizationStatusResponse copyWith(
          void Function(GetMemberAuthorizationStatusResponse) updates) =>
      super.copyWith((message) =>
              updates(message as GetMemberAuthorizationStatusResponse))
          as GetMemberAuthorizationStatusResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMemberAuthorizationStatusResponse create() =>
      GetMemberAuthorizationStatusResponse._();
  GetMemberAuthorizationStatusResponse createEmptyInstance() => create();
  static $pb.PbList<GetMemberAuthorizationStatusResponse> createRepeated() =>
      $pb.PbList<GetMemberAuthorizationStatusResponse>();
  @$core.pragma('dart2js:noInline')
  static GetMemberAuthorizationStatusResponse getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          GetMemberAuthorizationStatusResponse>(create);
  static GetMemberAuthorizationStatusResponse? _defaultInstance;

  /// Status of member for given credential schema
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

class ListAuthorizedMembersRequest extends $pb.GeneratedMessage {
  factory ListAuthorizedMembersRequest({
    $core.String? schemaUri,
    $core.String? continuationToken,
  }) {
    final $result = create();
    if (schemaUri != null) {
      $result.schemaUri = schemaUri;
    }
    if (continuationToken != null) {
      $result.continuationToken = continuationToken;
    }
    return $result;
  }
  ListAuthorizedMembersRequest._() : super();
  factory ListAuthorizedMembersRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListAuthorizedMembersRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListAuthorizedMembersRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.trustregistry.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'schemaUri')
    ..aOS(2, _omitFieldNames ? '' : 'continuationToken')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListAuthorizedMembersRequest clone() =>
      ListAuthorizedMembersRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListAuthorizedMembersRequest copyWith(
          void Function(ListAuthorizedMembersRequest) updates) =>
      super.copyWith(
              (message) => updates(message as ListAuthorizedMembersRequest))
          as ListAuthorizedMembersRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListAuthorizedMembersRequest create() =>
      ListAuthorizedMembersRequest._();
  ListAuthorizedMembersRequest createEmptyInstance() => create();
  static $pb.PbList<ListAuthorizedMembersRequest> createRepeated() =>
      $pb.PbList<ListAuthorizedMembersRequest>();
  @$core.pragma('dart2js:noInline')
  static ListAuthorizedMembersRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListAuthorizedMembersRequest>(create);
  static ListAuthorizedMembersRequest? _defaultInstance;

  /// id of schema that needs to be checked
  @$pb.TagNumber(1)
  $core.String get schemaUri => $_getSZ(0);
  @$pb.TagNumber(1)
  set schemaUri($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSchemaUri() => $_has(0);
  @$pb.TagNumber(1)
  void clearSchemaUri() => clearField(1);

  /// Token to fetch next set of results, from previous `ListAuthorizedMembersResponse`
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

/// Response to `ListAuthorizedMembersRequest`
class ListAuthorizedMembersResponse extends $pb.GeneratedMessage {
  factory ListAuthorizedMembersResponse({
    $core.Iterable<AuthorizedMember>? authorizedMembers,
    $core.bool? hasMoreResults,
    $core.String? continuationToken,
  }) {
    final $result = create();
    if (authorizedMembers != null) {
      $result.authorizedMembers.addAll(authorizedMembers);
    }
    if (hasMoreResults != null) {
      $result.hasMoreResults = hasMoreResults;
    }
    if (continuationToken != null) {
      $result.continuationToken = continuationToken;
    }
    return $result;
  }
  ListAuthorizedMembersResponse._() : super();
  factory ListAuthorizedMembersResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListAuthorizedMembersResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListAuthorizedMembersResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.trustregistry.v1'),
      createEmptyInstance: create)
    ..pc<AuthorizedMember>(
        1, _omitFieldNames ? '' : 'authorizedMembers', $pb.PbFieldType.PM,
        subBuilder: AuthorizedMember.create)
    ..aOB(2, _omitFieldNames ? '' : 'hasMoreResults')
    ..aOS(3, _omitFieldNames ? '' : 'continuationToken')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListAuthorizedMembersResponse clone() =>
      ListAuthorizedMembersResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListAuthorizedMembersResponse copyWith(
          void Function(ListAuthorizedMembersResponse) updates) =>
      super.copyWith(
              (message) => updates(message as ListAuthorizedMembersResponse))
          as ListAuthorizedMembersResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListAuthorizedMembersResponse create() =>
      ListAuthorizedMembersResponse._();
  ListAuthorizedMembersResponse createEmptyInstance() => create();
  static $pb.PbList<ListAuthorizedMembersResponse> createRepeated() =>
      $pb.PbList<ListAuthorizedMembersResponse>();
  @$core.pragma('dart2js:noInline')
  static ListAuthorizedMembersResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListAuthorizedMembersResponse>(create);
  static ListAuthorizedMembersResponse? _defaultInstance;

  /// JSON string containing array of resultant objects
  @$pb.TagNumber(1)
  $core.List<AuthorizedMember> get authorizedMembers => $_getList(0);

  /// Whether more data is available to fetch for query
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

  /// Token to fetch next set of results via `ListAuthorizedMembersRequest`
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

class AuthorizedMember extends $pb.GeneratedMessage {
  factory AuthorizedMember({
    $core.String? did,
    $core.Iterable<AuthorizedMemberSchema>? authorizedMemberSchemas,
  }) {
    final $result = create();
    if (did != null) {
      $result.did = did;
    }
    if (authorizedMemberSchemas != null) {
      $result.authorizedMemberSchemas.addAll(authorizedMemberSchemas);
    }
    return $result;
  }
  AuthorizedMember._() : super();
  factory AuthorizedMember.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AuthorizedMember.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AuthorizedMember',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.trustregistry.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'did')
    ..pc<AuthorizedMemberSchema>(
        2, _omitFieldNames ? '' : 'authorizedMemberSchemas', $pb.PbFieldType.PM,
        subBuilder: AuthorizedMemberSchema.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AuthorizedMember clone() => AuthorizedMember()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AuthorizedMember copyWith(void Function(AuthorizedMember) updates) =>
      super.copyWith((message) => updates(message as AuthorizedMember))
          as AuthorizedMember;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthorizedMember create() => AuthorizedMember._();
  AuthorizedMember createEmptyInstance() => create();
  static $pb.PbList<AuthorizedMember> createRepeated() =>
      $pb.PbList<AuthorizedMember>();
  @$core.pragma('dart2js:noInline')
  static AuthorizedMember getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AuthorizedMember>(create);
  static AuthorizedMember? _defaultInstance;

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

  @$pb.TagNumber(2)
  $core.List<AuthorizedMemberSchema> get authorizedMemberSchemas =>
      $_getList(1);
}

class AuthorizedMemberSchema extends $pb.GeneratedMessage {
  factory AuthorizedMemberSchema({
    $core.String? schemaUri,
    $core.String? status,
    $core.String? statusDetails,
    $fixnum.Int64? validFrom,
    $fixnum.Int64? validUntil,
  }) {
    final $result = create();
    if (schemaUri != null) {
      $result.schemaUri = schemaUri;
    }
    if (status != null) {
      $result.status = status;
    }
    if (statusDetails != null) {
      $result.statusDetails = statusDetails;
    }
    if (validFrom != null) {
      $result.validFrom = validFrom;
    }
    if (validUntil != null) {
      $result.validUntil = validUntil;
    }
    return $result;
  }
  AuthorizedMemberSchema._() : super();
  factory AuthorizedMemberSchema.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AuthorizedMemberSchema.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AuthorizedMemberSchema',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.trustregistry.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'schemaUri')
    ..aOS(2, _omitFieldNames ? '' : 'status')
    ..aOS(3, _omitFieldNames ? '' : 'statusDetails')
    ..a<$fixnum.Int64>(
        4, _omitFieldNames ? '' : 'validFrom', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        5, _omitFieldNames ? '' : 'validUntil', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AuthorizedMemberSchema clone() =>
      AuthorizedMemberSchema()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AuthorizedMemberSchema copyWith(
          void Function(AuthorizedMemberSchema) updates) =>
      super.copyWith((message) => updates(message as AuthorizedMemberSchema))
          as AuthorizedMemberSchema;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthorizedMemberSchema create() => AuthorizedMemberSchema._();
  AuthorizedMemberSchema createEmptyInstance() => create();
  static $pb.PbList<AuthorizedMemberSchema> createRepeated() =>
      $pb.PbList<AuthorizedMemberSchema>();
  @$core.pragma('dart2js:noInline')
  static AuthorizedMemberSchema getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AuthorizedMemberSchema>(create);
  static AuthorizedMemberSchema? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get schemaUri => $_getSZ(0);
  @$pb.TagNumber(1)
  set schemaUri($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSchemaUri() => $_has(0);
  @$pb.TagNumber(1)
  void clearSchemaUri() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get status => $_getSZ(1);
  @$pb.TagNumber(2)
  set status($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get statusDetails => $_getSZ(2);
  @$pb.TagNumber(3)
  set statusDetails($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasStatusDetails() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatusDetails() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get validFrom => $_getI64(3);
  @$pb.TagNumber(4)
  set validFrom($fixnum.Int64 v) {
    $_setInt64(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasValidFrom() => $_has(3);
  @$pb.TagNumber(4)
  void clearValidFrom() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get validUntil => $_getI64(4);
  @$pb.TagNumber(5)
  set validUntil($fixnum.Int64 v) {
    $_setInt64(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasValidUntil() => $_has(4);
  @$pb.TagNumber(5)
  void clearValidUntil() => clearField(5);
}

enum GetMemberRequest_Member { didUri, walletId, email, notSet }

/// Request to get a member of the Trust Registry
class GetMemberRequest extends $pb.GeneratedMessage {
  factory GetMemberRequest({
    $core.String? didUri,
    $core.String? walletId,
    $core.String? email,
  }) {
    final $result = create();
    if (didUri != null) {
      $result.didUri = didUri;
    }
    if (walletId != null) {
      $result.walletId = walletId;
    }
    if (email != null) {
      $result.email = email;
    }
    return $result;
  }
  GetMemberRequest._() : super();
  factory GetMemberRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetMemberRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, GetMemberRequest_Member>
      _GetMemberRequest_MemberByTag = {
    1: GetMemberRequest_Member.didUri,
    3: GetMemberRequest_Member.walletId,
    4: GetMemberRequest_Member.email,
    0: GetMemberRequest_Member.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetMemberRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.trustregistry.v1'),
      createEmptyInstance: create)
    ..oo(0, [1, 3, 4])
    ..aOS(1, _omitFieldNames ? '' : 'didUri')
    ..aOS(3, _omitFieldNames ? '' : 'walletId')
    ..aOS(4, _omitFieldNames ? '' : 'email')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetMemberRequest clone() => GetMemberRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetMemberRequest copyWith(void Function(GetMemberRequest) updates) =>
      super.copyWith((message) => updates(message as GetMemberRequest))
          as GetMemberRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMemberRequest create() => GetMemberRequest._();
  GetMemberRequest createEmptyInstance() => create();
  static $pb.PbList<GetMemberRequest> createRepeated() =>
      $pb.PbList<GetMemberRequest>();
  @$core.pragma('dart2js:noInline')
  static GetMemberRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetMemberRequest>(create);
  static GetMemberRequest? _defaultInstance;

  GetMemberRequest_Member whichMember() =>
      _GetMemberRequest_MemberByTag[$_whichOneof(0)]!;
  void clearMember() => clearField($_whichOneof(0));

  /// DID URI of member to get
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

  /// Trinsic Wallet ID of member to get
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

  /// Email address of member to get. Must be associated with an existing Trinsic account.
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
}

/// Response to `GetMemberAuthorizationStatusRequest`
class GetMemberResponse extends $pb.GeneratedMessage {
  factory GetMemberResponse({
    AuthorizedMember? authorizedMember,
  }) {
    final $result = create();
    if (authorizedMember != null) {
      $result.authorizedMember = authorizedMember;
    }
    return $result;
  }
  GetMemberResponse._() : super();
  factory GetMemberResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetMemberResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetMemberResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.trustregistry.v1'),
      createEmptyInstance: create)
    ..aOM<AuthorizedMember>(1, _omitFieldNames ? '' : 'authorizedMember',
        subBuilder: AuthorizedMember.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetMemberResponse clone() => GetMemberResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetMemberResponse copyWith(void Function(GetMemberResponse) updates) =>
      super.copyWith((message) => updates(message as GetMemberResponse))
          as GetMemberResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMemberResponse create() => GetMemberResponse._();
  GetMemberResponse createEmptyInstance() => create();
  static $pb.PbList<GetMemberResponse> createRepeated() =>
      $pb.PbList<GetMemberResponse>();
  @$core.pragma('dart2js:noInline')
  static GetMemberResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetMemberResponse>(create);
  static GetMemberResponse? _defaultInstance;

  /// Member for given did in given framework
  @$pb.TagNumber(1)
  AuthorizedMember get authorizedMember => $_getN(0);
  @$pb.TagNumber(1)
  set authorizedMember(AuthorizedMember v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasAuthorizedMember() => $_has(0);
  @$pb.TagNumber(1)
  void clearAuthorizedMember() => clearField(1);
  @$pb.TagNumber(1)
  AuthorizedMember ensureAuthorizedMember() => $_ensure(0);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
