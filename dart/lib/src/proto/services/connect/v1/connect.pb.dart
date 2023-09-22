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

import '../../common/v1/common.pbenum.dart' as $9;
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
        defaultOrMaker: SessionFailCode.SESSION_FAIL_INTERNAL,
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
    $fixnum.Int64? begun,
    $fixnum.Int64? updated,
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
    if (begun != null) {
      $result.begun = begun;
    }
    if (updated != null) {
      $result.updated = updated;
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
        defaultOrMaker: VerificationFailCode.VERIFICATION_FAIL_INTERNAL,
        valueOf: VerificationFailCode.valueOf,
        enumValues: VerificationFailCode.values)
    ..aOB(5, _omitFieldNames ? '' : 'reused')
    ..a<$fixnum.Int64>(6, _omitFieldNames ? '' : 'begun', $pb.PbFieldType.OF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(7, _omitFieldNames ? '' : 'updated', $pb.PbFieldType.OF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
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

  /// The unix timestamp, in seconds, when this verification was begun
  /// by the user -- or `0` if not yet begun.
  @$pb.TagNumber(6)
  $fixnum.Int64 get begun => $_getI64(5);
  @$pb.TagNumber(6)
  set begun($fixnum.Int64 v) {
    $_setInt64(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasBegun() => $_has(5);
  @$pb.TagNumber(6)
  void clearBegun() => clearField(6);

  /// The unix timestamp, in seconds, when this verification last changed state -- o
  @$pb.TagNumber(7)
  $fixnum.Int64 get updated => $_getI64(6);
  @$pb.TagNumber(7)
  set updated($fixnum.Int64 v) {
    $_setInt64(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasUpdated() => $_has(6);
  @$pb.TagNumber(7)
  void clearUpdated() => clearField(7);
}

/// Request to create an Identity Verification Session
class CreateSessionRequest extends $pb.GeneratedMessage {
  factory CreateSessionRequest({
    $core.Iterable<RequestedVerification>? verifications,
  }) {
    final $result = create();
    if (verifications != null) {
      $result.verifications.addAll(verifications);
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
}

/// A verification to perform in an IDV flow
class RequestedVerification extends $pb.GeneratedMessage {
  factory RequestedVerification({
    VerificationType? type,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RequestedVerification',
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
    $9.OrderDirection? orderDirection,
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
    ..e<$9.OrderDirection>(
        2, _omitFieldNames ? '' : 'orderDirection', $pb.PbFieldType.OE,
        defaultOrMaker: $9.OrderDirection.ASCENDING,
        valueOf: $9.OrderDirection.valueOf,
        enumValues: $9.OrderDirection.values)
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
  $9.OrderDirection get orderDirection => $_getN(1);
  @$pb.TagNumber(2)
  set orderDirection($9.OrderDirection v) {
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

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
