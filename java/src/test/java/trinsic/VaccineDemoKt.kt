import com.google.gson.Gson
import com.google.protobuf.InvalidProtocolBufferException
import trinsic.TrinsicUtilities
import trinsic.okapi.DidException
import trinsic.services.TemplateServiceKt
import trinsic.services.TrinsicServiceKt
import trinsic.services.provider.v1.CreateEcosystemRequest
import trinsic.services.universalwallet.v1.InsertItemRequest
import trinsic.services.verifiablecredentials.templates.v1.CreateCredentialTemplateRequest
import trinsic.services.verifiablecredentials.templates.v1.FieldType
import trinsic.services.verifiablecredentials.templates.v1.TemplateField
import trinsic.services.verifiablecredentials.v1.CreateProofRequest
import trinsic.services.verifiablecredentials.v1.IssueFromTemplateRequest
import trinsic.services.verifiablecredentials.v1.VerifyProofRequest
import java.io.File
import java.io.IOException
import java.nio.file.Path
import java.util.concurrent.ExecutionException

suspend fun main() {
  runVaccineDemo()
}

@Throws(
    IOException::class, DidException::class, ExecutionException::class, InterruptedException::class)
suspend fun runVaccineDemo() {
    val serverConfig = TrinsicUtilities.getTrinsicServiceOptions()

    val trinsic = TrinsicServiceKt(serverConfig)

    // createEcosystem() {

    // createEcosystem() {
    val ecosystemResponse = trinsic.provider().createEcosystem(CreateEcosystemRequest.getDefaultInstance())

    val ecosystemId = ecosystemResponse.ecosystem.id
    // }

    // setupActors() {
    // Create an account for each participant in the scenario
    // }

    // setupActors() {
    // Create an account for each participant in the scenario
    val allison = trinsic.account().loginAnonymous(ecosystemId)
    val clinic = trinsic.account().loginAnonymous(ecosystemId)
    val airline = trinsic.account().loginAnonymous(ecosystemId)
    // }

    // Create template
    // }

    // Create template
    val templateId = defineTemplate(trinsic.template(), clinic)

    // Issue credential

    // Issue credential
    val credential = issueCredential(trinsic, templateId, clinic)

    println("Credential: $credential")

    // storeCredential() {
    // Set active profile to 'allison' so we can manage her cloud wallet

    // storeCredential() {
    // Set active profile to 'allison' so we can manage her cloud wallet
    trinsic.setAuthToken(allison)

    // Allison stores the credential in her cloud wallet.

    // Allison stores the credential in her cloud wallet.
    val insertItemResponse = trinsic
        .wallet()
        .insertItem(InsertItemRequest.newBuilder().setItemJson(credential).build())


    val itemId = insertItemResponse.itemId
    // }

    // }
    println("item id = $itemId")

    // shareCredential() {
    // Set active profile to 'allison' so we can create a proof using her key

    // shareCredential() {
    // Set active profile to 'allison' so we can create a proof using her key
    trinsic.setAuthToken(allison)

    // Allison shares the credential with the venue

    // Allison shares the credential with the venue
    val createProofResponse = trinsic
        .credential()
        .createProof(
            CreateProofRequest.newBuilder().setItemId(itemId).build()
        )


    val credentialProof = createProofResponse.proofDocumentJson
    // }

    // }
    println("Proof: $credentialProof")

    // verifyCredential() {

    // verifyCredential() {
    trinsic.setAuthToken(airline)

    // Verify that Allison has provided a valid proof

    // Verify that Allison has provided a valid proof
    val verifyProofResponse = trinsic
        .credential()
        .verifyProof(
            VerifyProofRequest.newBuilder()
                .setProofDocumentJson(credentialProof).build()
        )


    val isValid = verifyProofResponse.isValid
    // }

    // }
    println("Verification result: $isValid")
    assert(isValid)
}

@Throws(
    InvalidProtocolBufferException::class,
    DidException::class,
    ExecutionException::class,
    InterruptedException::class
)
private suspend fun issueCredential(
    trinsicService: TrinsicServiceKt, templateId: String, clinic: String
): String {
    // issueCredential() {
    // Set active profile to 'clinic' so we can issue credential signed
    // with the clinic's signing keys
    trinsicService.setAuthToken(clinic)

    // Prepare credential values
    val valuesMap = HashMap<String, Any>()
    valuesMap["firstName"] = "Allison"
    valuesMap["lastName"] = "Allissonne"
    valuesMap["batchNumber"] = "123454321"
    valuesMap["countryOfVaccination"] = "US"

    // Serialize values to JSON
    val valuesJson = Gson().toJson(valuesMap)

    // Issue credential
    val issueResponse = trinsicService
        .credential()
        .issueFromTemplate(
            IssueFromTemplateRequest.newBuilder()
                .setTemplateId(templateId)
                .setValuesJson(valuesJson)
                .build()
        )

    // }
    return issueResponse.documentJson
}

@Throws(
    InvalidProtocolBufferException::class,
    DidException::class,
    ExecutionException::class,
    InterruptedException::class
)
private suspend fun defineTemplate(templateService: TemplateServiceKt, clinic: String): String {
    // createTemplate() {
    // Set active profile to 'clinic'
    templateService.setAuthToken(clinic)

    // Define fields for template
    val fields = HashMap<String, TemplateField>()
    fields["firstName"] = TemplateField.newBuilder().setDescription("First name of vaccine recipient").build()
    fields["lastName"] = TemplateField.newBuilder().setDescription("Last name of vaccine recipient").build()
    fields["batchNumber"] = TemplateField.newBuilder()
        .setType(FieldType.STRING)
        .setDescription("Batch number of vaccine")
        .build()
    fields["countryOfVaccination"] = TemplateField.newBuilder()
        .setDescription("Country in which the subject was vaccinated")
        .build()

    // Create template request
    val templateRequest = CreateCredentialTemplateRequest.newBuilder()
        .setName("VaccinationCertificate")
        .setAllowAdditionalFields(false)
        .putAllFields(fields)
        .build()

    // Execute template creation
    val template = templateService.create(templateRequest)
    // }
    return template.data.id
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
