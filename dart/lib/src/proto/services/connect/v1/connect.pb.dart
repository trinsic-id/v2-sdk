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

import 'connect.pbenum.dart';

export 'connect.pbenum.dart';

/// An Identity Verification Session
class IDVSession extends $pb.GeneratedMessage {
  factory IDVSession({
    $core.String? id,
    $core.String? clientToken,
    IDVSessionState? state,
    $core.Map<$core.String, Verification>? verifications,
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
    ..aOS(5, _omitFieldNames ? '' : 'resultVp')
    ..a<$fixnum.Int64>(6, _omitFieldNames ? '' : 'created', $pb.PbFieldType.OF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(7, _omitFieldNames ? '' : 'updated', $pb.PbFieldType.OF6,
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

  /// The resultant signed VP combining the results of all verifications
  @$pb.TagNumber(5)
  $core.String get resultVp => $_getSZ(4);
  @$pb.TagNumber(5)
  set resultVp($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasResultVp() => $_has(4);
  @$pb.TagNumber(5)
  void clearResultVp() => clearField(5);

  /// The unix timestamp, in seconds, that this IDVSession was created
  @$pb.TagNumber(6)
  $fixnum.Int64 get created => $_getI64(5);
  @$pb.TagNumber(6)
  set created($fixnum.Int64 v) {
    $_setInt64(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasCreated() => $_has(5);
  @$pb.TagNumber(6)
  void clearCreated() => clearField(6);

  /// The unix timestamp, in seconds, that this IDVSession's `state` was last updated
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

/// A Verification that is part of an IDVSession
class Verification extends $pb.GeneratedMessage {
  factory Verification({
    $core.String? id,
    VerificationType? type,
    VerificationState? state,
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
    ..aOB(4, _omitFieldNames ? '' : 'reused')
    ..a<$fixnum.Int64>(5, _omitFieldNames ? '' : 'begun', $pb.PbFieldType.OF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(6, _omitFieldNames ? '' : 'updated', $pb.PbFieldType.OF6,
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

  /// Whether this was a reused (true) or fresh (false) verification.
  /// If `state` is not `VERIFICATION_SUCCESS`, this field is `false` and does not convey useful information.
  @$pb.TagNumber(4)
  $core.bool get reused => $_getBF(3);
  @$pb.TagNumber(4)
  set reused($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasReused() => $_has(3);
  @$pb.TagNumber(4)
  void clearReused() => clearField(4);

  /// The unix timestamp, in seconds, when this verification was begun
  /// by the user -- or `0` if not yet begun.
  @$pb.TagNumber(5)
  $fixnum.Int64 get begun => $_getI64(4);
  @$pb.TagNumber(5)
  set begun($fixnum.Int64 v) {
    $_setInt64(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasBegun() => $_has(4);
  @$pb.TagNumber(5)
  void clearBegun() => clearField(5);

  /// The unix timestamp, in seconds, when this verification last changed state -- o
  @$pb.TagNumber(6)
  $fixnum.Int64 get updated => $_getI64(5);
  @$pb.TagNumber(6)
  set updated($fixnum.Int64 v) {
    $_setInt64(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasUpdated() => $_has(5);
  @$pb.TagNumber(6)
  void clearUpdated() => clearField(6);
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

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');