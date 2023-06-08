import java.io.IOException
import java.util.*
import java.util.concurrent.ExecutionException
import org.junit.jupiter.api.Assertions
import trinsic.TrinsicUtilities
import trinsic.services.TrinsicServiceKt
import trinsic.services.provider.v1.CreateEcosystemRequest
import trinsic.services.trustregistry.v1.*

@Throws(IOException::class, ExecutionException::class, InterruptedException::class)
suspend fun main() {
  // Make sure you set the TEST_SERVER_ENDPOINT environment variable
  runTrustRegistryDemo()
}

@Throws(IOException::class, ExecutionException::class, InterruptedException::class)
suspend fun runTrustRegistryDemo() {
  val trinsic = TrinsicServiceKt(TrinsicUtilities.getTrinsicTrinsicOptions())
  var eco = trinsic.provider().createEcosystem(CreateEcosystemRequest.newBuilder().build())

  val didUri = "did:example:test"
  val typeUri = "https://schema.org/Card"

  // registerIssuerSample() {
  val memberResponse =
      trinsic
          .trustRegistry()
          .registerMember(
              RegisterMemberRequest.newBuilder().setDidUri(didUri).setSchemaUri(typeUri).build())
  // }
  // checkIssuerStatus() {
  val issuerStatus =
      trinsic
          .trustRegistry()
          .getMemberAuthorizationStatus(
              GetMemberAuthorizationStatusRequest.newBuilder()
                  .setDidUri(didUri)
                  .setSchemaUri(typeUri)
                  .build())

  // }
  Assertions.assertEquals(RegistrationStatus.CURRENT, issuerStatus.status)

  // listMembers() {
  val members =
      trinsic
          .trustRegistry()
          .listAuthorizedMembers(
              ListAuthorizedMembersRequest.newBuilder().setSchemaUri(typeUri).build())
  // }

  // getMember() {
  val member =
      trinsic.trustRegistry().getMember(GetMemberRequest.newBuilder().setDidUri(typeUri).build())
  // }

  // unregisterIssuer() {
  trinsic
      .trustRegistry()
      .unregisterMember(
          UnregisterMemberRequest.newBuilder().setDidUri(didUri).setSchemaUri(typeUri).build())
  // }
  trinsic.shutdown()
}
