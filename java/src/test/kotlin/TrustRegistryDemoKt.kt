import java.io.IOException
import java.util.*
import java.util.concurrent.ExecutionException
import org.junit.jupiter.api.Assertions
import trinsic.TrinsicUtilities
import trinsic.okapi.DidException
import trinsic.services.AccountServiceKt
import trinsic.services.TrustRegistryServiceKt
import trinsic.services.trustregistry.v1.*

@Throws(
    IOException::class, DidException::class, ExecutionException::class, InterruptedException::class)
suspend fun main() {
  // Make sure you set the TEST_SERVER_ENDPOINT environment variable
  runTrustRegistryDemo()
}

@Throws(
    IOException::class, DidException::class, ExecutionException::class, InterruptedException::class)
suspend fun runTrustRegistryDemo() {
  val accountService = AccountServiceKt(TrinsicUtilities.getTrinsicServiceOptions())
  val account = accountService.signIn()
  val service = TrustRegistryServiceKt(TrinsicUtilities.getTrinsicServiceOptions(account))

  val didUri = "did:example:test"
  val frameworkUri = "https://example.com/" + UUID.randomUUID()
  val typeUri = "https://schema.org/Card"

  val frameworkResponse =
      service.addFramework(
          AddFrameworkRequest.newBuilder()
              .setGovernanceFrameworkUri(frameworkUri)
              .setName("Example Framework" + UUID.randomUUID())
              .build())
  service.registerMember(
      RegisterMemberRequest.newBuilder()
          .setDidUri(didUri)
          .setFrameworkId(frameworkResponse.id)
          .setSchemaUri(typeUri)
          .build())

  val issuerStatus =
      service.getMembershipStatus(
          GetMembershipStatusRequest.newBuilder()
              .setDidUri(didUri)
              .setGovernanceFrameworkUri(frameworkUri)
              .setSchemaUri(typeUri)
              .build())
  Assertions.assertEquals(RegistrationStatus.CURRENT, issuerStatus.status)

  val searchResult = service.searchRegistry()
  Assertions.assertNotNull(searchResult)
  Assertions.assertNotNull(searchResult.itemsJson)
  Assertions.assertTrue(searchResult.itemsJson.isNotEmpty())

  service.unregisterMember(
      UnregisterMemberRequest.newBuilder()
          .setFrameworkId(frameworkResponse.id)
          .setDidUri(didUri)
          .setSchemaUri(typeUri)
          .build())
}
