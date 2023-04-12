import org.junit.jupiter.api.Assertions
import trinsic.TrinsicUtilities
import trinsic.okapi.DidException
import trinsic.services.TrinsicServiceKt
import trinsic.services.provider.v1.CreateEcosystemRequest
import java.io.IOException
import java.util.concurrent.ExecutionException

@Throws(
    IOException::class, DidException::class, ExecutionException::class, InterruptedException::class)
suspend fun main() {
  runEcosystemsDemo()
}

@Throws(
    IOException::class, DidException::class, ExecutionException::class, InterruptedException::class)
suspend fun runEcosystemsDemo() {
  val service = TrinsicServiceKt(TrinsicUtilities.getTrinsicTrinsicOptions())
  val response =
      service.provider().createEcosystem(
          CreateEcosystemRequest.newBuilder().setDescription("My ecosystem").build())
  Assertions.assertNotNull(response.ecosystem)
  Assertions.assertNotNull(response.ecosystem.id)
  Assertions.assertTrue(response.ecosystem.id.startsWith("urn:trinsic:ecosystems:"))
  //    val actualList =
  // service.listEcosystems(ProviderOuterClass.ListEcosystemsRequest.newBuilder().build())
  //    Assertions.assertNotNull(actualList)
  //    Assertions.assertTrue(actualList.isNotEmpty())
  service.shutdown()
}
