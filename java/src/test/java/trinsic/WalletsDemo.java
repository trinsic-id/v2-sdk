package trinsic;

import org.junit.jupiter.api.Assertions;
import trinsic.okapi.DidException;
import trinsic.services.AccountService;
import trinsic.services.ProviderService;
import trinsic.services.WalletService;
import trinsic.services.common.v1.ProviderOuterClass;
import trinsic.services.universalwallet.v1.UniversalWalletOuterClass;

import java.io.IOException;
import java.util.concurrent.ExecutionException;

public class WalletsDemo {
    public static void main(String[] args) throws IOException, DidException, ExecutionException, InterruptedException {
        run();
    }

    public static void run() throws IOException, DidException, ExecutionException, InterruptedException {
        //Create ecosystem
        var providerService = new ProviderService(TrinsicUtilities.getTrinsicServiceOptions());
        var ecosystemResponse = providerService.createEcosystem(ProviderOuterClass.CreateEcosystemRequest.getDefaultInstance()).get();
        var ecosystemId = ecosystemResponse.getEcosystem().getId();

        //Create account
        var accountService = new AccountService(TrinsicUtilities.getTrinsicServiceOptions());
        accountService.setDefaultEcosystem(ecosystemId);

        var account = accountService.signIn().get();

        //Insert wallet item into wallet
        var walletService = new WalletService(TrinsicUtilities.getTrinsicServiceOptions(account));
        walletService.setDefaultEcosystem(ecosystemId);

        var credentialJson = "{\"foo\":\"bar\"}"; //Doesn't need to actually be a credential for this test

        // insertItemWallet() {
        var insertResponse = walletService.insertItem(
                UniversalWalletOuterClass.InsertItemRequest
                        .newBuilder()
                        .setItemJson(credentialJson)
                        .setItemType("VerifiableCredential")
                        .build()
        ).get();
        // }

        var itemId = insertResponse.getItemId();

        //Abuse scope to allow redeclaration of walletItems for docs injection niceness
        {
            //searchWalletBasic() {
            var walletItems = walletService.search().get();
            // }

            Assertions.assertNotNull(walletItems);
            Assertions.assertEquals(1, walletItems.getItemsCount());
        }


        //Delete item in-between searches
        var deleteResponse = walletService.deleteItem(
                UniversalWalletOuterClass.DeleteItemRequest.newBuilder().setItemId(itemId).build()
        ).get();

        Assertions.assertNotNull(deleteResponse);

        {
            //searchWalletSQL() {
            var walletItems = walletService.search(
                    UniversalWalletOuterClass.SearchRequest
                            .newBuilder()
                            .setQuery("SELECT c.id, c.type, c.data FROM c WHERE c.type = 'VerifiableCredential'")
                            .build()
            ).get();
            // }

            Assertions.assertNotNull(walletItems);
            Assertions.assertEquals(0, walletItems.getItemsCount());
        }

        walletService.shutdown();
        accountService.shutdown();
        providerService.shutdown();
    }
}
