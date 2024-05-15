//
//  Generated code. Do not modify.
//  source: services/connect/v1/connect.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../common/v1/common.pbenum.dart' as $10;
import '../../universal-wallet/v1/universal-wallet.pb.dart' as $4;
import 'connect.pbenum.dart';

export 'connect.pbenum.dart';

/// An Identity Verification Session
class IDVSession extends $pb.GeneratedMessage {
  factory IDVSession({
    $core.String? id,
    $core.String? clientToken,
    IDVSessionState? state,
    $core.Map<$core.String, Verification>? verifications,
    SessionFailCode? failCode,
    $core.String? resultVp,
    $fixnum.Int64? created,
    $fixnum.Int64? updated,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (clientToken != null) {
      $result.clientToken = clientToken;
    }
    if (state != null) {
      $result.state = state;
    }
    if (verifications != null) {
      $result.verifications.addAll(verifications);
    }
    if (failCode != null) {
      $result.failCode = failCode;
    }
    if (resultVp != null) {
      $result.resultVp = resultVp;
    }
    if (created != null) {
      $result.created = created;
    }
    if (updated != null) {
      $result.updated = updated;
    }
    return $result;
  }
  IDVSession._() : super();
  factory IDVSession.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory IDVSession.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'IDVSession',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'services.connect.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'clientToken')
    ..e<IDVSessionState>(3, _omitFieldNames ? '' : 'state', $pb.PbFieldType.OE,
        defaultOrMaker: IDVSessionState.IDV_CREATED,
        valueOf: IDVSessionState.valueOf,
        enumValues: IDVSessionState.values)
    ..m<$core.String, Verification>(4, _omitFieldNames ? '' : 'verifications',
        entryClassName: 'IDVSession.VerificationsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: Verification.create,
        valueDefaultOrMaker: Verification.getDefault,
        packageName: const $pb.PackageName('services.connect.v1'))
    ..e<SessionFailCode>(
        5, _omitFieldNames ? '' : 'failCode', $pb.PbFieldType.OE,
        defaultOrMaker: SessionFailCode.SESSION_FAIL_NONE,
        valueOf: SessionFailCode.valueOf,
        enumValues: SessionFailCode.values)
    ..aOS(6, _omitFieldNames ? '' : 'resultVp')
    ..a<$fixnum.Int64>(7, _omitFieldNames ? '' : 'created', $pb.PbFieldType.OF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(8, _omitFieldNames ? '' : 'updated', $pb.PbFieldType.OF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  IDVSession clone() => IDVSession()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  IDVSession copyWith(void Function(IDVSession) updates) =>
      super.copyWith((message) => updates(message as IDVSession)) as IDVSession;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IDVSession create() => IDVSession._();
  IDVSession createEmptyInstance() => create();
  static $pb.PbList<IDVSession> createRepeated() => $pb.PbList<IDVSession>();
  @$core.pragma('dart2js:noInline')
  static IDVSession getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<IDVSession>(create);
  static IDVSession? _defaultInstance;

  /// The ID of the IDVSession.
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

  /// The Client Token for this IDVSession. This should be passed to your frontend to initiate
  /// the IDV flow using Trinsic's Web SDK.
  @$pb.TagNumber(2)
  $core.String get clientToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set clientToken($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasClientToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearClientToken() => clearField(2);

  /// State of the IDVSession
  @$pb.TagNumber(3)
  IDVSessionState get state => $_getN(2);
  @$pb.TagNumber(3)
  set state(IDVSessionState v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasState() => $_has(2);
  @$pb.TagNumber(3)
  void clearState() => clearField(3);

  /// The actual Verifications to perform in this IDV flow
  @$pb.TagNumber(4)
  $core.Map<$core.String, Verification> get verifications => $_getMap(3);

  /// The reason for the IDVSession's failure.
  /// Only set if `state` is `IDV_FAILED`.
  @$pb.TagNumber(5)
  SessionFailCode get failCode => $_getN(4);
  @$pb.TagNumber(5)
  set failCode(SessionFailCode v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasFailCode() => $_has(4);
  @$pb.TagNumber(5)
  void clearFailCode() => clearField(5);

  /// The resultant signed VP combining the results of all verifications
  @$pb.TagNumber(6)
  $core.String get resultVp => $_getSZ(5);
  @$pb.TagNumber(6)
  set resultVp($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasResultVp() => $_has(5);
  @$pb.TagNumber(6)
  void clearResultVp() => clearField(6);

  /// The unix timestamp, in seconds, that this IDVSession was created
  @$pb.TagNumber(7)
  $fixnum.Int64 get created => $_getI64(6);
  @$pb.TagNumber(7)
  set created($fixnum.Int64 v) {
    $_setInt64(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasCreated() => $_has(6);
  @$pb.TagNumber(7)
  void clearCreated() => clearField(7);

  /// The unix timestamp, in seconds, that this IDVSession's `state` was last updated
  @$pb.TagNumber(8)
  $fixnum.Int64 get updated => $_getI64(7);
  @$pb.TagNumber(8)
  set updated($fixnum.Int64 v) {
    $_setInt64(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasUpdated() => $_has(7);
  @$pb.TagNumber(8)
  void clearUpdated() => clearField(8);
}

/// A Verification that is part of an IDVSession
class Verification extends $pb.GeneratedMessage {
  factory Verification({
    $core.String? id,
    VerificationType? type,
    VerificationState? state,
    VerificationFailCode? failCode,
    $core.bool? reused,
    $fixnum.Int64? updated,
    GovernmentIDOptions? governmentIdOptions,
    NormalizedGovernmentIdData? normalizedGovernmentIdData,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (type != null) {
      $result.type = type;
    }
    if (state != null) {
      $result.state = state;
    }
    if (failCode != null) {
      $result.failCode = failCode;
    }
    if (reused != null) {
      $result.reused = reused;
    }
    if (updated != null) {
      $result.updated = updated;
    }
    if (governmentIdOptions != null) {
      $result.governmentIdOptions = governmentIdOptions;
    }
    if (normalizedGovernmentIdData != null) {
      $result.normalizedGovernmentIdData = normalizedGovernmentIdData;
    }
    return $result;
  }
  Verification._() : super();
  factory Verification.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Verification.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Verification',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'services.connect.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..e<VerificationType>(2, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE,
        defaultOrMaker: VerificationType.GOVERNMENT_ID,
        valueOf: VerificationType.valueOf,
        enumValues: VerificationType.values)
    ..e<VerificationState>(
        3, _omitFieldNames ? '' : 'state', $pb.PbFieldType.OE,
        defaultOrMaker: VerificationState.VERIFICATION_PENDING,
        valueOf: VerificationState.valueOf,
        enumValues: VerificationState.values)
    ..e<VerificationFailCode>(
        4, _omitFieldNames ? '' : 'failCode', $pb.PbFieldType.OE,
        defaultOrMaker: VerificationFailCode.VERIFICATION_FAIL_NONE,
        valueOf: VerificationFailCode.valueOf,
        enumValues: VerificationFailCode.values)
    ..aOB(5, _omitFieldNames ? '' : 'reused')
    ..a<$fixnum.Int64>(7, _omitFieldNames ? '' : 'updated', $pb.PbFieldType.OF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<GovernmentIDOptions>(8, _omitFieldNames ? '' : 'governmentIdOptions',
        subBuilder: GovernmentIDOptions.create)
    ..aOM<NormalizedGovernmentIdData>(
        9, _omitFieldNames ? '' : 'normalizedGovernmentIdData',
        subBuilder: NormalizedGovernmentIdData.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Verification clone() => Verification()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Verification copyWith(void Function(Verification) updates) =>
      super.copyWith((message) => updates(message as Verification))
          as Verification;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Verification create() => Verification._();
  Verification createEmptyInstance() => create();
  static $pb.PbList<Verification> createRepeated() =>
      $pb.PbList<Verification>();
  @$core.pragma('dart2js:noInline')
  static Verification getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Verification>(create);
  static Verification? _defaultInstance;

  /// The ID of the verification
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

  /// The type of verification (driver's license, passport, proof of address, etc)
  @$pb.TagNumber(2)
  VerificationType get type => $_getN(1);
  @$pb.TagNumber(2)
  set type(VerificationType v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  /// The state of the verification
  @$pb.TagNumber(3)
  VerificationState get state => $_getN(2);
  @$pb.TagNumber(3)
  set state(VerificationState v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasState() => $_has(2);
  @$pb.TagNumber(3)
  void clearState() => clearField(3);

  /// The reason for the Verification's failure.
  /// Only set if `state` is `VERIFICATION_FAILED`.
  @$pb.TagNumber(4)
  VerificationFailCode get failCode => $_getN(3);
  @$pb.TagNumber(4)
  set failCode(VerificationFailCode v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasFailCode() => $_has(3);
  @$pb.TagNumber(4)
  void clearFailCode() => clearField(4);

  /// Whether this was a reused (true) or fresh (false) verification.
  /// If `state` is not `VERIFICATION_SUCCESS`, this field is `false` and does not convey useful information.
  @$pb.TagNumber(5)
  $core.bool get reused => $_getBF(4);
  @$pb.TagNumber(5)
  set reused($core.bool v) {
    $_setBool(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasReused() => $_has(4);
  @$pb.TagNumber(5)
  void clearReused() => clearField(5);

  /// The unix timestamp, in seconds, when this verification last changed state -- or `0` if it has not yet
  /// begun.
  @$pb.TagNumber(7)
  $fixnum.Int64 get updated => $_getI64(5);
  @$pb.TagNumber(7)
  set updated($fixnum.Int64 v) {
    $_setInt64(5, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasUpdated() => $_has(5);
  @$pb.TagNumber(7)
  void clearUpdated() => clearField(7);

  /// The Government ID options for this Verification.
  /// Only set if this Verification is of type `GOVERNMENT_ID`.
  @$pb.TagNumber(8)
  GovernmentIDOptions get governmentIdOptions => $_getN(6);
  @$pb.TagNumber(8)
  set governmentIdOptions(GovernmentIDOptions v) {
    setField(8, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasGovernmentIdOptions() => $_has(6);
  @$pb.TagNumber(8)
  void clearGovernmentIdOptions() => clearField(8);
  @$pb.TagNumber(8)
  GovernmentIDOptions ensureGovernmentIdOptions() => $_ensure(6);

  /// Normalized output for manual parsing and usage for this verification
  /// Only set if this Verification is of type `GOVERNMENT_ID` and has succeeded.
  @$pb.TagNumber(9)
  NormalizedGovernmentIdData get normalizedGovernmentIdData => $_getN(7);
  @$pb.TagNumber(9)
  set normalizedGovernmentIdData(NormalizedGovernmentIdData v) {
    setField(9, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasNormalizedGovernmentIdData() => $_has(7);
  @$pb.TagNumber(9)
  void clearNormalizedGovernmentIdData() => clearField(9);
  @$pb.TagNumber(9)
  NormalizedGovernmentIdData ensureNormalizedGovernmentIdData() => $_ensure(7);
}

class NormalizedGovernmentIdData extends $pb.GeneratedMessage {
  factory NormalizedGovernmentIdData({
    $core.String? idNumber,
    $core.String? givenName,
    $core.String? familyName,
    $core.String? address,
    $core.String? dateOfBirth,
    $core.String? country,
    $core.String? issueDate,
    $core.String? expirationDate,
  }) {
    final $result = create();
    if (idNumber != null) {
      $result.idNumber = idNumber;
    }
    if (givenName != null) {
      $result.givenName = givenName;
    }
    if (familyName != null) {
      $result.familyName = familyName;
    }
    if (address != null) {
      $result.address = address;
    }
    if (dateOfBirth != null) {
      $result.dateOfBirth = dateOfBirth;
    }
    if (country != null) {
      $result.country = country;
    }
    if (issueDate != null) {
      $result.issueDate = issueDate;
    }
    if (expirationDate != null) {
      $result.expirationDate = expirationDate;
    }
    return $result;
  }
  NormalizedGovernmentIdData._() : super();
  factory NormalizedGovernmentIdData.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NormalizedGovernmentIdData.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NormalizedGovernmentIdData',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'services.connect.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'idNumber')
    ..aOS(2, _omitFieldNames ? '' : 'givenName')
    ..aOS(3, _omitFieldNames ? '' : 'familyName')
    ..aOS(4, _omitFieldNames ? '' : 'address')
    ..aOS(5, _omitFieldNames ? '' : 'dateOfBirth')
    ..aOS(6, _omitFieldNames ? '' : 'country')
    ..aOS(7, _omitFieldNames ? '' : 'issueDate')
    ..aOS(8, _omitFieldNames ? '' : 'expirationDate')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  NormalizedGovernmentIdData clone() =>
      NormalizedGovernmentIdData()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  NormalizedGovernmentIdData copyWith(
          void Function(NormalizedGovernmentIdData) updates) =>
      super.copyWith(
              (message) => updates(message as NormalizedGovernmentIdData))
          as NormalizedGovernmentIdData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NormalizedGovernmentIdData create() => NormalizedGovernmentIdData._();
  NormalizedGovernmentIdData createEmptyInstance() => create();
  static $pb.PbList<NormalizedGovernmentIdData> createRepeated() =>
      $pb.PbList<NormalizedGovernmentIdData>();
  @$core.pragma('dart2js:noInline')
  static NormalizedGovernmentIdData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NormalizedGovernmentIdData>(create);
  static NormalizedGovernmentIdData? _defaultInstance;

  /// The ID number of the underlying identity document
  @$pb.TagNumber(1)
  $core.String get idNumber => $_getSZ(0);
  @$pb.TagNumber(1)
  set idNumber($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasIdNumber() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdNumber() => clearField(1);

  /// Given ("first") name of the document holder
  @$pb.TagNumber(2)
  $core.String get givenName => $_getSZ(1);
  @$pb.TagNumber(2)
  set givenName($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasGivenName() => $_has(1);
  @$pb.TagNumber(2)
  void clearGivenName() => clearField(2);

  /// Family ("last") name of the document holder
  @$pb.TagNumber(3)
  $core.String get familyName => $_getSZ(2);
  @$pb.TagNumber(3)
  set familyName($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasFamilyName() => $_has(2);
  @$pb.TagNumber(3)
  void clearFamilyName() => clearField(3);

  /// Full address of the document holder
  @$pb.TagNumber(4)
  $core.String get address => $_getSZ(3);
  @$pb.TagNumber(4)
  set address($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasAddress() => $_has(3);
  @$pb.TagNumber(4)
  void clearAddress() => clearField(4);

  /// Date of birth of the document holder
  @$pb.TagNumber(5)
  $core.String get dateOfBirth => $_getSZ(4);
  @$pb.TagNumber(5)
  set dateOfBirth($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasDateOfBirth() => $_has(4);
  @$pb.TagNumber(5)
  void clearDateOfBirth() => clearField(5);

  /// ISO3 country code of the document
  @$pb.TagNumber(6)
  $core.String get country => $_getSZ(5);
  @$pb.TagNumber(6)
  set country($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasCountry() => $_has(5);
  @$pb.TagNumber(6)
  void clearCountry() => clearField(6);

  /// Issuance date of the document
  @$pb.TagNumber(7)
  $core.String get issueDate => $_getSZ(6);
  @$pb.TagNumber(7)
  set issueDate($core.String v) {
    $_setString(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasIssueDate() => $_has(6);
  @$pb.TagNumber(7)
  void clearIssueDate() => clearField(7);

  /// Expiration date date of the document
  @$pb.TagNumber(8)
  $core.String get expirationDate => $_getSZ(7);
  @$pb.TagNumber(8)
  set expirationDate($core.String v) {
    $_setString(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasExpirationDate() => $_has(7);
  @$pb.TagNumber(8)
  void clearExpirationDate() => clearField(8);
}

/// Information about a Relying Party used for demo purposes
class DemoRelyingParty extends $pb.GeneratedMessage {
  factory DemoRelyingParty({
    $core.String? displayName,
    $core.String? logoUrl,
    $core.String? primaryColor,
  }) {
    final $result = create();
    if (displayName != null) {
      $result.displayName = displayName;
    }
    if (logoUrl != null) {
      $result.logoUrl = logoUrl;
    }
    if (primaryColor != null) {
      $result.primaryColor = primaryColor;
    }
    return $result;
  }
  DemoRelyingParty._() : super();
  factory DemoRelyingParty.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DemoRelyingParty.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DemoRelyingParty',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'services.connect.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'displayName')
    ..aOS(2, _omitFieldNames ? '' : 'logoUrl')
    ..aOS(3, _omitFieldNames ? '' : 'primaryColor')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DemoRelyingParty clone() => DemoRelyingParty()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DemoRelyingParty copyWith(void Function(DemoRelyingParty) updates) =>
      super.copyWith((message) => updates(message as DemoRelyingParty))
          as DemoRelyingParty;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DemoRelyingParty create() => DemoRelyingParty._();
  DemoRelyingParty createEmptyInstance() => create();
  static $pb.PbList<DemoRelyingParty> createRepeated() =>
      $pb.PbList<DemoRelyingParty>();
  @$core.pragma('dart2js:noInline')
  static DemoRelyingParty getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DemoRelyingParty>(create);
  static DemoRelyingParty? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get displayName => $_getSZ(0);
  @$pb.TagNumber(1)
  set displayName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasDisplayName() => $_has(0);
  @$pb.TagNumber(1)
  void clearDisplayName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get logoUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set logoUrl($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasLogoUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearLogoUrl() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get primaryColor => $_getSZ(2);
  @$pb.TagNumber(3)
  set primaryColor($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasPrimaryColor() => $_has(2);
  @$pb.TagNumber(3)
  void clearPrimaryColor() => clearField(3);
}

/// Request to create an Identity Verification Session
class CreateSessionRequest extends $pb.GeneratedMessage {
  factory CreateSessionRequest({
    $core.Iterable<RequestedVerification>? verifications,
    $core.Map<$core.String, $core.String>? debugInformation,
    DemoRelyingParty? demoRp,
  }) {
    final $result = create();
    if (verifications != null) {
      $result.verifications.addAll(verifications);
    }
    if (debugInformation != null) {
      $result.debugInformation.addAll(debugInformation);
    }
    if (demoRp != null) {
      $result.demoRp = demoRp;
    }
    return $result;
  }
  CreateSessionRequest._() : super();
  factory CreateSessionRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreateSessionRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateSessionRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'services.connect.v1'),
      createEmptyInstance: create)
    ..pc<RequestedVerification>(
        1, _omitFieldNames ? '' : 'verifications', $pb.PbFieldType.PM,
        subBuilder: RequestedVerification.create)
    ..m<$core.String, $core.String>(
        2, _omitFieldNames ? '' : 'debugInformation',
        entryClassName: 'CreateSessionRequest.DebugInformationEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('services.connect.v1'))
    ..aOM<DemoRelyingParty>(3, _omitFieldNames ? '' : 'demoRp',
        subBuilder: DemoRelyingParty.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CreateSessionRequest clone() =>
      CreateSessionRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CreateSessionRequest copyWith(void Function(CreateSessionRequest) updates) =>
      super.copyWith((message) => updates(message as CreateSessionRequest))
          as CreateSessionRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateSessionRequest create() => CreateSessionRequest._();
  CreateSessionRequest createEmptyInstance() => create();
  static $pb.PbList<CreateSessionRequest> createRepeated() =>
      $pb.PbList<CreateSessionRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateSessionRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateSessionRequest>(create);
  static CreateSessionRequest? _defaultInstance;

  /// Array of verifications to perform
  @$pb.TagNumber(1)
  $core.List<RequestedVerification> get verifications => $_getList(0);

  /// Debugging information used to help diagnose issues
  @$pb.TagNumber(2)
  $core.Map<$core.String, $core.String> get debugInformation => $_getMap(1);

  /// Information about the Relying Party used for demo purposes.
  /// This is only to be used if the demo flag is set to true in the debug information.
  @$pb.TagNumber(3)
  DemoRelyingParty get demoRp => $_getN(2);
  @$pb.TagNumber(3)
  set demoRp(DemoRelyingParty v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasDemoRp() => $_has(2);
  @$pb.TagNumber(3)
  void clearDemoRp() => clearField(3);
  @$pb.TagNumber(3)
  DemoRelyingParty ensureDemoRp() => $_ensure(2);
}

enum RequestedVerification_Options { governmentIdOptions, notSet }

/// A verification to perform in an IDV flow
class RequestedVerification extends $pb.GeneratedMessage {
  factory RequestedVerification({
    VerificationType? type,
    GovernmentIDOptions? governmentIdOptions,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (governmentIdOptions != null) {
      $result.governmentIdOptions = governmentIdOptions;
    }
    return $result;
  }
  RequestedVerification._() : super();
  factory RequestedVerification.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RequestedVerification.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, RequestedVerification_Options>
      _RequestedVerification_OptionsByTag = {
    2: RequestedVerification_Options.governmentIdOptions,
    0: RequestedVerification_Options.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RequestedVerification',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'services.connect.v1'),
      createEmptyInstance: create)
    ..oo(0, [2])
    ..e<VerificationType>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE,
        defaultOrMaker: VerificationType.GOVERNMENT_ID,
        valueOf: VerificationType.valueOf,
        enumValues: VerificationType.values)
    ..aOM<GovernmentIDOptions>(2, _omitFieldNames ? '' : 'governmentIdOptions',
        subBuilder: GovernmentIDOptions.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RequestedVerification clone() =>
      RequestedVerification()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RequestedVerification copyWith(
          void Function(RequestedVerification) updates) =>
      super.copyWith((message) => updates(message as RequestedVerification))
          as RequestedVerification;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RequestedVerification create() => RequestedVerification._();
  RequestedVerification createEmptyInstance() => create();
  static $pb.PbList<RequestedVerification> createRepeated() =>
      $pb.PbList<RequestedVerification>();
  @$core.pragma('dart2js:noInline')
  static RequestedVerification getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RequestedVerification>(create);
  static RequestedVerification? _defaultInstance;

  RequestedVerification_Options whichOptions() =>
      _RequestedVerification_OptionsByTag[$_whichOneof(0)]!;
  void clearOptions() => clearField($_whichOneof(0));

  /// The type of verification to perform
  @$pb.TagNumber(1)
  VerificationType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(VerificationType v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  /// Options for a Verification of type `GOVERNMENT_ID`
  @$pb.TagNumber(2)
  GovernmentIDOptions get governmentIdOptions => $_getN(1);
  @$pb.TagNumber(2)
  set governmentIdOptions(GovernmentIDOptions v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasGovernmentIdOptions() => $_has(1);
  @$pb.TagNumber(2)
  void clearGovernmentIdOptions() => clearField(2);
  @$pb.TagNumber(2)
  GovernmentIDOptions ensureGovernmentIdOptions() => $_ensure(1);
}

/// Options for a Verification of type `GOVERNMENT_ID`
class GovernmentIDOptions extends $pb.GeneratedMessage {
  factory GovernmentIDOptions({
    GovernmentIDFields? fields,
  }) {
    final $result = create();
    if (fields != null) {
      $result.fields = fields;
    }
    return $result;
  }
  GovernmentIDOptions._() : super();
  factory GovernmentIDOptions.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GovernmentIDOptions.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GovernmentIDOptions',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'services.connect.v1'),
      createEmptyInstance: create)
    ..aOM<GovernmentIDFields>(1, _omitFieldNames ? '' : 'fields',
        subBuilder: GovernmentIDFields.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GovernmentIDOptions clone() => GovernmentIDOptions()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GovernmentIDOptions copyWith(void Function(GovernmentIDOptions) updates) =>
      super.copyWith((message) => updates(message as GovernmentIDOptions))
          as GovernmentIDOptions;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GovernmentIDOptions create() => GovernmentIDOptions._();
  GovernmentIDOptions createEmptyInstance() => create();
  static $pb.PbList<GovernmentIDOptions> createRepeated() =>
      $pb.PbList<GovernmentIDOptions>();
  @$core.pragma('dart2js:noInline')
  static GovernmentIDOptions getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GovernmentIDOptions>(create);
  static GovernmentIDOptions? _defaultInstance;

  /// The fields to retrieve from the Government ID.
  /// If this object is not set, all fields will be retrieved.
  @$pb.TagNumber(1)
  GovernmentIDFields get fields => $_getN(0);
  @$pb.TagNumber(1)
  set fields(GovernmentIDFields v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFields() => $_has(0);
  @$pb.TagNumber(1)
  void clearFields() => clearField(1);
  @$pb.TagNumber(1)
  GovernmentIDFields ensureFields() => $_ensure(0);
}

/// Selection of fields to retrieve from a Government ID. All fields default to `false` unless explicitly set to `true`.
class GovernmentIDFields extends $pb.GeneratedMessage {
  factory GovernmentIDFields({
    $core.bool? idNumber,
    $core.bool? givenName,
    $core.bool? familyName,
    $core.bool? address,
    $core.bool? dateOfBirth,
    $core.bool? country,
    $core.bool? issueDate,
    $core.bool? expirationDate,
  }) {
    final $result = create();
    if (idNumber != null) {
      $result.idNumber = idNumber;
    }
    if (givenName != null) {
      $result.givenName = givenName;
    }
    if (familyName != null) {
      $result.familyName = familyName;
    }
    if (address != null) {
      $result.address = address;
    }
    if (dateOfBirth != null) {
      $result.dateOfBirth = dateOfBirth;
    }
    if (country != null) {
      $result.country = country;
    }
    if (issueDate != null) {
      $result.issueDate = issueDate;
    }
    if (expirationDate != null) {
      $result.expirationDate = expirationDate;
    }
    return $result;
  }
  GovernmentIDFields._() : super();
  factory GovernmentIDFields.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GovernmentIDFields.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GovernmentIDFields',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'services.connect.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'idNumber')
    ..aOB(2, _omitFieldNames ? '' : 'givenName')
    ..aOB(3, _omitFieldNames ? '' : 'familyName')
    ..aOB(4, _omitFieldNames ? '' : 'address')
    ..aOB(5, _omitFieldNames ? '' : 'dateOfBirth')
    ..aOB(6, _omitFieldNames ? '' : 'country')
    ..aOB(7, _omitFieldNames ? '' : 'issueDate')
    ..aOB(8, _omitFieldNames ? '' : 'expirationDate')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GovernmentIDFields clone() => GovernmentIDFields()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GovernmentIDFields copyWith(void Function(GovernmentIDFields) updates) =>
      super.copyWith((message) => updates(message as GovernmentIDFields))
          as GovernmentIDFields;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GovernmentIDFields create() => GovernmentIDFields._();
  GovernmentIDFields createEmptyInstance() => create();
  static $pb.PbList<GovernmentIDFields> createRepeated() =>
      $pb.PbList<GovernmentIDFields>();
  @$core.pragma('dart2js:noInline')
  static GovernmentIDFields getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GovernmentIDFields>(create);
  static GovernmentIDFields? _defaultInstance;

  /// ID number of the underlying identity document
  @$pb.TagNumber(1)
  $core.bool get idNumber => $_getBF(0);
  @$pb.TagNumber(1)
  set idNumber($core.bool v) {
    $_setBool(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasIdNumber() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdNumber() => clearField(1);

  /// Given ("first") name of the document holder
  @$pb.TagNumber(2)
  $core.bool get givenName => $_getBF(1);
  @$pb.TagNumber(2)
  set givenName($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasGivenName() => $_has(1);
  @$pb.TagNumber(2)
  void clearGivenName() => clearField(2);

  /// Family ("last") name of the document holder
  @$pb.TagNumber(3)
  $core.bool get familyName => $_getBF(2);
  @$pb.TagNumber(3)
  set familyName($core.bool v) {
    $_setBool(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasFamilyName() => $_has(2);
  @$pb.TagNumber(3)
  void clearFamilyName() => clearField(3);

  /// Full address of the document holder
  @$pb.TagNumber(4)
  $core.bool get address => $_getBF(3);
  @$pb.TagNumber(4)
  set address($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasAddress() => $_has(3);
  @$pb.TagNumber(4)
  void clearAddress() => clearField(4);

  /// Date of birth of the document holder
  @$pb.TagNumber(5)
  $core.bool get dateOfBirth => $_getBF(4);
  @$pb.TagNumber(5)
  set dateOfBirth($core.bool v) {
    $_setBool(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasDateOfBirth() => $_has(4);
  @$pb.TagNumber(5)
  void clearDateOfBirth() => clearField(5);

  /// ISO3 country code of the document
  @$pb.TagNumber(6)
  $core.bool get country => $_getBF(5);
  @$pb.TagNumber(6)
  set country($core.bool v) {
    $_setBool(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasCountry() => $_has(5);
  @$pb.TagNumber(6)
  void clearCountry() => clearField(6);

  /// Issuance date of the document
  @$pb.TagNumber(7)
  $core.bool get issueDate => $_getBF(6);
  @$pb.TagNumber(7)
  set issueDate($core.bool v) {
    $_setBool(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasIssueDate() => $_has(6);
  @$pb.TagNumber(7)
  void clearIssueDate() => clearField(7);

  /// Expiration date date of the document
  @$pb.TagNumber(8)
  $core.bool get expirationDate => $_getBF(7);
  @$pb.TagNumber(8)
  set expirationDate($core.bool v) {
    $_setBool(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasExpirationDate() => $_has(7);
  @$pb.TagNumber(8)
  void clearExpirationDate() => clearField(8);
}

/// Response to `CreateIDVSessionRequest`
class CreateSessionResponse extends $pb.GeneratedMessage {
  factory CreateSessionResponse({
    IDVSession? session,
  }) {
    final $result = create();
    if (session != null) {
      $result.session = session;
    }
    return $result;
  }
  CreateSessionResponse._() : super();
  factory CreateSessionResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreateSessionResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateSessionResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'services.connect.v1'),
      createEmptyInstance: create)
    ..aOM<IDVSession>(1, _omitFieldNames ? '' : 'session',
        subBuilder: IDVSession.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CreateSessionResponse clone() =>
      CreateSessionResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CreateSessionResponse copyWith(
          void Function(CreateSessionResponse) updates) =>
      super.copyWith((message) => updates(message as CreateSessionResponse))
          as CreateSessionResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateSessionResponse create() => CreateSessionResponse._();
  CreateSessionResponse createEmptyInstance() => create();
  static $pb.PbList<CreateSessionResponse> createRepeated() =>
      $pb.PbList<CreateSessionResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateSessionResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateSessionResponse>(create);
  static CreateSessionResponse? _defaultInstance;

  /// The created IDVSession
  @$pb.TagNumber(1)
  IDVSession get session => $_getN(0);
  @$pb.TagNumber(1)
  set session(IDVSession v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSession() => $_has(0);
  @$pb.TagNumber(1)
  void clearSession() => clearField(1);
  @$pb.TagNumber(1)
  IDVSession ensureSession() => $_ensure(0);
}

/// Request to cancel an Identity Verification Session
class CancelSessionRequest extends $pb.GeneratedMessage {
  factory CancelSessionRequest({
    $core.String? idvSessionId,
  }) {
    final $result = create();
    if (idvSessionId != null) {
      $result.idvSessionId = idvSessionId;
    }
    return $result;
  }
  CancelSessionRequest._() : super();
  factory CancelSessionRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CancelSessionRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CancelSessionRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'services.connect.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'idvSessionId')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CancelSessionRequest clone() =>
      CancelSessionRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CancelSessionRequest copyWith(void Function(CancelSessionRequest) updates) =>
      super.copyWith((message) => updates(message as CancelSessionRequest))
          as CancelSessionRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CancelSessionRequest create() => CancelSessionRequest._();
  CancelSessionRequest createEmptyInstance() => create();
  static $pb.PbList<CancelSessionRequest> createRepeated() =>
      $pb.PbList<CancelSessionRequest>();
  @$core.pragma('dart2js:noInline')
  static CancelSessionRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CancelSessionRequest>(create);
  static CancelSessionRequest? _defaultInstance;

  /// The ID of the IDVSession to cancel
  @$pb.TagNumber(1)
  $core.String get idvSessionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set idvSessionId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasIdvSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdvSessionId() => clearField(1);
}

/// Response to `CancelIDVSessionRequest`
class CancelSessionResponse extends $pb.GeneratedMessage {
  factory CancelSessionResponse({
    IDVSession? session,
  }) {
    final $result = create();
    if (session != null) {
      $result.session = session;
    }
    return $result;
  }
  CancelSessionResponse._() : super();
  factory CancelSessionResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CancelSessionResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CancelSessionResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'services.connect.v1'),
      createEmptyInstance: create)
    ..aOM<IDVSession>(1, _omitFieldNames ? '' : 'session',
        subBuilder: IDVSession.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CancelSessionResponse clone() =>
      CancelSessionResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CancelSessionResponse copyWith(
          void Function(CancelSessionResponse) updates) =>
      super.copyWith((message) => updates(message as CancelSessionResponse))
          as CancelSessionResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CancelSessionResponse create() => CancelSessionResponse._();
  CancelSessionResponse createEmptyInstance() => create();
  static $pb.PbList<CancelSessionResponse> createRepeated() =>
      $pb.PbList<CancelSessionResponse>();
  @$core.pragma('dart2js:noInline')
  static CancelSessionResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CancelSessionResponse>(create);
  static CancelSessionResponse? _defaultInstance;

  /// The IDVSession in its current state after cancellation
  @$pb.TagNumber(1)
  IDVSession get session => $_getN(0);
  @$pb.TagNumber(1)
  set session(IDVSession v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSession() => $_has(0);
  @$pb.TagNumber(1)
  void clearSession() => clearField(1);
  @$pb.TagNumber(1)
  IDVSession ensureSession() => $_ensure(0);
}

/// Request to get an IDVSession
class GetSessionRequest extends $pb.GeneratedMessage {
  factory GetSessionRequest({
    $core.String? idvSessionId,
  }) {
    final $result = create();
    if (idvSessionId != null) {
      $result.idvSessionId = idvSessionId;
    }
    return $result;
  }
  GetSessionRequest._() : super();
  factory GetSessionRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetSessionRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetSessionRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'services.connect.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'idvSessionId')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetSessionRequest clone() => GetSessionRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetSessionRequest copyWith(void Function(GetSessionRequest) updates) =>
      super.copyWith((message) => updates(message as GetSessionRequest))
          as GetSessionRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetSessionRequest create() => GetSessionRequest._();
  GetSessionRequest createEmptyInstance() => create();
  static $pb.PbList<GetSessionRequest> createRepeated() =>
      $pb.PbList<GetSessionRequest>();
  @$core.pragma('dart2js:noInline')
  static GetSessionRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetSessionRequest>(create);
  static GetSessionRequest? _defaultInstance;

  /// The ID of the IDVSession to get
  @$pb.TagNumber(1)
  $core.String get idvSessionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set idvSessionId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasIdvSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdvSessionId() => clearField(1);
}

/// Response to `GetIDVSessionRequest`
class GetSessionResponse extends $pb.GeneratedMessage {
  factory GetSessionResponse({
    IDVSession? session,
  }) {
    final $result = create();
    if (session != null) {
      $result.session = session;
    }
    return $result;
  }
  GetSessionResponse._() : super();
  factory GetSessionResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetSessionResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetSessionResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'services.connect.v1'),
      createEmptyInstance: create)
    ..aOM<IDVSession>(1, _omitFieldNames ? '' : 'session',
        subBuilder: IDVSession.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetSessionResponse clone() => GetSessionResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetSessionResponse copyWith(void Function(GetSessionResponse) updates) =>
      super.copyWith((message) => updates(message as GetSessionResponse))
          as GetSessionResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetSessionResponse create() => GetSessionResponse._();
  GetSessionResponse createEmptyInstance() => create();
  static $pb.PbList<GetSessionResponse> createRepeated() =>
      $pb.PbList<GetSessionResponse>();
  @$core.pragma('dart2js:noInline')
  static GetSessionResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetSessionResponse>(create);
  static GetSessionResponse? _defaultInstance;

  /// The IDVSession
  @$pb.TagNumber(1)
  IDVSession get session => $_getN(0);
  @$pb.TagNumber(1)
  set session(IDVSession v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSession() => $_has(0);
  @$pb.TagNumber(1)
  void clearSession() => clearField(1);
  @$pb.TagNumber(1)
  IDVSession ensureSession() => $_ensure(0);
}

/// Request to list all IDVSessions you've created
class ListSessionsRequest extends $pb.GeneratedMessage {
  factory ListSessionsRequest({
    SessionOrdering? orderBy,
    $10.OrderDirection? orderDirection,
    $core.int? pageSize,
    $core.int? page,
  }) {
    final $result = create();
    if (orderBy != null) {
      $result.orderBy = orderBy;
    }
    if (orderDirection != null) {
      $result.orderDirection = orderDirection;
    }
    if (pageSize != null) {
      $result.pageSize = pageSize;
    }
    if (page != null) {
      $result.page = page;
    }
    return $result;
  }
  ListSessionsRequest._() : super();
  factory ListSessionsRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListSessionsRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListSessionsRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'services.connect.v1'),
      createEmptyInstance: create)
    ..e<SessionOrdering>(
        1, _omitFieldNames ? '' : 'orderBy', $pb.PbFieldType.OE,
        defaultOrMaker: SessionOrdering.CREATED,
        valueOf: SessionOrdering.valueOf,
        enumValues: SessionOrdering.values)
    ..e<$10.OrderDirection>(
        2, _omitFieldNames ? '' : 'orderDirection', $pb.PbFieldType.OE,
        defaultOrMaker: $10.OrderDirection.ASCENDING,
        valueOf: $10.OrderDirection.valueOf,
        enumValues: $10.OrderDirection.values)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'pageSize', $pb.PbFieldType.O3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'page', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListSessionsRequest clone() => ListSessionsRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListSessionsRequest copyWith(void Function(ListSessionsRequest) updates) =>
      super.copyWith((message) => updates(message as ListSessionsRequest))
          as ListSessionsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListSessionsRequest create() => ListSessionsRequest._();
  ListSessionsRequest createEmptyInstance() => create();
  static $pb.PbList<ListSessionsRequest> createRepeated() =>
      $pb.PbList<ListSessionsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListSessionsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListSessionsRequest>(create);
  static ListSessionsRequest? _defaultInstance;

  /// The field by which sessions should be sorted. Defaults to `CREATED`.
  @$pb.TagNumber(1)
  SessionOrdering get orderBy => $_getN(0);
  @$pb.TagNumber(1)
  set orderBy(SessionOrdering v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasOrderBy() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrderBy() => clearField(1);

  /// The order in which sessions should be sorted. Defaults to `ASCENDING`.
  @$pb.TagNumber(2)
  $10.OrderDirection get orderDirection => $_getN(1);
  @$pb.TagNumber(2)
  set orderDirection($10.OrderDirection v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasOrderDirection() => $_has(1);
  @$pb.TagNumber(2)
  void clearOrderDirection() => clearField(2);

  /// The number of results to return per page.
  /// Must be between `1` and `10`, inclusive.
  /// Defaults to `10`.
  @$pb.TagNumber(3)
  $core.int get pageSize => $_getIZ(2);
  @$pb.TagNumber(3)
  set pageSize($core.int v) {
    $_setSignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasPageSize() => $_has(2);
  @$pb.TagNumber(3)
  void clearPageSize() => clearField(3);

  /// The page index of results to return.
  /// Starts at `1`.
  /// Defaults to `1`.
  @$pb.TagNumber(4)
  $core.int get page => $_getIZ(3);
  @$pb.TagNumber(4)
  set page($core.int v) {
    $_setSignedInt32(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasPage() => $_has(3);
  @$pb.TagNumber(4)
  void clearPage() => clearField(4);
}

/// Response to `ListIDVSessionsRequest`
class ListSessionsResponse extends $pb.GeneratedMessage {
  factory ListSessionsResponse({
    $core.Iterable<IDVSession>? sessions,
    $core.int? total,
    $core.bool? more,
  }) {
    final $result = create();
    if (sessions != null) {
      $result.sessions.addAll(sessions);
    }
    if (total != null) {
      $result.total = total;
    }
    if (more != null) {
      $result.more = more;
    }
    return $result;
  }
  ListSessionsResponse._() : super();
  factory ListSessionsResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListSessionsResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListSessionsResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'services.connect.v1'),
      createEmptyInstance: create)
    ..pc<IDVSession>(1, _omitFieldNames ? '' : 'sessions', $pb.PbFieldType.PM,
        subBuilder: IDVSession.create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'total', $pb.PbFieldType.O3)
    ..aOB(3, _omitFieldNames ? '' : 'more')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListSessionsResponse clone() =>
      ListSessionsResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListSessionsResponse copyWith(void Function(ListSessionsResponse) updates) =>
      super.copyWith((message) => updates(message as ListSessionsResponse))
          as ListSessionsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListSessionsResponse create() => ListSessionsResponse._();
  ListSessionsResponse createEmptyInstance() => create();
  static $pb.PbList<ListSessionsResponse> createRepeated() =>
      $pb.PbList<ListSessionsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListSessionsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListSessionsResponse>(create);
  static ListSessionsResponse? _defaultInstance;

  /// The sessions you've created
  @$pb.TagNumber(1)
  $core.List<IDVSession> get sessions => $_getList(0);

  /// The total number of sessions you've created
  @$pb.TagNumber(2)
  $core.int get total => $_getIZ(1);
  @$pb.TagNumber(2)
  set total($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasTotal() => $_has(1);
  @$pb.TagNumber(2)
  void clearTotal() => clearField(2);

  /// If `true`, this is not the last page of results.
  /// If `false`, this is the last page of results.
  @$pb.TagNumber(3)
  $core.bool get more => $_getBF(2);
  @$pb.TagNumber(3)
  set more($core.bool v) {
    $_setBool(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasMore() => $_has(2);
  @$pb.TagNumber(3)
  void clearMore() => clearField(3);
}

/// Request to preemptively check if an identity has a valid reusable credential
class HasValidCredentialRequest extends $pb.GeneratedMessage {
  factory HasValidCredentialRequest({
    $4.CreateWalletRequest_ExternalIdentity? identity,
    CredentialRequestData? credentialRequestData,
  }) {
    final $result = create();
    if (identity != null) {
      $result.identity = identity;
    }
    if (credentialRequestData != null) {
      $result.credentialRequestData = credentialRequestData;
    }
    return $result;
  }
  HasValidCredentialRequest._() : super();
  factory HasValidCredentialRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory HasValidCredentialRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HasValidCredentialRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'services.connect.v1'),
      createEmptyInstance: create)
    ..aOM<$4.CreateWalletRequest_ExternalIdentity>(
        1, _omitFieldNames ? '' : 'identity',
        subBuilder: $4.CreateWalletRequest_ExternalIdentity.create)
    ..aOM<CredentialRequestData>(
        2, _omitFieldNames ? '' : 'credentialRequestData',
        subBuilder: CredentialRequestData.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  HasValidCredentialRequest clone() =>
      HasValidCredentialRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  HasValidCredentialRequest copyWith(
          void Function(HasValidCredentialRequest) updates) =>
      super.copyWith((message) => updates(message as HasValidCredentialRequest))
          as HasValidCredentialRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HasValidCredentialRequest create() => HasValidCredentialRequest._();
  HasValidCredentialRequest createEmptyInstance() => create();
  static $pb.PbList<HasValidCredentialRequest> createRepeated() =>
      $pb.PbList<HasValidCredentialRequest>();
  @$core.pragma('dart2js:noInline')
  static HasValidCredentialRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HasValidCredentialRequest>(create);
  static HasValidCredentialRequest? _defaultInstance;

  /// The identity used to find a credential
  @$pb.TagNumber(1)
  $4.CreateWalletRequest_ExternalIdentity get identity => $_getN(0);
  @$pb.TagNumber(1)
  set identity($4.CreateWalletRequest_ExternalIdentity v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasIdentity() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdentity() => clearField(1);
  @$pb.TagNumber(1)
  $4.CreateWalletRequest_ExternalIdentity ensureIdentity() => $_ensure(0);

  /// The criteria used to find a valid credential
  @$pb.TagNumber(2)
  CredentialRequestData get credentialRequestData => $_getN(1);
  @$pb.TagNumber(2)
  set credentialRequestData(CredentialRequestData v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCredentialRequestData() => $_has(1);
  @$pb.TagNumber(2)
  void clearCredentialRequestData() => clearField(2);
  @$pb.TagNumber(2)
  CredentialRequestData ensureCredentialRequestData() => $_ensure(1);
}

/// Response to `HasValidCredentialRequest`
class HasValidCredentialResponse extends $pb.GeneratedMessage {
  factory HasValidCredentialResponse({
    $core.bool? hasValidCredential,
  }) {
    final $result = create();
    if (hasValidCredential != null) {
      $result.hasValidCredential = hasValidCredential;
    }
    return $result;
  }
  HasValidCredentialResponse._() : super();
  factory HasValidCredentialResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory HasValidCredentialResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HasValidCredentialResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'services.connect.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'hasValidCredential')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  HasValidCredentialResponse clone() =>
      HasValidCredentialResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  HasValidCredentialResponse copyWith(
          void Function(HasValidCredentialResponse) updates) =>
      super.copyWith(
              (message) => updates(message as HasValidCredentialResponse))
          as HasValidCredentialResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HasValidCredentialResponse create() => HasValidCredentialResponse._();
  HasValidCredentialResponse createEmptyInstance() => create();
  static $pb.PbList<HasValidCredentialResponse> createRepeated() =>
      $pb.PbList<HasValidCredentialResponse>();
  @$core.pragma('dart2js:noInline')
  static HasValidCredentialResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HasValidCredentialResponse>(create);
  static HasValidCredentialResponse? _defaultInstance;

  /// Whether the identity has a valid credential
  @$pb.TagNumber(1)
  $core.bool get hasValidCredential => $_getBF(0);
  @$pb.TagNumber(1)
  set hasValidCredential($core.bool v) {
    $_setBool(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasHasValidCredential() => $_has(0);
  @$pb.TagNumber(1)
  void clearHasValidCredential() => clearField(1);
}

class CredentialRequestData extends $pb.GeneratedMessage {
  factory CredentialRequestData({
    VerificationType? type,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    return $result;
  }
  CredentialRequestData._() : super();
  factory CredentialRequestData.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CredentialRequestData.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CredentialRequestData',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'services.connect.v1'),
      createEmptyInstance: create)
    ..e<VerificationType>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE,
        defaultOrMaker: VerificationType.GOVERNMENT_ID,
        valueOf: VerificationType.valueOf,
        enumValues: VerificationType.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CredentialRequestData clone() =>
      CredentialRequestData()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CredentialRequestData copyWith(
          void Function(CredentialRequestData) updates) =>
      super.copyWith((message) => updates(message as CredentialRequestData))
          as CredentialRequestData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CredentialRequestData create() => CredentialRequestData._();
  CredentialRequestData createEmptyInstance() => create();
  static $pb.PbList<CredentialRequestData> createRepeated() =>
      $pb.PbList<CredentialRequestData>();
  @$core.pragma('dart2js:noInline')
  static CredentialRequestData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CredentialRequestData>(create);
  static CredentialRequestData? _defaultInstance;

  /// The type of verification for which the credential can be used
  @$pb.TagNumber(1)
  VerificationType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(VerificationType v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
