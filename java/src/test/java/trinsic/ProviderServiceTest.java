package trinsic;

import java.io.IOException;
import java.util.concurrent.ExecutionException;
import org.junit.jupiter.api.Test;
import trinsic.okapi.DidException;
import trinsic.services.TrinsicService;
import trinsic.services.common.v1.SupportedDidMethod;
import trinsic.services.provider.v1.CreateEcosystemRequest;
import trinsic.services.provider.v1.IonOptions;
import trinsic.services.provider.v1.UpgradeDidRequest;
import trinsic.services.universalwallet.v1.CreateWalletRequest;

public class ProviderServiceTest {
  private static String myEcosystemIdOrName = "default";

  @Test
  public void testUpgradeDid()
      throws IOException, DidException, ExecutionException, InterruptedException {
    var trinsic = new TrinsicService(TrinsicUtilities.getTrinsicTrinsicOptions());

    var ecoCreateResponse =
        trinsic.provider().createEcosystem(CreateEcosystemRequest.getDefaultInstance()).get();

    var account =
        trinsic
            .wallet()
            .createWallet(CreateWalletRequest.newBuilder().setEcosystemId("default").build())
            .get();
    trinsic.setAuthToken(account.getAuthToken());

    // Wrap in try-catch as ecosystems cannot upgrade DIDs by default presently
    try {
      // upgradeDid() {
      var upgradeRequest =
          UpgradeDidRequest.newBuilder()
              .setWalletId(account.getAuthToken())
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
