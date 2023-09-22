//
//  Generated code. Do not modify.
//  source: services/verifiable-credentials/v1/verifiable-credentials.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'verifiable-credentials.pbenum.dart';

export 'verifiable-credentials.pbenum.dart';

/// Request to create and sign a JSON-LD Verifiable Credential from a template using public key tied to caller
class IssueFromTemplateRequest extends $pb.GeneratedMessage {
  factory IssueFromTemplateRequest({
    $core.String? templateId,
    $core.String? valuesJson,
    $core.bool? saveCopy,
    $core.String? expirationDate,
    $core.bool? includeGovernance,
    SignatureType? signatureType,
  }) {
    final $result = create();
    if (templateId != null) {
      $result.templateId = templateId;
    }
    if (valuesJson != null) {
      $result.valuesJson = valuesJson;
    }
    if (saveCopy != null) {
      $result.saveCopy = saveCopy;
    }
    if (expirationDate != null) {
      $result.expirationDate = expirationDate;
    }
    if (includeGovernance != null) {
      $result.includeGovernance = includeGovernance;
    }
    if (signatureType != null) {
      $result.signatureType = signatureType;
    }
    return $result;
  }
  IssueFromTemplateRequest._() : super();
  factory IssueFromTemplateRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory IssueFromTemplateRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'IssueFromTemplateRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.verifiablecredentials.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'templateId')
    ..aOS(2, _omitFieldNames ? '' : 'valuesJson')
    ..aOB(4, _omitFieldNames ? '' : 'saveCopy')
    ..aOS(5, _omitFieldNames ? '' : 'expirationDate')
    ..aOB(6, _omitFieldNames ? '' : 'includeGovernance')
    ..e<SignatureType>(
        7, _omitFieldNames ? '' : 'signatureType', $pb.PbFieldType.OE,
        defaultOrMaker: SignatureType.UNSPECIFIED,
        valueOf: SignatureType.valueOf,
        enumValues: SignatureType.values)
    ..hasRequiredFields = false;

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
          as IssueFromTemplateRequest;

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

  /// ID of template to use
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

  /// JSON document string with keys corresponding to the fields of
  /// the template referenced by `template_id`
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

