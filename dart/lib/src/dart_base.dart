// TODO: Put public facing types in this file.
import 'dart:convert';
import 'dart:typed_data';

import 'package:okapi_dart/okapi.dart';
import 'package:okapi_dart/proto/okapi/security/v1/security.pb.dart';
import 'package:trinsic_dart/src/proto/sdk/options/v1/options.pb.dart';
import 'package:trinsic_dart/src/proto/services/account/v1/account.pbgrpc.dart';
import 'package:trinsic_dart/src/proto/services/verifiable-credentials/v1/verifiable-credentials.pbgrpc.dart';
import 'package:trinsic_dart/src/service_base.dart';

class AccountService extends ServiceBase {
  late AccountClient client;

  AccountService(ServiceOptions? serverOptions) : super(serverOptions) {
    client = AccountClient(super.channel);
  }

  Future<String> signIn(SignInRequest? request) async {
    request = request ?? SignInRequest();
    request.ecosystemId = request.ecosystemId != ""
        ? request.ecosystemId
        : serviceOptions.defaultEcosystem;
    SignInResponse response = await client.signIn(request);
    var authToken =
        Base64Encoder.urlSafe().convert(response.profile.writeToBuffer());
    serviceOptions.authToken = authToken;
    return authToken;
  }

  static AccountProfile unprotectProfile(
      AccountProfile profile, String securityCode) {
    var utf8code = Uint8List.fromList(utf8.encode(securityCode));
    var request = UnBlindOberonTokenRequest(token: profile.authToken);
    request.blinding.add(utf8code);

    var result = Oberon.UnBlindToken(request);
    profile.authToken = result.token;
    profile.protection.enabled = false;
    profile.protection.method = ConfirmationMethod.None;
    return profile;
  }

  static String unprotect(String base64Profile, String securityCode) {
    var accountProfile =
        AccountProfile.fromBuffer(Base64Decoder().convert(base64Profile));
    var unprotectedProfile = unprotectProfile(accountProfile, securityCode);
    return Base64Encoder.urlSafe().convert(unprotectedProfile.writeToBuffer());
  }

  static AccountProfile protectProfile(
      AccountProfile profile, String securityCode) {
    var utf8code = Uint8List.fromList(utf8.encode(securityCode));
    var request = BlindOberonTokenRequest(token: profile.authToken);
    request.blinding.add(utf8code);

    var result = Oberon.BlindToken(request);
    profile.authToken = result.token;
    profile.protection.enabled = true;
    profile.protection.method = ConfirmationMethod.Other;
    return profile;
  }

  static String protect(String base64Profile, String securityCode) {
    var accountProfile =
        AccountProfile.fromBuffer(Base64Decoder().convert(base64Profile));
    var protectedProfile = protectProfile(accountProfile, securityCode);
    return Base64Encoder.urlSafe().convert(protectedProfile.writeToBuffer());
  }

  Future<InfoResponse> getInfo() async {
    return await client.info(InfoRequest());
  }

  Future<ListDevicesResponse> listDevices(ListDevicesRequest request) async {
    return await client.listDevices(request);
  }

  Future<RevokeDeviceResponse> revokeDevice(RevokeDeviceRequest request) async {
    return await client.revokeDevice(request);
  }
}

class CredentialService extends ServiceBase {
  late VerifiableCredentialClient client;

  CredentialService(ServiceOptions? serverOptions) : super(serverOptions) {
    client = VerifiableCredentialClient(super.channel);
  }

  Future<IssueResponse> issueCredential(IssueRequest request) async {
    return await client.issue(request);
  }

  Future<IssueFromTemplateResponse> issueFromTemplate(
      IssueFromTemplateRequest request) async {
    return await client.issueFromTemplate(request);
  }

  Future<CheckStatusResponse> checkStatus(CheckStatusRequest request) async {
    return await client.checkStatus(request);
  }

  Future<UpdateStatusResponse> updateStatus(UpdateStatusRequest request) async {
    return await client.updateStatus(request);
  }

  Future<CreateProofResponse> createProof(CreateProofRequest request) async {
    return await client.createProof(request);
  }

  Future<VerifyProofResponse> verifyProof(VerifyProofRequest request) async {
    return await client.verifyProof(request);
  }

  Future<SendResponse> send(SendRequest request) async {
    return await client.send(request);
  }
}
