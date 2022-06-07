///
//  Generated code. Do not modify.
//  source: services/provider/v1/provider.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../account/v1/account.pb.dart' as $4;

import 'provider.pbenum.dart';
import '../../account/v1/account.pbenum.dart' as $4;

export 'provider.pbenum.dart';

class Invite extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'Invite',
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
            : 'code')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'created')
    ..aOS(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'accepted')
    ..aOS(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'expires')
    ..hasRequiredFields = false;

  Invite._() : super();
  factory Invite({
    $core.String? id,
    $core.String? code,
    $core.String? created,
    $core.String? accepted,
    $core.String? expires,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (code != null) {
      _result.code = code;
    }
    if (created != null) {
      _result.created = created;
    }
    if (accepted != null) {
      _result.accepted = accepted;
    }
    if (expires != null) {
      _result.expires = expires;
    }
    return _result;
  }
  factory Invite.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Invite.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Invite clone() => Invite()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Invite copyWith(void Function(Invite) updates) =>
      super.copyWith((message) => updates(message as Invite))
          as Invite; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Invite create() => Invite._();
  Invite createEmptyInstance() => create();
  static $pb.PbList<Invite> createRepeated() => $pb.PbList<Invite>();
  @$core.pragma('dart2js:noInline')
  static Invite getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Invite>(create);
  static Invite? _defaultInstance;

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
  $core.String get code => $_getSZ(1);
  @$pb.TagNumber(2)
  set code($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearCode() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get created => $_getSZ(2);
  @$pb.TagNumber(3)
  set created($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasCreated() => $_has(2);
  @$pb.TagNumber(3)
  void clearCreated() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get accepted => $_getSZ(3);
  @$pb.TagNumber(4)
  set accepted($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasAccepted() => $_has(3);
  @$pb.TagNumber(4)
  void clearAccepted() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get expires => $_getSZ(4);
  @$pb.TagNumber(5)
  set expires($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasExpires() => $_has(4);
  @$pb.TagNumber(5)
  void clearExpires() => clearField(5);
}

class InviteRequest_DidCommInvitation extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'InviteRequest.DidCommInvitation',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.provider.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  InviteRequest_DidCommInvitation._() : super();
  factory InviteRequest_DidCommInvitation() => create();
  factory InviteRequest_DidCommInvitation.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory InviteRequest_DidCommInvitation.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  InviteRequest_DidCommInvitation clone() =>
      InviteRequest_DidCommInvitation()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  InviteRequest_DidCommInvitation copyWith(
          void Function(InviteRequest_DidCommInvitation) updates) =>
      super.copyWith(
              (message) => updates(message as InviteRequest_DidCommInvitation))
          as InviteRequest_DidCommInvitation; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InviteRequest_DidCommInvitation create() =>
      InviteRequest_DidCommInvitation._();
  InviteRequest_DidCommInvitation createEmptyInstance() => create();
  static $pb.PbList<InviteRequest_DidCommInvitation> createRepeated() =>
      $pb.PbList<InviteRequest_DidCommInvitation>();
  @$core.pragma('dart2js:noInline')
  static InviteRequest_DidCommInvitation getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<InviteRequest_DidCommInvitation>(
          create);
  static InviteRequest_DidCommInvitation? _defaultInstance;
}

class InviteRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'InviteRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.provider.v1'),
      createEmptyInstance: create)
    ..e<ParticipantType>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'participant',
        $pb.PbFieldType.OE,
        defaultOrMaker: ParticipantType.participant_type_individual,
        valueOf: ParticipantType.valueOf,
        enumValues: ParticipantType.values)
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'description')
    ..aOM<$4.AccountDetails>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'details',
        subBuilder: $4.AccountDetails.create)
    ..hasRequiredFields = false;

  InviteRequest._() : super();
  factory InviteRequest({
    ParticipantType? participant,
    $core.String? description,
    $4.AccountDetails? details,
  }) {
    final _result = create();
    if (participant != null) {
      _result.participant = participant;
    }
    if (description != null) {
      _result.description = description;
    }
    if (details != null) {
      _result.details = details;
    }
    return _result;
  }
  factory InviteRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory InviteRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  InviteRequest clone() => InviteRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  InviteRequest copyWith(void Function(InviteRequest) updates) =>
      super.copyWith((message) => updates(message as InviteRequest))
          as InviteRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InviteRequest create() => InviteRequest._();
  InviteRequest createEmptyInstance() => create();
  static $pb.PbList<InviteRequest> createRepeated() =>
      $pb.PbList<InviteRequest>();
  @$core.pragma('dart2js:noInline')
  static InviteRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<InviteRequest>(create);
  static InviteRequest? _defaultInstance;

  @$pb.TagNumber(1)
  ParticipantType get participant => $_getN(0);
  @$pb.TagNumber(1)
  set participant(ParticipantType v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasParticipant() => $_has(0);
  @$pb.TagNumber(1)
  void clearParticipant() => clearField(1);

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
  $4.AccountDetails get details => $_getN(2);
  @$pb.TagNumber(3)
  set details($4.AccountDetails v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasDetails() => $_has(2);
  @$pb.TagNumber(3)
  void clearDetails() => clearField(3);
  @$pb.TagNumber(3)
  $4.AccountDetails ensureDetails() => $_ensure(2);
}

class InviteResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'InviteResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.provider.v1'),
      createEmptyInstance: create)
    ..aOS(
        10,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'invitationId')
    ..aOS(
        11,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'invitationCode')
    ..hasRequiredFields = false;

  InviteResponse._() : super();
  factory InviteResponse({
    $core.String? invitationId,
    $core.String? invitationCode,
  }) {
    final _result = create();
    if (invitationId != null) {
      _result.invitationId = invitationId;
    }
    if (invitationCode != null) {
      _result.invitationCode = invitationCode;
    }
    return _result;
  }
  factory InviteResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory InviteResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  InviteResponse clone() => InviteResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  InviteResponse copyWith(void Function(InviteResponse) updates) =>
      super.copyWith((message) => updates(message as InviteResponse))
          as InviteResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InviteResponse create() => InviteResponse._();
  InviteResponse createEmptyInstance() => create();
  static $pb.PbList<InviteResponse> createRepeated() =>
      $pb.PbList<InviteResponse>();
  @$core.pragma('dart2js:noInline')
  static InviteResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<InviteResponse>(create);
  static InviteResponse? _defaultInstance;

  @$pb.TagNumber(10)
  $core.String get invitationId => $_getSZ(0);
  @$pb.TagNumber(10)
  set invitationId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasInvitationId() => $_has(0);
  @$pb.TagNumber(10)
  void clearInvitationId() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get invitationCode => $_getSZ(1);
  @$pb.TagNumber(11)
  set invitationCode($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasInvitationCode() => $_has(1);
  @$pb.TagNumber(11)
  void clearInvitationCode() => clearField(11);
}

class InvitationStatusRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'InvitationStatusRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.provider.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'invitationId')
    ..hasRequiredFields = false;

  InvitationStatusRequest._() : super();
  factory InvitationStatusRequest({
    $core.String? invitationId,
  }) {
    final _result = create();
    if (invitationId != null) {
      _result.invitationId = invitationId;
    }
    return _result;
  }
  factory InvitationStatusRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory InvitationStatusRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  InvitationStatusRequest clone() =>
      InvitationStatusRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  InvitationStatusRequest copyWith(
          void Function(InvitationStatusRequest) updates) =>
      super.copyWith((message) => updates(message as InvitationStatusRequest))
          as InvitationStatusRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InvitationStatusRequest create() => InvitationStatusRequest._();
  InvitationStatusRequest createEmptyInstance() => create();
  static $pb.PbList<InvitationStatusRequest> createRepeated() =>
      $pb.PbList<InvitationStatusRequest>();
  @$core.pragma('dart2js:noInline')
  static InvitationStatusRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<InvitationStatusRequest>(create);
  static InvitationStatusRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get invitationId => $_getSZ(0);
  @$pb.TagNumber(1)
  set invitationId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasInvitationId() => $_has(0);
  @$pb.TagNumber(1)
  void clearInvitationId() => clearField(1);
}

class InvitationStatusResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'InvitationStatusResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.provider.v1'),
      createEmptyInstance: create)
    ..e<InvitationStatusResponse_Status>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'status',
        $pb.PbFieldType.OE,
        defaultOrMaker: InvitationStatusResponse_Status.Error,
        valueOf: InvitationStatusResponse_Status.valueOf,
        enumValues: InvitationStatusResponse_Status.values)
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'statusDetails')
    ..hasRequiredFields = false;

  InvitationStatusResponse._() : super();
  factory InvitationStatusResponse({
    InvitationStatusResponse_Status? status,
    $core.String? statusDetails,
  }) {
    final _result = create();
    if (status != null) {
      _result.status = status;
    }
    if (statusDetails != null) {
      _result.statusDetails = statusDetails;
    }
    return _result;
  }
  factory InvitationStatusResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory InvitationStatusResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  InvitationStatusResponse clone() =>
      InvitationStatusResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  InvitationStatusResponse copyWith(
          void Function(InvitationStatusResponse) updates) =>
      super.copyWith((message) => updates(message as InvitationStatusResponse))
          as InvitationStatusResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InvitationStatusResponse create() => InvitationStatusResponse._();
  InvitationStatusResponse createEmptyInstance() => create();
  static $pb.PbList<InvitationStatusResponse> createRepeated() =>
      $pb.PbList<InvitationStatusResponse>();
  @$core.pragma('dart2js:noInline')
  static InvitationStatusResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<InvitationStatusResponse>(create);
  static InvitationStatusResponse? _defaultInstance;

  @$pb.TagNumber(1)
  InvitationStatusResponse_Status get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(InvitationStatusResponse_Status v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get statusDetails => $_getSZ(1);
  @$pb.TagNumber(2)
  set statusDetails($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasStatusDetails() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatusDetails() => clearField(2);
}

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
    ..aOS(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'uri')
    ..pc<WebhookConfig>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'webhooks',
        $pb.PbFieldType.PM,
        subBuilder: WebhookConfig.create)
    ..hasRequiredFields = false;

  Ecosystem._() : super();
  factory Ecosystem({
    $core.String? id,
    $core.String? name,
    $core.String? description,
    $core.String? uri,
    $core.Iterable<WebhookConfig>? webhooks,
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
    if (webhooks != null) {
      _result.webhooks.addAll(webhooks);
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

  @$pb.TagNumber(4)
  $core.String get uri => $_getSZ(3);
  @$pb.TagNumber(4)
  set uri($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasUri() => $_has(3);
  @$pb.TagNumber(4)
  void clearUri() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<WebhookConfig> get webhooks => $_getList(4);
}

class WebhookConfig extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'WebhookConfig',
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
            : 'destinationUrl')
    ..pPS(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'events')
    ..aOS(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'status')
    ..hasRequiredFields = false;

  WebhookConfig._() : super();
  factory WebhookConfig({
    $core.String? id,
    $core.String? destinationUrl,
    $core.Iterable<$core.String>? events,
    $core.String? status,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (destinationUrl != null) {
      _result.destinationUrl = destinationUrl;
    }
    if (events != null) {
      _result.events.addAll(events);
    }
    if (status != null) {
      _result.status = status;
    }
    return _result;
  }
  factory WebhookConfig.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory WebhookConfig.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  WebhookConfig clone() => WebhookConfig()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  WebhookConfig copyWith(void Function(WebhookConfig) updates) =>
      super.copyWith((message) => updates(message as WebhookConfig))
          as WebhookConfig; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WebhookConfig create() => WebhookConfig._();
  WebhookConfig createEmptyInstance() => create();
  static $pb.PbList<WebhookConfig> createRepeated() =>
      $pb.PbList<WebhookConfig>();
  @$core.pragma('dart2js:noInline')
  static WebhookConfig getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WebhookConfig>(create);
  static WebhookConfig? _defaultInstance;

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
  $core.String get destinationUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set destinationUrl($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasDestinationUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearDestinationUrl() => clearField(2);

  @$pb.TagNumber(4)
  $core.List<$core.String> get events => $_getList(2);

  @$pb.TagNumber(5)
  $core.String get status => $_getSZ(3);
  @$pb.TagNumber(5)
  set status($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasStatus() => $_has(3);
  @$pb.TagNumber(5)
  void clearStatus() => clearField(5);
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
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'uri')
    ..aOM<$4.AccountDetails>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'details',
        subBuilder: $4.AccountDetails.create)
    ..hasRequiredFields = false;

  CreateEcosystemRequest._() : super();
  factory CreateEcosystemRequest({
    $core.String? name,
    $core.String? description,
    $core.String? uri,
    $4.AccountDetails? details,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (description != null) {
      _result.description = description;
    }
    if (uri != null) {
      _result.uri = uri;
    }
    if (details != null) {
      _result.details = details;
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

  @$pb.TagNumber(3)
  $core.String get uri => $_getSZ(2);
  @$pb.TagNumber(3)
  set uri($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasUri() => $_has(2);
  @$pb.TagNumber(3)
  void clearUri() => clearField(3);

  @$pb.TagNumber(4)
  $4.AccountDetails get details => $_getN(3);
  @$pb.TagNumber(4)
  set details($4.AccountDetails v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasDetails() => $_has(3);
  @$pb.TagNumber(4)
  void clearDetails() => clearField(4);
  @$pb.TagNumber(4)
  $4.AccountDetails ensureDetails() => $_ensure(3);
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
    ..aOM<$4.AccountProfile>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'profile',
        subBuilder: $4.AccountProfile.create)
    ..e<$4.ConfirmationMethod>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'confirmationMethod',
        $pb.PbFieldType.OE,
        defaultOrMaker: $4.ConfirmationMethod.None,
        valueOf: $4.ConfirmationMethod.valueOf,
        enumValues: $4.ConfirmationMethod.values)
    ..hasRequiredFields = false;

  CreateEcosystemResponse._() : super();
  factory CreateEcosystemResponse({
    Ecosystem? ecosystem,
    $4.AccountProfile? profile,
    $4.ConfirmationMethod? confirmationMethod,
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
  $4.AccountProfile get profile => $_getN(1);
  @$pb.TagNumber(2)
  set profile($4.AccountProfile v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasProfile() => $_has(1);
  @$pb.TagNumber(2)
  void clearProfile() => clearField(2);
  @$pb.TagNumber(2)
  $4.AccountProfile ensureProfile() => $_ensure(1);

  @$pb.TagNumber(3)
  $4.ConfirmationMethod get confirmationMethod => $_getN(2);
  @$pb.TagNumber(3)
  set confirmationMethod($4.ConfirmationMethod v) {
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
            : 'ecosystemId')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'description')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'uri')
    ..hasRequiredFields = false;

  UpdateEcosystemRequest._() : super();
  factory UpdateEcosystemRequest({
    $core.String? ecosystemId,
    $core.String? description,
    $core.String? uri,
  }) {
    final _result = create();
    if (ecosystemId != null) {
      _result.ecosystemId = ecosystemId;
    }
    if (description != null) {
      _result.description = description;
    }
    if (uri != null) {
      _result.uri = uri;
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
  $core.String get ecosystemId => $_getSZ(0);
  @$pb.TagNumber(1)
  set ecosystemId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasEcosystemId() => $_has(0);
  @$pb.TagNumber(1)
  void clearEcosystemId() => clearField(1);

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
  $core.String get uri => $_getSZ(2);
  @$pb.TagNumber(3)
  set uri($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasUri() => $_has(2);
  @$pb.TagNumber(3)
  void clearUri() => clearField(3);
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

class AddWebhookRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'AddWebhookRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.provider.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'ecosystemId')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'destinationUrl')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'secret')
    ..pPS(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'events')
    ..hasRequiredFields = false;

  AddWebhookRequest._() : super();
  factory AddWebhookRequest({
    $core.String? ecosystemId,
    $core.String? destinationUrl,
    $core.String? secret,
    $core.Iterable<$core.String>? events,
  }) {
    final _result = create();
    if (ecosystemId != null) {
      _result.ecosystemId = ecosystemId;
    }
    if (destinationUrl != null) {
      _result.destinationUrl = destinationUrl;
    }
    if (secret != null) {
      _result.secret = secret;
    }
    if (events != null) {
      _result.events.addAll(events);
    }
    return _result;
  }
  factory AddWebhookRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AddWebhookRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AddWebhookRequest clone() => AddWebhookRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AddWebhookRequest copyWith(void Function(AddWebhookRequest) updates) =>
      super.copyWith((message) => updates(message as AddWebhookRequest))
          as AddWebhookRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddWebhookRequest create() => AddWebhookRequest._();
  AddWebhookRequest createEmptyInstance() => create();
  static $pb.PbList<AddWebhookRequest> createRepeated() =>
      $pb.PbList<AddWebhookRequest>();
  @$core.pragma('dart2js:noInline')
  static AddWebhookRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AddWebhookRequest>(create);
  static AddWebhookRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get ecosystemId => $_getSZ(0);
  @$pb.TagNumber(1)
  set ecosystemId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasEcosystemId() => $_has(0);
  @$pb.TagNumber(1)
  void clearEcosystemId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get destinationUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set destinationUrl($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasDestinationUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearDestinationUrl() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get secret => $_getSZ(2);
  @$pb.TagNumber(3)
  set secret($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasSecret() => $_has(2);
  @$pb.TagNumber(3)
  void clearSecret() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.String> get events => $_getList(3);
}

class AddWebhookResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'AddWebhookResponse',
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

  AddWebhookResponse._() : super();
  factory AddWebhookResponse({
    Ecosystem? ecosystem,
  }) {
    final _result = create();
    if (ecosystem != null) {
      _result.ecosystem = ecosystem;
    }
    return _result;
  }
  factory AddWebhookResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AddWebhookResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AddWebhookResponse clone() => AddWebhookResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AddWebhookResponse copyWith(void Function(AddWebhookResponse) updates) =>
      super.copyWith((message) => updates(message as AddWebhookResponse))
          as AddWebhookResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddWebhookResponse create() => AddWebhookResponse._();
  AddWebhookResponse createEmptyInstance() => create();
  static $pb.PbList<AddWebhookResponse> createRepeated() =>
      $pb.PbList<AddWebhookResponse>();
  @$core.pragma('dart2js:noInline')
  static AddWebhookResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AddWebhookResponse>(create);
  static AddWebhookResponse? _defaultInstance;

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

class DeleteWebhookRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'DeleteWebhookRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.provider.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'ecosystemId')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'webhookId')
    ..hasRequiredFields = false;

  DeleteWebhookRequest._() : super();
  factory DeleteWebhookRequest({
    $core.String? ecosystemId,
    $core.String? webhookId,
  }) {
    final _result = create();
    if (ecosystemId != null) {
      _result.ecosystemId = ecosystemId;
    }
    if (webhookId != null) {
      _result.webhookId = webhookId;
    }
    return _result;
  }
  factory DeleteWebhookRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeleteWebhookRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DeleteWebhookRequest clone() =>
      DeleteWebhookRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DeleteWebhookRequest copyWith(void Function(DeleteWebhookRequest) updates) =>
      super.copyWith((message) => updates(message as DeleteWebhookRequest))
          as DeleteWebhookRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteWebhookRequest create() => DeleteWebhookRequest._();
  DeleteWebhookRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteWebhookRequest> createRepeated() =>
      $pb.PbList<DeleteWebhookRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteWebhookRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteWebhookRequest>(create);
  static DeleteWebhookRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get ecosystemId => $_getSZ(0);
  @$pb.TagNumber(1)
  set ecosystemId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasEcosystemId() => $_has(0);
  @$pb.TagNumber(1)
  void clearEcosystemId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get webhookId => $_getSZ(1);
  @$pb.TagNumber(2)
  set webhookId($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasWebhookId() => $_has(1);
  @$pb.TagNumber(2)
  void clearWebhookId() => clearField(2);
}

class DeleteWebhookResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'DeleteWebhookResponse',
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

  DeleteWebhookResponse._() : super();
  factory DeleteWebhookResponse({
    Ecosystem? ecosystem,
  }) {
    final _result = create();
    if (ecosystem != null) {
      _result.ecosystem = ecosystem;
    }
    return _result;
  }
  factory DeleteWebhookResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeleteWebhookResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DeleteWebhookResponse clone() =>
      DeleteWebhookResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DeleteWebhookResponse copyWith(
          void Function(DeleteWebhookResponse) updates) =>
      super.copyWith((message) => updates(message as DeleteWebhookResponse))
          as DeleteWebhookResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteWebhookResponse create() => DeleteWebhookResponse._();
  DeleteWebhookResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteWebhookResponse> createRepeated() =>
      $pb.PbList<DeleteWebhookResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteWebhookResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteWebhookResponse>(create);
  static DeleteWebhookResponse? _defaultInstance;

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
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'ecosystemId')
    ..hasRequiredFields = false;

  EcosystemInfoRequest._() : super();
  factory EcosystemInfoRequest({
    $core.String? ecosystemId,
  }) {
    final _result = create();
    if (ecosystemId != null) {
      _result.ecosystemId = ecosystemId;
    }
    return _result;
  }
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

  @$pb.TagNumber(1)
  $core.String get ecosystemId => $_getSZ(0);
  @$pb.TagNumber(1)
  set ecosystemId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasEcosystemId() => $_has(0);
  @$pb.TagNumber(1)
  void clearEcosystemId() => clearField(1);
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

class GenerateTokenRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GenerateTokenRequest',
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

  GenerateTokenRequest._() : super();
  factory GenerateTokenRequest({
    $core.String? description,
  }) {
    final _result = create();
    if (description != null) {
      _result.description = description;
    }
    return _result;
  }
  factory GenerateTokenRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GenerateTokenRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GenerateTokenRequest clone() =>
      GenerateTokenRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GenerateTokenRequest copyWith(void Function(GenerateTokenRequest) updates) =>
      super.copyWith((message) => updates(message as GenerateTokenRequest))
          as GenerateTokenRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GenerateTokenRequest create() => GenerateTokenRequest._();
  GenerateTokenRequest createEmptyInstance() => create();
  static $pb.PbList<GenerateTokenRequest> createRepeated() =>
      $pb.PbList<GenerateTokenRequest>();
  @$core.pragma('dart2js:noInline')
  static GenerateTokenRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GenerateTokenRequest>(create);
  static GenerateTokenRequest? _defaultInstance;

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

class GenerateTokenResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GenerateTokenResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.provider.v1'),
      createEmptyInstance: create)
    ..aOM<$4.AccountProfile>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'profile',
        subBuilder: $4.AccountProfile.create)
    ..hasRequiredFields = false;

  GenerateTokenResponse._() : super();
  factory GenerateTokenResponse({
    $4.AccountProfile? profile,
  }) {
    final _result = create();
    if (profile != null) {
      _result.profile = profile;
    }
    return _result;
  }
  factory GenerateTokenResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GenerateTokenResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GenerateTokenResponse clone() =>
      GenerateTokenResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GenerateTokenResponse copyWith(
          void Function(GenerateTokenResponse) updates) =>
      super.copyWith((message) => updates(message as GenerateTokenResponse))
          as GenerateTokenResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GenerateTokenResponse create() => GenerateTokenResponse._();
  GenerateTokenResponse createEmptyInstance() => create();
  static $pb.PbList<GenerateTokenResponse> createRepeated() =>
      $pb.PbList<GenerateTokenResponse>();
  @$core.pragma('dart2js:noInline')
  static GenerateTokenResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GenerateTokenResponse>(create);
  static GenerateTokenResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $4.AccountProfile get profile => $_getN(0);
  @$pb.TagNumber(1)
  set profile($4.AccountProfile v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasProfile() => $_has(0);
  @$pb.TagNumber(1)
  void clearProfile() => clearField(1);
  @$pb.TagNumber(1)
  $4.AccountProfile ensureProfile() => $_ensure(0);
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

class GetEventTokenRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetEventTokenRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.provider.v1'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'pk',
        $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  GetEventTokenRequest._() : super();
  factory GetEventTokenRequest({
    $core.List<$core.int>? pk,
  }) {
    final _result = create();
    if (pk != null) {
      _result.pk = pk;
    }
    return _result;
  }
  factory GetEventTokenRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetEventTokenRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetEventTokenRequest clone() =>
      GetEventTokenRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetEventTokenRequest copyWith(void Function(GetEventTokenRequest) updates) =>
      super.copyWith((message) => updates(message as GetEventTokenRequest))
          as GetEventTokenRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetEventTokenRequest create() => GetEventTokenRequest._();
  GetEventTokenRequest createEmptyInstance() => create();
  static $pb.PbList<GetEventTokenRequest> createRepeated() =>
      $pb.PbList<GetEventTokenRequest>();
  @$core.pragma('dart2js:noInline')
  static GetEventTokenRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetEventTokenRequest>(create);
  static GetEventTokenRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get pk => $_getN(0);
  @$pb.TagNumber(1)
  set pk($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPk() => $_has(0);
  @$pb.TagNumber(1)
  void clearPk() => clearField(1);
}

class GetEventTokenResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetEventTokenResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.provider.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'token')
    ..hasRequiredFields = false;

  GetEventTokenResponse._() : super();
  factory GetEventTokenResponse({
    $core.String? token,
  }) {
    final _result = create();
    if (token != null) {
      _result.token = token;
    }
    return _result;
  }
  factory GetEventTokenResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetEventTokenResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetEventTokenResponse clone() =>
      GetEventTokenResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetEventTokenResponse copyWith(
          void Function(GetEventTokenResponse) updates) =>
      super.copyWith((message) => updates(message as GetEventTokenResponse))
          as GetEventTokenResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetEventTokenResponse create() => GetEventTokenResponse._();
  GetEventTokenResponse createEmptyInstance() => create();
  static $pb.PbList<GetEventTokenResponse> createRepeated() =>
      $pb.PbList<GetEventTokenResponse>();
  @$core.pragma('dart2js:noInline')
  static GetEventTokenResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetEventTokenResponse>(create);
  static GetEventTokenResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);
}