  /// Save a copy of the issued credential to this user's wallet. This copy will only contain
  /// the credential data, but not the secret proof value. Issuers may use this data to
  /// keep track of the details for revocation status.
  @$pb.TagNumber(4)
  $core.bool get saveCopy => $_getBF(2);
  @$pb.TagNumber(4)
  set saveCopy($core.bool v) {
    $_setBool(2, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasSaveCopy() => $_has(2);
  @$pb.TagNumber(4)
  void clearSaveCopy() => clearField(4);

  /// The ISO8601 expiration UTC date of the credential. This is a reserved field in the VC specification.
  /// If specified, the issued credential will contain an expiration date.
  /// https://www.w3.org/TR/vc-data-model/#expiration
  @$pb.TagNumber(5)
  $core.String get expirationDate => $_getSZ(3);
  @$pb.TagNumber(5)
  set expirationDate($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasExpirationDate() => $_has(3);
  @$pb.TagNumber(5)
  void clearExpirationDate() => clearField(5);

  /// If true, the issued credential will contain an attestation of the issuer's membership in the ecosystem's
  /// Trust Registry.
  @$pb.TagNumber(6)
  $core.bool get includeGovernance => $_getBF(4);
  @$pb.TagNumber(6)
  set includeGovernance($core.bool v) {
    $_setBool(4, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasIncludeGovernance() => $_has(4);
  @$pb.TagNumber(6)
  void clearIncludeGovernance() => clearField(6);

  /// The type of signature to use when signing the credential. Defaults to `EXPERIMENTAL`.
  @$pb.TagNumber(7)
  SignatureType get signatureType => $_getN(5);
  @$pb.TagNumber(7)
  set signatureType(SignatureType v) {
    setField(7, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasSignatureType() => $_has(5);
  @$pb.TagNumber(7)
  void clearSignatureType() => clearField(7);
}

/// Response to `IssueFromTemplateRequest`
class IssueFromTemplateResponse extends $pb.GeneratedMessage {
  factory IssueFromTemplateResponse({
    $core.String? documentJson,
  }) {
    final $result = create();
    if (documentJson != null) {
      $result.documentJson = documentJson;
    }
    return $result;
  }
  IssueFromTemplateResponse._() : super();
  factory IssueFromTemplateResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory IssueFromTemplateResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'IssueFromTemplateResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.verifiablecredentials.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'documentJson')
    ..hasRequiredFields = false;

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
          as IssueFromTemplateResponse;

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

  /// Verifiable Credential document, in JSON-LD form,
  /// constructed from the specified template and values; signed
  /// with public key tied to caller of `IssueFromTemplateRequest`
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
  verificationTemplateId,
  notSet
}

enum CreateProofRequest_Proof { itemId, documentJson, notSet }

/// Request to create a proof for a Verifiable Credential using public key tied to caller.
/// Either `item_id`, or `document_json` may be provided, not both.
class CreateProofRequest extends $pb.GeneratedMessage {
  factory CreateProofRequest({
    $core.String? revealDocumentJson,
    $core.String? itemId,
    $core.String? documentJson,
    $core.bool? useVerifiablePresentation,
    $core.List<$core.int>? nonce,
    RevealTemplateAttributes? revealTemplate,
    $core.String? verificationTemplateId,
  }) {
    final $result = create();
    if (revealDocumentJson != null) {
      $result.revealDocumentJson = revealDocumentJson;
    }
    if (itemId != null) {
      $result.itemId = itemId;
    }
    if (documentJson != null) {
      $result.documentJson = documentJson;
    }
    if (useVerifiablePresentation != null) {
      $result.useVerifiablePresentation = useVerifiablePresentation;
    }
    if (nonce != null) {
      $result.nonce = nonce;
    }
    if (revealTemplate != null) {
      $result.revealTemplate = revealTemplate;
    }
    if (verificationTemplateId != null) {
      $result.verificationTemplateId = verificationTemplateId;
    }
    return $result;
  }
  CreateProofRequest._() : super();
  factory CreateProofRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreateProofRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, CreateProofRequest_Disclosure>
      _CreateProofRequest_DisclosureByTag = {
    1: CreateProofRequest_Disclosure.revealDocumentJson,
    11: CreateProofRequest_Disclosure.revealTemplate,
    12: CreateProofRequest_Disclosure.verificationTemplateId,
    0: CreateProofRequest_Disclosure.notSet
  };
  static const $core.Map<$core.int, CreateProofRequest_Proof>
      _CreateProofRequest_ProofByTag = {
    2: CreateProofRequest_Proof.itemId,
    3: CreateProofRequest_Proof.documentJson,
    0: CreateProofRequest_Proof.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateProofRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.verifiablecredentials.v1'),
      createEmptyInstance: create)
    ..oo(0, [1, 11, 12])
    ..oo(1, [2, 3])
    ..aOS(1, _omitFieldNames ? '' : 'revealDocumentJson')
    ..aOS(2, _omitFieldNames ? '' : 'itemId')
    ..aOS(3, _omitFieldNames ? '' : 'documentJson')
    ..aOB(4, _omitFieldNames ? '' : 'useVerifiablePresentation')
    ..a<$core.List<$core.int>>(
        10, _omitFieldNames ? '' : 'nonce', $pb.PbFieldType.OY)
    ..aOM<RevealTemplateAttributes>(11, _omitFieldNames ? '' : 'revealTemplate',
        subBuilder: RevealTemplateAttributes.create)
    ..aOS(12, _omitFieldNames ? '' : 'verificationTemplateId')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CreateProofRequest clone() => CreateProofRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CreateProofRequest copyWith(void Function(CreateProofRequest) updates) =>
      super.copyWith((message) => updates(message as CreateProofRequest))
          as CreateProofRequest;

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

  /// A valid JSON-LD frame describing which fields should be
  /// revealed in the generated proof.
  /// If unspecified, all fields in the document will be revealed
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

  /// ID of wallet item stored in a Trinsic cloud wallet
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

  /// A valid JSON-LD Verifiable Credential document string
  /// with an unbound signature. The proof will be derived from this
  /// document directly. The document will not be stored in the wallet.
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

  /// Wrap the output in a verifiable presentation.
  /// If the credential used in the proof is bound to the holder DID,
  /// the output will always use a verifiable presentation and this field will be ignored.
  @$pb.TagNumber(4)
  $core.bool get useVerifiablePresentation => $_getBF(3);
  @$pb.TagNumber(4)
  set useVerifiablePresentation($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasUseVerifiablePresentation() => $_has(3);
  @$pb.TagNumber(4)
  void clearUseVerifiablePresentation() => clearField(4);

  /// Nonce value used to derive the proof. If not specified, a random nonce will be generated.
  /// This value may be represented in base64 format in the proof model.
  @$pb.TagNumber(10)
  $core.List<$core.int> get nonce => $_getN(4);
  @$pb.TagNumber(10)
  set nonce($core.List<$core.int> v) {
    $_setBytes(4, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasNonce() => $_has(4);
  @$pb.TagNumber(10)
  void clearNonce() => clearField(10);

  /// Information about what sections of the document to reveal
  @$pb.TagNumber(11)
  RevealTemplateAttributes get revealTemplate => $_getN(5);
  @$pb.TagNumber(11)
  set revealTemplate(RevealTemplateAttributes v) {
    setField(11, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasRevealTemplate() => $_has(5);
  @$pb.TagNumber(11)
  void clearRevealTemplate() => clearField(11);
  @$pb.TagNumber(11)
  RevealTemplateAttributes ensureRevealTemplate() => $_ensure(5);

  /// Id of verification template with which to construct the JSON-LD proof document
  @$pb.TagNumber(12)
  $core.String get verificationTemplateId => $_getSZ(6);
  @$pb.TagNumber(12)
  set verificationTemplateId($core.String v) {
    $_setString(6, v);
  }

  @$pb.TagNumber(12)
  $core.bool hasVerificationTemplateId() => $_has(6);
  @$pb.TagNumber(12)
  void clearVerificationTemplateId() => clearField(12);
}

class RevealTemplateAttributes extends $pb.GeneratedMessage {
  factory RevealTemplateAttributes({
    $core.Iterable<$core.String>? templateAttributes,
  }) {
    final $result = create();
    if (templateAttributes != null) {
      $result.templateAttributes.addAll(templateAttributes);
    }
    return $result;
  }
  RevealTemplateAttributes._() : super();
  factory RevealTemplateAttributes.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RevealTemplateAttributes.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RevealTemplateAttributes',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.verifiablecredentials.v1'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'templateAttributes')
    ..hasRequiredFields = false;

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
          as RevealTemplateAttributes;

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

  /// A list of document attributes to reveal. If unset, all attributes will be returned.
  @$pb.TagNumber(1)
  $core.List<$core.String> get templateAttributes => $_getList(0);
}

/// Response to `CreateProofRequest`
class CreateProofResponse extends $pb.GeneratedMessage {
  factory CreateProofResponse({
    $core.String? proofDocumentJson,
  }) {
    final $result = create();
    if (proofDocumentJson != null) {
      $result.proofDocumentJson = proofDocumentJson;
    }
    return $result;
  }
  CreateProofResponse._() : super();
  factory CreateProofResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreateProofResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateProofResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.verifiablecredentials.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'proofDocumentJson')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CreateProofResponse clone() => CreateProofResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CreateProofResponse copyWith(void Function(CreateProofResponse) updates) =>
      super.copyWith((message) => updates(message as CreateProofResponse))
          as CreateProofResponse;

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

  /// Valid JSON-LD proof for the specified credential
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

/// Request to verify a proof
class VerifyProofRequest extends $pb.GeneratedMessage {
  factory VerifyProofRequest({
    $core.String? proofDocumentJson,
  }) {
    final $result = create();
    if (proofDocumentJson != null) {
      $result.proofDocumentJson = proofDocumentJson;
    }
    return $result;
  }
  VerifyProofRequest._() : super();
  factory VerifyProofRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory VerifyProofRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VerifyProofRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.verifiablecredentials.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'proofDocumentJson')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  VerifyProofRequest clone() => VerifyProofRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  VerifyProofRequest copyWith(void Function(VerifyProofRequest) updates) =>
      super.copyWith((message) => updates(message as VerifyProofRequest))
          as VerifyProofRequest;

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

  /// JSON-LD proof document string to verify
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

/// Response to `VerifyProofRequest`
class VerifyProofResponse extends $pb.GeneratedMessage {
  factory VerifyProofResponse({
    $core.bool? isValid,
    $core.Map<$core.String, ValidationMessage>? validationResults,
  }) {
    final $result = create();
    if (isValid != null) {
      $result.isValid = isValid;
    }
    if (validationResults != null) {
      $result.validationResults.addAll(validationResults);
    }
    return $result;
  }
  VerifyProofResponse._() : super();
  factory VerifyProofResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory VerifyProofResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VerifyProofResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.verifiablecredentials.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'isValid')
    ..m<$core.String, ValidationMessage>(
        3, _omitFieldNames ? '' : 'validationResults',
        entryClassName: 'VerifyProofResponse.ValidationResultsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: ValidationMessage.create,
        valueDefaultOrMaker: ValidationMessage.getDefault,
        packageName: const $pb.PackageName('services.verifiablecredentials.v1'))
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  VerifyProofResponse clone() => VerifyProofResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  VerifyProofResponse copyWith(void Function(VerifyProofResponse) updates) =>
      super.copyWith((message) => updates(message as VerifyProofResponse))
          as VerifyProofResponse;

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

  /// Whether all validations in `validation_results` passed
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

  /// Results of each validation check performed,
  /// such as schema conformance, revocation status, signature, etc.
  /// Detailed results are provided for failed validations.
  @$pb.TagNumber(3)
  $core.Map<$core.String, ValidationMessage> get validationResults =>
      $_getMap(1);
}

/// Result of a validation check on a proof
class ValidationMessage extends $pb.GeneratedMessage {
  factory ValidationMessage({
    $core.bool? isValid,
    $core.Iterable<$core.String>? messages,
  }) {
    final $result = create();
    if (isValid != null) {
      $result.isValid = isValid;
    }
    if (messages != null) {
      $result.messages.addAll(messages);
    }
    return $result;
  }
  ValidationMessage._() : super();
  factory ValidationMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ValidationMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ValidationMessage',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.verifiablecredentials.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'isValid')
    ..pPS(2, _omitFieldNames ? '' : 'messages')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ValidationMessage clone() => ValidationMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ValidationMessage copyWith(void Function(ValidationMessage) updates) =>
      super.copyWith((message) => updates(message as ValidationMessage))
          as ValidationMessage;

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

  /// Whether this validation check passed
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

  /// If validation failed, contains messages explaining why
  @$pb.TagNumber(2)
  $core.List<$core.String> get messages => $_getList(1);
}

enum SendRequest_DeliveryMethod { email, walletId, didUri, phoneNumber, notSet }

/// Request to send a document to another user's wallet
class SendRequest extends $pb.GeneratedMessage {
  factory SendRequest({
    $core.String? email,
    $core.bool? sendNotification,
    $core.String? walletId,
    $core.String? didUri,
    $core.String? phoneNumber,
    $core.String? documentJson,
  }) {
    final $result = create();
    if (email != null) {
      $result.email = email;
    }
    if (sendNotification != null) {
      $result.sendNotification = sendNotification;
    }
    if (walletId != null) {
      $result.walletId = walletId;
    }
    if (didUri != null) {
      $result.didUri = didUri;
    }
    if (phoneNumber != null) {
      $result.phoneNumber = phoneNumber;
    }
    if (documentJson != null) {
      $result.documentJson = documentJson;
    }
    return $result;
  }
  SendRequest._() : super();
  factory SendRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SendRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, SendRequest_DeliveryMethod>
      _SendRequest_DeliveryMethodByTag = {
    1: SendRequest_DeliveryMethod.email,
    5: SendRequest_DeliveryMethod.walletId,
    6: SendRequest_DeliveryMethod.didUri,
    7: SendRequest_DeliveryMethod.phoneNumber,
    0: SendRequest_DeliveryMethod.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SendRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.verifiablecredentials.v1'),
      createEmptyInstance: create)
    ..oo(0, [1, 5, 6, 7])
    ..aOS(1, _omitFieldNames ? '' : 'email')
    ..aOB(4, _omitFieldNames ? '' : 'sendNotification')
    ..aOS(5, _omitFieldNames ? '' : 'walletId')
    ..aOS(6, _omitFieldNames ? '' : 'didUri')
    ..aOS(7, _omitFieldNames ? '' : 'phoneNumber')
    ..aOS(100, _omitFieldNames ? '' : 'documentJson')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SendRequest clone() => SendRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SendRequest copyWith(void Function(SendRequest) updates) =>
      super.copyWith((message) => updates(message as SendRequest))
          as SendRequest;

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

  /// Email address of user to whom you'll send the item
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

  /// Send email notification that credential has been sent to a wallet
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

  /// Wallet ID of the recipient within the ecosystem
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

  /// DID URI of the recipient
  @$pb.TagNumber(6)
  $core.String get didUri => $_getSZ(3);
  @$pb.TagNumber(6)
  set didUri($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasDidUri() => $_has(3);
  @$pb.TagNumber(6)
  void clearDidUri() => clearField(6);

  /// SMS of user to whom you'll send the item
  @$pb.TagNumber(7)
  $core.String get phoneNumber => $_getSZ(4);
  @$pb.TagNumber(7)
  set phoneNumber($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasPhoneNumber() => $_has(4);
  @$pb.TagNumber(7)
  void clearPhoneNumber() => clearField(7);

  /// JSON document to send to recipient
  @$pb.TagNumber(100)
  $core.String get documentJson => $_getSZ(5);
  @$pb.TagNumber(100)
  set documentJson($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(100)
  $core.bool hasDocumentJson() => $_has(5);
  @$pb.TagNumber(100)
  void clearDocumentJson() => clearField(100);
}

/// Response to `SendRequest`
class SendResponse extends $pb.GeneratedMessage {
  factory SendResponse() => create();
  SendResponse._() : super();
  factory SendResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SendResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SendResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.verifiablecredentials.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SendResponse clone() => SendResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SendResponse copyWith(void Function(SendResponse) updates) =>
      super.copyWith((message) => updates(message as SendResponse))
          as SendResponse;

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

/// Request to update a credential's revocation status
class UpdateStatusRequest extends $pb.GeneratedMessage {
  factory UpdateStatusRequest({
    $core.String? credentialStatusId,
    $core.bool? revoked,
  }) {
    final $result = create();
    if (credentialStatusId != null) {
      $result.credentialStatusId = credentialStatusId;
    }
    if (revoked != null) {
      $result.revoked = revoked;
    }
    return $result;
  }
  UpdateStatusRequest._() : super();
  factory UpdateStatusRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UpdateStatusRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpdateStatusRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.verifiablecredentials.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'credentialStatusId')
    ..aOB(2, _omitFieldNames ? '' : 'revoked')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UpdateStatusRequest clone() => UpdateStatusRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UpdateStatusRequest copyWith(void Function(UpdateStatusRequest) updates) =>
      super.copyWith((message) => updates(message as UpdateStatusRequest))
          as UpdateStatusRequest;

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

  /// Credential Status ID to update. This is not the same as the credential's ID.
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

  /// New revocation status of credential
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

/// Response to `UpdateStatusRequest`
class UpdateStatusResponse extends $pb.GeneratedMessage {
  factory UpdateStatusResponse() => create();
  UpdateStatusResponse._() : super();
  factory UpdateStatusResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UpdateStatusResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpdateStatusResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.verifiablecredentials.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

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
          as UpdateStatusResponse;

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

/// Request to check a credential's revocation status
class CheckStatusRequest extends $pb.GeneratedMessage {
  factory CheckStatusRequest({
    $core.String? credentialStatusId,
  }) {
    final $result = create();
    if (credentialStatusId != null) {
      $result.credentialStatusId = credentialStatusId;
    }
    return $result;
  }
  CheckStatusRequest._() : super();
  factory CheckStatusRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CheckStatusRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CheckStatusRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.verifiablecredentials.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'credentialStatusId')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CheckStatusRequest clone() => CheckStatusRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CheckStatusRequest copyWith(void Function(CheckStatusRequest) updates) =>
      super.copyWith((message) => updates(message as CheckStatusRequest))
          as CheckStatusRequest;

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

  /// Credential Status ID to check. This is not the same as the credential's ID.
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

/// Response to `CheckStatusRequest`
class CheckStatusResponse extends $pb.GeneratedMessage {
  factory CheckStatusResponse({
    $core.bool? revoked,
  }) {
    final $result = create();
    if (revoked != null) {
      $result.revoked = revoked;
    }
    return $result;
  }
  CheckStatusResponse._() : super();
  factory CheckStatusResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CheckStatusResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CheckStatusResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.verifiablecredentials.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'revoked')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CheckStatusResponse clone() => CheckStatusResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CheckStatusResponse copyWith(void Function(CheckStatusResponse) updates) =>
      super.copyWith((message) => updates(message as CheckStatusResponse))
          as CheckStatusResponse;

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

  /// The credential's revocation status
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

class CreateCredentialOfferRequest extends $pb.GeneratedMessage {
  factory CreateCredentialOfferRequest({
    $core.String? templateId,
    $core.String? valuesJson,
    $core.bool? holderBinding,
    $core.bool? includeGovernance,
    $core.bool? generateShareUrl,
    SignatureType? signatureType,
  }) {
    final $result = create();
    if (templateId != null) {
      $result.templateId = templateId;
    }
    if (valuesJson != null) {
      $result.valuesJson = valuesJson;
    }
    if (holderBinding != null) {
      $result.holderBinding = holderBinding;
    }
    if (includeGovernance != null) {
      $result.includeGovernance = includeGovernance;
    }
    if (generateShareUrl != null) {
      $result.generateShareUrl = generateShareUrl;
    }
    if (signatureType != null) {
      $result.signatureType = signatureType;
    }
    return $result;
  }
  CreateCredentialOfferRequest._() : super();
  factory CreateCredentialOfferRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreateCredentialOfferRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateCredentialOfferRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.verifiablecredentials.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'templateId')
    ..aOS(2, _omitFieldNames ? '' : 'valuesJson')
    ..aOB(3, _omitFieldNames ? '' : 'holderBinding')
    ..aOB(4, _omitFieldNames ? '' : 'includeGovernance')
    ..aOB(5, _omitFieldNames ? '' : 'generateShareUrl')
    ..e<SignatureType>(
        7, _omitFieldNames ? '' : 'signatureType', $pb.PbFieldType.OE,
        defaultOrMaker: SignatureType.UNSPECIFIED,
        valueOf: SignatureType.valueOf,
        enumValues: SignatureType.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CreateCredentialOfferRequest clone() =>
      CreateCredentialOfferRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CreateCredentialOfferRequest copyWith(
          void Function(CreateCredentialOfferRequest) updates) =>
      super.copyWith(
              (message) => updates(message as CreateCredentialOfferRequest))
          as CreateCredentialOfferRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateCredentialOfferRequest create() =>
      CreateCredentialOfferRequest._();
  CreateCredentialOfferRequest createEmptyInstance() => create();
  static $pb.PbList<CreateCredentialOfferRequest> createRepeated() =>
      $pb.PbList<CreateCredentialOfferRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateCredentialOfferRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateCredentialOfferRequest>(create);
  static CreateCredentialOfferRequest? _defaultInstance;

  /// ID of template to use
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

  /// JSON document string with keys corresponding to the fields of
  /// the template referenced by `template_id`
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

  /// If true, the credential will be issued with holder binding by specifying
  /// the holder DID in the credential subject
  @$pb.TagNumber(3)
  $core.bool get holderBinding => $_getBF(2);
  @$pb.TagNumber(3)
  set holderBinding($core.bool v) {
    $_setBool(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasHolderBinding() => $_has(2);
  @$pb.TagNumber(3)
  void clearHolderBinding() => clearField(3);

  /// If true, the issued credential will contain an attestation of the issuer's membership in the ecosystem's
  /// Trust Registry.
  @$pb.TagNumber(4)
  $core.bool get includeGovernance => $_getBF(3);
  @$pb.TagNumber(4)
  set includeGovernance($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasIncludeGovernance() => $_has(3);
  @$pb.TagNumber(4)
  void clearIncludeGovernance() => clearField(4);

  /// If true, a short URL link will be generated that can be used to share the credential offer with the holder.
  /// This link will point to the credential offer in the wallet app.
  @$pb.TagNumber(5)
  $core.bool get generateShareUrl => $_getBF(4);
  @$pb.TagNumber(5)
  set generateShareUrl($core.bool v) {
    $_setBool(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasGenerateShareUrl() => $_has(4);
  @$pb.TagNumber(5)
  void clearGenerateShareUrl() => clearField(5);

  /// The type of signature to use when signing the credential. Defaults to `EXPERIMENTAL`.
  @$pb.TagNumber(7)
  SignatureType get signatureType => $_getN(5);
  @$pb.TagNumber(7)
  set signatureType(SignatureType v) {
    setField(7, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasSignatureType() => $_has(5);
  @$pb.TagNumber(7)
  void clearSignatureType() => clearField(7);
}

class CreateCredentialOfferResponse extends $pb.GeneratedMessage {
  factory CreateCredentialOfferResponse({
    $core.String? documentJson,
    $core.String? shareUrl,
  }) {
    final $result = create();
    if (documentJson != null) {
      $result.documentJson = documentJson;
    }
    if (shareUrl != null) {
      $result.shareUrl = shareUrl;
    }
    return $result;
  }
  CreateCredentialOfferResponse._() : super();
  factory CreateCredentialOfferResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreateCredentialOfferResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateCredentialOfferResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.verifiablecredentials.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'documentJson')
    ..aOS(2, _omitFieldNames ? '' : 'shareUrl')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CreateCredentialOfferResponse clone() =>
      CreateCredentialOfferResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CreateCredentialOfferResponse copyWith(
          void Function(CreateCredentialOfferResponse) updates) =>
      super.copyWith(
              (message) => updates(message as CreateCredentialOfferResponse))
          as CreateCredentialOfferResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateCredentialOfferResponse create() =>
      CreateCredentialOfferResponse._();
  CreateCredentialOfferResponse createEmptyInstance() => create();
  static $pb.PbList<CreateCredentialOfferResponse> createRepeated() =>
      $pb.PbList<CreateCredentialOfferResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateCredentialOfferResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateCredentialOfferResponse>(create);
  static CreateCredentialOfferResponse? _defaultInstance;

  /// The JSON document that contains the credential offer
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

  /// If requested, a URL that can be used to share the credential offer with the holder.
  /// This is a short URL that can be used in a QR code and will redirect the
  /// holder to the credential offer using the wallet app.
  @$pb.TagNumber(2)
  $core.String get shareUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set shareUrl($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasShareUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearShareUrl() => clearField(2);
}

enum AcceptCredentialRequest_Offer { documentJson, itemId, notSet }

class AcceptCredentialRequest extends $pb.GeneratedMessage {
  factory AcceptCredentialRequest({
    $core.String? documentJson,
    $core.String? itemId,
  }) {
    final $result = create();
    if (documentJson != null) {
      $result.documentJson = documentJson;
    }
    if (itemId != null) {
      $result.itemId = itemId;
    }
    return $result;
  }
  AcceptCredentialRequest._() : super();
  factory AcceptCredentialRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AcceptCredentialRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, AcceptCredentialRequest_Offer>
      _AcceptCredentialRequest_OfferByTag = {
    1: AcceptCredentialRequest_Offer.documentJson,
    2: AcceptCredentialRequest_Offer.itemId,
    0: AcceptCredentialRequest_Offer.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AcceptCredentialRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.verifiablecredentials.v1'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOS(1, _omitFieldNames ? '' : 'documentJson')
    ..aOS(2, _omitFieldNames ? '' : 'itemId')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AcceptCredentialRequest clone() =>
      AcceptCredentialRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AcceptCredentialRequest copyWith(
          void Function(AcceptCredentialRequest) updates) =>
      super.copyWith((message) => updates(message as AcceptCredentialRequest))
          as AcceptCredentialRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AcceptCredentialRequest create() => AcceptCredentialRequest._();
  AcceptCredentialRequest createEmptyInstance() => create();
  static $pb.PbList<AcceptCredentialRequest> createRepeated() =>
      $pb.PbList<AcceptCredentialRequest>();
  @$core.pragma('dart2js:noInline')
  static AcceptCredentialRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AcceptCredentialRequest>(create);
  static AcceptCredentialRequest? _defaultInstance;

  AcceptCredentialRequest_Offer whichOffer() =>
      _AcceptCredentialRequest_OfferByTag[$_whichOneof(0)]!;
  void clearOffer() => clearField($_whichOneof(0));

  /// The JSON document that contains the credential offer
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

  /// The ID of the item in the wallet that contains the credential offer
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
}

class AcceptCredentialResponse extends $pb.GeneratedMessage {
  factory AcceptCredentialResponse({
    $core.String? itemId,
    $core.String? documentJson,
  }) {
    final $result = create();
    if (itemId != null) {
      $result.itemId = itemId;
    }
    if (documentJson != null) {
      $result.documentJson = documentJson;
    }
    return $result;
  }
  AcceptCredentialResponse._() : super();
  factory AcceptCredentialResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AcceptCredentialResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AcceptCredentialResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.verifiablecredentials.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'itemId')
    ..aOS(2, _omitFieldNames ? '' : 'documentJson')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AcceptCredentialResponse clone() =>
      AcceptCredentialResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AcceptCredentialResponse copyWith(
          void Function(AcceptCredentialResponse) updates) =>
      super.copyWith((message) => updates(message as AcceptCredentialResponse))
          as AcceptCredentialResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AcceptCredentialResponse create() => AcceptCredentialResponse._();
  AcceptCredentialResponse createEmptyInstance() => create();
  static $pb.PbList<AcceptCredentialResponse> createRepeated() =>
      $pb.PbList<AcceptCredentialResponse>();
  @$core.pragma('dart2js:noInline')
  static AcceptCredentialResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AcceptCredentialResponse>(create);
  static AcceptCredentialResponse? _defaultInstance;

  /// The ID of the item in the wallet that contains the issued credential
  @$pb.TagNumber(1)
  $core.String get itemId => $_getSZ(0);
  @$pb.TagNumber(1)
  set itemId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasItemId() => $_has(0);
  @$pb.TagNumber(1)
  void clearItemId() => clearField(1);

  /// The JSON document that contains the issued credential.
  /// This item is already stored in the wallet.
  @$pb.TagNumber(2)
  $core.String get documentJson => $_getSZ(1);
  @$pb.TagNumber(2)
  set documentJson($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasDocumentJson() => $_has(1);
  @$pb.TagNumber(2)
  void clearDocumentJson() => clearField(2);
}

enum RejectCredentialRequest_Offer { documentJson, itemId, notSet }

class RejectCredentialRequest extends $pb.GeneratedMessage {
  factory RejectCredentialRequest({
    $core.String? documentJson,
    $core.String? itemId,
  }) {
    final $result = create();
    if (documentJson != null) {
      $result.documentJson = documentJson;
    }
    if (itemId != null) {
      $result.itemId = itemId;
    }
    return $result;
  }
  RejectCredentialRequest._() : super();
  factory RejectCredentialRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RejectCredentialRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, RejectCredentialRequest_Offer>
      _RejectCredentialRequest_OfferByTag = {
    1: RejectCredentialRequest_Offer.documentJson,
    2: RejectCredentialRequest_Offer.itemId,
    0: RejectCredentialRequest_Offer.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RejectCredentialRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.verifiablecredentials.v1'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOS(1, _omitFieldNames ? '' : 'documentJson')
    ..aOS(2, _omitFieldNames ? '' : 'itemId')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RejectCredentialRequest clone() =>
      RejectCredentialRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RejectCredentialRequest copyWith(
          void Function(RejectCredentialRequest) updates) =>
      super.copyWith((message) => updates(message as RejectCredentialRequest))
          as RejectCredentialRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RejectCredentialRequest create() => RejectCredentialRequest._();
  RejectCredentialRequest createEmptyInstance() => create();
  static $pb.PbList<RejectCredentialRequest> createRepeated() =>
      $pb.PbList<RejectCredentialRequest>();
  @$core.pragma('dart2js:noInline')
  static RejectCredentialRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RejectCredentialRequest>(create);
  static RejectCredentialRequest? _defaultInstance;

  RejectCredentialRequest_Offer whichOffer() =>
      _RejectCredentialRequest_OfferByTag[$_whichOneof(0)]!;
  void clearOffer() => clearField($_whichOneof(0));

  /// The JSON document that contains the credential offer
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

  /// The ID of the item in the wallet that contains the credential offer
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
}

class RejectCredentialResponse extends $pb.GeneratedMessage {
  factory RejectCredentialResponse() => create();
  RejectCredentialResponse._() : super();
  factory RejectCredentialResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RejectCredentialResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RejectCredentialResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'services.verifiablecredentials.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RejectCredentialResponse clone() =>
      RejectCredentialResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RejectCredentialResponse copyWith(
          void Function(RejectCredentialResponse) updates) =>
      super.copyWith((message) => updates(message as RejectCredentialResponse))
          as RejectCredentialResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RejectCredentialResponse create() => RejectCredentialResponse._();
  RejectCredentialResponse createEmptyInstance() => create();
  static $pb.PbList<RejectCredentialResponse> createRepeated() =>
      $pb.PbList<RejectCredentialResponse>();
  @$core.pragma('dart2js:noInline')
  static RejectCredentialResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RejectCredentialResponse>(create);
  static RejectCredentialResponse? _defaultInstance;
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
