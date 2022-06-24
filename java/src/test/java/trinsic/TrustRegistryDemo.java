package trinsic;

import java.io.IOException;
import java.util.UUID;
import java.util.concurrent.ExecutionException;
import org.junit.jupiter.api.Assertions;
import trinsic.okapi.DidException;
import trinsic.services.TrinsicService;
import trinsic.services.trustregistry.v1.TrustRegistryOuterClass;

public class TrustRegistryDemo {
  public static void main(String[] args)
      throws IOException, DidException, ExecutionException, InterruptedException {
    run();
  }

  public static void run()
      throws IOException, DidException, ExecutionException, InterruptedException {
    var trinsic = new TrinsicService(TrinsicUtilities.getTrinsicServiceOptions());
    var account = trinsic.account().signIn().get();
    trinsic.setProfile(account);

    final String didUri = "did:example:test";
    final String frameworkUri = "https://example.com/" + UUID.randomUUID();
    final String typeUri = "https://schema.org/Card";

    // addFramework() {
    var frameworkResponse =
        trinsic
            .trustRegistry()
            .addFramework(
                TrustRegistryOuterClass.AddFrameworkRequest.newBuilder()
                    .setGovernanceFrameworkUri(frameworkUri)
                    .setName("Example Framework" + UUID.randomUUID())
                    .build())
            .get();
    // }

    // registerIssuerSample() {
    trinsic
        .trustRegistry()
        .registerMember(
            TrustRegistryOuterClass.RegisterMemberRequest.newBuilder()
                .setDidUri(didUri)
                .setFrameworkId(frameworkResponse.getId())
                .setSchemaUri(typeUri)
                .build());
    // }
    // checkIssuerStatus() {
    var issuerStatus =
        trinsic
            .trustRegistry()
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
    var searchResult = trinsic.trustRegistry().searchRegistry().get();
    // }
    Assertions.assertNotNull(searchResult);
    Assertions.assertNotNull(searchResult.getItemsJson());
    Assertions.assertTrue(searchResult.getItemsJson().length() > 0);

    // unregisterIssuer() {
    trinsic
        .trustRegistry()
        .unregisterIssuer(
            TrustRegistryOuterClass.UnregisterMemberRequest.newBuilder()
                .setFrameworkId(frameworkResponse.getId())
                .setDidUri(didUri)
                .setSchemaUri(typeUri)
                .build());
    // }
  }
}
