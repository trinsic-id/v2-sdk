///
//  Generated code. Do not modify.
//  source: services/account/v1/account.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'account.pbenum.dart';

export 'account.pbenum.dart';

class SignInRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SignInRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'services.account.v1'), createEmptyInstance: create)
    ..aOM<AccountDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'details', subBuilder: AccountDetails.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'invitationCode')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ecosystemId')
    ..hasRequiredFields = false
  ;

  SignInRequest._() : super();
  factory SignInRequest({
    AccountDetails? details,
    $core.String? invitationCode,
    $core.String? ecosystemId,
  }) {
    final _result = create();
    if (details != null) {
      _result.details = details;
    }
    if (invitationCode != null) {
      _result.invitationCode = invitationCode;
    }
    if (ecosystemId != null) {
      _result.ecosystemId = ecosystemId;
    }
    return _result;
  }
  factory SignInRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignInRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SignInRequest clone() => SignInRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SignInRequest copyWith(void Function(SignInRequest) updates) => super.copyWith((message) => updates(message as SignInRequest)) as SignInRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SignInRequest create() => SignInRequest._();
  SignInRequest createEmptyInstance() => create();
  static $pb.PbList<SignInRequest> createRepeated() => $pb.PbList<SignInRequest>();
  @$core.pragma('dart2js:noInline')
  static SignInRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignInRequest>(create);
  static SignInRequest? _defaultInstance;

  @$pb.TagNumber(1)
  AccountDetails get details => $_getN(0);
  @$pb.TagNumber(1)
  set details(AccountDetails v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDetails() => $_has(0);
  @$pb.TagNumber(1)
  void clearDetails() => clearField(1);
  @$pb.TagNumber(1)
  AccountDetails ensureDetails() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get invitationCode => $_getSZ(1);
  @$pb.TagNumber(2)
  set invitationCode($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasInvitationCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearInvitationCode() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get ecosystemId => $_getSZ(2);
  @$pb.TagNumber(3)
  set ecosystemId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEcosystemId() => $_has(2);
  @$pb.TagNumber(3)
  void clearEcosystemId() => clearField(3);
}

class AccountDetails extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AccountDetails', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'services.account.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'email')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sms')
    ..hasRequiredFields = false
  ;

  AccountDetails._() : super();
  factory AccountDetails({
    $core.String? name,
    $core.String? email,
    $core.String? sms,
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
    return _result;
  }
  factory AccountDetails.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountDetails.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccountDetails clone() => AccountDetails()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccountDetails copyWith(void Function(AccountDetails) updates) => super.copyWith((message) => updates(message as AccountDetails)) as AccountDetails; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountDetails create() => AccountDetails._();
  AccountDetails createEmptyInstance() => create();
  static $pb.PbList<AccountDetails> createRepeated() => $pb.PbList<AccountDetails>();
  @$core.pragma('dart2js:noInline')
  static AccountDetails getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountDetails>(create);
  static AccountDetails? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get email => $_getSZ(1);
  @$pb.TagNumber(2)
  set email($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEmail() => $_has(1);
  @$pb.TagNumber(2)
  void clearEmail() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get sms => $_getSZ(2);
  @$pb.TagNumber(3)
  set sms($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSms() => $_has(2);
  @$pb.TagNumber(3)
  void clearSms() => clearField(3);
}

class SignInResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SignInResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'services.account.v1'), createEmptyInstance: create)
    ..e<ConfirmationMethod>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'confirmationMethod', $pb.PbFieldType.OE, defaultOrMaker: ConfirmationMethod.None, valueOf: ConfirmationMethod.valueOf, enumValues: ConfirmationMethod.values)
    ..aOM<AccountProfile>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'profile', subBuilder: AccountProfile.create)
    ..hasRequiredFields = false
  ;

  SignInResponse._() : super();
  factory SignInResponse({
    ConfirmationMethod? confirmationMethod,
    AccountProfile? profile,
  }) {
    final _result = create();
    if (confirmationMethod != null) {
      _result.confirmationMethod = confirmationMethod;
    }
    if (profile != null) {
      _result.profile = profile;
    }
    return _result;
  }
  factory SignInResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignInResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SignInResponse clone() => SignInResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SignInResponse copyWith(void Function(SignInResponse) updates) => super.copyWith((message) => updates(message as SignInResponse)) as SignInResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SignInResponse create() => SignInResponse._();
  SignInResponse createEmptyInstance() => create();
  static $pb.PbList<SignInResponse> createRepeated() => $pb.PbList<SignInResponse>();
  @$core.pragma('dart2js:noInline')
  static SignInResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignInResponse>(create);
  static SignInResponse? _defaultInstance;

  @$pb.TagNumber(3)
  ConfirmationMethod get confirmationMethod => $_getN(0);
  @$pb.TagNumber(3)
  set confirmationMethod(ConfirmationMethod v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasConfirmationMethod() => $_has(0);
  @$pb.TagNumber(3)
  void clearConfirmationMethod() => clearField(3);

  @$pb.TagNumber(4)
  AccountProfile get profile => $_getN(1);
  @$pb.TagNumber(4)
  set profile(AccountProfile v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasProfile() => $_has(1);
  @$pb.TagNumber(4)
  void clearProfile() => clearField(4);
  @$pb.TagNumber(4)
  AccountProfile ensureProfile() => $_ensure(1);
}

class AccountProfile extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AccountProfile', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'services.account.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'profileType')
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authData', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authToken', $pb.PbFieldType.OY)
    ..aOM<TokenProtection>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'protection', subBuilder: TokenProtection.create)
    ..hasRequiredFields = false
  ;

  AccountProfile._() : super();
  factory AccountProfile({
    $core.String? profileType,
    $core.List<$core.int>? authData,
    $core.List<$core.int>? authToken,
    TokenProtection? protection,
  }) {
    final _result = create();
    if (profileType != null) {
      _result.profileType = profileType;
    }
    if (authData != null) {
      _result.authData = authData;
    }
    if (authToken != null) {
      _result.authToken = authToken;
    }
    if (protection != null) {
      _result.protection = protection;
    }
    return _result;
  }
  factory AccountProfile.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountProfile.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccountProfile clone() => AccountProfile()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccountProfile copyWith(void Function(AccountProfile) updates) => super.copyWith((message) => updates(message as AccountProfile)) as AccountProfile; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountProfile create() => AccountProfile._();
  AccountProfile createEmptyInstance() => create();
  static $pb.PbList<AccountProfile> createRepeated() => $pb.PbList<AccountProfile>();
  @$core.pragma('dart2js:noInline')
  static AccountProfile getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountProfile>(create);
  static AccountProfile? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get profileType => $_getSZ(0);
  @$pb.TagNumber(1)
  set profileType($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProfileType() => $_has(0);
  @$pb.TagNumber(1)
  void clearProfileType() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get authData => $_getN(1);
  @$pb.TagNumber(2)
  set authData($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAuthData() => $_has(1);
  @$pb.TagNumber(2)
  void clearAuthData() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get authToken => $_getN(2);
  @$pb.TagNumber(3)
  set authToken($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAuthToken() => $_has(2);
  @$pb.TagNumber(3)
  void clearAuthToken() => clearField(3);

  @$pb.TagNumber(4)
  TokenProtection get protection => $_getN(3);
  @$pb.TagNumber(4)
  set protection(TokenProtection v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasProtection() => $_has(3);
  @$pb.TagNumber(4)
  void clearProtection() => clearField(4);
  @$pb.TagNumber(4)
  TokenProtection ensureProtection() => $_ensure(3);
}

class TokenProtection extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TokenProtection', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'services.account.v1'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'enabled')
    ..e<ConfirmationMethod>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'method', $pb.PbFieldType.OE, defaultOrMaker: ConfirmationMethod.None, valueOf: ConfirmationMethod.valueOf, enumValues: ConfirmationMethod.values)
    ..hasRequiredFields = false
  ;

  TokenProtection._() : super();
  factory TokenProtection({
    $core.bool? enabled,
    ConfirmationMethod? method,
  }) {
    final _result = create();
    if (enabled != null) {
      _result.enabled = enabled;
    }
    if (method != null) {
      _result.method = method;
    }
    return _result;
  }
  factory TokenProtection.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TokenProtection.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TokenProtection clone() => TokenProtection()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TokenProtection copyWith(void Function(TokenProtection) updates) => super.copyWith((message) => updates(message as TokenProtection)) as TokenProtection; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TokenProtection create() => TokenProtection._();
  TokenProtection createEmptyInstance() => create();
  static $pb.PbList<TokenProtection> createRepeated() => $pb.PbList<TokenProtection>();
  @$core.pragma('dart2js:noInline')
  static TokenProtection getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TokenProtection>(create);
  static TokenProtection? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get enabled => $_getBF(0);
  @$pb.TagNumber(1)
  set enabled($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEnabled() => $_has(0);
  @$pb.TagNumber(1)
  void clearEnabled() => clearField(1);

  @$pb.TagNumber(2)
  ConfirmationMethod get method => $_getN(1);
  @$pb.TagNumber(2)
  set method(ConfirmationMethod v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasMethod() => $_has(1);
  @$pb.TagNumber(2)
  void clearMethod() => clearField(2);
}

class InfoRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'InfoRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'services.account.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  InfoRequest._() : super();
  factory InfoRequest() => create();
  factory InfoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InfoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InfoRequest clone() => InfoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InfoRequest copyWith(void Function(InfoRequest) updates) => super.copyWith((message) => updates(message as InfoRequest)) as InfoRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InfoRequest create() => InfoRequest._();
  InfoRequest createEmptyInstance() => create();
  static $pb.PbList<InfoRequest> createRepeated() => $pb.PbList<InfoRequest>();
  @$core.pragma('dart2js:noInline')
  static InfoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InfoRequest>(create);
  static InfoRequest? _defaultInstance;
}

class InfoResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'InfoResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'services.account.v1'), createEmptyInstance: create)
    ..aOM<AccountDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'details', subBuilder: AccountDetails.create)
    ..pc<AccountEcosystem>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ecosystems', $pb.PbFieldType.PM, subBuilder: AccountEcosystem.create)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'walletId')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceId')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ecosystemId')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'publicDid')
    ..hasRequiredFields = false
  ;

  InfoResponse._() : super();
  factory InfoResponse({
    AccountDetails? details,
  @$core.Deprecated('This field is deprecated.')
    $core.Iterable<AccountEcosystem>? ecosystems,
    $core.String? walletId,
    $core.String? deviceId,
    $core.String? ecosystemId,
    $core.String? publicDid,
  }) {
    final _result = create();
    if (details != null) {
      _result.details = details;
    }
    if (ecosystems != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.ecosystems.addAll(ecosystems);
    }
    if (walletId != null) {
      _result.walletId = walletId;
    }
    if (deviceId != null) {
      _result.deviceId = deviceId;
    }
    if (ecosystemId != null) {
      _result.ecosystemId = ecosystemId;
    }
    if (publicDid != null) {
      _result.publicDid = publicDid;
    }
    return _result;
  }
  factory InfoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InfoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InfoResponse clone() => InfoResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InfoResponse copyWith(void Function(InfoResponse) updates) => super.copyWith((message) => updates(message as InfoResponse)) as InfoResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InfoResponse create() => InfoResponse._();
  InfoResponse createEmptyInstance() => create();
  static $pb.PbList<InfoResponse> createRepeated() => $pb.PbList<InfoResponse>();
  @$core.pragma('dart2js:noInline')
  static InfoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InfoResponse>(create);
  static InfoResponse? _defaultInstance;

  @$pb.TagNumber(1)
  AccountDetails get details => $_getN(0);
  @$pb.TagNumber(1)
  set details(AccountDetails v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDetails() => $_has(0);
  @$pb.TagNumber(1)
  void clearDetails() => clearField(1);
  @$pb.TagNumber(1)
  AccountDetails ensureDetails() => $_ensure(0);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  $core.List<AccountEcosystem> get ecosystems => $_getList(1);

  @$pb.TagNumber(3)
  $core.String get walletId => $_getSZ(2);
  @$pb.TagNumber(3)
  set walletId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasWalletId() => $_has(2);
  @$pb.TagNumber(3)
  void clearWalletId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get deviceId => $_getSZ(3);
  @$pb.TagNumber(4)
  set deviceId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDeviceId() => $_has(3);
  @$pb.TagNumber(4)
  void clearDeviceId() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get ecosystemId => $_getSZ(4);
  @$pb.TagNumber(5)
  set ecosystemId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasEcosystemId() => $_has(4);
  @$pb.TagNumber(5)
  void clearEcosystemId() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get publicDid => $_getSZ(5);
  @$pb.TagNumber(6)
  set publicDid($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPublicDid() => $_has(5);
  @$pb.TagNumber(6)
  void clearPublicDid() => clearField(6);
}

class ListDevicesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListDevicesRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'services.account.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ListDevicesRequest._() : super();
  factory ListDevicesRequest() => create();
  factory ListDevicesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListDevicesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListDevicesRequest clone() => ListDevicesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListDevicesRequest copyWith(void Function(ListDevicesRequest) updates) => super.copyWith((message) => updates(message as ListDevicesRequest)) as ListDevicesRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListDevicesRequest create() => ListDevicesRequest._();
  ListDevicesRequest createEmptyInstance() => create();
  static $pb.PbList<ListDevicesRequest> createRepeated() => $pb.PbList<ListDevicesRequest>();
  @$core.pragma('dart2js:noInline')
  static ListDevicesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListDevicesRequest>(create);
  static ListDevicesRequest? _defaultInstance;
}

class ListDevicesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListDevicesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'services.account.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ListDevicesResponse._() : super();
  factory ListDevicesResponse() => create();
  factory ListDevicesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListDevicesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListDevicesResponse clone() => ListDevicesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListDevicesResponse copyWith(void Function(ListDevicesResponse) updates) => super.copyWith((message) => updates(message as ListDevicesResponse)) as ListDevicesResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListDevicesResponse create() => ListDevicesResponse._();
  ListDevicesResponse createEmptyInstance() => create();
  static $pb.PbList<ListDevicesResponse> createRepeated() => $pb.PbList<ListDevicesResponse>();
  @$core.pragma('dart2js:noInline')
  static ListDevicesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListDevicesResponse>(create);
  static ListDevicesResponse? _defaultInstance;
}

class RevokeDeviceRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RevokeDeviceRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'services.account.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  RevokeDeviceRequest._() : super();
  factory RevokeDeviceRequest() => create();
  factory RevokeDeviceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RevokeDeviceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RevokeDeviceRequest clone() => RevokeDeviceRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RevokeDeviceRequest copyWith(void Function(RevokeDeviceRequest) updates) => super.copyWith((message) => updates(message as RevokeDeviceRequest)) as RevokeDeviceRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RevokeDeviceRequest create() => RevokeDeviceRequest._();
  RevokeDeviceRequest createEmptyInstance() => create();
  static $pb.PbList<RevokeDeviceRequest> createRepeated() => $pb.PbList<RevokeDeviceRequest>();
  @$core.pragma('dart2js:noInline')
  static RevokeDeviceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RevokeDeviceRequest>(create);
  static RevokeDeviceRequest? _defaultInstance;
}

class RevokeDeviceResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RevokeDeviceResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'services.account.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  RevokeDeviceResponse._() : super();
  factory RevokeDeviceResponse() => create();
  factory RevokeDeviceResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RevokeDeviceResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RevokeDeviceResponse clone() => RevokeDeviceResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RevokeDeviceResponse copyWith(void Function(RevokeDeviceResponse) updates) => super.copyWith((message) => updates(message as RevokeDeviceResponse)) as RevokeDeviceResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RevokeDeviceResponse create() => RevokeDeviceResponse._();
  RevokeDeviceResponse createEmptyInstance() => create();
  static $pb.PbList<RevokeDeviceResponse> createRepeated() => $pb.PbList<RevokeDeviceResponse>();
  @$core.pragma('dart2js:noInline')
  static RevokeDeviceResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RevokeDeviceResponse>(create);
  static RevokeDeviceResponse? _defaultInstance;
}

class AccountEcosystem extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AccountEcosystem', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'services.account.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uri')
    ..hasRequiredFields = false
  ;

  AccountEcosystem._() : super();
  factory AccountEcosystem({
    $core.String? id,
    $core.String? name,
    $core.String? description,
    $core.String? uri,
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
    if (uri != null) {
      _result.uri = uri;
    }
    return _result;
  }
  factory AccountEcosystem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountEcosystem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccountEcosystem clone() => AccountEcosystem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccountEcosystem copyWith(void Function(AccountEcosystem) updates) => super.copyWith((message) => updates(message as AccountEcosystem)) as AccountEcosystem; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountEcosystem create() => AccountEcosystem._();
  AccountEcosystem createEmptyInstance() => create();
  static $pb.PbList<AccountEcosystem> createRepeated() => $pb.PbList<AccountEcosystem>();
  @$core.pragma('dart2js:noInline')
  static AccountEcosystem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountEcosystem>(create);
  static AccountEcosystem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get uri => $_getSZ(3);
  @$pb.TagNumber(4)
  set uri($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUri() => $_has(3);
  @$pb.TagNumber(4)
  void clearUri() => clearField(4);
}

class AccountApi {
  $pb.RpcClient _client;
  AccountApi(this._client);

  $async.Future<SignInResponse> signIn($pb.ClientContext? ctx, SignInRequest request) {
    var emptyResponse = SignInResponse();
    return _client.invoke<SignInResponse>(ctx, 'Account', 'SignIn', request, emptyResponse);
  }
  $async.Future<InfoResponse> info($pb.ClientContext? ctx, InfoRequest request) {
    var emptyResponse = InfoResponse();
    return _client.invoke<InfoResponse>(ctx, 'Account', 'Info', request, emptyResponse);
  }
  $async.Future<ListDevicesResponse> listDevices($pb.ClientContext? ctx, ListDevicesRequest request) {
    var emptyResponse = ListDevicesResponse();
    return _client.invoke<ListDevicesResponse>(ctx, 'Account', 'ListDevices', request, emptyResponse);
  }
  $async.Future<RevokeDeviceResponse> revokeDevice($pb.ClientContext? ctx, RevokeDeviceRequest request) {
    var emptyResponse = RevokeDeviceResponse();
    return _client.invoke<RevokeDeviceResponse>(ctx, 'Account', 'RevokeDevice', request, emptyResponse);
  }
}

