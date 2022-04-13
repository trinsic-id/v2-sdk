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
        run();
    }

    public static void run() throws IOException, DidException, ExecutionException, InterruptedException {
        var accountService = new AccountService(TrinsicUtilities.getTrinsicServiceOptions());
        var account = accountService.signIn().get();
        var service = new TrustRegistryService(TrinsicUtilities.getTrinsicServiceOptions(account));

        final String didUri = "did:example:test";
        final String frameworkUri = "https://example.com";
        final String typeUri = "https://schema.org/Card";
        // registerIssuer() {
        service.registerIssuer(TrustRegistryOuterClass.RegisterIssuerRequest.newBuilder()
                .setDidUri(didUri).setGovernanceFrameworkUri(frameworkUri).setCredentialTypeUri(typeUri).build());
        // }
        // registerVerifier() {
        service.registerVerifier(TrustRegistryOuterClass.RegisterVerifierRequest.newBuilder().setDidUri(didUri).setGovernanceFrameworkUri(frameworkUri).setPresentationTypeUri(typeUri).build());
        // }
        // checkIssuerStatus() {
        var issuerStatus = service.checkIssuerStatus(TrustRegistryOuterClass.CheckIssuerStatusRequest.newBuilder().setDidUri(didUri).setGovernanceFrameworkUri(frameworkUri).setCredentialTypeUri(typeUri).build()).get();
        // }
        Assertions.assertEquals(TrustRegistryOuterClass.RegistrationStatus.CURRENT, issuerStatus.getStatus());

        // checkVerifierStatus() {
        var verifierStatus = service.checkIssuerStatus(TrustRegistryOuterClass.CheckIssuerStatusRequest.newBuilder().setDidUri(didUri).setGovernanceFrameworkUri(frameworkUri).setCredentialTypeUri(typeUri).build()).get();
        // }
        Assertions.assertEquals(TrustRegistryOuterClass.RegistrationStatus.CURRENT, verifierStatus.getStatus());
    
        // searchTrustRegistry() {
        var searchResult = service.searchRegistry().get();
        // }
        Assertions.assertNotNull(searchResult);
        Assertions.assertNotNull(searchResult.getItemsJson());
        Assertions.assertTrue(searchResult.getItemsJson().length() > 0);
    }
}
