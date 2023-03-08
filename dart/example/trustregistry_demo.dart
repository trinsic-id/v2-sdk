import 'package:trinsic_dart/src/proto/services/trust-registry/v1/trust-registry.pbgrpc.dart';
import 'package:trinsic_dart/src/trinsic_util.dart';
import 'package:trinsic_dart/trinsic.dart';
import 'package:uuid/uuid.dart';

Future runTrustRegistryDemo() async {
  var trinsic = TrinsicService(trinsicConfig(), null);
  var account = await trinsic.account().loginAnonymous("default");

  var uuid = Uuid();

  var httpsSchemaOrg = "https://schema.org/Card";
  var httpsExampleCom = "https://example.com/${uuid.v4()}";
  var didExampleTest = "did:example:test";
  var frameworkName = "Example Framework: ${uuid.v4()}";

  print("services created: $frameworkName  $httpsExampleCom");

  // registerGovernanceFramework() {
  var registerFrameworkResponse = await trinsic.trustRegistry().addFramework(
      AddFrameworkRequest(
          description: "Demo framework",
          name: frameworkName,
          governanceFrameworkUri: httpsExampleCom));
  // }

  print("Framework registered: $registerFrameworkResponse");

  // registerIssuerSample() {
  var registerMemberResponse = await trinsic.trustRegistry().registerMember(
      RegisterMemberRequest(
          didUri: didExampleTest,
          frameworkId: registerFrameworkResponse.id,
          schemaUri: httpsSchemaOrg));
  // }

  print("Member registered: $registerMemberResponse");

  // checkIssuerStatus() {
  var checkResponse = await trinsic.trustRegistry().getMembershipStatus(
      GetMembershipStatusRequest(
          didUri: didExampleTest,
          frameworkId: httpsExampleCom,
          schemaUri: httpsSchemaOrg));
  // }

  print("Member Status: $checkResponse");

  assert(checkResponse.status == RegistrationStatus.CURRENT);

  // searchTrustRegistry() {
  var searchResult = await trinsic.trustRegistry().search();
  // }
  assert(searchResult.itemsJson != "");

  // unregisterIssuer() {
  var unregisterIssuerResponse = await trinsic.trustRegistry().unregisterMember(
      UnregisterMemberRequest(
          frameworkId: registerFrameworkResponse.id,
          schemaUri: httpsSchemaOrg,
          didUri: didExampleTest));
  // }
}

void main() async {
  await runTrustRegistryDemo();
}
