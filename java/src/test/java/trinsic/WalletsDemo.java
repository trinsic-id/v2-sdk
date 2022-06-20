package trinsic;

import org.junit.jupiter.api.Assertions;
import trinsic.okapi.DidException;
import trinsic.services.TrinsicService;
import trinsic.services.common.v1.ProviderOuterClass;
import trinsic.services.universalwallet.v1.UniversalWalletOuterClass;

import java.io.IOException;
import java.util.concurrent.ExecutionException;

public class WalletsDemo {
  public static void main(String[] args)
      throws IOException, DidException, ExecutionException, InterruptedException {
    run();
  }

  public static void run()
      throws IOException, DidException, ExecutionException, InterruptedException {
    // Create ecosystem
    var trinsicService = new TrinsicService(TrinsicUtilities.getTrinsicServiceOptions());
    var ecosystemResponse =
        trinsicService.provider()
            .createEcosystem(ProviderOuterClass.CreateEcosystemRequest.getDefaultInstance())
            .get();
    var ecosystemId = ecosystemResponse.getEcosystem().getId();

    // Create account
    trinsicService.account().setDefaultEcosystem(ecosystemId);

    var account = trinsicService.account().signIn().get();

    // Insert wallet item into wallet
    trinsicService.wallet().setDefaultEcosystem(ecosystemId);

    var credentialJson =
        "{\"foo\":\"bar\"}"; // Doesn't need to actually be a credential for this test

    // insertItemWallet() {
    var insertResponse =
            trinsicService.wallet()
            .insertItem(
                UniversalWalletOuterClass.InsertItemRequest.newBuilder()
                    .setItemJson(credentialJson)
                    .setItemType("VerifiableCredential")
                    .build())
            .get();
    // }

    var itemId = insertResponse.getItemId();

    // Abuse scope to allow redeclaration of walletItems for docs injection niceness
    {
      // searchWalletBasic() {
      var walletItems = trinsicService.wallet().search().get();
      // }

      Assertions.assertNotNull(walletItems);
      Assertions.assertEquals(1, walletItems.getItemsCount());
    }

    // Delete item in-between searches
    var deleteResponse =
            trinsicService.wallet()
            .deleteItem(
                UniversalWalletOuterClass.DeleteItemRequest.newBuilder().setItemId(itemId).build())
            .get();

    Assertions.assertNotNull(deleteResponse);

    {
      // searchWalletSQL() {
      var walletItems =
              trinsicService.wallet()
              .search(
                  UniversalWalletOuterClass.SearchRequest.newBuilder()
                      .setQuery(
                          "SELECT c.id, c.type, c.data FROM c WHERE c.type ="
                              + " 'VerifiableCredential'")
                      .build())
              .get();
      // }

      Assertions.assertNotNull(walletItems);
      Assertions.assertEquals(0, walletItems.getItemsCount());
    }

    System.out.println("Wallets demo successful");
  }
}
