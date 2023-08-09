//
//  Generated code. Do not modify.
//  source: services/provider/v1/provider.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../account/v1/account.pb.dart' as $0;
import '../../account/v1/account.pbenum.dart' as $0;
import '../../common/v1/common.pbenum.dart' as $8;
import 'provider.pbenum.dart';

export 'provider.pbenum.dart';

class Ecosystem extends $pb.GeneratedMessage {
  factory Ecosystem() => create();
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

class CreateEcosystemRequest extends $pb.GeneratedMessage {
  factory CreateEcosystemRequest() => create();
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
    ..aOM<$0.AccountDetails>(4, _omitFieldNames ? '' : 'details',
        subBuilder: $0.AccountDetails.create)
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
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);

  @$pb.TagNumber(4)
  $0.AccountDetails get details => $_getN(2);
  @$pb.TagNumber(4)
  set details($0.AccountDetails v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasDetails() => $_has(2);
  @$pb.TagNumber(4)
  void clearDetails() => clearField(4);
  @$pb.TagNumber(4)
  $0.AccountDetails ensureDetails() => $_ensure(2);

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

class CreateEcosystemResponse extends $pb.GeneratedMessage {
  factory CreateEcosystemResponse() => create();
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
    ..aOM<$0.AccountProfile>(2, _omitFieldNames ? '' : 'profile',
        subBuilder: $0.AccountProfile.create)
    ..e<$0.ConfirmationMethod>(
        3, _omitFieldNames ? '' : 'confirmationMethod', $pb.PbFieldType.OE,
        defaultOrMaker: $0.ConfirmationMethod.None,
        valueOf: $0.ConfirmationMethod.valueOf,
        enumValues: $0.ConfirmationMethod.values)
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

  @$pb.TagNumber(2)
  $0.AccountProfile get profile => $_getN(1);
  @$pb.TagNumber(2)
  set profile($0.AccountProfile v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasProfile() => $_has(1);
  @$pb.TagNumber(2)
  void clearProfile() => clearField(2);
  @$pb.TagNumber(2)
  $0.AccountProfile ensureProfile() => $_ensure(1);

  @$pb.TagNumber(3)
  $0.ConfirmationMethod get confirmationMethod => $_getN(2);
  @$pb.TagNumber(3)
  set confirmationMethod($0.ConfirmationMethod v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasConfirmationMethod() => $_has(2);
  @$pb.TagNumber(3)
  void clearConfirmationMethod() => clearField(3);
}

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

class EcosystemInfoResponse extends $pb.GeneratedMessage {
  factory EcosystemInfoResponse() => create();
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

class GetOberonKeyResponse extends $pb.GeneratedMessage {
  factory GetOberonKeyResponse() => create();
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

class RetrieveDomainVerificationRecordRequest extends $pb.GeneratedMessage {
  factory RetrieveDomainVerificationRecordRequest() => create();
  RetrieveDomainVerificationRecordRequest._() : super();
  factory RetrieveDomainVerificationRecordRequest.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RetrieveDomainVerificationRecordRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RetrieveDomainVerificationRecordRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.provider.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RetrieveDomainVerificationRecordRequest clone() =>
      RetrieveDomainVerificationRecordRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RetrieveDomainVerificationRecordRequest copyWith(
          void Function(RetrieveDomainVerificationRecordRequest) updates) =>
      super.copyWith((message) =>
              updates(message as RetrieveDomainVerificationRecordRequest))
          as RetrieveDomainVerificationRecordRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RetrieveDomainVerificationRecordRequest create() =>
      RetrieveDomainVerificationRecordRequest._();
  RetrieveDomainVerificationRecordRequest createEmptyInstance() => create();
  static $pb.PbList<RetrieveDomainVerificationRecordRequest> createRepeated() =>
      $pb.PbList<RetrieveDomainVerificationRecordRequest>();
  @$core.pragma('dart2js:noInline')
  static RetrieveDomainVerificationRecordRequest getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          RetrieveDomainVerificationRecordRequest>(create);
  static RetrieveDomainVerificationRecordRequest? _defaultInstance;
}

class RetrieveDomainVerificationRecordResponse extends $pb.GeneratedMessage {
  factory RetrieveDomainVerificationRecordResponse() => create();
  RetrieveDomainVerificationRecordResponse._() : super();
  factory RetrieveDomainVerificationRecordResponse.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RetrieveDomainVerificationRecordResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RetrieveDomainVerificationRecordResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.provider.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'verificationRecordName')
    ..aOS(2, _omitFieldNames ? '' : 'verificationRecordValue')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RetrieveDomainVerificationRecordResponse clone() =>
      RetrieveDomainVerificationRecordResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RetrieveDomainVerificationRecordResponse copyWith(
          void Function(RetrieveDomainVerificationRecordResponse) updates) =>
      super.copyWith((message) =>
              updates(message as RetrieveDomainVerificationRecordResponse))
          as RetrieveDomainVerificationRecordResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RetrieveDomainVerificationRecordResponse create() =>
      RetrieveDomainVerificationRecordResponse._();
  RetrieveDomainVerificationRecordResponse createEmptyInstance() => create();
  static $pb.PbList<RetrieveDomainVerificationRecordResponse>
      createRepeated() =>
          $pb.PbList<RetrieveDomainVerificationRecordResponse>();
  @$core.pragma('dart2js:noInline')
  static RetrieveDomainVerificationRecordResponse getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          RetrieveDomainVerificationRecordResponse>(create);
  static RetrieveDomainVerificationRecordResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get verificationRecordName => $_getSZ(0);
  @$pb.TagNumber(1)
  set verificationRecordName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasVerificationRecordName() => $_has(0);
  @$pb.TagNumber(1)
  void clearVerificationRecordName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get verificationRecordValue => $_getSZ(1);
  @$pb.TagNumber(2)
  set verificationRecordValue($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasVerificationRecordValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearVerificationRecordValue() => clearField(2);
}

class RefreshDomainVerificationStatusRequest extends $pb.GeneratedMessage {
  factory RefreshDomainVerificationStatusRequest() => create();
  RefreshDomainVerificationStatusRequest._() : super();
  factory RefreshDomainVerificationStatusRequest.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RefreshDomainVerificationStatusRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RefreshDomainVerificationStatusRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.provider.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RefreshDomainVerificationStatusRequest clone() =>
      RefreshDomainVerificationStatusRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RefreshDomainVerificationStatusRequest copyWith(
          void Function(RefreshDomainVerificationStatusRequest) updates) =>
      super.copyWith((message) =>
              updates(message as RefreshDomainVerificationStatusRequest))
          as RefreshDomainVerificationStatusRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RefreshDomainVerificationStatusRequest create() =>
      RefreshDomainVerificationStatusRequest._();
  RefreshDomainVerificationStatusRequest createEmptyInstance() => create();
  static $pb.PbList<RefreshDomainVerificationStatusRequest> createRepeated() =>
      $pb.PbList<RefreshDomainVerificationStatusRequest>();
  @$core.pragma('dart2js:noInline')
  static RefreshDomainVerificationStatusRequest getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          RefreshDomainVerificationStatusRequest>(create);
  static RefreshDomainVerificationStatusRequest? _defaultInstance;
}

class RefreshDomainVerificationStatusResponse extends $pb.GeneratedMessage {
  factory RefreshDomainVerificationStatusResponse() => create();
  RefreshDomainVerificationStatusResponse._() : super();
  factory RefreshDomainVerificationStatusResponse.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RefreshDomainVerificationStatusResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RefreshDomainVerificationStatusResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.provider.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'domain')
    ..aOB(2, _omitFieldNames ? '' : 'domainVerified')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RefreshDomainVerificationStatusResponse clone() =>
      RefreshDomainVerificationStatusResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RefreshDomainVerificationStatusResponse copyWith(
          void Function(RefreshDomainVerificationStatusResponse) updates) =>
      super.copyWith((message) =>
              updates(message as RefreshDomainVerificationStatusResponse))
          as RefreshDomainVerificationStatusResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RefreshDomainVerificationStatusResponse create() =>
      RefreshDomainVerificationStatusResponse._();
  RefreshDomainVerificationStatusResponse createEmptyInstance() => create();
  static $pb.PbList<RefreshDomainVerificationStatusResponse> createRepeated() =>
      $pb.PbList<RefreshDomainVerificationStatusResponse>();
  @$core.pragma('dart2js:noInline')
  static RefreshDomainVerificationStatusResponse getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          RefreshDomainVerificationStatusResponse>(create);
  static RefreshDomainVerificationStatusResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get domain => $_getSZ(0);
  @$pb.TagNumber(1)
  set domain($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasDomain() => $_has(0);
  @$pb.TagNumber(1)
  void clearDomain() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get domainVerified => $_getBF(1);
  @$pb.TagNumber(2)
  set domainVerified($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasDomainVerified() => $_has(1);
  @$pb.TagNumber(2)
  void clearDomainVerified() => clearField(2);
}

class SearchWalletConfigurationsRequest extends $pb.GeneratedMessage {
  factory SearchWalletConfigurationsRequest() => create();
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
  factory SearchWalletConfigurationResponse() => create();
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

  @$pb.TagNumber(1)
  $core.List<WalletConfiguration> get results => $_getList(0);

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

class WalletConfiguration extends $pb.GeneratedMessage {
  factory WalletConfiguration() => create();
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
    ..pc<$0.WalletAuthToken>(
        7, _omitFieldNames ? '' : 'authTokens', $pb.PbFieldType.PM,
        subBuilder: $0.WalletAuthToken.create)
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

  @$pb.TagNumber(7)
  $core.List<$0.WalletAuthToken> get authTokens => $_getList(6);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(8)
  $core.List<$core.String> get externalIdentityIds => $_getList(7);

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

  @$pb.TagNumber(11)
  $core.List<WalletExternalIdentity> get externalIdentities => $_getList(10);
}

class WalletExternalIdentity extends $pb.GeneratedMessage {
  factory WalletExternalIdentity() => create();
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

class IonOptions extends $pb.GeneratedMessage {
  factory IonOptions() => create();
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

class IndyOptions extends $pb.GeneratedMessage {
  factory IndyOptions() => create();
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

class UpgradeDidRequest extends $pb.GeneratedMessage {
  factory UpgradeDidRequest() => create();
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
    ..e<$8.SupportedDidMethod>(
        3, _omitFieldNames ? '' : 'method', $pb.PbFieldType.OE,
        defaultOrMaker: $8.SupportedDidMethod.KEY,
        valueOf: $8.SupportedDidMethod.valueOf,
        enumValues: $8.SupportedDidMethod.values)
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

  @$pb.TagNumber(3)
  $8.SupportedDidMethod get method => $_getN(2);
  @$pb.TagNumber(3)
  set method($8.SupportedDidMethod v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasMethod() => $_has(2);
  @$pb.TagNumber(3)
  void clearMethod() => clearField(3);

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

class UpgradeDidResponse extends $pb.GeneratedMessage {
  factory UpgradeDidResponse() => create();
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
