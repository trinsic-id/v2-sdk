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
    runEcosystemsDemo()
}

@Throws(IOException::class, DidException::class, ExecutionException::class, InterruptedException::class)
suspend fun runEcosystemsDemo() {
    val accountService = AccountServiceKt(TrinsicUtilities.getTrinsicServiceOptions())
    val account = accountService.signIn(null)
    val service = ProviderServiceKt(TrinsicUtilities.getTrinsicServiceOptions(account))
    val response = service.createEcosystem(
        ProviderOuterClass.CreateEcosystemRequest.newBuilder().setName("test-sdk-" + java.util.UUID.randomUUID()).setDescription("My ecosystem")
            .setUri("https://example.com").build()
    )
    Assertions.assertNotNull(response.ecosystem)
    Assertions.assertNotNull(response.ecosystem.id)
    Assertions.assertTrue(response.ecosystem.id.startsWith("urn:trinsic:ecosystems:"))
//    val actualList = service.listEcosystems(ProviderOuterClass.ListEcosystemsRequest.newBuilder().build())
//    Assertions.assertNotNull(actualList)
//    Assertions.assertTrue(actualList.isNotEmpty())
}