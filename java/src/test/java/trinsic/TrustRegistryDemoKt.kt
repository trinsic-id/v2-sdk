import java.io.IOException
import java.util.*
import java.util.concurrent.ExecutionException
import org.junit.jupiter.api.Assertions
import trinsic.TrinsicUtilities
import trinsic.services.TrinsicServiceKt
import trinsic.services.trustregistry.v1.*
import trinsic.services.universalwallet.v1.CreateWalletRequest

@Throws(IOException::class, ExecutionException::class, InterruptedException::class)
suspend fun main() {
  // Make sure you set the TEST_SERVER_ENDPOINT environment variable
  runTrustRegistryDemo()
}

@Throws(IOException::class, ExecutionException::class, InterruptedException::class)
suspend fun runTrustRegistryDemo() {
  val trinsic = TrinsicServiceKt(TrinsicUtilities.getTrinsicTrinsicOptions())
  var createWallet =
      trinsic
          .wallet()
          .createWallet(CreateWalletRequest.newBuilder().setEcosystemId("default").build())
  trinsic.setAuthToken(createWallet.authToken)

  val didUri = "did:example:test"
  val typeUri = "https://schema.org/Card"

  // registerIssuerSample() {
  val memberResponse =
      trinsic
          .trustRegistry()
          .registerMember(
              RegisterMemberRequest.newBuilder()
                  .setDidUri(didUri)
                  .setSchemaUri(typeUri)
                  .build())
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

  // unregisterIssuer() {
  trinsic
      .trustRegistry()
      .unregisterMember(
          UnregisterMemberRequest.newBuilder()
              .setDidUri(didUri)
              .setSchemaUri(typeUri)
              .build())
  // }
  trinsic.shutdown()
}
