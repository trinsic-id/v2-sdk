import org.junit.jupiter.api.Assertions
import trinsic.TrinsicUtilities
import trinsic.okapi.DidException
import trinsic.services.AccountServiceKt
import trinsic.services.TrustRegistryServiceKt
import trinsic.services.trustregistry.v1.TrustRegistryOuterClass
import java.io.IOException
import java.util.concurrent.ExecutionException

@Throws(IOException::class, DidException::class, ExecutionException::class, InterruptedException::class)
suspend fun main() {
    // Make sure you set the TEST_SERVER_ENDPOINT environment variable
    runTrustRegistryDemo()
}

@Throws(IOException::class, DidException::class, ExecutionException::class, InterruptedException::class)
suspend fun runTrustRegistryDemo() {
    val accountService = AccountServiceKt(TrinsicUtilities.getTrinsicServiceOptions())
    val account = accountService.signIn()
    val service = TrustRegistryServiceKt(TrinsicUtilities.getTrinsicServiceOptions(account))
    service.registerIssuer(
        TrustRegistryOuterClass.RegisterIssuerRequest.newBuilder().setDidUri("did:example:test")
            .setGovernanceFrameworkUri("https://example.com").setCredentialTypeUri("https://schema.org/Card").build()
    )
    service.registerVerifier(
        TrustRegistryOuterClass.RegisterVerifierRequest.newBuilder().setDidUri("did:example:test")
            .setGovernanceFrameworkUri("https://example.com").setPresentationTypeUri("https://schema.org/Card").build()
    )
    val issuerStatus = service.checkIssuerStatus(
        TrustRegistryOuterClass.CheckIssuerStatusRequest.newBuilder().setDidUri("did:example:test")
            .setGovernanceFrameworkUri("https://example.com").setCredentialTypeUri("https://schema.org/Card").build()
    )
    Assertions.assertEquals(TrustRegistryOuterClass.RegistrationStatus.CURRENT, issuerStatus.status)
    val verifierStatus = service.checkIssuerStatus(
        TrustRegistryOuterClass.CheckIssuerStatusRequest.newBuilder().setDidUri("did:example:test")
            .setGovernanceFrameworkUri("https://example.com").setCredentialTypeUri("https://schema.org/Card").build()
    )
    Assertions.assertEquals(TrustRegistryOuterClass.RegistrationStatus.CURRENT, verifierStatus.status)
    val searchResult = service.searchRegistry()
    Assertions.assertNotNull(searchResult)
    Assertions.assertNotNull(searchResult.itemsJson)
    Assertions.assertTrue(searchResult.itemsJson.isNotEmpty())
}
