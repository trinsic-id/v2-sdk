package trinsic;

import java.io.IOException;
import java.util.UUID;
import java.util.concurrent.ExecutionException;
import org.junit.jupiter.api.Assertions;
import trinsic.okapi.DidException;
import trinsic.services.TrinsicService;
import trinsic.services.trustregistry.v1.*;

public class TrustRegistryDemo {
  private static String myEcosystemIdOrName = "default";

  public static void main(String[] args)
      throws IOException, DidException, ExecutionException, InterruptedException {
    run();
  }

  public static void run()
      throws IOException, DidException, ExecutionException, InterruptedException {
    var trinsic = new TrinsicService(TrinsicUtilities.getTrinsicServiceOptions());
    var account = trinsic.account().signIn(myEcosystemIdOrName).get();
    trinsic.setAuthToken(account);

    var didUri = "did:example:test";
    var frameworkUri = "https://example.com/" + UUID.randomUUID();
    var typeUri = "https://schema.org/Card";

    // addFramework() {
    var frameworkResponse =
        trinsic
            .trustRegistry()
            .addFramework(
                AddFrameworkRequest.newBuilder()
                    .setGovernanceFrameworkUri(frameworkUri)
                    .setName("Example Framework" + UUID.randomUUID())
                    .build())
            .get();
    // }

    // registerIssuerSample() {
    var memberResponse =
        trinsic
            .trustRegistry()
            .registerMember(
                RegisterMemberRequest.newBuilder()
                    .setDidUri(didUri)
                    .setFrameworkId(frameworkResponse.getId())
                    .setSchemaUri(typeUri)
                    .build())
            .get();
    // }
    // checkIssuerStatus() {
    var issuerStatus =
        trinsic
            .trustRegistry()
            .getMembershipStatus(
                GetMembershipStatusRequest.newBuilder()
                    .setDidUri(didUri)
                    .setGovernanceFrameworkUri(frameworkUri)
                    .setSchemaUri(typeUri)
                    .build())
            .get();
    // }
    Assertions.assertEquals(RegistrationStatus.CURRENT, issuerStatus.getStatus());

    // searchTrustRegistry() {
    var searchResult = trinsic.trustRegistry().search().get();
    // }
    Assertions.assertNotNull(searchResult);
    Assertions.assertNotNull(searchResult.getItemsJson());
    Assertions.assertTrue(searchResult.getItemsJson().length() > 0);

    // unregisterIssuer() {
    trinsic
        .trustRegistry()
        .unregisterMember(
            UnregisterMemberRequest.newBuilder()
                .setFrameworkId(frameworkResponse.getId())
                .setDidUri(didUri)
                .setSchemaUri(typeUri)
                .build());
    // }
    trinsic.shutdown();
  }
}
