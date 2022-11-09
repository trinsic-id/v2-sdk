///
//  Generated code. Do not modify.
//  source: services/provider/v1/access-management.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

enum AddRoleAssignmentRequest_Account { email, walletId, notSet }

class AddRoleAssignmentRequest extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, AddRoleAssignmentRequest_Account>
      _AddRoleAssignmentRequest_AccountByTag = {
    2: AddRoleAssignmentRequest_Account.email,
    3: AddRoleAssignmentRequest_Account.walletId,
    0: AddRoleAssignmentRequest_Account.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'AddRoleAssignmentRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.provider.v1'),
      createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'role')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'email')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'walletId')
    ..hasRequiredFields = false;

  AddRoleAssignmentRequest._() : super();
  factory AddRoleAssignmentRequest({
    $core.String? role,
    $core.String? email,
    $core.String? walletId,
  }) {
    final _result = create();
    if (role != null) {
      _result.role = role;
    }
    if (email != null) {
      _result.email = email;
    }
    if (walletId != null) {
      _result.walletId = walletId;
    }
    return _result;
  }
  factory AddRoleAssignmentRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AddRoleAssignmentRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AddRoleAssignmentRequest clone() =>
      AddRoleAssignmentRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AddRoleAssignmentRequest copyWith(
          void Function(AddRoleAssignmentRequest) updates) =>
      super.copyWith((message) => updates(message as AddRoleAssignmentRequest))
          as AddRoleAssignmentRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddRoleAssignmentRequest create() => AddRoleAssignmentRequest._();
  AddRoleAssignmentRequest createEmptyInstance() => create();
  static $pb.PbList<AddRoleAssignmentRequest> createRepeated() =>
      $pb.PbList<AddRoleAssignmentRequest>();
  @$core.pragma('dart2js:noInline')
  static AddRoleAssignmentRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AddRoleAssignmentRequest>(create);
  static AddRoleAssignmentRequest? _defaultInstance;

  AddRoleAssignmentRequest_Account whichAccount() =>
      _AddRoleAssignmentRequest_AccountByTag[$_whichOneof(0)]!;
  void clearAccount() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get role => $_getSZ(0);
  @$pb.TagNumber(1)
  set role($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasRole() => $_has(0);
  @$pb.TagNumber(1)
  void clearRole() => clearField(1);

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
  $core.String get walletId => $_getSZ(2);
  @$pb.TagNumber(3)
  set walletId($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasWalletId() => $_has(2);
  @$pb.TagNumber(3)
  void clearWalletId() => clearField(3);
}

class AddRoleAssignmentResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'AddRoleAssignmentResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.provider.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  AddRoleAssignmentResponse._() : super();
  factory AddRoleAssignmentResponse() => create();
  factory AddRoleAssignmentResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AddRoleAssignmentResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AddRoleAssignmentResponse clone() =>
      AddRoleAssignmentResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AddRoleAssignmentResponse copyWith(
          void Function(AddRoleAssignmentResponse) updates) =>
      super.copyWith((message) => updates(message as AddRoleAssignmentResponse))
          as AddRoleAssignmentResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddRoleAssignmentResponse create() => AddRoleAssignmentResponse._();
  AddRoleAssignmentResponse createEmptyInstance() => create();
  static $pb.PbList<AddRoleAssignmentResponse> createRepeated() =>
      $pb.PbList<AddRoleAssignmentResponse>();
  @$core.pragma('dart2js:noInline')
  static AddRoleAssignmentResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AddRoleAssignmentResponse>(create);
  static AddRoleAssignmentResponse? _defaultInstance;
}

enum RemoveRoleAssignmentRequest_Account { email, walletId, notSet }

