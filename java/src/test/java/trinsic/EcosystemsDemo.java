package trinsic;

import java.io.IOException;
import java.util.concurrent.ExecutionException;
import org.junit.jupiter.api.Assertions;
import trinsic.okapi.DidException;
import trinsic.services.AccountService;
import trinsic.services.ProviderService;
import trinsic.services.TrinsicService;
import trinsic.services.account.v1.AccountOuterClass;
import trinsic.services.common.v1.ProviderOuterClass;

public class EcosystemsDemo {
  public static void main(String[] args)
      throws IOException, DidException, ExecutionException, InterruptedException {
    run();
  }

  public static void run()
      throws IOException, DidException, ExecutionException, InterruptedException {
    var trinsic = new TrinsicService(TrinsicUtilities.getTrinsicServiceOptions());
    var account = trinsic.accountService().loginAnonymous().get();

    // createEcosystem() {
    var response =
        trinsic.providerService().createEcosystem(
            ProviderOuterClass.CreateEcosystemRequest.newBuilder()
                .setDescription("My ecosystem")
                .setUri("https://example.com")
                .build())
        .get();
    // }
    Assertions.assertNotNull(response.getEcosystem());
    Assertions.assertNotNull(response.getEcosystem().getId());
    Assertions.assertTrue(response.getEcosystem().getId().startsWith("urn:trinsic:ecosystems:"));

    // updateEcosystem() {
    var updateResponse =
        trinsic.providerService().updateEcosystem(
            ProviderOuterClass.UpdateEcosystemRequest.newBuilder()
                .setDescription("My updated ecosystem")
                .setUri("https://new-example.com")
                .build())
        .get();
    // }

    Assertions.assertNotNull(updateResponse.getEcosystem());
    Assertions.assertEquals(updateResponse.getEcosystem().getUri(), "https://new-example.com");

    // ecosystemInfo() {
    var infoResponse =
        trinsic.providerService().ecosystemInfo(
            ProviderOuterClass.EcosystemInfoRequest.getDefaultInstance()
        ).get();
    // }

    Assertions.assertNotNull(infoResponse.getEcosystem());
    Assertions.assertEquals(infoResponse.getEcosystem().getUri(), updateResponse.getEcosystem().getUri());

    // addWebhook() {
    var addWebhookResponse =
        trinsic.providerService().addWebhook(
            ProviderOuterClass.AddWebhookRequest.newBuilder()
                .setDestinationUrl("https://example.com/webhooks/trinsic")
                .setSecret("my well-kept secret")
                .setEvents(0, "*") //All events
                .build()
        ).get();
    // }

    Assertions.assertNotNull(addWebhookResponse.getEcosystem());
    Assertions.assertEquals(1, addWebhookResponse.getEcosystem().getWebhooksCount());

    var webhook = addWebhookResponse.getEcosystem().getWebhooks(0);
    var webhookId = webhook.getId();

    // deleteWebhook() {
    var deleteWebhookResponse =
          trinsic.providerService().deleteWebhook(
              ProviderOuterClass.DeleteWebhookRequest.newBuilder()
                  .setWebhookId(webhookId)
                  .build()
          ).get();
    // }

    Assertions.assertNotNull(deleteWebhookResponse.getEcosystem());
    Assertions.assertEquals(0, deleteWebhookResponse.getEcosystem().getWebhooksCount());

    // listEcosystems() {
    // }
    //        var actualList =
    // service.listEcosystems(ProviderOuterClass.ListEcosystemsRequest.newBuilder().build()).get();
    //        Assertions.assertNotNull(actualList);
    //        Assertions.assertTrue(actualList.size() > 0);

    ProviderOuterClass.InviteResponse inviteResponse =
        ProviderOuterClass.InviteResponse.newBuilder().setInvitationId("N/A").build();
    try {
      // inviteParticipant() {
      inviteResponse =
          trinsic.providerService().invite(
              ProviderOuterClass.InviteRequest.newBuilder()
                  .setParticipant(
                      ProviderOuterClass.ParticipantType.participant_type_individual)
                  .setDetails(
                      AccountOuterClass.AccountDetails.newBuilder()
                          .setEmail("example@trinsic.id")
                          .build())
                  .build())
          .get();
      // }
    } catch (Exception e) {
      // this is okay as an example
    }

    try {
      // invitationStatus() {
      var invitationStatus =
          trinsic.providerService().invitationStatus(
              ProviderOuterClass.InvitationStatusRequest.newBuilder()
                  .setInvitationId(inviteResponse.getInvitationId())
                  .build())
          .get();
      // }
    } catch (Exception e) {
      // this is okay as an example
    }

    trinsic.shutdown();
  }
}
