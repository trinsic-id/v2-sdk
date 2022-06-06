package trinsic;

import org.junit.jupiter.api.Assertions;
import trinsic.okapi.DidException;
import trinsic.services.AccountService;
import trinsic.services.TrustRegistryService;
import trinsic.services.trustregistry.v1.TrustRegistryOuterClass;

import java.io.IOException;
import java.util.UUID;
import java.util.concurrent.ExecutionException;

public class TrustRegistryDemo {
    public static void main(String[] args) throws IOException, DidException, ExecutionException, InterruptedException {
        run();
    }

    public static void run() throws IOException, DidException, ExecutionException, InterruptedException {
        var accountService = new AccountService(TrinsicUtilities.getTrinsicServiceOptions());
        var account = accountService.signIn().get();
        var service = new TrustRegistryService(TrinsicUtilities.getTrinsicServiceOptions(account));

        final String didUri = "did:example:test";
        final String frameworkUri = "https://example.com/" + UUID.randomUUID();
        final String typeUri = "https://schema.org/Card";

        // addFramework() {
        var frameworkResponse = service.addFramework(TrustRegistryOuterClass.AddFrameworkRequest.newBuilder().setGovernanceFrameworkUri(frameworkUri).setName("Example Framework" + UUID.randomUUID()).build()).get();
        // }

        // registerIssuerSample() {
        service.registerMember(TrustRegistryOuterClass.RegisterMemberRequest.newBuilder().setDidUri(didUri).setFrameworkId(frameworkResponse.getId()).setSchemaUri(typeUri).build());
        // }
        // checkIssuerStatus() {
        var issuerStatus = service.checkIssuerStatus(TrustRegistryOuterClass.GetMembershipStatusRequest.newBuilder().setDidUri(didUri).setGovernanceFrameworkUri(frameworkUri).setSchemaUri(typeUri).build()).get();
        // }
        Assertions.assertEquals(TrustRegistryOuterClass.RegistrationStatus.CURRENT, issuerStatus.getStatus());

        // searchTrustRegistry() {
        var searchResult = service.searchRegistry().get();
        // }
        Assertions.assertNotNull(searchResult);
        Assertions.assertNotNull(searchResult.getItemsJson());
        Assertions.assertTrue(searchResult.getItemsJson().length() > 0);

        // unregisterIssuer() {
        service.unregisterIssuer(TrustRegistryOuterClass.UnregisterMemberRequest.newBuilder().setFrameworkId(frameworkResponse.getId()).setDidUri(didUri).setSchemaUri(typeUri).build());
        // }
    }
}
