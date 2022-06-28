package trinsic;

import org.junit.jupiter.api.Assertions;
import trinsic.okapi.DidException;
import trinsic.services.TrinsicService;
import trinsic.services.account.v1.AccountDetails;
import trinsic.services.common.v1.*;

import java.io.IOException;
import java.util.concurrent.ExecutionException;

public class EcosystemsDemo {
  public static void main(String[] args)
      throws IOException, DidException, ExecutionException, InterruptedException {
    run();
  }

  public static void run()
      throws IOException, DidException, ExecutionException, InterruptedException {
    var trinsic = new TrinsicService(TrinsicUtilities.getTrinsicServiceOptions());
    var account = trinsic.account().signIn().get();
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

    // listEcosystems() {
    // }
    //        var actualList =
    // service.listEcosystems(ListEcosystemsRequest.newBuilder().build()).get();
    //        Assertions.assertNotNull(actualList);
    //        Assertions.assertTrue(actualList.size() > 0);

    InviteResponse inviteResponse =
        InviteResponse.newBuilder().setInvitationId("N/A").build();
    try {
      // inviteParticipant() {
      inviteResponse =
          trinsic
              .provider()
              .invite(
                  InviteRequest.newBuilder()
                      .setParticipant(
                          ParticipantType.participant_type_individual)
                      .setDetails(
                          AccountDetails.newBuilder()
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
          trinsic
              .provider()
              .invitationStatus(
                  InvitationStatusRequest.newBuilder()
                      .setInvitationId(inviteResponse.getInvitationId())
                      .build())
              .get();
      // }
    } catch (Exception e) {
      // this is okay as an example
    }
  }
}
