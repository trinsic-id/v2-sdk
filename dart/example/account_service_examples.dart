import 'dart:convert';
// createAccountService() {
import 'package:trinsic_dart/src/account_service.dart';
import 'package:trinsic_dart/src/proto/services/account/v1/account.pb.dart';
import 'package:trinsic_dart/src/trinsic_service.dart';
import 'package:trinsic_dart/src/trinsic_util.dart';

Future<AccountService> getAccountService() async {
  var trinsic = TrinsicService(trinsicConfig(authToken: "[YOURAUTHTOKEN]"), null);
  var accountService = trinsic.account();
  return accountService;
}
// }

Future runAccountServiceExamples() async {
  var accountService = await getAccountService();

  // TODO - Handle this code reliably?
  try {
    // accountServiceLoginLoginConfirm() {
    var loginResponse = await accountService.login(request: LoginRequest(
        ecosystemId: "your-ecosystem-id", email: "email@example.com"));
    var profile = await accountService.loginConfirm(
        Base64Encoder().convert(loginResponse.challenge), "[YOURCODE]");
    // }
  } catch (e) {
    // This is expected error due to invalid codes
  }

  // accountServiceGetInfo() {
  var info = await accountService.info();
  print('Account info: EcosystemId=${info.ecosystemId} Email=${info.details.email}');
  // }
}

void main() async {
  await runAccountServiceExamples();
}
