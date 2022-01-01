package trinsic;

import org.junit.jupiter.api.Assertions;
import trinsic.okapi.DidException;
import trinsic.services.AccountService;
import trinsic.services.ProviderService;
import trinsic.services.common.v1.ProviderOuterClass;

import java.io.IOException;
import java.util.concurrent.ExecutionException;

public class EcosystemsDemo {
    public static void main(String[] args) throws IOException, DidException, ExecutionException, InterruptedException {
        // Make sure you set the TEST_SERVER_ENDPOINT environment variable
        run();
    }

    public static void run() throws IOException, DidException, ExecutionException, InterruptedException {
        var accountService = new AccountService(null, TrinsicUtilities.getTestServerConfig());
        var account = accountService.signIn(null).get().getProfile();
        var service = new ProviderService(account, TrinsicUtilities.getTestServerConfig());

        var ecosystem = service.createEcosystem(ProviderOuterClass.CreateEcosystemRequest.newBuilder().setName("Test Ecosystem").setDescription("My ecosystem").setUri("https://example.com").build()).get();

        Assertions.assertNotNull(ecosystem);
        Assertions.assertNotNull(ecosystem.getId());
        Assertions.assertTrue(ecosystem.getId().startsWith("urn:trinsic:ecosystems:"));

        var actualList = service.listEcosystems(ProviderOuterClass.ListEcosystemsRequest.newBuilder().build()).get();
        Assertions.assertNotNull(actualList);
        Assertions.assertTrue(actualList.size() > 0);
    }
}