class RemoveRoleAssignmentRequest extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, RemoveRoleAssignmentRequest_Account>
      _RemoveRoleAssignmentRequest_AccountByTag = {
    2: RemoveRoleAssignmentRequest_Account.email,
    3: RemoveRoleAssignmentRequest_Account.walletId,
    0: RemoveRoleAssignmentRequest_Account.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'RemoveRoleAssignmentRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.provider.v1'),
      createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'role')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'email')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'walletId')
    ..hasRequiredFields = false;

  RemoveRoleAssignmentRequest._() : super();
  factory RemoveRoleAssignmentRequest({
    $core.String? role,
    $core.String? email,
    $core.String? walletId,
  }) {
    final _result = create();
    if (role != null) {
      _result.role = role;
    }
    if (email != null) {
      _result.email = email;
    }
    if (walletId != null) {
      _result.walletId = walletId;
    }
    return _result;
  }
  factory RemoveRoleAssignmentRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RemoveRoleAssignmentRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RemoveRoleAssignmentRequest clone() =>
      RemoveRoleAssignmentRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RemoveRoleAssignmentRequest copyWith(
          void Function(RemoveRoleAssignmentRequest) updates) =>
      super.copyWith(
              (message) => updates(message as RemoveRoleAssignmentRequest))
          as RemoveRoleAssignmentRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RemoveRoleAssignmentRequest create() =>
      RemoveRoleAssignmentRequest._();
  RemoveRoleAssignmentRequest createEmptyInstance() => create();
  static $pb.PbList<RemoveRoleAssignmentRequest> createRepeated() =>
      $pb.PbList<RemoveRoleAssignmentRequest>();
  @$core.pragma('dart2js:noInline')
  static RemoveRoleAssignmentRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RemoveRoleAssignmentRequest>(create);
  static RemoveRoleAssignmentRequest? _defaultInstance;

  RemoveRoleAssignmentRequest_Account whichAccount() =>
      _RemoveRoleAssignmentRequest_AccountByTag[$_whichOneof(0)]!;
  void clearAccount() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get role => $_getSZ(0);
  @$pb.TagNumber(1)
  set role($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasRole() => $_has(0);
  @$pb.TagNumber(1)
  void clearRole() => clearField(1);

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
  $core.String get walletId => $_getSZ(2);
  @$pb.TagNumber(3)
  set walletId($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasWalletId() => $_has(2);
  @$pb.TagNumber(3)
  void clearWalletId() => clearField(3);
}

class RemoveRoleAssignmentResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'RemoveRoleAssignmentResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.provider.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  RemoveRoleAssignmentResponse._() : super();
  factory RemoveRoleAssignmentResponse() => create();
  factory RemoveRoleAssignmentResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RemoveRoleAssignmentResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RemoveRoleAssignmentResponse clone() =>
      RemoveRoleAssignmentResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RemoveRoleAssignmentResponse copyWith(
          void Function(RemoveRoleAssignmentResponse) updates) =>
      super.copyWith(
              (message) => updates(message as RemoveRoleAssignmentResponse))
          as RemoveRoleAssignmentResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RemoveRoleAssignmentResponse create() =>
      RemoveRoleAssignmentResponse._();
  RemoveRoleAssignmentResponse createEmptyInstance() => create();
  static $pb.PbList<RemoveRoleAssignmentResponse> createRepeated() =>
      $pb.PbList<RemoveRoleAssignmentResponse>();
  @$core.pragma('dart2js:noInline')
  static RemoveRoleAssignmentResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RemoveRoleAssignmentResponse>(create);
  static RemoveRoleAssignmentResponse? _defaultInstance;
}

enum ListRoleAssignmentsRequest_Account { email, walletId, notSet }

class ListRoleAssignmentsRequest extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, ListRoleAssignmentsRequest_Account>
      _ListRoleAssignmentsRequest_AccountByTag = {
    2: ListRoleAssignmentsRequest_Account.email,
    3: ListRoleAssignmentsRequest_Account.walletId,
    0: ListRoleAssignmentsRequest_Account.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ListRoleAssignmentsRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.provider.v1'),
      createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'email')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'walletId')
    ..hasRequiredFields = false;

  ListRoleAssignmentsRequest._() : super();
  factory ListRoleAssignmentsRequest({
    $core.String? email,
    $core.String? walletId,
  }) {
    final _result = create();
    if (email != null) {
      _result.email = email;
    }
    if (walletId != null) {
      _result.walletId = walletId;
    }
    return _result;
  }
  factory ListRoleAssignmentsRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListRoleAssignmentsRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListRoleAssignmentsRequest clone() =>
      ListRoleAssignmentsRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListRoleAssignmentsRequest copyWith(
          void Function(ListRoleAssignmentsRequest) updates) =>
      super.copyWith(
              (message) => updates(message as ListRoleAssignmentsRequest))
          as ListRoleAssignmentsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListRoleAssignmentsRequest create() => ListRoleAssignmentsRequest._();
  ListRoleAssignmentsRequest createEmptyInstance() => create();
  static $pb.PbList<ListRoleAssignmentsRequest> createRepeated() =>
      $pb.PbList<ListRoleAssignmentsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListRoleAssignmentsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListRoleAssignmentsRequest>(create);
  static ListRoleAssignmentsRequest? _defaultInstance;

  ListRoleAssignmentsRequest_Account whichAccount() =>
      _ListRoleAssignmentsRequest_AccountByTag[$_whichOneof(0)]!;
  void clearAccount() => clearField($_whichOneof(0));

  @$pb.TagNumber(2)
  $core.String get email => $_getSZ(0);
  @$pb.TagNumber(2)
  set email($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasEmail() => $_has(0);
  @$pb.TagNumber(2)
  void clearEmail() => clearField(2);

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
}

class ListRoleAssignmentsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ListRoleAssignmentsResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.provider.v1'),
      createEmptyInstance: create)
    ..pPS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'roles')
    ..hasRequiredFields = false;

  ListRoleAssignmentsResponse._() : super();
  factory ListRoleAssignmentsResponse({
    $core.Iterable<$core.String>? roles,
  }) {
    final _result = create();
    if (roles != null) {
      _result.roles.addAll(roles);
    }
    return _result;
  }
  factory ListRoleAssignmentsResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListRoleAssignmentsResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListRoleAssignmentsResponse clone() =>
      ListRoleAssignmentsResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListRoleAssignmentsResponse copyWith(
          void Function(ListRoleAssignmentsResponse) updates) =>
      super.copyWith(
              (message) => updates(message as ListRoleAssignmentsResponse))
          as ListRoleAssignmentsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListRoleAssignmentsResponse create() =>
      ListRoleAssignmentsResponse._();
  ListRoleAssignmentsResponse createEmptyInstance() => create();
  static $pb.PbList<ListRoleAssignmentsResponse> createRepeated() =>
      $pb.PbList<ListRoleAssignmentsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListRoleAssignmentsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListRoleAssignmentsResponse>(create);
  static ListRoleAssignmentsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get roles => $_getList(0);
}

class ListAvailableRolesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ListAvailableRolesRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.provider.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  ListAvailableRolesRequest._() : super();
  factory ListAvailableRolesRequest() => create();
  factory ListAvailableRolesRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListAvailableRolesRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListAvailableRolesRequest clone() =>
      ListAvailableRolesRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListAvailableRolesRequest copyWith(
          void Function(ListAvailableRolesRequest) updates) =>
      super.copyWith((message) => updates(message as ListAvailableRolesRequest))
          as ListAvailableRolesRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListAvailableRolesRequest create() => ListAvailableRolesRequest._();
  ListAvailableRolesRequest createEmptyInstance() => create();
  static $pb.PbList<ListAvailableRolesRequest> createRepeated() =>
      $pb.PbList<ListAvailableRolesRequest>();
  @$core.pragma('dart2js:noInline')
  static ListAvailableRolesRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListAvailableRolesRequest>(create);
  static ListAvailableRolesRequest? _defaultInstance;
}

class ListAvailableRolesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ListAvailableRolesResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.provider.v1'),
      createEmptyInstance: create)
    ..pPS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'roles')
    ..hasRequiredFields = false;

  ListAvailableRolesResponse._() : super();
  factory ListAvailableRolesResponse({
    $core.Iterable<$core.String>? roles,
  }) {
    final _result = create();
    if (roles != null) {
      _result.roles.addAll(roles);
    }
    return _result;
  }
  factory ListAvailableRolesResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListAvailableRolesResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListAvailableRolesResponse clone() =>
      ListAvailableRolesResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListAvailableRolesResponse copyWith(
          void Function(ListAvailableRolesResponse) updates) =>
      super.copyWith(
              (message) => updates(message as ListAvailableRolesResponse))
          as ListAvailableRolesResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListAvailableRolesResponse create() => ListAvailableRolesResponse._();
  ListAvailableRolesResponse createEmptyInstance() => create();
  static $pb.PbList<ListAvailableRolesResponse> createRepeated() =>
      $pb.PbList<ListAvailableRolesResponse>();
  @$core.pragma('dart2js:noInline')
  static ListAvailableRolesResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListAvailableRolesResponse>(create);
  static ListAvailableRolesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get roles => $_getList(0);
}
