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
    var trinsicService = new TrinsicService(TrinsicUtilities.getTrinsicServiceOptions());
    var account = trinsicService.accountService().signIn().get();
    // createEcosystem() {
    var response =
            trinsicService.providerService()
            .createEcosystem(
                ProviderOuterClass.CreateEcosystemRequest.newBuilder()
                    .setDescription("My ecosystem")
                    .setUri("https://example.com")
                    .build())
            .get();
    // }
    Assertions.assertNotNull(response.getEcosystem());
    Assertions.assertNotNull(response.getEcosystem().getId());
    Assertions.assertTrue(response.getEcosystem().getId().startsWith("urn:trinsic:ecosystems:"));

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
              trinsicService.providerService()
              .invite(
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
              trinsicService.providerService()
              .invitationStatus(
                  ProviderOuterClass.InvitationStatusRequest.newBuilder()
                      .setInvitationId(inviteResponse.getInvitationId())
                      .build())
              .get();
      // }
    } catch (Exception e) {
      // this is okay as an example
    }
  }
}
