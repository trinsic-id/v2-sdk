import 'dart:convert';
import 'dart:typed_data';

import 'package:okapi_dart/okapi.dart';
import 'package:okapi_dart/proto/okapi/hashing/v1/hashing.pb.dart';
import 'package:okapi_dart/proto/okapi/security/v1/security.pb.dart';
import 'package:trinsic_dart/src/proto/sdk/options/v1/options.pb.dart';
import 'package:trinsic_dart/src/proto/services/account/v1/account.pbgrpc.dart';
import 'package:trinsic_dart/src/service_base.dart';

class AccountService extends ServiceBase {
  late AccountClient client;

  AccountService(ServiceOptions? serverOptions) : super(serverOptions) {
    client =
        AccountClient(super.channel, interceptors: [MetadataInterceptor(this)]);
  }

  Future<String> signIn({SignInRequest? request}) async {
    request ??= SignInRequest();
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

  Future<LoginResponse> login({LoginRequest? request}) async {
    request ??= LoginRequest();
    request.ecosystemId = request.ecosystemId != ""
        ? request.ecosystemId
        : serviceOptions.defaultEcosystem;
    return await client.login(request);
  }

  Future<String> loginConfirm(String challenge, String authCode) async {
    var hashed = Hashing.blake3Hash(
        Blake3HashRequest(data: Uint8List.fromList(utf8.encode(authCode))));
    var request = LoginConfirmRequest(
        challenge: Uint8List.fromList(utf8.encode(challenge)),
        confirmationCodeHashed: hashed.digest);
    var response = await client.loginConfirm(request);

    var token =
        Base64Encoder.urlSafe().convert(response.profile.writeToBuffer());
    if (response.profile.protection.enabled) {
      token = unprotect(token, authCode);
    }
    return token;
  }

  Future<String> loginAnonymous() async {
    var response = await login();

    if (response.profile.protection.enabled) {
      throw Exception("protected profile returned from login()");
    }
    // Tokenize and return
    var authToken =
        Base64Encoder.urlSafe().convert(response.profile.writeToBuffer());
    return authToken;
  }

  Future<AccountInfoResponse> getInfo() async {
    return await client.info(AccountInfoRequest());
  }

  Future<ListDevicesResponse> listDevices(ListDevicesRequest request) async {
    return await client.listDevices(request);
  }

  Future<RevokeDeviceResponse> revokeDevice(RevokeDeviceRequest request) async {
    return await client.revokeDevice(request);
  }

  Future<AuthorizeWebhookResponse> authorizeWebhook(
      AuthorizeWebhookRequest request) async {
    return await client.authorizeWebhook(request);
  }
}
