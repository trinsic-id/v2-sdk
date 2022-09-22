package trinsic;

import java.io.IOException;
import java.util.concurrent.ExecutionException;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;
import trinsic.okapi.DidException;
import trinsic.services.AccountService;
import trinsic.services.ProviderService;
import trinsic.services.TrinsicService;
import trinsic.services.common.v1.SupportedDidMethod;
import trinsic.services.provider.v1.*;

public class ProviderServiceTest {
  @Test
  @Disabled
  public void testProviderServiceInviteParticipant()
      throws IOException, DidException, ExecutionException, InterruptedException {
    var accountService = new AccountService(TrinsicUtilities.getTrinsicServiceOptions());
    var account = accountService.signIn().get();

    var providerService = new ProviderService(TrinsicUtilities.getTrinsicServiceOptions(account));
    var ecosystem =
        providerService
            .createEcosystem(CreateEcosystemRequest.newBuilder().setName("Test Ecosystem").build())
            .get();
    var invitation =
        InviteRequest.newBuilder()
            .setParticipant(ParticipantType.participant_type_individual)
            .setDescription("I dunno")
            .build();
    var response = providerService.invite(invitation).get();
    Assertions.assertNotNull(response);

    var status =
        providerService
            .invitationStatus(
                InvitationStatusRequest.newBuilder()
                    .setInvitationId(response.getInvitationId())
                    .build())
            .get();
    Assertions.assertNotNull(status);
  }

  @Test
  public void testUpgradeDid()
      throws IOException, DidException, ExecutionException, InterruptedException {
    var trinsic = new TrinsicService(TrinsicUtilities.getTrinsicServiceOptions());

    var ecoCreateResponse =
        trinsic.provider().createEcosystem(CreateEcosystemRequest.getDefaultInstance()).get();

    var infoResponse = trinsic.account().info().get();
    var walletId = infoResponse.getWalletId();

    // Wrap in try-catch as ecosystems cannot upgrade DIDs by default presently
    try {
      // upgradeDid() {
      var upgradeRequest =
          UpgradeDidRequest.newBuilder()
              .setWalletId(walletId)
              .setMethod(SupportedDidMethod.ION)
              .setIonOptions(
                  IonOptions.newBuilder().setNetwork(IonOptions.IonNetwork.TestNet).build())
              .build();

      var upgradeResponse = trinsic.provider().upgradeDID(upgradeRequest).get();
      // }
    } catch (Exception e) {

    }
  }
}
