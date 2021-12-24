import org.junit.jupiter.api.Assertions
import trinsic.TrinsicUtilities
import trinsic.okapi.DidException
import trinsic.services.AccountServiceKt
import trinsic.services.TrustRegistryServiceKt
import trinsic.services.trustregistry.v1.TrustRegistryOuterClass
import java.io.IOException
import java.util.concurrent.ExecutionException

@Throws(IOException::class, DidException::class, ExecutionException::class, InterruptedException::class)
fun main(args: Array<String>) {
    // Make sure you set the TEST_SERVER_ENDPOINT environment variable
    runTrustRegistryDemo()
}

@Throws(IOException::class, DidException::class, ExecutionException::class, InterruptedException::class)
suspend fun runTrustRegistryDemo() {
    val accountService = AccountServiceKt(null, TrinsicUtilities.getTestServerConfig(), null)
    val account = accountService.signIn(null).profile
    val service = TrustRegistryServiceKt(account, TrinsicUtilities.getTestServerConfig(), null)
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
    ).get()
    Assertions.assertEquals(TrustRegistryOuterClass.RegistrationStatus.CURRENT, issuerStatus.status)
    val verifierStatus = service.checkIssuerStatus(
        TrustRegistryOuterClass.CheckIssuerStatusRequest.newBuilder().setDidUri("did:example:test")
            .setGovernanceFrameworkUri("https://example.com").setCredentialTypeUri("https://schema.org/Card").build()
    ).get()
    Assertions.assertEquals(TrustRegistryOuterClass.RegistrationStatus.CURRENT, verifierStatus.status)
    val searchResult = service.searchRegistry(null)
    Assertions.assertNotNull(searchResult)
    Assertions.assertNotNull(searchResult.itemsJson)
    Assertions.assertTrue(searchResult.itemsJson.isNotEmpty())
}
