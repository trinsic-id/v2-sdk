package trinsic;

import java.io.IOException;
import java.util.concurrent.ExecutionException;
import org.junit.jupiter.api.Assertions;
import trinsic.services.TrinsicService;
import trinsic.services.trustregistry.v1.*;
import trinsic.services.universalwallet.v1.CreateWalletRequest;

public class TrustRegistryDemo {
  private static String myEcosystemIdOrName = "default";

  public static void main(String[] args)
      throws IOException, ExecutionException, InterruptedException {
    run();
  }

  public static void run() throws IOException, ExecutionException, InterruptedException {
    var trinsic = new TrinsicService(TrinsicUtilities.getTrinsicTrinsicOptions());
    var account =
        trinsic
            .wallet()
            .createWallet(
                CreateWalletRequest.newBuilder().setEcosystemId(myEcosystemIdOrName).build())
            .get();
    trinsic.setAuthToken(account.getAuthToken());

    var didUri = "did:example:test";
    var typeUri = "https://schema.org/Card";

    // registerIssuerSample() {
    var memberResponse =
        trinsic
            .trustRegistry()
            .registerMember(
                RegisterMemberRequest.newBuilder().setDidUri(didUri).setSchemaUri(typeUri).build())
            .get();
    // }

    // checkIssuerStatus() {
    var issuerStatus =
        trinsic
            .trustRegistry()
            .getMemberAuthorizationStatus(
                GetMemberAuthorizationStatusRequest.newBuilder()
                    .setDidUri(didUri)
                    .setSchemaUri(typeUri)
                    .build())
            .get();
    // }
    Assertions.assertEquals(RegistrationStatus.CURRENT, issuerStatus.getStatus());

    // unregisterIssuer() {
    trinsic
        .trustRegistry()
        .unregisterMember(
            UnregisterMemberRequest.newBuilder().setDidUri(didUri).setSchemaUri(typeUri).build());
    // }
    trinsic.shutdown();
  }
}
