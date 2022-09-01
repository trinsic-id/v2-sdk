import java.io.File
import java.io.IOException
import java.nio.file.Path
import java.util.concurrent.ExecutionException
import org.junit.jupiter.api.Assertions
import trinsic.TrinsicUtilities
import trinsic.okapi.DidException
import trinsic.services.AccountServiceKt
import trinsic.services.CredentialServiceKt
import trinsic.services.WalletServiceKt
import trinsic.services.universalwallet.v1.*
import trinsic.services.verifiablecredentials.v1.*

suspend fun main() {
  runVaccineDemo()
}

@Throws(
    IOException::class, DidException::class, ExecutionException::class, InterruptedException::class)
suspend fun runVaccineDemo() {
  // createService() {
  val serverConfig = TrinsicUtilities.getTrinsicServiceOptions()
  println("Connecting to:\n$serverConfig")
  val accountService = AccountServiceKt(TrinsicUtilities.getTrinsicServiceOptions())
  // }

  // setupActors() {
  // Create 3 different profiles for each participant in the scenario
  var allison = accountService.signIn()
  val clinic = accountService.signIn()
  val airline = accountService.signIn()
  // }

  // createService() {
  val walletService = WalletServiceKt(TrinsicUtilities.getTrinsicServiceOptions(allison))
  val credentialsService = CredentialServiceKt(TrinsicUtilities.getTrinsicServiceOptions(clinic))
  // }

  // storeAndRecallProfile() {
  File("allison.txt").writeText(allison)

  // Create profile from existing data
  allison = File("allison.txt").readText().trim()
  // }

  // issueCredential() {
  // Sign a credential as the clinic and send it to Allison
  val credentialJson = File(vaccineCertUnsignedPath()).readText()
  val credential =
      credentialsService.issueCredential(
          IssueRequest.newBuilder().setDocumentJson(credentialJson).build())
  println("Credential: $credential")
  // }

  // storeCredential() {
  // Alice stores the credential in her cloud wallet.
  val response =
      walletService.insertItem(
          InsertItemRequest.newBuilder().setItemJson(credential.signedDocumentJson).build())
  val itemId = response.itemId
  println("item id = $itemId")
  // }

  // shareCredential() {
  // Allison shares the credential with the venue.
  // The venue has communicated with Allison the details of the credential
  // that they require expressed as a JSON-LD frame.
  credentialsService.setAuthToken(allison)
  val proofRequestJson = File(vaccineCertFramePath()).readText()
  val createProofResponse =
      credentialsService.createProof(
          CreateProofRequest.newBuilder()
              .setItemId(itemId)
              .setRevealDocumentJson(proofRequestJson)
              .build())
  val credentialProof = createProofResponse.proofDocumentJson
  println("Proof: $credentialProof")
  // }

  // verifyCredential() {
  // The airline verifies the credential
  credentialsService.setAuthToken(airline)
  val verifyResult =
      credentialsService.verifyProof(
          VerifyProofRequest.newBuilder().setProofDocumentJson(credentialProof).build())
  println("Verification result: ${verifyResult.isValid}")
  Assertions.assertTrue(verifyResult.isValid)
  // }
  accountService.shutdown()
  credentialsService.shutdown()
  walletService.shutdown()
}

// pathData() {
fun baseTestPath(): String {
  return Path.of(File("").absolutePath, "..", "devops", "testdata").toAbsolutePath().toString()
}

fun vaccineCertUnsignedPath(): String {
  return Path.of(baseTestPath(), "vaccination-certificate-unsigned.jsonld").toString()
}

fun vaccineCertFramePath(): String {
  return Path.of(baseTestPath(), "vaccination-certificate-frame.jsonld").toString()
}
// }
