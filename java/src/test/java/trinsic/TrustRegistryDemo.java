package trinsic;

import org.junit.jupiter.api.Assertions;
import trinsic.okapi.DidException;
import trinsic.services.TrinsicService;
import trinsic.services.trustregistry.v1.TrustRegistryOuterClass;

import java.io.IOException;
import java.util.UUID;
import java.util.concurrent.ExecutionException;

public class TrustRegistryDemo {
  public static void main(String[] args)
      throws IOException, DidException, ExecutionException, InterruptedException {
    run();
  }

  public static void run()
      throws IOException, DidException, ExecutionException, InterruptedException {
    var trinsicService = new TrinsicService(TrinsicUtilities.getTrinsicServiceOptions());
    var account = trinsicService.account().signIn().get();

    final String didUri = "did:example:test";
    final String frameworkUri = "https://example.com/" + UUID.randomUUID();
    final String typeUri = "https://schema.org/Card";

    // addFramework() {
    var frameworkResponse =
            trinsicService.trustRegistryService()
            .addFramework(
                TrustRegistryOuterClass.AddFrameworkRequest.newBuilder()
                    .setGovernanceFrameworkUri(frameworkUri)
                    .setName("Example Framework" + UUID.randomUUID())
                    .build())
            .get();
    // }

    // registerIssuerSample() {
      trinsicService.trustRegistryService().registerMember(
        TrustRegistryOuterClass.RegisterMemberRequest.newBuilder()
            .setDidUri(didUri)
            .setFrameworkId(frameworkResponse.getId())
            .setSchemaUri(typeUri)
            .build());
    // }
    // checkIssuerStatus() {
    var issuerStatus =
            trinsicService.trustRegistryService()
            .checkIssuerStatus(
                TrustRegistryOuterClass.GetMembershipStatusRequest.newBuilder()
                    .setDidUri(didUri)
                    .setGovernanceFrameworkUri(frameworkUri)
                    .setSchemaUri(typeUri)
                    .build())
            .get();
    // }
    Assertions.assertEquals(
        TrustRegistryOuterClass.RegistrationStatus.CURRENT, issuerStatus.getStatus());

    // searchTrustRegistry() {
    var searchResult = trinsicService.trustRegistryService().searchRegistry().get();
    // }
    Assertions.assertNotNull(searchResult);
    Assertions.assertNotNull(searchResult.getItemsJson());
    Assertions.assertTrue(searchResult.getItemsJson().length() > 0);

    // unregisterIssuer() {
      trinsicService.trustRegistryService().unregisterIssuer(
        TrustRegistryOuterClass.UnregisterMemberRequest.newBuilder()
            .setFrameworkId(frameworkResponse.getId())
            .setDidUri(didUri)
            .setSchemaUri(typeUri)
            .build());
    // }
  }
}
