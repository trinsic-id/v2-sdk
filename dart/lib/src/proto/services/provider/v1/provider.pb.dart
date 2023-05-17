///
//  Generated code. Do not modify.
//  source: services/provider/v1/provider.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../account/v1/account.pb.dart' as $1;

import '../../account/v1/account.pbenum.dart' as $1;
import 'provider.pbenum.dart';
import '../../common/v1/common.pbenum.dart' as $8;

export 'provider.pbenum.dart';

class Ecosystem extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'Ecosystem',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.provider.v1'),
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
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'description')
    ..hasRequiredFields = false;

  Ecosystem._() : super();
  factory Ecosystem({
    $core.String? id,
    $core.String? name,
    $core.String? description,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    if (description != null) {
      _result.description = description;
    }
    return _result;
  }
  factory Ecosystem.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Ecosystem.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Ecosystem clone() => Ecosystem()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Ecosystem copyWith(void Function(Ecosystem) updates) =>
      super.copyWith((message) => updates(message as Ecosystem))
          as Ecosystem; // ignore: deprecated_member_use
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'CreateEcosystemRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.provider.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'name')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'description')
    ..aOM<$1.AccountDetails>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'details',
        subBuilder: $1.AccountDetails.create)
    ..aOS(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'domain')
    ..hasRequiredFields = false;

  CreateEcosystemRequest._() : super();
  factory CreateEcosystemRequest({
    $core.String? name,
    $core.String? description,
    $1.AccountDetails? details,
    $core.String? domain,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (description != null) {
      _result.description = description;
    }
    if (details != null) {
      _result.details = details;
    }
    if (domain != null) {
      _result.domain = domain;
    }
    return _result;
  }
  factory CreateEcosystemRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreateEcosystemRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
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
          as CreateEcosystemRequest; // ignore: deprecated_member_use
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
  $1.AccountDetails get details => $_getN(2);
  @$pb.TagNumber(4)
  set details($1.AccountDetails v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasDetails() => $_has(2);
  @$pb.TagNumber(4)
  void clearDetails() => clearField(4);
  @$pb.TagNumber(4)
  $1.AccountDetails ensureDetails() => $_ensure(2);

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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'CreateEcosystemResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.provider.v1'),
      createEmptyInstance: create)
    ..aOM<Ecosystem>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'ecosystem',
        subBuilder: Ecosystem.create)
    ..aOM<$1.AccountProfile>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'profile',
        subBuilder: $1.AccountProfile.create)
    ..e<$1.ConfirmationMethod>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'confirmationMethod',
        $pb.PbFieldType.OE,
        defaultOrMaker: $1.ConfirmationMethod.None,
        valueOf: $1.ConfirmationMethod.valueOf,
        enumValues: $1.ConfirmationMethod.values)
    ..hasRequiredFields = false;

  CreateEcosystemResponse._() : super();
  factory CreateEcosystemResponse({
    Ecosystem? ecosystem,
    $1.AccountProfile? profile,
    $1.ConfirmationMethod? confirmationMethod,
  }) {
    final _result = create();
    if (ecosystem != null) {
      _result.ecosystem = ecosystem;
    }
    if (profile != null) {
      _result.profile = profile;
    }
    if (confirmationMethod != null) {
      _result.confirmationMethod = confirmationMethod;
    }
    return _result;
  }
  factory CreateEcosystemResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreateEcosystemResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
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
          as CreateEcosystemResponse; // ignore: deprecated_member_use
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
  $1.AccountProfile get profile => $_getN(1);
  @$pb.TagNumber(2)
  set profile($1.AccountProfile v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasProfile() => $_has(1);
  @$pb.TagNumber(2)
  void clearProfile() => clearField(2);
  @$pb.TagNumber(2)
  $1.AccountProfile ensureProfile() => $_ensure(1);

  @$pb.TagNumber(3)
  $1.ConfirmationMethod get confirmationMethod => $_getN(2);
  @$pb.TagNumber(3)
  set confirmationMethod($1.ConfirmationMethod v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasConfirmationMethod() => $_has(2);
  @$pb.TagNumber(3)
  void clearConfirmationMethod() => clearField(3);
}

class UpdateEcosystemRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'UpdateEcosystemRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.provider.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'description')
    ..hasRequiredFields = false;

  UpdateEcosystemRequest._() : super();
  factory UpdateEcosystemRequest({
    $core.String? description,
  }) {
    final _result = create();
    if (description != null) {
      _result.description = description;
    }
    return _result;
  }
  factory UpdateEcosystemRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UpdateEcosystemRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UpdateEcosystemRequest clone() =>
      UpdateEcosystemRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UpdateEcosystemRequest copyWith(
          void Function(UpdateEcosystemRequest) updates) =>
      super.copyWith((message) => updates(message as UpdateEcosystemRequest))
          as UpdateEcosystemRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateEcosystemRequest create() => UpdateEcosystemRequest._();
  UpdateEcosystemRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateEcosystemRequest> createRepeated() =>
      $pb.PbList<UpdateEcosystemRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateEcosystemRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateEcosystemRequest>(create);
  static UpdateEcosystemRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get description => $_getSZ(0);
  @$pb.TagNumber(1)
  set description($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasDescription() => $_has(0);
  @$pb.TagNumber(1)
  void clearDescription() => clearField(1);
}

class UpdateEcosystemResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'UpdateEcosystemResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.provider.v1'),
      createEmptyInstance: create)
    ..aOM<Ecosystem>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'Ecosystem',
        protoName: 'Ecosystem',
        subBuilder: Ecosystem.create)
    ..hasRequiredFields = false;

  UpdateEcosystemResponse._() : super();
  factory UpdateEcosystemResponse({
    Ecosystem? ecosystem,
  }) {
    final _result = create();
    if (ecosystem != null) {
      _result.ecosystem = ecosystem;
    }
    return _result;
  }
  factory UpdateEcosystemResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UpdateEcosystemResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UpdateEcosystemResponse clone() =>
      UpdateEcosystemResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UpdateEcosystemResponse copyWith(
          void Function(UpdateEcosystemResponse) updates) =>
      super.copyWith((message) => updates(message as UpdateEcosystemResponse))
          as UpdateEcosystemResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateEcosystemResponse create() => UpdateEcosystemResponse._();
  UpdateEcosystemResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateEcosystemResponse> createRepeated() =>
      $pb.PbList<UpdateEcosystemResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateEcosystemResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateEcosystemResponse>(create);
  static UpdateEcosystemResponse? _defaultInstance;

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

class EcosystemInfoRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'EcosystemInfoRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.provider.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  EcosystemInfoRequest._() : super();
  factory EcosystemInfoRequest() => create();
  factory EcosystemInfoRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory EcosystemInfoRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
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
          as EcosystemInfoRequest; // ignore: deprecated_member_use
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'EcosystemInfoResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.provider.v1'),
      createEmptyInstance: create)
    ..aOM<Ecosystem>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'ecosystem',
        subBuilder: Ecosystem.create)
    ..hasRequiredFields = false;

  EcosystemInfoResponse._() : super();
  factory EcosystemInfoResponse({
    Ecosystem? ecosystem,
  }) {
    final _result = create();
    if (ecosystem != null) {
      _result.ecosystem = ecosystem;
    }
    return _result;
  }
  factory EcosystemInfoResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory EcosystemInfoResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
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
          as EcosystemInfoResponse; // ignore: deprecated_member_use
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetOberonKeyRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.provider.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  GetOberonKeyRequest._() : super();
  factory GetOberonKeyRequest() => create();
  factory GetOberonKeyRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetOberonKeyRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetOberonKeyRequest clone() => GetOberonKeyRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetOberonKeyRequest copyWith(void Function(GetOberonKeyRequest) updates) =>
      super.copyWith((message) => updates(message as GetOberonKeyRequest))
          as GetOberonKeyRequest; // ignore: deprecated_member_use
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetOberonKeyResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.provider.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'key')
    ..hasRequiredFields = false;

  GetOberonKeyResponse._() : super();
  factory GetOberonKeyResponse({
    $core.String? key,
  }) {
    final _result = create();
    if (key != null) {
      _result.key = key;
    }
    return _result;
  }
  factory GetOberonKeyResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetOberonKeyResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
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
          as GetOberonKeyResponse; // ignore: deprecated_member_use
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'RetrieveDomainVerificationRecordRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.provider.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  RetrieveDomainVerificationRecordRequest._() : super();
  factory RetrieveDomainVerificationRecordRequest() => create();
  factory RetrieveDomainVerificationRecordRequest.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RetrieveDomainVerificationRecordRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
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
          as RetrieveDomainVerificationRecordRequest; // ignore: deprecated_member_use
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'RetrieveDomainVerificationRecordResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.provider.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'verificationRecordName')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'verificationRecordValue')
    ..hasRequiredFields = false;

  RetrieveDomainVerificationRecordResponse._() : super();
  factory RetrieveDomainVerificationRecordResponse({
    $core.String? verificationRecordName,
    $core.String? verificationRecordValue,
  }) {
    final _result = create();
    if (verificationRecordName != null) {
      _result.verificationRecordName = verificationRecordName;
    }
    if (verificationRecordValue != null) {
      _result.verificationRecordValue = verificationRecordValue;
    }
    return _result;
  }
  factory RetrieveDomainVerificationRecordResponse.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RetrieveDomainVerificationRecordResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
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
          as RetrieveDomainVerificationRecordResponse; // ignore: deprecated_member_use
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'RefreshDomainVerificationStatusRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.provider.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  RefreshDomainVerificationStatusRequest._() : super();
  factory RefreshDomainVerificationStatusRequest() => create();
  factory RefreshDomainVerificationStatusRequest.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RefreshDomainVerificationStatusRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
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
          as RefreshDomainVerificationStatusRequest; // ignore: deprecated_member_use
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'RefreshDomainVerificationStatusResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.provider.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'domain')
    ..aOB(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'domainVerified')
    ..hasRequiredFields = false;

  RefreshDomainVerificationStatusResponse._() : super();
  factory RefreshDomainVerificationStatusResponse({
    $core.String? domain,
    $core.bool? domainVerified,
  }) {
    final _result = create();
    if (domain != null) {
      _result.domain = domain;
    }
    if (domainVerified != null) {
      _result.domainVerified = domainVerified;
    }
    return _result;
  }
  factory RefreshDomainVerificationStatusResponse.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RefreshDomainVerificationStatusResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
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
          as RefreshDomainVerificationStatusResponse; // ignore: deprecated_member_use
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SearchWalletConfigurationsRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.provider.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'queryFilter')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'continuationToken')
    ..hasRequiredFields = false;

  SearchWalletConfigurationsRequest._() : super();
  factory SearchWalletConfigurationsRequest({
    $core.String? queryFilter,
    $core.String? continuationToken,
  }) {
    final _result = create();
    if (queryFilter != null) {
      _result.queryFilter = queryFilter;
    }
    if (continuationToken != null) {
      _result.continuationToken = continuationToken;
    }
    return _result;
  }
  factory SearchWalletConfigurationsRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SearchWalletConfigurationsRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
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
          as SearchWalletConfigurationsRequest; // ignore: deprecated_member_use
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SearchWalletConfigurationResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.provider.v1'),
      createEmptyInstance: create)
    ..pc<WalletConfiguration>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'results',
        $pb.PbFieldType.PM,
        subBuilder: WalletConfiguration.create)
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

  SearchWalletConfigurationResponse._() : super();
  factory SearchWalletConfigurationResponse({
    $core.Iterable<WalletConfiguration>? results,
    $core.bool? hasMoreResults,
    $core.String? continuationToken,
  }) {
    final _result = create();
    if (results != null) {
      _result.results.addAll(results);
    }
    if (hasMoreResults != null) {
      _result.hasMoreResults = hasMoreResults;
    }
    if (continuationToken != null) {
      _result.continuationToken = continuationToken;
    }
    return _result;
  }
  factory SearchWalletConfigurationResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SearchWalletConfigurationResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
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
          as SearchWalletConfigurationResponse; // ignore: deprecated_member_use
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'WalletConfiguration',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.provider.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'name')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'email')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'sms')
    ..aOS(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'walletId')
    ..aOS(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'publicDid')
    ..aOS(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'configType')
    ..pc<$1.WalletAuthToken>(
        7,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'authTokens',
        $pb.PbFieldType.PM,
        subBuilder: $1.WalletAuthToken.create)
    ..pPS(
        8,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'externalIdentities')
    ..aOS(
        9,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'ecosystemId')
    ..aOS(
        10,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'description')
    ..hasRequiredFields = false;

  WalletConfiguration._() : super();
  factory WalletConfiguration({
    $core.String? name,
    $core.String? email,
    $core.String? sms,
    $core.String? walletId,
    $core.String? publicDid,
    $core.String? configType,
    $core.Iterable<$1.WalletAuthToken>? authTokens,
    $core.Iterable<$core.String>? externalIdentities,
    $core.String? ecosystemId,
    $core.String? description,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (email != null) {
      _result.email = email;
    }
    if (sms != null) {
      _result.sms = sms;
    }
    if (walletId != null) {
      _result.walletId = walletId;
    }
    if (publicDid != null) {
      _result.publicDid = publicDid;
    }
    if (configType != null) {
      _result.configType = configType;
    }
    if (authTokens != null) {
      _result.authTokens.addAll(authTokens);
    }
    if (externalIdentities != null) {
      _result.externalIdentities.addAll(externalIdentities);
    }
    if (ecosystemId != null) {
      _result.ecosystemId = ecosystemId;
    }
    if (description != null) {
      _result.description = description;
    }
    return _result;
  }
  factory WalletConfiguration.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory WalletConfiguration.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  WalletConfiguration clone() => WalletConfiguration()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  WalletConfiguration copyWith(void Function(WalletConfiguration) updates) =>
      super.copyWith((message) => updates(message as WalletConfiguration))
          as WalletConfiguration; // ignore: deprecated_member_use
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

  @$pb.TagNumber(2)
  $core.String get email => $_getSZ(1);
  @$pb.TagNumber(2)
  set email($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasEmail() => $_has(1);
  @$pb.TagNumber(2)
  void clearEmail() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get sms => $_getSZ(2);
  @$pb.TagNumber(3)
  set sms($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasSms() => $_has(2);
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
  $core.List<$1.WalletAuthToken> get authTokens => $_getList(6);

  @$pb.TagNumber(8)
  $core.List<$core.String> get externalIdentities => $_getList(7);

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
}

class IonOptions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'IonOptions',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.provider.v1'),
      createEmptyInstance: create)
    ..e<IonOptions_IonNetwork>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'network',
        $pb.PbFieldType.OE,
        defaultOrMaker: IonOptions_IonNetwork.TestNet,
        valueOf: IonOptions_IonNetwork.valueOf,
        enumValues: IonOptions_IonNetwork.values)
    ..hasRequiredFields = false;

  IonOptions._() : super();
  factory IonOptions({
    IonOptions_IonNetwork? network,
  }) {
    final _result = create();
    if (network != null) {
      _result.network = network;
    }
    return _result;
  }
  factory IonOptions.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory IonOptions.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  IonOptions clone() => IonOptions()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  IonOptions copyWith(void Function(IonOptions) updates) =>
      super.copyWith((message) => updates(message as IonOptions))
          as IonOptions; // ignore: deprecated_member_use
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'IndyOptions',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.provider.v1'),
      createEmptyInstance: create)
    ..e<IndyOptions_IndyNetwork>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'network',
        $pb.PbFieldType.OE,
        defaultOrMaker: IndyOptions_IndyNetwork.Danube,
        valueOf: IndyOptions_IndyNetwork.valueOf,
        enumValues: IndyOptions_IndyNetwork.values)
    ..hasRequiredFields = false;

  IndyOptions._() : super();
  factory IndyOptions({
    IndyOptions_IndyNetwork? network,
  }) {
    final _result = create();
    if (network != null) {
      _result.network = network;
    }
    return _result;
  }
  factory IndyOptions.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory IndyOptions.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  IndyOptions clone() => IndyOptions()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  IndyOptions copyWith(void Function(IndyOptions) updates) =>
      super.copyWith((message) => updates(message as IndyOptions))
          as IndyOptions; // ignore: deprecated_member_use
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
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'UpgradeDidRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.provider.v1'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 6])
    ..oo(1, [4, 5])
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'email')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'walletId')
    ..e<$8.SupportedDidMethod>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'method',
        $pb.PbFieldType.OE,
        defaultOrMaker: $8.SupportedDidMethod.KEY,
        valueOf: $8.SupportedDidMethod.valueOf,
        enumValues: $8.SupportedDidMethod.values)
    ..aOM<IonOptions>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'ionOptions',
        subBuilder: IonOptions.create)
    ..aOM<IndyOptions>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'indyOptions',
        subBuilder: IndyOptions.create)
    ..aOS(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'didUri')
    ..hasRequiredFields = false;

  UpgradeDidRequest._() : super();
  factory UpgradeDidRequest({
    $core.String? email,
    $core.String? walletId,
    $8.SupportedDidMethod? method,
    IonOptions? ionOptions,
    IndyOptions? indyOptions,
    $core.String? didUri,
  }) {
    final _result = create();
    if (email != null) {
      _result.email = email;
    }
    if (walletId != null) {
      _result.walletId = walletId;
    }
    if (method != null) {
      _result.method = method;
    }
    if (ionOptions != null) {
      _result.ionOptions = ionOptions;
    }
    if (indyOptions != null) {
      _result.indyOptions = indyOptions;
    }
    if (didUri != null) {
      _result.didUri = didUri;
    }
    return _result;
  }
  factory UpgradeDidRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UpgradeDidRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UpgradeDidRequest clone() => UpgradeDidRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UpgradeDidRequest copyWith(void Function(UpgradeDidRequest) updates) =>
      super.copyWith((message) => updates(message as UpgradeDidRequest))
          as UpgradeDidRequest; // ignore: deprecated_member_use
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'UpgradeDidResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.provider.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'did')
    ..hasRequiredFields = false;

  UpgradeDidResponse._() : super();
  factory UpgradeDidResponse({
    $core.String? did,
  }) {
    final _result = create();
    if (did != null) {
      _result.did = did;
    }
    return _result;
  }
  factory UpgradeDidResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UpgradeDidResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UpgradeDidResponse clone() => UpgradeDidResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UpgradeDidResponse copyWith(void Function(UpgradeDidResponse) updates) =>
      super.copyWith((message) => updates(message as UpgradeDidResponse))
          as UpgradeDidResponse; // ignore: deprecated_member_use
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
