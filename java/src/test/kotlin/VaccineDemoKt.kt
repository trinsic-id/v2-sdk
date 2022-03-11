import com.google.gson.Gson
import org.junit.jupiter.api.Assertions
import trinsic.TrinsicUtilities
import trinsic.okapi.DidException
import trinsic.services.AccountServiceKt
import trinsic.services.CredentialsServiceKt
import trinsic.services.WalletServiceKt
import trinsic.services.account.v1.AccountOuterClass.AccountProfile
import java.io.File
import java.io.IOException
import java.nio.file.Path
import java.util.concurrent.ExecutionException

suspend fun main(args: Array<String>) {
    runVaccineDemo()
}

@Throws(IOException::class, DidException::class, ExecutionException::class, InterruptedException::class)
suspend fun runVaccineDemo() {
    // createService() {
    val serverConfig = TrinsicUtilities.getTrinsicServiceOptions()
    println("Connecting to:\n$serverConfig")
    val accountService = AccountServiceKt(TrinsicUtilities.getTrinsicServiceOptions())
    // }

    // setupActors() {
    // Create 3 different profiles for each participant in the scenario
    var allison = accountService.signIn(null)
    val clinic = accountService.signIn(null)
    val airline = accountService.signIn(null)
    // }

    // createService() {
    val walletService = WalletServiceKt(TrinsicUtilities.getTrinsicServiceOptions(allison))
    val credentialsService = CredentialsServiceKt(TrinsicUtilities.getTrinsicServiceOptions(clinic))
    // }

    // storeAndRecallProfile() {
    File("allison.txt").writeText(allison)

    // Create profile from existing data
    allison = File("allison.txt").readText().trim()
    // }

    // issueCredential() {
    // Sign a credential as the clinic and send it to Allison
    val credentialJson = Gson().fromJson(File(vaccineCertUnsignedPath()).readText(), HashMap::class.java)
    val credential = credentialsService.issueCredential(credentialJson)
    println("Credential: $credential")
    // }

    // storeCredential() {
    // Alice stores the credential in her cloud wallet.
    val itemId = walletService.insertItem(credential)
    println("item id = $itemId")
    // }

    // shareCredential() {
    // Allison shares the credential with the venue.
    // The venue has communicated with Allison the details of the credential
    // that they require expressed as a JSON-LD frame.
    credentialsService.setProfile(allison)
    val proofRequestJson = Gson().fromJson(
        File(vaccineCertFramePath()).readText(),
        HashMap::class.java
    )
    val credentialProof = credentialsService.createProof(itemId, proofRequestJson)
    println("Proof: $credentialProof")
    // }

    // verifyCredential() {
    // The airline verifies the credential
    credentialsService.setProfile(airline)
    val isValid = credentialsService.verifyProof(credentialProof)
    println("Verification result: $isValid")
    Assertions.assertTrue(isValid)
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