import 'dart:convert';

import 'package:test/test.dart';
import 'package:trinsic_dart/src/proto/services/account/v1/account.pbgrpc.dart';
import 'package:trinsic_dart/src/proto/services/trust-registry/v1/trust-registry.pbgrpc.dart';
import 'package:trinsic_dart/src/trinsic_util.dart';
import 'package:trinsic_dart/trinsic.dart';
import '../example/provider_example.dart';
import '../example/templates_demo.dart';
import '../example/trustregistry_demo.dart';
import '../example/vaccine_example.dart';
import '../example/ecosystem_example.dart';

void main() {
  group('Dart Examples', () {
    setUp(() {
      // Additional setup goes here.
    });

    test('Vaccine Demo', () async {
      await runVaccineDemo();
    });
    test('Ecosystem Demo', () async {
      await runEcosystemDemo();
    });
    test('Provider Demo', () async {
      await runProviderDemo();
    });
    test('Templates Demo', () async {
      await runTemplatesDemo();
    });
    test('Trust Registry Demo', () async {
      await runTrustRegistryDemo();
    });

    test('Trust Registry Service Input Validation', () async {
      var trService = TrustRegistryService(trinsicConfig());
      try {
        await trService.registerGovernanceFramework(AddFrameworkRequest(governanceFrameworkUri: "", description: "invalid framework"));
        assert(false);
      } catch (e) {
        // This is expected
        assert(true);
      }
    });

    test('Test Protect/Unprotect Account', () async {
      // accountServiceConstructor() {
      var accountService = AccountService(trinsicConfig());
      // }
      // accountServiceSignIn() {
      var myProfile = await accountService.signIn();
      // }
      await printGetInfo(accountService, myProfile);
      // protectUnprotectProfile() {
      var securityCode = "1234";
      var myProtectedProfile = AccountService.protect(myProfile, securityCode);
      var myUnprotectedProfile = AccountService.unprotect(myProtectedProfile, securityCode);
      // }
      try {
        await printGetInfo(accountService, myProtectedProfile);
        assert(false);
      } catch (e) {
        assert(true);
      }
      await printGetInfo(accountService, myUnprotectedProfile);
    });
  });
}

Future<void> printGetInfo(AccountService accountService, String profile) async {
  accountService.serviceOptions.authToken = profile;
  // accountServiceGetInfo() {
  var info = await accountService.getInfo();
  // }
  assert(info.ecosystemId != "");
  print("profile=$info");
}