package trinsic;

import java.io.IOException;
import java.util.Base64;
import java.util.concurrent.ExecutionException;
import org.junit.jupiter.api.Assertions;
import trinsic.okapi.DidException;
import trinsic.services.TrinsicService;
import trinsic.services.provider.v1.CreateEcosystemRequest;
import trinsic.services.provider.v1.EcosystemInfoRequest;
import trinsic.services.provider.v1.UpdateEcosystemRequest;
import trinsic.services.universalwallet.v1.CreateWalletRequest;

public class EcosystemsDemo {
  public static void main(String[] args)
      throws IOException, DidException, ExecutionException, InterruptedException {
    run();
  }

  public static void run()
      throws IOException, DidException, ExecutionException, InterruptedException {
    var trinsic = new TrinsicService(TrinsicUtilities.getTrinsicTrinsicOptions());
    var account =
        trinsic
            .wallet()
            .createWallet(CreateWalletRequest.newBuilder().setEcosystemId("default").build())
            .get();
    trinsic.setAuthToken(account.getAuthToken());

    // createEcosystem() {
    var response =
        trinsic
            .provider()
            .createEcosystem(
                CreateEcosystemRequest.newBuilder()
                    .setDescription("My ecosystem")
                    .setUri("https://example.com")
                    .build())
            .get();
    // }
    Assertions.assertNotNull(response.getEcosystem());
    Assertions.assertNotNull(response.getEcosystem().getId());
    Assertions.assertTrue(response.getEcosystem().getId().startsWith("urn:trinsic:ecosystems:"));

    var profileBase64 = Base64.getUrlEncoder().encodeToString(response.getProfile().toByteArray());

    trinsic.setAuthToken(profileBase64);

    // updateEcosystem() {
    var updateResponse =
        trinsic
            .provider()
            .updateEcosystem(
                UpdateEcosystemRequest.newBuilder().setDescription("My updated ecosystem").build())
            .get();
    // }

    Assertions.assertNotNull(updateResponse.getEcosystem());

    // ecosystemInfo() {
    var infoResponse =
        trinsic.provider().ecosystemInfo(EcosystemInfoRequest.getDefaultInstance()).get();
    // }

    Assertions.assertNotNull(infoResponse.getEcosystem());
    Assertions.assertEquals(
        infoResponse.getEcosystem().getUri(), updateResponse.getEcosystem().getUri());

    // listEcosystems() {
    // }

    // inviteParticipant() {
    // }

    // invitationStatus() {
    // }

    trinsic.shutdown();
  }
}
