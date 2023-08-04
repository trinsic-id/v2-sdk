//
//  Generated code. Do not modify.
//  source: services/account/v1/account.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'account.pbenum.dart';

export 'account.pbenum.dart';

class AccountDetails extends $pb.GeneratedMessage {
  factory AccountDetails() => create();
  AccountDetails._() : super();
  factory AccountDetails.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AccountDetails.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AccountDetails',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'services.account.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'email')
    ..aOS(3, _omitFieldNames ? '' : 'sms')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AccountDetails clone() => AccountDetails()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AccountDetails copyWith(void Function(AccountDetails) updates) =>
      super.copyWith((message) => updates(message as AccountDetails))
          as AccountDetails;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AccountDetails create() => AccountDetails._();
  AccountDetails createEmptyInstance() => create();
  static $pb.PbList<AccountDetails> createRepeated() =>
      $pb.PbList<AccountDetails>();
  @$core.pragma('dart2js:noInline')
  static AccountDetails getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AccountDetails>(create);
  static AccountDetails? _defaultInstance;

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
}

class TokenProtection extends $pb.GeneratedMessage {
  factory TokenProtection() => create();
  TokenProtection._() : super();
  factory TokenProtection.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TokenProtection.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TokenProtection',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'services.account.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'enabled')
    ..e<ConfirmationMethod>(
        2, _omitFieldNames ? '' : 'method', $pb.PbFieldType.OE,
        defaultOrMaker: ConfirmationMethod.None,
        valueOf: ConfirmationMethod.valueOf,
        enumValues: ConfirmationMethod.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TokenProtection clone() => TokenProtection()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TokenProtection copyWith(void Function(TokenProtection) updates) =>
      super.copyWith((message) => updates(message as TokenProtection))
          as TokenProtection;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TokenProtection create() => TokenProtection._();
  TokenProtection createEmptyInstance() => create();
  static $pb.PbList<TokenProtection> createRepeated() =>
      $pb.PbList<TokenProtection>();
  @$core.pragma('dart2js:noInline')
  static TokenProtection getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TokenProtection>(create);
  static TokenProtection? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get enabled => $_getBF(0);
  @$pb.TagNumber(1)
  set enabled($core.bool v) {
    $_setBool(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasEnabled() => $_has(0);
  @$pb.TagNumber(1)
  void clearEnabled() => clearField(1);

  @$pb.TagNumber(2)
  ConfirmationMethod get method => $_getN(1);
  @$pb.TagNumber(2)
  set method(ConfirmationMethod v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMethod() => $_has(1);
  @$pb.TagNumber(2)
  void clearMethod() => clearField(2);
}

class AccountProfile extends $pb.GeneratedMessage {
  factory AccountProfile() => create();
  AccountProfile._() : super();
  factory AccountProfile.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AccountProfile.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AccountProfile',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'services.account.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'profileType')
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'authData', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'authToken', $pb.PbFieldType.OY)
    ..aOM<TokenProtection>(4, _omitFieldNames ? '' : 'protection',
        subBuilder: TokenProtection.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AccountProfile clone() => AccountProfile()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AccountProfile copyWith(void Function(AccountProfile) updates) =>
      super.copyWith((message) => updates(message as AccountProfile))
          as AccountProfile;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AccountProfile create() => AccountProfile._();
  AccountProfile createEmptyInstance() => create();
  static $pb.PbList<AccountProfile> createRepeated() =>
      $pb.PbList<AccountProfile>();
  @$core.pragma('dart2js:noInline')
  static AccountProfile getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AccountProfile>(create);
  static AccountProfile? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get profileType => $_getSZ(0);
  @$pb.TagNumber(1)
  set profileType($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasProfileType() => $_has(0);
  @$pb.TagNumber(1)
  void clearProfileType() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get authData => $_getN(1);
  @$pb.TagNumber(2)
  set authData($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasAuthData() => $_has(1);
  @$pb.TagNumber(2)
  void clearAuthData() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get authToken => $_getN(2);
  @$pb.TagNumber(3)
  set authToken($core.List<$core.int> v) {
    $_setBytes(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasAuthToken() => $_has(2);
  @$pb.TagNumber(3)
  void clearAuthToken() => clearField(3);

  @$pb.TagNumber(4)
  TokenProtection get protection => $_getN(3);
  @$pb.TagNumber(4)
  set protection(TokenProtection v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasProtection() => $_has(3);
  @$pb.TagNumber(4)
  void clearProtection() => clearField(4);
  @$pb.TagNumber(4)
  TokenProtection ensureProtection() => $_ensure(3);
}

class AccountInfoRequest extends $pb.GeneratedMessage {
  factory AccountInfoRequest() => create();
  AccountInfoRequest._() : super();
  factory AccountInfoRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AccountInfoRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AccountInfoRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'services.account.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AccountInfoRequest clone() => AccountInfoRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AccountInfoRequest copyWith(void Function(AccountInfoRequest) updates) =>
      super.copyWith((message) => updates(message as AccountInfoRequest))
          as AccountInfoRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AccountInfoRequest create() => AccountInfoRequest._();
  AccountInfoRequest createEmptyInstance() => create();
  static $pb.PbList<AccountInfoRequest> createRepeated() =>
      $pb.PbList<AccountInfoRequest>();
  @$core.pragma('dart2js:noInline')
  static AccountInfoRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AccountInfoRequest>(create);
  static AccountInfoRequest? _defaultInstance;
}

class AccountInfoResponse extends $pb.GeneratedMessage {
  factory AccountInfoResponse() => create();
  AccountInfoResponse._() : super();
  factory AccountInfoResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AccountInfoResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AccountInfoResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'services.account.v1'),
      createEmptyInstance: create)
    ..aOM<AccountDetails>(1, _omitFieldNames ? '' : 'details',
        subBuilder: AccountDetails.create)
    ..aOS(3, _omitFieldNames ? '' : 'walletId')
    ..aOS(4, _omitFieldNames ? '' : 'deviceId')
    ..aOS(5, _omitFieldNames ? '' : 'ecosystemId')
    ..aOS(6, _omitFieldNames ? '' : 'publicDid')
    ..pc<WalletAuthToken>(
        8, _omitFieldNames ? '' : 'authTokens', $pb.PbFieldType.PM,
        subBuilder: WalletAuthToken.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AccountInfoResponse clone() => AccountInfoResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AccountInfoResponse copyWith(void Function(AccountInfoResponse) updates) =>
      super.copyWith((message) => updates(message as AccountInfoResponse))
          as AccountInfoResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AccountInfoResponse create() => AccountInfoResponse._();
  AccountInfoResponse createEmptyInstance() => create();
  static $pb.PbList<AccountInfoResponse> createRepeated() =>
      $pb.PbList<AccountInfoResponse>();
  @$core.pragma('dart2js:noInline')
  static AccountInfoResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AccountInfoResponse>(create);
  static AccountInfoResponse? _defaultInstance;

  @$pb.TagNumber(1)
  AccountDetails get details => $_getN(0);
  @$pb.TagNumber(1)
  set details(AccountDetails v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasDetails() => $_has(0);
  @$pb.TagNumber(1)
  void clearDetails() => clearField(1);
  @$pb.TagNumber(1)
  AccountDetails ensureDetails() => $_ensure(0);

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

  @$pb.TagNumber(4)
  $core.String get deviceId => $_getSZ(2);
  @$pb.TagNumber(4)
  set deviceId($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasDeviceId() => $_has(2);
  @$pb.TagNumber(4)
  void clearDeviceId() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get ecosystemId => $_getSZ(3);
  @$pb.TagNumber(5)
  set ecosystemId($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasEcosystemId() => $_has(3);
  @$pb.TagNumber(5)
  void clearEcosystemId() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get publicDid => $_getSZ(4);
  @$pb.TagNumber(6)
  set publicDid($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasPublicDid() => $_has(4);
  @$pb.TagNumber(6)
  void clearPublicDid() => clearField(6);

  @$pb.TagNumber(8)
  $core.List<WalletAuthToken> get authTokens => $_getList(5);
}

class LoginRequest extends $pb.GeneratedMessage {
  factory LoginRequest() => create();
  LoginRequest._() : super();
  factory LoginRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory LoginRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LoginRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'services.account.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'email')
    ..aOS(3, _omitFieldNames ? '' : 'ecosystemId')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  LoginRequest clone() => LoginRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  LoginRequest copyWith(void Function(LoginRequest) updates) =>
      super.copyWith((message) => updates(message as LoginRequest))
          as LoginRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LoginRequest create() => LoginRequest._();
  LoginRequest createEmptyInstance() => create();
  static $pb.PbList<LoginRequest> createRepeated() =>
      $pb.PbList<LoginRequest>();
  @$core.pragma('dart2js:noInline')
  static LoginRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LoginRequest>(create);
  static LoginRequest? _defaultInstance;

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

  @$pb.TagNumber(3)
  $core.String get ecosystemId => $_getSZ(1);
  @$pb.TagNumber(3)
  set ecosystemId($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasEcosystemId() => $_has(1);
  @$pb.TagNumber(3)
  void clearEcosystemId() => clearField(3);
}

enum LoginResponse_Response { challenge, profile, notSet }

class LoginResponse extends $pb.GeneratedMessage {
  factory LoginResponse() => create();
  LoginResponse._() : super();
  factory LoginResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory LoginResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, LoginResponse_Response>
      _LoginResponse_ResponseByTag = {
    1: LoginResponse_Response.challenge,
    2: LoginResponse_Response.profile,
    0: LoginResponse_Response.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LoginResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'services.account.v1'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'challenge', $pb.PbFieldType.OY)
    ..aOM<AccountProfile>(2, _omitFieldNames ? '' : 'profile',
        subBuilder: AccountProfile.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  LoginResponse clone() => LoginResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  LoginResponse copyWith(void Function(LoginResponse) updates) =>
      super.copyWith((message) => updates(message as LoginResponse))
          as LoginResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LoginResponse create() => LoginResponse._();
  LoginResponse createEmptyInstance() => create();
  static $pb.PbList<LoginResponse> createRepeated() =>
      $pb.PbList<LoginResponse>();
  @$core.pragma('dart2js:noInline')
  static LoginResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LoginResponse>(create);
  static LoginResponse? _defaultInstance;

  LoginResponse_Response whichResponse() =>
      _LoginResponse_ResponseByTag[$_whichOneof(0)]!;
  void clearResponse() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.List<$core.int> get challenge => $_getN(0);
  @$pb.TagNumber(1)
  set challenge($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasChallenge() => $_has(0);
  @$pb.TagNumber(1)
  void clearChallenge() => clearField(1);

  @$pb.TagNumber(2)
  AccountProfile get profile => $_getN(1);
  @$pb.TagNumber(2)
  set profile(AccountProfile v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasProfile() => $_has(1);
  @$pb.TagNumber(2)
  void clearProfile() => clearField(2);
  @$pb.TagNumber(2)
  AccountProfile ensureProfile() => $_ensure(1);
}

class LoginConfirmRequest extends $pb.GeneratedMessage {
  factory LoginConfirmRequest() => create();
  LoginConfirmRequest._() : super();
  factory LoginConfirmRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory LoginConfirmRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LoginConfirmRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'services.account.v1'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'challenge', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'confirmationCodeHashed', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  LoginConfirmRequest clone() => LoginConfirmRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  LoginConfirmRequest copyWith(void Function(LoginConfirmRequest) updates) =>
      super.copyWith((message) => updates(message as LoginConfirmRequest))
          as LoginConfirmRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LoginConfirmRequest create() => LoginConfirmRequest._();
  LoginConfirmRequest createEmptyInstance() => create();
  static $pb.PbList<LoginConfirmRequest> createRepeated() =>
      $pb.PbList<LoginConfirmRequest>();
  @$core.pragma('dart2js:noInline')
  static LoginConfirmRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LoginConfirmRequest>(create);
  static LoginConfirmRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get challenge => $_getN(0);
  @$pb.TagNumber(1)
  set challenge($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasChallenge() => $_has(0);
  @$pb.TagNumber(1)
  void clearChallenge() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get confirmationCodeHashed => $_getN(1);
  @$pb.TagNumber(2)
  set confirmationCodeHashed($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasConfirmationCodeHashed() => $_has(1);
  @$pb.TagNumber(2)
  void clearConfirmationCodeHashed() => clearField(2);
}

class LoginConfirmResponse extends $pb.GeneratedMessage {
  factory LoginConfirmResponse() => create();
  LoginConfirmResponse._() : super();
  factory LoginConfirmResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory LoginConfirmResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LoginConfirmResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'services.account.v1'),
      createEmptyInstance: create)
    ..aOM<AccountProfile>(1, _omitFieldNames ? '' : 'profile',
        subBuilder: AccountProfile.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  LoginConfirmResponse clone() =>
      LoginConfirmResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  LoginConfirmResponse copyWith(void Function(LoginConfirmResponse) updates) =>
      super.copyWith((message) => updates(message as LoginConfirmResponse))
          as LoginConfirmResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LoginConfirmResponse create() => LoginConfirmResponse._();
  LoginConfirmResponse createEmptyInstance() => create();
  static $pb.PbList<LoginConfirmResponse> createRepeated() =>
      $pb.PbList<LoginConfirmResponse>();
  @$core.pragma('dart2js:noInline')
  static LoginConfirmResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LoginConfirmResponse>(create);
  static LoginConfirmResponse? _defaultInstance;

  @$pb.TagNumber(1)
  AccountProfile get profile => $_getN(0);
  @$pb.TagNumber(1)
  set profile(AccountProfile v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasProfile() => $_has(0);
  @$pb.TagNumber(1)
  void clearProfile() => clearField(1);
  @$pb.TagNumber(1)
  AccountProfile ensureProfile() => $_ensure(0);
}

class WalletAuthToken extends $pb.GeneratedMessage {
  factory WalletAuthToken() => create();
  WalletAuthToken._() : super();
  factory WalletAuthToken.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory WalletAuthToken.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WalletAuthToken',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'services.account.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'description')
    ..aOS(3, _omitFieldNames ? '' : 'dateCreated')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  WalletAuthToken clone() => WalletAuthToken()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  WalletAuthToken copyWith(void Function(WalletAuthToken) updates) =>
      super.copyWith((message) => updates(message as WalletAuthToken))
          as WalletAuthToken;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WalletAuthToken create() => WalletAuthToken._();
  WalletAuthToken createEmptyInstance() => create();
  static $pb.PbList<WalletAuthToken> createRepeated() =>
      $pb.PbList<WalletAuthToken>();
  @$core.pragma('dart2js:noInline')
  static WalletAuthToken getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WalletAuthToken>(create);
  static WalletAuthToken? _defaultInstance;

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
  $core.String get dateCreated => $_getSZ(2);
  @$pb.TagNumber(3)
  set dateCreated($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasDateCreated() => $_has(2);
  @$pb.TagNumber(3)
  void clearDateCreated() => clearField(3);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
