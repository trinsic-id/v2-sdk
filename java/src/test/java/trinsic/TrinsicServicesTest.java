package trinsic;

import java.io.IOException;
import java.util.concurrent.ExecutionException;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;
import trinsic.okapi.DidException;
import trinsic.services.AccountService;
import trinsic.services.ProviderService;
import trinsic.services.account.v1.AccountInfoRequest;
import trinsic.services.provider.v1.CreateEcosystemRequest;
import trinsic.services.provider.v1.InvitationStatusRequest;
import trinsic.services.provider.v1.InviteRequest;
import trinsic.services.provider.v1.ParticipantType;

class TrinsicServicesTest {

  @Test
  public void testServiceBaseSetProfile() {
    var accountService = new AccountService(TrinsicUtilities.getTrinsicServiceOptions());

    AccountInfoRequest request = AccountInfoRequest.getDefaultInstance();
    Assertions.assertThrows(
        IllegalArgumentException.class, () -> accountService.buildMetadata(request));
    accountService.shutdown();
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
        () -> providerService.invite(InviteRequest.newBuilder().build()));
    Assertions.assertThrows(
        IllegalArgumentException.class,
        () -> providerService.invitationStatus(InvitationStatusRequest.newBuilder().build()));
  }
}
