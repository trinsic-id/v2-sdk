package trinsic;

import java.io.IOException;
import java.util.Base64;
import java.util.concurrent.ExecutionException;
import org.junit.jupiter.api.Assertions;
import trinsic.okapi.DidException;
import trinsic.services.TrinsicService;
import trinsic.services.provider.v1.*;

public class EcosystemsDemo {
  public static void main(String[] args)
      throws IOException, DidException, ExecutionException, InterruptedException {
    run();
  }

  public static void run()
      throws IOException, DidException, ExecutionException, InterruptedException {
    var trinsic = new TrinsicService(TrinsicUtilities.getTrinsicServiceOptions());
    var account = trinsic.account().loginAnonymous().get();

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

    // addWebhook() {
    var addWebhookResponse =
        trinsic
            .provider()
            .addWebhook(
                AddWebhookRequest.newBuilder()
                    .setDestinationUrl("https://example.com/webhooks/trinsic")
                    .setSecret("my well-kept secret")
                    .addEvents("*") // All events
                    .build())
            .get();
    // }

    Assertions.assertNotNull(addWebhookResponse.getEcosystem());
    Assertions.assertEquals(1, addWebhookResponse.getEcosystem().getWebhooksCount());

    var webhook = addWebhookResponse.getEcosystem().getWebhooks(0);
    var webhookId = webhook.getId();

    // deleteWebhook() {
    var deleteWebhookResponse =
        trinsic
            .provider()
            .deleteWebhook(DeleteWebhookRequest.newBuilder().setWebhookId(webhookId).build())
            .get();
    // }

    Assertions.assertNotNull(deleteWebhookResponse.getEcosystem());
    Assertions.assertEquals(0, deleteWebhookResponse.getEcosystem().getWebhooksCount());

    // listEcosystems() {
    // }

    // inviteParticipant() {
    // }

    // invitationStatus() {
    // }

    trinsic.shutdown();
  }
}
