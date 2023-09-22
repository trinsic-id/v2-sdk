//
//  Generated code. Do not modify.
//  source: services/account/v1/account.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'account.pbenum.dart';

export 'account.pbenum.dart';

/// Account registration details
class AccountDetails extends $pb.GeneratedMessage {
  factory AccountDetails({
    $core.String? name,
    @$core.Deprecated('This field is deprecated.') $core.String? email,
    @$core.Deprecated('This field is deprecated.') $core.String? sms,
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
    return $result;
  }
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

  /// Account name
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

  /// Email address of account.
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

  /// SMS number including country code
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

/// Token protection info
class TokenProtection extends $pb.GeneratedMessage {
  factory TokenProtection({
    $core.bool? enabled,
    ConfirmationMethod? method,
  }) {
    final $result = create();
    if (enabled != null) {
      $result.enabled = enabled;
    }
    if (method != null) {
      $result.method = method;
    }
    return $result;
  }
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

  /// Indicates if token is protected using a PIN,
  /// security code, HSM secret, etc.
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

  /// The method used to protect the token
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

/// Device profile containing sensitive authentication data.
/// This information should be stored securely
class AccountProfile extends $pb.GeneratedMessage {
  factory AccountProfile({
    $core.String? profileType,
    $core.List<$core.int>? authData,
    $core.List<$core.int>? authToken,
    TokenProtection? protection,
  }) {
    final $result = create();
    if (profileType != null) {
      $result.profileType = profileType;
    }
    if (authData != null) {
      $result.authData = authData;
    }
    if (authToken != null) {
      $result.authToken = authToken;
    }
    if (protection != null) {
      $result.protection = protection;
    }
    return $result;
  }
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

  /// The type of profile, used to differentiate between
  /// protocol schemes or versions
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

  /// Auth data containg information about the current device access
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

  /// Secure token issued by server used to generate zero-knowledge proofs
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

  /// Token security information about the token.
  /// If token protection is enabled, implementations must supply
  /// protection secret before using the token for authentication.
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

/// Information about authentication tokens for a wallet
class WalletAuthToken extends $pb.GeneratedMessage {
  factory WalletAuthToken({
    $core.String? id,
    $core.String? description,
    $core.String? dateCreated,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (description != null) {
      $result.description = description;
    }
    if (dateCreated != null) {
      $result.dateCreated = dateCreated;
    }
    return $result;
  }
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

  /// Unique identifier for the token.
  /// This field will match the `DeviceId` in the WalletAuthData
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

  /// Device name/description
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

  /// Date when the token was created in ISO 8601 format
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
