///
//  Generated code. Do not modify.
//  source: services/provider/v1/provider.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../account/v1/account.pb.dart' as $0;

import 'provider.pbenum.dart';
import '../../account/v1/account.pbenum.dart' as $0;
import '../../common/v1/common.pbenum.dart' as $8;

export 'provider.pbenum.dart';

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
    ..aOM<$0.AccountDetails>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'details',
        subBuilder: $0.AccountDetails.create)
    ..hasRequiredFields = false;

  InviteRequest._() : super();
  factory InviteRequest({
    ParticipantType? participant,
    $core.String? description,
    $0.AccountDetails? details,
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
  $0.AccountDetails get details => $_getN(2);
  @$pb.TagNumber(3)
  set details($0.AccountDetails v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasDetails() => $_has(2);
  @$pb.TagNumber(3)
  void clearDetails() => clearField(3);
  @$pb.TagNumber(3)
  $0.AccountDetails ensureDetails() => $_ensure(2);
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
    ..aOM<EcosystemDisplay>(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'display',
        subBuilder: EcosystemDisplay.create)
    ..aOS(
        7,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'domain')
    ..hasRequiredFields = false;

  Ecosystem._() : super();
  factory Ecosystem({
    $core.String? id,
    $core.String? name,
    $core.String? description,
    @$core.Deprecated('This field is deprecated.') $core.String? uri,
    $core.Iterable<WebhookConfig>? webhooks,
    EcosystemDisplay? display,
    $core.String? domain,
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
      // ignore: deprecated_member_use_from_same_package
      _result.uri = uri;
    }
    if (webhooks != null) {
      _result.webhooks.addAll(webhooks);
    }
    if (display != null) {
      _result.display = display;
    }
    if (domain != null) {
      _result.domain = domain;
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

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  $core.String get uri => $_getSZ(3);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  set uri($core.String v) {
    $_setString(3, v);
  }

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  $core.bool hasUri() => $_has(3);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  void clearUri() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<WebhookConfig> get webhooks => $_getList(4);

  @$pb.TagNumber(6)
  EcosystemDisplay get display => $_getN(5);
  @$pb.TagNumber(6)
  set display(EcosystemDisplay v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasDisplay() => $_has(5);
  @$pb.TagNumber(6)
  void clearDisplay() => clearField(6);
  @$pb.TagNumber(6)
  EcosystemDisplay ensureDisplay() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.String get domain => $_getSZ(6);
  @$pb.TagNumber(7)
  set domain($core.String v) {
    $_setString(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasDomain() => $_has(6);
  @$pb.TagNumber(7)
  void clearDomain() => clearField(7);
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

class Grant extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'Grant',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.provider.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'resourceId',
        protoName: 'resourceId')
    ..pPS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'actions')
    ..pc<Grant>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'childGrants',
        $pb.PbFieldType.PM,
        subBuilder: Grant.create)
    ..hasRequiredFields = false;

  Grant._() : super();
  factory Grant({
    $core.String? resourceId,
    $core.Iterable<$core.String>? actions,
    $core.Iterable<Grant>? childGrants,
  }) {
    final _result = create();
    if (resourceId != null) {
      _result.resourceId = resourceId;
    }
    if (actions != null) {
      _result.actions.addAll(actions);
    }
    if (childGrants != null) {
      _result.childGrants.addAll(childGrants);
    }
    return _result;
  }
  factory Grant.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Grant.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Grant clone() => Grant()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Grant copyWith(void Function(Grant) updates) =>
      super.copyWith((message) => updates(message as Grant))
          as Grant; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Grant create() => Grant._();
  Grant createEmptyInstance() => create();
  static $pb.PbList<Grant> createRepeated() => $pb.PbList<Grant>();
  @$core.pragma('dart2js:noInline')
  static Grant getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Grant>(create);
  static Grant? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get resourceId => $_getSZ(0);
  @$pb.TagNumber(1)
  set resourceId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasResourceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearResourceId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get actions => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<Grant> get childGrants => $_getList(2);
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
    ..aOM<$0.AccountDetails>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'details',
        subBuilder: $0.AccountDetails.create)
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
    @$core.Deprecated('This field is deprecated.') $core.String? uri,
    $0.AccountDetails? details,
    $core.String? domain,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (description != null) {
      _result.description = description;
    }
    if (uri != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.uri = uri;
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

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  $core.String get uri => $_getSZ(2);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  set uri($core.String v) {
    $_setString(2, v);
  }

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  $core.bool hasUri() => $_has(2);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  void clearUri() => clearField(3);

  @$pb.TagNumber(4)
  $0.AccountDetails get details => $_getN(3);
  @$pb.TagNumber(4)
  set details($0.AccountDetails v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasDetails() => $_has(3);
  @$pb.TagNumber(4)
  void clearDetails() => clearField(4);
  @$pb.TagNumber(4)
  $0.AccountDetails ensureDetails() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.String get domain => $_getSZ(4);
  @$pb.TagNumber(5)
  set domain($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasDomain() => $_has(4);
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
    ..aOM<$0.AccountProfile>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'profile',
        subBuilder: $0.AccountProfile.create)
    ..e<$0.ConfirmationMethod>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'confirmationMethod',
        $pb.PbFieldType.OE,
        defaultOrMaker: $0.ConfirmationMethod.None,
        valueOf: $0.ConfirmationMethod.valueOf,
        enumValues: $0.ConfirmationMethod.values)
    ..hasRequiredFields = false;

  CreateEcosystemResponse._() : super();
  factory CreateEcosystemResponse({
    Ecosystem? ecosystem,
    $0.AccountProfile? profile,
    $0.ConfirmationMethod? confirmationMethod,
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
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'uri')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'domain')
    ..aOM<EcosystemDisplayRequest>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'display',
        subBuilder: EcosystemDisplayRequest.create)
    ..hasRequiredFields = false;

  UpdateEcosystemRequest._() : super();
  factory UpdateEcosystemRequest({
    $core.String? description,
    @$core.Deprecated('This field is deprecated.') $core.String? uri,
    $core.String? domain,
    @$core.Deprecated('This field is deprecated.')
        EcosystemDisplayRequest? display,
  }) {
    final _result = create();
    if (description != null) {
      _result.description = description;
    }
    if (uri != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.uri = uri;
    }
    if (domain != null) {
      _result.domain = domain;
    }
    if (display != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.display = display;
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

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  $core.String get uri => $_getSZ(1);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  set uri($core.String v) {
    $_setString(1, v);
  }

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  $core.bool hasUri() => $_has(1);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  void clearUri() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get domain => $_getSZ(2);
  @$pb.TagNumber(3)
  set domain($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasDomain() => $_has(2);
  @$pb.TagNumber(3)
  void clearDomain() => clearField(3);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  EcosystemDisplayRequest get display => $_getN(3);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  set display(EcosystemDisplayRequest v) {
    setField(5, v);
  }

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  $core.bool hasDisplay() => $_has(3);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  void clearDisplay() => clearField(5);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  EcosystemDisplayRequest ensureDisplay() => $_ensure(3);
}

class EcosystemDisplayRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'EcosystemDisplayRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.provider.v1'),
      createEmptyInstance: create)
    ..aOM<EcosystemDisplayDetailsRequest>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'light',
        subBuilder: EcosystemDisplayDetailsRequest.create)
    ..hasRequiredFields = false;

  EcosystemDisplayRequest._() : super();
  factory EcosystemDisplayRequest({
    EcosystemDisplayDetailsRequest? light,
  }) {
    final _result = create();
    if (light != null) {
      _result.light = light;
    }
    return _result;
  }
  factory EcosystemDisplayRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory EcosystemDisplayRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  EcosystemDisplayRequest clone() =>
      EcosystemDisplayRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  EcosystemDisplayRequest copyWith(
          void Function(EcosystemDisplayRequest) updates) =>
      super.copyWith((message) => updates(message as EcosystemDisplayRequest))
          as EcosystemDisplayRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EcosystemDisplayRequest create() => EcosystemDisplayRequest._();
  EcosystemDisplayRequest createEmptyInstance() => create();
  static $pb.PbList<EcosystemDisplayRequest> createRepeated() =>
      $pb.PbList<EcosystemDisplayRequest>();
  @$core.pragma('dart2js:noInline')
  static EcosystemDisplayRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EcosystemDisplayRequest>(create);
  static EcosystemDisplayRequest? _defaultInstance;

  @$pb.TagNumber(2)
  EcosystemDisplayDetailsRequest get light => $_getN(0);
  @$pb.TagNumber(2)
  set light(EcosystemDisplayDetailsRequest v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasLight() => $_has(0);
  @$pb.TagNumber(2)
  void clearLight() => clearField(2);
  @$pb.TagNumber(2)
  EcosystemDisplayDetailsRequest ensureLight() => $_ensure(0);
}

class EcosystemDisplayDetailsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'EcosystemDisplayDetailsRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.provider.v1'),
      createEmptyInstance: create)
    ..aOS(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'color')
    ..a<$core.List<$core.int>>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'logoData',
        $pb.PbFieldType.OY)
    ..aOS(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'logoFormat')
    ..hasRequiredFields = false;

  EcosystemDisplayDetailsRequest._() : super();
  factory EcosystemDisplayDetailsRequest({
    $core.String? color,
    $core.List<$core.int>? logoData,
    $core.String? logoFormat,
  }) {
    final _result = create();
    if (color != null) {
      _result.color = color;
    }
    if (logoData != null) {
      _result.logoData = logoData;
    }
    if (logoFormat != null) {
      _result.logoFormat = logoFormat;
    }
    return _result;
  }
  factory EcosystemDisplayDetailsRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory EcosystemDisplayDetailsRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  EcosystemDisplayDetailsRequest clone() =>
      EcosystemDisplayDetailsRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  EcosystemDisplayDetailsRequest copyWith(
          void Function(EcosystemDisplayDetailsRequest) updates) =>
      super.copyWith(
              (message) => updates(message as EcosystemDisplayDetailsRequest))
          as EcosystemDisplayDetailsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EcosystemDisplayDetailsRequest create() =>
      EcosystemDisplayDetailsRequest._();
  EcosystemDisplayDetailsRequest createEmptyInstance() => create();
  static $pb.PbList<EcosystemDisplayDetailsRequest> createRepeated() =>
      $pb.PbList<EcosystemDisplayDetailsRequest>();
  @$core.pragma('dart2js:noInline')
  static EcosystemDisplayDetailsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EcosystemDisplayDetailsRequest>(create);
  static EcosystemDisplayDetailsRequest? _defaultInstance;

  @$pb.TagNumber(4)
  $core.String get color => $_getSZ(0);
  @$pb.TagNumber(4)
  set color($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasColor() => $_has(0);
  @$pb.TagNumber(4)
  void clearColor() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get logoData => $_getN(1);
  @$pb.TagNumber(5)
  set logoData($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasLogoData() => $_has(1);
  @$pb.TagNumber(5)
  void clearLogoData() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get logoFormat => $_getSZ(2);
  @$pb.TagNumber(6)
  set logoFormat($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasLogoFormat() => $_has(2);
  @$pb.TagNumber(6)
  void clearLogoFormat() => clearField(6);
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

class EcosystemDisplay extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'EcosystemDisplay',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.provider.v1'),
      createEmptyInstance: create)
    ..aOM<EcosystemDisplayDetails>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'light',
        subBuilder: EcosystemDisplayDetails.create)
    ..hasRequiredFields = false;

  EcosystemDisplay._() : super();
  factory EcosystemDisplay({
    EcosystemDisplayDetails? light,
  }) {
    final _result = create();
    if (light != null) {
      _result.light = light;
    }
    return _result;
  }
  factory EcosystemDisplay.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory EcosystemDisplay.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  EcosystemDisplay clone() => EcosystemDisplay()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  EcosystemDisplay copyWith(void Function(EcosystemDisplay) updates) =>
      super.copyWith((message) => updates(message as EcosystemDisplay))
          as EcosystemDisplay; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EcosystemDisplay create() => EcosystemDisplay._();
  EcosystemDisplay createEmptyInstance() => create();
  static $pb.PbList<EcosystemDisplay> createRepeated() =>
      $pb.PbList<EcosystemDisplay>();
  @$core.pragma('dart2js:noInline')
  static EcosystemDisplay getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EcosystemDisplay>(create);
  static EcosystemDisplay? _defaultInstance;

  @$pb.TagNumber(2)
  EcosystemDisplayDetails get light => $_getN(0);
  @$pb.TagNumber(2)
  set light(EcosystemDisplayDetails v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasLight() => $_has(0);
  @$pb.TagNumber(2)
  void clearLight() => clearField(2);
  @$pb.TagNumber(2)
  EcosystemDisplayDetails ensureLight() => $_ensure(0);
}

class EcosystemDisplayDetails extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'EcosystemDisplayDetails',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.provider.v1'),
      createEmptyInstance: create)
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'logoUrl')
    ..aOS(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'color')
    ..hasRequiredFields = false;

  EcosystemDisplayDetails._() : super();
  factory EcosystemDisplayDetails({
    $core.String? logoUrl,
    $core.String? color,
  }) {
    final _result = create();
    if (logoUrl != null) {
      _result.logoUrl = logoUrl;
    }
    if (color != null) {
      _result.color = color;
    }
    return _result;
  }
  factory EcosystemDisplayDetails.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory EcosystemDisplayDetails.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  EcosystemDisplayDetails clone() =>
      EcosystemDisplayDetails()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  EcosystemDisplayDetails copyWith(
          void Function(EcosystemDisplayDetails) updates) =>
      super.copyWith((message) => updates(message as EcosystemDisplayDetails))
          as EcosystemDisplayDetails; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EcosystemDisplayDetails create() => EcosystemDisplayDetails._();
  EcosystemDisplayDetails createEmptyInstance() => create();
  static $pb.PbList<EcosystemDisplayDetails> createRepeated() =>
      $pb.PbList<EcosystemDisplayDetails>();
  @$core.pragma('dart2js:noInline')
  static EcosystemDisplayDetails getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EcosystemDisplayDetails>(create);
  static EcosystemDisplayDetails? _defaultInstance;

  @$pb.TagNumber(3)
  $core.String get logoUrl => $_getSZ(0);
  @$pb.TagNumber(3)
  set logoUrl($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasLogoUrl() => $_has(0);
  @$pb.TagNumber(3)
  void clearLogoUrl() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get color => $_getSZ(1);
  @$pb.TagNumber(4)
  set color($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasColor() => $_has(1);
  @$pb.TagNumber(4)
  void clearColor() => clearField(4);
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
            : 'destinationUrl')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'secret')
    ..pPS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'events')
    ..hasRequiredFields = false;

  AddWebhookRequest._() : super();
  factory AddWebhookRequest({
    $core.String? destinationUrl,
    $core.String? secret,
    $core.Iterable<$core.String>? events,
  }) {
    final _result = create();
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
  $core.String get destinationUrl => $_getSZ(0);
  @$pb.TagNumber(1)
  set destinationUrl($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasDestinationUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearDestinationUrl() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get secret => $_getSZ(1);
  @$pb.TagNumber(2)
  set secret($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSecret() => $_has(1);
  @$pb.TagNumber(2)
  void clearSecret() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.String> get events => $_getList(2);
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
            : 'webhookId')
    ..hasRequiredFields = false;

  DeleteWebhookRequest._() : super();
  factory DeleteWebhookRequest({
    $core.String? webhookId,
  }) {
    final _result = create();
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
  $core.String get webhookId => $_getSZ(0);
  @$pb.TagNumber(1)
  set webhookId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasWebhookId() => $_has(0);
  @$pb.TagNumber(1)
  void clearWebhookId() => clearField(1);
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

class GetPublicEcosystemInfoRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetPublicEcosystemInfoRequest',
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

  GetPublicEcosystemInfoRequest._() : super();
  factory GetPublicEcosystemInfoRequest({
    $core.String? ecosystemId,
  }) {
    final _result = create();
    if (ecosystemId != null) {
      _result.ecosystemId = ecosystemId;
    }
    return _result;
  }
  factory GetPublicEcosystemInfoRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetPublicEcosystemInfoRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetPublicEcosystemInfoRequest clone() =>
      GetPublicEcosystemInfoRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetPublicEcosystemInfoRequest copyWith(
          void Function(GetPublicEcosystemInfoRequest) updates) =>
      super.copyWith(
              (message) => updates(message as GetPublicEcosystemInfoRequest))
          as GetPublicEcosystemInfoRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetPublicEcosystemInfoRequest create() =>
      GetPublicEcosystemInfoRequest._();
  GetPublicEcosystemInfoRequest createEmptyInstance() => create();
  static $pb.PbList<GetPublicEcosystemInfoRequest> createRepeated() =>
      $pb.PbList<GetPublicEcosystemInfoRequest>();
  @$core.pragma('dart2js:noInline')
  static GetPublicEcosystemInfoRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetPublicEcosystemInfoRequest>(create);
  static GetPublicEcosystemInfoRequest? _defaultInstance;

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

class GetPublicEcosystemInfoResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetPublicEcosystemInfoResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.provider.v1'),
      createEmptyInstance: create)
    ..aOM<PublicEcosystemInformation>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'ecosystem',
        subBuilder: PublicEcosystemInformation.create)
    ..hasRequiredFields = false;

  GetPublicEcosystemInfoResponse._() : super();
  factory GetPublicEcosystemInfoResponse({
    PublicEcosystemInformation? ecosystem,
  }) {
    final _result = create();
    if (ecosystem != null) {
      _result.ecosystem = ecosystem;
    }
    return _result;
  }
  factory GetPublicEcosystemInfoResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetPublicEcosystemInfoResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetPublicEcosystemInfoResponse clone() =>
      GetPublicEcosystemInfoResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetPublicEcosystemInfoResponse copyWith(
          void Function(GetPublicEcosystemInfoResponse) updates) =>
      super.copyWith(
              (message) => updates(message as GetPublicEcosystemInfoResponse))
          as GetPublicEcosystemInfoResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetPublicEcosystemInfoResponse create() =>
      GetPublicEcosystemInfoResponse._();
  GetPublicEcosystemInfoResponse createEmptyInstance() => create();
  static $pb.PbList<GetPublicEcosystemInfoResponse> createRepeated() =>
      $pb.PbList<GetPublicEcosystemInfoResponse>();
  @$core.pragma('dart2js:noInline')
  static GetPublicEcosystemInfoResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetPublicEcosystemInfoResponse>(create);
  static GetPublicEcosystemInfoResponse? _defaultInstance;

  @$pb.TagNumber(1)
  PublicEcosystemInformation get ecosystem => $_getN(0);
  @$pb.TagNumber(1)
  set ecosystem(PublicEcosystemInformation v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasEcosystem() => $_has(0);
  @$pb.TagNumber(1)
  void clearEcosystem() => clearField(1);
  @$pb.TagNumber(1)
  PublicEcosystemInformation ensureEcosystem() => $_ensure(0);
}

class PublicEcosystemInformation extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'PublicEcosystemInformation',
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
            : 'domain')
    ..aOB(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'domainVerified')
    ..aOM<EcosystemDisplay>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'styleDisplay',
        subBuilder: EcosystemDisplay.create)
    ..aOS(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'description')
    ..hasRequiredFields = false;

  PublicEcosystemInformation._() : super();
  factory PublicEcosystemInformation({
    $core.String? name,
    $core.String? domain,
    $core.bool? domainVerified,
    EcosystemDisplay? styleDisplay,
    $core.String? description,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (domain != null) {
      _result.domain = domain;
    }
    if (domainVerified != null) {
      _result.domainVerified = domainVerified;
    }
    if (styleDisplay != null) {
      _result.styleDisplay = styleDisplay;
    }
    if (description != null) {
      _result.description = description;
    }
    return _result;
  }
  factory PublicEcosystemInformation.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PublicEcosystemInformation.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PublicEcosystemInformation clone() =>
      PublicEcosystemInformation()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PublicEcosystemInformation copyWith(
          void Function(PublicEcosystemInformation) updates) =>
      super.copyWith(
              (message) => updates(message as PublicEcosystemInformation))
          as PublicEcosystemInformation; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PublicEcosystemInformation create() => PublicEcosystemInformation._();
  PublicEcosystemInformation createEmptyInstance() => create();
  static $pb.PbList<PublicEcosystemInformation> createRepeated() =>
      $pb.PbList<PublicEcosystemInformation>();
  @$core.pragma('dart2js:noInline')
  static PublicEcosystemInformation getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PublicEcosystemInformation>(create);
  static PublicEcosystemInformation? _defaultInstance;

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
  $core.String get domain => $_getSZ(1);
  @$pb.TagNumber(2)
  set domain($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasDomain() => $_has(1);
  @$pb.TagNumber(2)
  void clearDomain() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get domainVerified => $_getBF(2);
  @$pb.TagNumber(3)
  set domainVerified($core.bool v) {
    $_setBool(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasDomainVerified() => $_has(2);
  @$pb.TagNumber(3)
  void clearDomainVerified() => clearField(3);

  @$pb.TagNumber(4)
  EcosystemDisplay get styleDisplay => $_getN(3);
  @$pb.TagNumber(4)
  set styleDisplay(EcosystemDisplay v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasStyleDisplay() => $_has(3);
  @$pb.TagNumber(4)
  void clearStyleDisplay() => clearField(4);
  @$pb.TagNumber(4)
  EcosystemDisplay ensureStyleDisplay() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.String get description => $_getSZ(4);
  @$pb.TagNumber(5)
  set description($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasDescription() => $_has(4);
  @$pb.TagNumber(5)
  void clearDescription() => clearField(5);
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
            : 'verificationRecordValue',
        protoName: 'verification_record_Value')
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
            : 'hasMore')
    ..aOS(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'continuationToken')
    ..hasRequiredFields = false;

  SearchWalletConfigurationResponse._() : super();
  factory SearchWalletConfigurationResponse({
    $core.Iterable<WalletConfiguration>? results,
    $core.bool? hasMore,
    $core.String? continuationToken,
  }) {
    final _result = create();
    if (results != null) {
      _result.results.addAll(results);
    }
    if (hasMore != null) {
      _result.hasMore = hasMore;
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
  $core.bool get hasMore => $_getBF(1);
  @$pb.TagNumber(2)
  set hasMore($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasHasMore() => $_has(1);
  @$pb.TagNumber(2)
  void clearHasMore() => clearField(2);

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
    ..hasRequiredFields = false;

  WalletConfiguration._() : super();
  factory WalletConfiguration({
    $core.String? name,
    $core.String? email,
    $core.String? sms,
    $core.String? walletId,
    $core.String? publicDid,
    $core.String? configType,
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
