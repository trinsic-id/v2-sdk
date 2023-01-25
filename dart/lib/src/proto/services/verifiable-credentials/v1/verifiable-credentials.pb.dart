///
//  Generated code. Do not modify.
//  source: services/verifiable-credentials/v1/verifiable-credentials.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class IssueRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'IssueRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.verifiablecredentials.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'documentJson')
    ..hasRequiredFields = false;

  IssueRequest._() : super();
  factory IssueRequest({
    $core.String? documentJson,
  }) {
    final _result = create();
    if (documentJson != null) {
      _result.documentJson = documentJson;
    }
    return _result;
  }
  factory IssueRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory IssueRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  IssueRequest clone() => IssueRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  IssueRequest copyWith(void Function(IssueRequest) updates) =>
      super.copyWith((message) => updates(message as IssueRequest))
          as IssueRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static IssueRequest create() => IssueRequest._();
  IssueRequest createEmptyInstance() => create();
  static $pb.PbList<IssueRequest> createRepeated() =>
      $pb.PbList<IssueRequest>();
  @$core.pragma('dart2js:noInline')
  static IssueRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<IssueRequest>(create);
  static IssueRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get documentJson => $_getSZ(0);
  @$pb.TagNumber(1)
  set documentJson($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasDocumentJson() => $_has(0);
  @$pb.TagNumber(1)
  void clearDocumentJson() => clearField(1);
}

class IssueResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'IssueResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.verifiablecredentials.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'signedDocumentJson')
    ..hasRequiredFields = false;

  IssueResponse._() : super();
  factory IssueResponse({
    $core.String? signedDocumentJson,
  }) {
    final _result = create();
    if (signedDocumentJson != null) {
      _result.signedDocumentJson = signedDocumentJson;
    }
    return _result;
  }
  factory IssueResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory IssueResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  IssueResponse clone() => IssueResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  IssueResponse copyWith(void Function(IssueResponse) updates) =>
      super.copyWith((message) => updates(message as IssueResponse))
          as IssueResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static IssueResponse create() => IssueResponse._();
  IssueResponse createEmptyInstance() => create();
  static $pb.PbList<IssueResponse> createRepeated() =>
      $pb.PbList<IssueResponse>();
  @$core.pragma('dart2js:noInline')
  static IssueResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<IssueResponse>(create);
  static IssueResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get signedDocumentJson => $_getSZ(0);
  @$pb.TagNumber(1)
  set signedDocumentJson($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSignedDocumentJson() => $_has(0);
  @$pb.TagNumber(1)
  void clearSignedDocumentJson() => clearField(1);
}

class IssueFromTemplateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'IssueFromTemplateRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.verifiablecredentials.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'templateId')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'valuesJson')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'frameworkId')
    ..hasRequiredFields = false;

  IssueFromTemplateRequest._() : super();
  factory IssueFromTemplateRequest({
    $core.String? templateId,
    $core.String? valuesJson,
    $core.String? frameworkId,
  }) {
    final _result = create();
    if (templateId != null) {
      _result.templateId = templateId;
    }
    if (valuesJson != null) {
      _result.valuesJson = valuesJson;
    }
    if (frameworkId != null) {
      _result.frameworkId = frameworkId;
    }
    return _result;
  }
  factory IssueFromTemplateRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory IssueFromTemplateRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  IssueFromTemplateRequest clone() =>
      IssueFromTemplateRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  IssueFromTemplateRequest copyWith(
          void Function(IssueFromTemplateRequest) updates) =>
      super.copyWith((message) => updates(message as IssueFromTemplateRequest))
          as IssueFromTemplateRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static IssueFromTemplateRequest create() => IssueFromTemplateRequest._();
  IssueFromTemplateRequest createEmptyInstance() => create();
  static $pb.PbList<IssueFromTemplateRequest> createRepeated() =>
      $pb.PbList<IssueFromTemplateRequest>();
  @$core.pragma('dart2js:noInline')
  static IssueFromTemplateRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<IssueFromTemplateRequest>(create);
  static IssueFromTemplateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get templateId => $_getSZ(0);
  @$pb.TagNumber(1)
  set templateId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTemplateId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTemplateId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get valuesJson => $_getSZ(1);
  @$pb.TagNumber(2)
  set valuesJson($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasValuesJson() => $_has(1);
  @$pb.TagNumber(2)
  void clearValuesJson() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get frameworkId => $_getSZ(2);
  @$pb.TagNumber(3)
  set frameworkId($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasFrameworkId() => $_has(2);
  @$pb.TagNumber(3)
  void clearFrameworkId() => clearField(3);
}

class IssueFromTemplateResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'IssueFromTemplateResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.verifiablecredentials.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'documentJson')
    ..hasRequiredFields = false;

  IssueFromTemplateResponse._() : super();
  factory IssueFromTemplateResponse({
    $core.String? documentJson,
  }) {
    final _result = create();
    if (documentJson != null) {
      _result.documentJson = documentJson;
    }
    return _result;
  }
  factory IssueFromTemplateResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory IssueFromTemplateResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  IssueFromTemplateResponse clone() =>
      IssueFromTemplateResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  IssueFromTemplateResponse copyWith(
          void Function(IssueFromTemplateResponse) updates) =>
      super.copyWith((message) => updates(message as IssueFromTemplateResponse))
          as IssueFromTemplateResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static IssueFromTemplateResponse create() => IssueFromTemplateResponse._();
  IssueFromTemplateResponse createEmptyInstance() => create();
  static $pb.PbList<IssueFromTemplateResponse> createRepeated() =>
      $pb.PbList<IssueFromTemplateResponse>();
  @$core.pragma('dart2js:noInline')
  static IssueFromTemplateResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<IssueFromTemplateResponse>(create);
  static IssueFromTemplateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get documentJson => $_getSZ(0);
  @$pb.TagNumber(1)
  set documentJson($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasDocumentJson() => $_has(0);
  @$pb.TagNumber(1)
  void clearDocumentJson() => clearField(1);
}

enum CreateProofRequest_Disclosure {
  revealDocumentJson,
  revealTemplate,
  notSet
}

enum CreateProofRequest_Proof { itemId, documentJson, notSet }

class CreateProofRequest extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, CreateProofRequest_Disclosure>
      _CreateProofRequest_DisclosureByTag = {
    1: CreateProofRequest_Disclosure.revealDocumentJson,
    11: CreateProofRequest_Disclosure.revealTemplate,
    0: CreateProofRequest_Disclosure.notSet
  };
  static const $core.Map<$core.int, CreateProofRequest_Proof>
      _CreateProofRequest_ProofByTag = {
    2: CreateProofRequest_Proof.itemId,
    3: CreateProofRequest_Proof.documentJson,
    0: CreateProofRequest_Proof.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'CreateProofRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.verifiablecredentials.v1'),
      createEmptyInstance: create)
    ..oo(0, [1, 11])
    ..oo(1, [2, 3])
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'revealDocumentJson')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'itemId')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'documentJson')
    ..a<$core.List<$core.int>>(
        10,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'nonce',
        $pb.PbFieldType.OY)
    ..aOM<RevealTemplateAttributes>(
        11,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'revealTemplate',
        subBuilder: RevealTemplateAttributes.create)
    ..hasRequiredFields = false;

  CreateProofRequest._() : super();
  factory CreateProofRequest({
    $core.String? revealDocumentJson,
    $core.String? itemId,
    $core.String? documentJson,
    $core.List<$core.int>? nonce,
    RevealTemplateAttributes? revealTemplate,
  }) {
    final _result = create();
    if (revealDocumentJson != null) {
      _result.revealDocumentJson = revealDocumentJson;
    }
    if (itemId != null) {
      _result.itemId = itemId;
    }
    if (documentJson != null) {
      _result.documentJson = documentJson;
    }
    if (nonce != null) {
      _result.nonce = nonce;
    }
    if (revealTemplate != null) {
      _result.revealTemplate = revealTemplate;
    }
    return _result;
  }
  factory CreateProofRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreateProofRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CreateProofRequest clone() => CreateProofRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CreateProofRequest copyWith(void Function(CreateProofRequest) updates) =>
      super.copyWith((message) => updates(message as CreateProofRequest))
          as CreateProofRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateProofRequest create() => CreateProofRequest._();
  CreateProofRequest createEmptyInstance() => create();
  static $pb.PbList<CreateProofRequest> createRepeated() =>
      $pb.PbList<CreateProofRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateProofRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateProofRequest>(create);
  static CreateProofRequest? _defaultInstance;

  CreateProofRequest_Disclosure whichDisclosure() =>
      _CreateProofRequest_DisclosureByTag[$_whichOneof(0)]!;
  void clearDisclosure() => clearField($_whichOneof(0));

  CreateProofRequest_Proof whichProof() =>
      _CreateProofRequest_ProofByTag[$_whichOneof(1)]!;
  void clearProof() => clearField($_whichOneof(1));

  @$pb.TagNumber(1)
  $core.String get revealDocumentJson => $_getSZ(0);
  @$pb.TagNumber(1)
  set revealDocumentJson($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasRevealDocumentJson() => $_has(0);
  @$pb.TagNumber(1)
  void clearRevealDocumentJson() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get itemId => $_getSZ(1);
  @$pb.TagNumber(2)
  set itemId($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasItemId() => $_has(1);
  @$pb.TagNumber(2)
  void clearItemId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get documentJson => $_getSZ(2);
  @$pb.TagNumber(3)
  set documentJson($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasDocumentJson() => $_has(2);
  @$pb.TagNumber(3)
  void clearDocumentJson() => clearField(3);

  @$pb.TagNumber(10)
  $core.List<$core.int> get nonce => $_getN(3);
  @$pb.TagNumber(10)
  set nonce($core.List<$core.int> v) {
    $_setBytes(3, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasNonce() => $_has(3);
  @$pb.TagNumber(10)
  void clearNonce() => clearField(10);

  @$pb.TagNumber(11)
  RevealTemplateAttributes get revealTemplate => $_getN(4);
  @$pb.TagNumber(11)
  set revealTemplate(RevealTemplateAttributes v) {
    setField(11, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasRevealTemplate() => $_has(4);
  @$pb.TagNumber(11)
  void clearRevealTemplate() => clearField(11);
  @$pb.TagNumber(11)
  RevealTemplateAttributes ensureRevealTemplate() => $_ensure(4);
}

class RevealTemplateAttributes extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'RevealTemplateAttributes',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.verifiablecredentials.v1'),
      createEmptyInstance: create)
    ..pPS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'templateAttributes')
    ..hasRequiredFields = false;

  RevealTemplateAttributes._() : super();
  factory RevealTemplateAttributes({
    $core.Iterable<$core.String>? templateAttributes,
  }) {
    final _result = create();
    if (templateAttributes != null) {
      _result.templateAttributes.addAll(templateAttributes);
    }
    return _result;
  }
  factory RevealTemplateAttributes.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RevealTemplateAttributes.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RevealTemplateAttributes clone() =>
      RevealTemplateAttributes()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RevealTemplateAttributes copyWith(
          void Function(RevealTemplateAttributes) updates) =>
      super.copyWith((message) => updates(message as RevealTemplateAttributes))
          as RevealTemplateAttributes; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RevealTemplateAttributes create() => RevealTemplateAttributes._();
  RevealTemplateAttributes createEmptyInstance() => create();
  static $pb.PbList<RevealTemplateAttributes> createRepeated() =>
      $pb.PbList<RevealTemplateAttributes>();
  @$core.pragma('dart2js:noInline')
  static RevealTemplateAttributes getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RevealTemplateAttributes>(create);
  static RevealTemplateAttributes? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get templateAttributes => $_getList(0);
}

class CreateProofResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'CreateProofResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.verifiablecredentials.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'proofDocumentJson')
    ..hasRequiredFields = false;

  CreateProofResponse._() : super();
  factory CreateProofResponse({
    $core.String? proofDocumentJson,
  }) {
    final _result = create();
    if (proofDocumentJson != null) {
      _result.proofDocumentJson = proofDocumentJson;
    }
    return _result;
  }
  factory CreateProofResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreateProofResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CreateProofResponse clone() => CreateProofResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CreateProofResponse copyWith(void Function(CreateProofResponse) updates) =>
      super.copyWith((message) => updates(message as CreateProofResponse))
          as CreateProofResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateProofResponse create() => CreateProofResponse._();
  CreateProofResponse createEmptyInstance() => create();
  static $pb.PbList<CreateProofResponse> createRepeated() =>
      $pb.PbList<CreateProofResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateProofResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateProofResponse>(create);
  static CreateProofResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get proofDocumentJson => $_getSZ(0);
  @$pb.TagNumber(1)
  set proofDocumentJson($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasProofDocumentJson() => $_has(0);
  @$pb.TagNumber(1)
  void clearProofDocumentJson() => clearField(1);
}

class VerifyProofRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'VerifyProofRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.verifiablecredentials.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'proofDocumentJson')
    ..hasRequiredFields = false;

  VerifyProofRequest._() : super();
  factory VerifyProofRequest({
    $core.String? proofDocumentJson,
  }) {
    final _result = create();
    if (proofDocumentJson != null) {
      _result.proofDocumentJson = proofDocumentJson;
    }
    return _result;
  }
  factory VerifyProofRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory VerifyProofRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  VerifyProofRequest clone() => VerifyProofRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  VerifyProofRequest copyWith(void Function(VerifyProofRequest) updates) =>
      super.copyWith((message) => updates(message as VerifyProofRequest))
          as VerifyProofRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VerifyProofRequest create() => VerifyProofRequest._();
  VerifyProofRequest createEmptyInstance() => create();
  static $pb.PbList<VerifyProofRequest> createRepeated() =>
      $pb.PbList<VerifyProofRequest>();
  @$core.pragma('dart2js:noInline')
  static VerifyProofRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VerifyProofRequest>(create);
  static VerifyProofRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get proofDocumentJson => $_getSZ(0);
  @$pb.TagNumber(1)
  set proofDocumentJson($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasProofDocumentJson() => $_has(0);
  @$pb.TagNumber(1)
  void clearProofDocumentJson() => clearField(1);
}

class VerifyProofResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'VerifyProofResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.verifiablecredentials.v1'),
      createEmptyInstance: create)
    ..aOB(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'isValid')
    ..pPS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'validationMessages')
    ..m<$core.String, ValidationMessage>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'validationResults',
        entryClassName: 'VerifyProofResponse.ValidationResultsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: ValidationMessage.create,
        packageName: const $pb.PackageName('services.verifiablecredentials.v1'))
    ..hasRequiredFields = false;

  VerifyProofResponse._() : super();
  factory VerifyProofResponse({
    $core.bool? isValid,
    @$core.Deprecated('This field is deprecated.')
        $core.Iterable<$core.String>? validationMessages,
    $core.Map<$core.String, ValidationMessage>? validationResults,
  }) {
    final _result = create();
    if (isValid != null) {
      _result.isValid = isValid;
    }
    if (validationMessages != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.validationMessages.addAll(validationMessages);
    }
    if (validationResults != null) {
      _result.validationResults.addAll(validationResults);
    }
    return _result;
  }
  factory VerifyProofResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory VerifyProofResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  VerifyProofResponse clone() => VerifyProofResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  VerifyProofResponse copyWith(void Function(VerifyProofResponse) updates) =>
      super.copyWith((message) => updates(message as VerifyProofResponse))
          as VerifyProofResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VerifyProofResponse create() => VerifyProofResponse._();
  VerifyProofResponse createEmptyInstance() => create();
  static $pb.PbList<VerifyProofResponse> createRepeated() =>
      $pb.PbList<VerifyProofResponse>();
  @$core.pragma('dart2js:noInline')
  static VerifyProofResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VerifyProofResponse>(create);
  static VerifyProofResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isValid => $_getBF(0);
  @$pb.TagNumber(1)
  set isValid($core.bool v) {
    $_setBool(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasIsValid() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsValid() => clearField(1);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  $core.List<$core.String> get validationMessages => $_getList(1);

  @$pb.TagNumber(3)
  $core.Map<$core.String, ValidationMessage> get validationResults =>
      $_getMap(2);
}

class ValidationMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ValidationMessage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.verifiablecredentials.v1'),
      createEmptyInstance: create)
    ..aOB(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'isValid')
    ..pPS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'messages')
    ..hasRequiredFields = false;

  ValidationMessage._() : super();
  factory ValidationMessage({
    $core.bool? isValid,
    $core.Iterable<$core.String>? messages,
  }) {
    final _result = create();
    if (isValid != null) {
      _result.isValid = isValid;
    }
    if (messages != null) {
      _result.messages.addAll(messages);
    }
    return _result;
  }
  factory ValidationMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ValidationMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ValidationMessage clone() => ValidationMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ValidationMessage copyWith(void Function(ValidationMessage) updates) =>
      super.copyWith((message) => updates(message as ValidationMessage))
          as ValidationMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ValidationMessage create() => ValidationMessage._();
  ValidationMessage createEmptyInstance() => create();
  static $pb.PbList<ValidationMessage> createRepeated() =>
      $pb.PbList<ValidationMessage>();
  @$core.pragma('dart2js:noInline')
  static ValidationMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ValidationMessage>(create);
  static ValidationMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isValid => $_getBF(0);
  @$pb.TagNumber(1)
  set isValid($core.bool v) {
    $_setBool(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasIsValid() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsValid() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get messages => $_getList(1);
}

enum SendRequest_DeliveryMethod { email, walletId, notSet }

class SendRequest extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, SendRequest_DeliveryMethod>
      _SendRequest_DeliveryMethodByTag = {
    1: SendRequest_DeliveryMethod.email,
    5: SendRequest_DeliveryMethod.walletId,
    0: SendRequest_DeliveryMethod.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SendRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.verifiablecredentials.v1'),
      createEmptyInstance: create)
    ..oo(0, [1, 5])
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'email')
    ..aOB(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'sendNotification')
    ..aOS(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'walletId')
    ..aOS(
        100,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'documentJson')
    ..hasRequiredFields = false;

  SendRequest._() : super();
  factory SendRequest({
    $core.String? email,
    $core.bool? sendNotification,
    $core.String? walletId,
    $core.String? documentJson,
  }) {
    final _result = create();
    if (email != null) {
      _result.email = email;
    }
    if (sendNotification != null) {
      _result.sendNotification = sendNotification;
    }
    if (walletId != null) {
      _result.walletId = walletId;
    }
    if (documentJson != null) {
      _result.documentJson = documentJson;
    }
    return _result;
  }
  factory SendRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SendRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SendRequest clone() => SendRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SendRequest copyWith(void Function(SendRequest) updates) =>
      super.copyWith((message) => updates(message as SendRequest))
          as SendRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SendRequest create() => SendRequest._();
  SendRequest createEmptyInstance() => create();
  static $pb.PbList<SendRequest> createRepeated() => $pb.PbList<SendRequest>();
  @$core.pragma('dart2js:noInline')
  static SendRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SendRequest>(create);
  static SendRequest? _defaultInstance;

  SendRequest_DeliveryMethod whichDeliveryMethod() =>
      _SendRequest_DeliveryMethodByTag[$_whichOneof(0)]!;
  void clearDeliveryMethod() => clearField($_whichOneof(0));

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

  @$pb.TagNumber(4)
  $core.bool get sendNotification => $_getBF(1);
  @$pb.TagNumber(4)
  set sendNotification($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasSendNotification() => $_has(1);
  @$pb.TagNumber(4)
  void clearSendNotification() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get walletId => $_getSZ(2);
  @$pb.TagNumber(5)
  set walletId($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasWalletId() => $_has(2);
  @$pb.TagNumber(5)
  void clearWalletId() => clearField(5);

  @$pb.TagNumber(100)
  $core.String get documentJson => $_getSZ(3);
  @$pb.TagNumber(100)
  set documentJson($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(100)
  $core.bool hasDocumentJson() => $_has(3);
  @$pb.TagNumber(100)
  void clearDocumentJson() => clearField(100);
}

class SendResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SendResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.verifiablecredentials.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  SendResponse._() : super();
  factory SendResponse() => create();
  factory SendResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SendResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SendResponse clone() => SendResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SendResponse copyWith(void Function(SendResponse) updates) =>
      super.copyWith((message) => updates(message as SendResponse))
          as SendResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SendResponse create() => SendResponse._();
  SendResponse createEmptyInstance() => create();
  static $pb.PbList<SendResponse> createRepeated() =>
      $pb.PbList<SendResponse>();
  @$core.pragma('dart2js:noInline')
  static SendResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SendResponse>(create);
  static SendResponse? _defaultInstance;
}

class UpdateStatusRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'UpdateStatusRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.verifiablecredentials.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'credentialStatusId')
    ..aOB(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'revoked')
    ..hasRequiredFields = false;

  UpdateStatusRequest._() : super();
  factory UpdateStatusRequest({
    $core.String? credentialStatusId,
    $core.bool? revoked,
  }) {
    final _result = create();
    if (credentialStatusId != null) {
      _result.credentialStatusId = credentialStatusId;
    }
    if (revoked != null) {
      _result.revoked = revoked;
    }
    return _result;
  }
  factory UpdateStatusRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UpdateStatusRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UpdateStatusRequest clone() => UpdateStatusRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UpdateStatusRequest copyWith(void Function(UpdateStatusRequest) updates) =>
      super.copyWith((message) => updates(message as UpdateStatusRequest))
          as UpdateStatusRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateStatusRequest create() => UpdateStatusRequest._();
  UpdateStatusRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateStatusRequest> createRepeated() =>
      $pb.PbList<UpdateStatusRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateStatusRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateStatusRequest>(create);
  static UpdateStatusRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get credentialStatusId => $_getSZ(0);
  @$pb.TagNumber(1)
  set credentialStatusId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCredentialStatusId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCredentialStatusId() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get revoked => $_getBF(1);
  @$pb.TagNumber(2)
  set revoked($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasRevoked() => $_has(1);
  @$pb.TagNumber(2)
  void clearRevoked() => clearField(2);
}

class UpdateStatusResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'UpdateStatusResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.verifiablecredentials.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  UpdateStatusResponse._() : super();
  factory UpdateStatusResponse() => create();
  factory UpdateStatusResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UpdateStatusResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UpdateStatusResponse clone() =>
      UpdateStatusResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UpdateStatusResponse copyWith(void Function(UpdateStatusResponse) updates) =>
      super.copyWith((message) => updates(message as UpdateStatusResponse))
          as UpdateStatusResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateStatusResponse create() => UpdateStatusResponse._();
  UpdateStatusResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateStatusResponse> createRepeated() =>
      $pb.PbList<UpdateStatusResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateStatusResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateStatusResponse>(create);
  static UpdateStatusResponse? _defaultInstance;
}

class CheckStatusRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'CheckStatusRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.verifiablecredentials.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'credentialStatusId')
    ..hasRequiredFields = false;

  CheckStatusRequest._() : super();
  factory CheckStatusRequest({
    $core.String? credentialStatusId,
  }) {
    final _result = create();
    if (credentialStatusId != null) {
      _result.credentialStatusId = credentialStatusId;
    }
    return _result;
  }
  factory CheckStatusRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CheckStatusRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CheckStatusRequest clone() => CheckStatusRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CheckStatusRequest copyWith(void Function(CheckStatusRequest) updates) =>
      super.copyWith((message) => updates(message as CheckStatusRequest))
          as CheckStatusRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CheckStatusRequest create() => CheckStatusRequest._();
  CheckStatusRequest createEmptyInstance() => create();
  static $pb.PbList<CheckStatusRequest> createRepeated() =>
      $pb.PbList<CheckStatusRequest>();
  @$core.pragma('dart2js:noInline')
  static CheckStatusRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CheckStatusRequest>(create);
  static CheckStatusRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get credentialStatusId => $_getSZ(0);
  @$pb.TagNumber(1)
  set credentialStatusId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCredentialStatusId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCredentialStatusId() => clearField(1);
}

class CheckStatusResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'CheckStatusResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'services.verifiablecredentials.v1'),
      createEmptyInstance: create)
    ..aOB(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'revoked')
    ..hasRequiredFields = false;

  CheckStatusResponse._() : super();
  factory CheckStatusResponse({
    $core.bool? revoked,
  }) {
    final _result = create();
    if (revoked != null) {
      _result.revoked = revoked;
    }
    return _result;
  }
  factory CheckStatusResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CheckStatusResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CheckStatusResponse clone() => CheckStatusResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CheckStatusResponse copyWith(void Function(CheckStatusResponse) updates) =>
      super.copyWith((message) => updates(message as CheckStatusResponse))
          as CheckStatusResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CheckStatusResponse create() => CheckStatusResponse._();
  CheckStatusResponse createEmptyInstance() => create();
  static $pb.PbList<CheckStatusResponse> createRepeated() =>
      $pb.PbList<CheckStatusResponse>();
  @$core.pragma('dart2js:noInline')
  static CheckStatusResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CheckStatusResponse>(create);
  static CheckStatusResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get revoked => $_getBF(0);
  @$pb.TagNumber(1)
  set revoked($core.bool v) {
    $_setBool(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasRevoked() => $_has(0);
  @$pb.TagNumber(1)
  void clearRevoked() => clearField(1);
}
