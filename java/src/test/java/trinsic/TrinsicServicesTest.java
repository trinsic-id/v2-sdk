package trinsic;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;
import trinsic.okapi.DidException;
import trinsic.services.AccountService;
import trinsic.services.ProviderService;
import trinsic.services.common.v1.ProviderOuterClass;

import java.io.IOException;
import java.util.concurrent.ExecutionException;

class TrinsicServicesTest {

  @Test
  public void testServiceBaseSetProfile() {
    var accountService = new AccountService(TrinsicUtilities.getTrinsicServiceOptions());

    Assertions.assertThrows(
        IllegalArgumentException.class, () -> accountService.buildMetadata(null));
    accountService.shutdown();
  }

  @Test
  @Disabled
  public void testProviderServiceInviteParticipant()
      throws IOException, DidException, ExecutionException, InterruptedException {
    var accountService = new AccountService(TrinsicUtilities.getTrinsicServiceOptions());
    var account = accountService.signIn().get();

    var providerService = new ProviderService(TrinsicUtilities.getTrinsicServiceOptions(account));
    var ecosystem =
        providerService
            .createEcosystem(
                ProviderOuterClass.CreateEcosystemRequest.newBuilder()
                    .setName("Test Ecosystem")
                    .build())
            .get();
    var invitation =
        ProviderOuterClass.InviteRequest.newBuilder()
            .setParticipant(ProviderOuterClass.ParticipantType.participant_type_individual)
            .setDescription("I dunno")
            .build();
    var response = providerService.invite(invitation).get();
    Assertions.assertNotNull(response);

    var status =
        providerService
            .invitationStatus(
                ProviderOuterClass.InvitationStatusRequest.newBuilder()
                    .setInvitationId(response.getInvitationId())
                    .build())
            .get();
    Assertions.assertNotNull(status);
  }

  @Test
  public void testTrinsicServiceDemo()
      throws IOException, DidException, ExecutionException, InterruptedException {
    VaccineDemo.run();
  }

  @Test
  public void testTrustRegistryDemo()
      throws IOException, DidException, ExecutionException, InterruptedException {
    TrustRegistryDemo.run();
  }

  @Test
  public void testEcosystemsDemo()
      throws IOException, DidException, ExecutionException, InterruptedException {
    EcosystemsDemo.run();
  }

  @Test
  public void testTemplatesDemo()
      throws IOException, ExecutionException, InterruptedException, DidException {
    TemplatesDemo.run();
  }

  @Test
  public void testWalletDemo()
      throws IOException, ExecutionException, InterruptedException, DidException {
    WalletsDemo.run();
  }

  @Test
  public void testCredentialsDemo()
      throws IOException, ExecutionException, InterruptedException, DidException {
    CredentialsDemo.run();
  }

  @Test
  public void testProviderServiceInputValidation() {
    var providerService = new ProviderService(TrinsicUtilities.getTrinsicServiceOptions());
    Assertions.assertThrows(
        IllegalArgumentException.class,
        () ->
            providerService.invite(
                ProviderOuterClass.InviteRequest.newBuilder().build()));
    Assertions.assertThrows(
        IllegalArgumentException.class,
        () ->
            providerService.invitationStatus(
                ProviderOuterClass.InvitationStatusRequest.newBuilder().build()));
  }
}
