import org.junit.jupiter.api.Assertions
import trinsic.TrinsicUtilities
import trinsic.okapi.DidException
import trinsic.services.AccountServiceKt
import trinsic.services.ProviderServiceKt
import trinsic.services.common.v1.ProviderOuterClass
import java.io.IOException
import java.util.concurrent.ExecutionException

@Throws(IOException::class, DidException::class, ExecutionException::class, InterruptedException::class)
suspend fun main() {
    // Make sure you set the TEST_SERVER_ENDPOINT environment variable
    runEcosystemsDemo()
}

@Throws(IOException::class, DidException::class, ExecutionException::class, InterruptedException::class)
suspend fun runEcosystemsDemo() {
    val accountService = AccountServiceKt(TrinsicUtilities.getTestServerConfig())
    val account = accountService.signIn(null).profile
    val service = ProviderServiceKt(account, TrinsicUtilities.getTestServerConfig())
    val ecosystem = service.createEcosystem(
        ProviderOuterClass.CreateEcosystemRequest.newBuilder().setName("Test Ecosystem").setDescription("My ecosystem")
            .setUri("https://example.com").build()
    )
    Assertions.assertNotNull(ecosystem)
    Assertions.assertNotNull(ecosystem.id)
    Assertions.assertTrue(ecosystem.id.startsWith("urn:trinsic:ecosystems:"))
    val actualList = service.listEcosystems(ProviderOuterClass.ListEcosystemsRequest.newBuilder().build())
    Assertions.assertNotNull(actualList)
    Assertions.assertTrue(actualList.isNotEmpty())
}