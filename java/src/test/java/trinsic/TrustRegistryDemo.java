package trinsic;

import org.junit.jupiter.api.Assertions;
import trinsic.okapi.DidException;
import trinsic.services.AccountService;
import trinsic.services.TrustRegistryService;
import trinsic.services.trustregistry.v1.TrustRegistryOuterClass;

import java.io.IOException;
import java.util.concurrent.ExecutionException;

public class TrustRegistryDemo {
    public static void main(String[] args) throws IOException, DidException, ExecutionException, InterruptedException {
        // Make sure you set the TEST_SERVER_ENDPOINT environment variable
        run();
    }

    public static void run() throws IOException, DidException, ExecutionException, InterruptedException {
        var accountService = new AccountService(null,TrinsicUtilities.getTestServerConfig());
        var account = accountService.signIn(null).get().getProfile();
        var service = new TrustRegistryService(account, TrinsicUtilities.getTestServerConfig());

        service.registerIssuer(TrustRegistryOuterClass.RegisterIssuerRequest.newBuilder()
                .setDidUri("did:example:test").setGovernanceFrameworkUri("https://example.com").setCredentialTypeUri("https://schema.org/Card").build());

        service.registerVerifier(TrustRegistryOuterClass.RegisterVerifierRequest.newBuilder().setDidUri("did:example:test").setGovernanceFrameworkUri("https://example.com").setPresentationTypeUri("https://schema.org/Card").build());

        var issuerStatus = service.checkIssuerStatus(TrustRegistryOuterClass.CheckIssuerStatusRequest.newBuilder().setDidUri("did:example:test").setGovernanceFrameworkUri("https://example.com").setCredentialTypeUri("https://schema.org/Card").build()).get();
        Assertions.assertEquals(TrustRegistryOuterClass.RegistrationStatus.CURRENT, issuerStatus.getStatus());

        var verifierStatus = service.checkIssuerStatus(TrustRegistryOuterClass.CheckIssuerStatusRequest.newBuilder().setDidUri("did:example:test").setGovernanceFrameworkUri("https://example.com").setCredentialTypeUri("https://schema.org/Card").build()).get();
        Assertions.assertEquals(TrustRegistryOuterClass.RegistrationStatus.CURRENT, verifierStatus.getStatus());

        var searchResult = service.searchRegistry(null).get();

        Assertions.assertNotNull(searchResult);
        Assertions.assertNotNull(searchResult.getItemsJson());
        Assertions.assertTrue(searchResult.getItemsJson().length() > 0);
    }
}
