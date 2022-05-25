import 'package:trinsic_dart/src/proto/services/trust-registry/v1/trust-registry.pbgrpc.dart';
import 'package:trinsic_dart/src/trinsic_util.dart';
import 'package:trinsic_dart/trinsic.dart';
import 'package:uuid/uuid.dart';

Future runTrustRegistryDemo() async {
  var accountService = AccountService(trinsicConfig());
  var account = await accountService.signIn();
  var trustRegistryService =
      TrustRegistryService(trinsicConfig(authToken: account));

  var uuid = Uuid();

  var https_schema_org = "https://schema.org/Card";
  var https_example_com = "https://example.com/${uuid.v4()}";
  var did_example_test = "did:example:test";
  var framework_name = "Example Framework: ${uuid.v4()}";

  // registerGovernanceFramework() {
  var registerFrameworkResponse = await trustRegistryService
      .registerGovernanceFramework(AddFrameworkRequest(
          description: "Demo framework",
          name: framework_name,
          governanceFrameworkUri: https_example_com));
  // }

  // registerIssuerSample() {
  await trustRegistryService.registerMember(RegisterMemberRequest(
      didUri: did_example_test,
      frameworkId: registerFrameworkResponse.id,
      schemaUri: https_schema_org));
  // }

  // checkIssuerStatus() {
  var checkResponse = await trustRegistryService.getMembershipStatus(
      GetMembershipStatusRequest(
          didUri: did_example_test,
          governanceFrameworkUri: https_example_com,
          schemaUri: https_schema_org));
  // }

  assert(checkResponse.status == RegistrationStatus.CURRENT);

  // searchTrustRegistry() {
  var searchResult = await trustRegistryService.searchRegistry();
  // }
  assert(searchResult.itemsJson != "");

  // unregisterIssuer() {
  var unregisterIssuerResponse = await trustRegistryService.unregisterMember(
      UnregisterMemberRequest(
          frameworkId: registerFrameworkResponse.id,
          schemaUri: https_schema_org,
          didUri: did_example_test));
  // }
}

void main() async {
  await runTrustRegistryDemo();
}
