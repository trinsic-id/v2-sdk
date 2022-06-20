package trinsic;

import com.google.gson.Gson;
import com.google.protobuf.InvalidProtocolBufferException;
import trinsic.okapi.DidException;
import trinsic.services.CredentialTemplateService;
import trinsic.services.TrinsicService;
import trinsic.services.common.v1.ProviderOuterClass;
import trinsic.services.universalwallet.v1.UniversalWalletOuterClass;
import trinsic.services.verifiablecredentials.templates.v1.Templates;
import trinsic.services.verifiablecredentials.v1.VerifiableCredentials;

import java.io.IOException;
import java.util.HashMap;
import java.util.concurrent.ExecutionException;

public class VaccineDemo {

  public static void main(String[] args)
      throws IOException, DidException, ExecutionException, InterruptedException {
    run();
  }

  public static void run()
      throws IOException, DidException, ExecutionException, InterruptedException {
    var serverConfig =
        TrinsicUtilities.getTrinsicServiceOptions().toBuilder()
            .setServerEndpoint("dev-internal.trinsic.cloud")
            .build();

    var trinsicService = new TrinsicService(serverConfig);

    // createEcosystem() {
    var ecosystemResponse =
            trinsicService.provider()
            .createEcosystem(ProviderOuterClass.CreateEcosystemRequest.getDefaultInstance())
            .get();

    var ecosystemId = ecosystemResponse.getEcosystem().getId();
    // }

    // Set default ecosystem on config
    serverConfig = serverConfig.toBuilder().setDefaultEcosystem(ecosystemId).build();
    trinsicService.setDefaultEcosystem(ecosystemId);

    // setupActors() {
    // Create an account for each participant in the scenario
    var allison = trinsicService.account().signIn().get();
    var clinic = trinsicService.account().signIn().get();
    var airline = trinsicService.account().signIn().get();
    // }

    // Create template
    var templateId = DefineTemplate(trinsicService.credentialTemplateService(), clinic);

    // Issue credential
    var credential = IssueCredential(trinsicService, templateId, clinic);

    System.out.println("Credential: " + credential);

    // storeCredential() {
    // Set active profile to 'allison' so we can manage her cloud wallet
    trinsicService.wallet().setProfile(allison);

    // Allison stores the credential in her cloud wallet.
    var insertItemResponse =
        trinsicService.wallet()
            .insertItem(
                UniversalWalletOuterClass.InsertItemRequest.newBuilder()
                    .setItemJson(credential)
                    .build())
            .get();

    final var itemId = insertItemResponse.getItemId();
    // }

    System.out.println("item id = " + itemId);

    // shareCredential() {
    // Set active profile to 'allison' so we can create a proof using her key
    trinsicService.credential().setProfile(allison);

    // Allison shares the credential with the venue
    var createProofResponse =
        trinsicService.credential()
            .createProof(
                VerifiableCredentials.CreateProofRequest.newBuilder().setItemId(itemId).build())
            .get();

    var credentialProof = createProofResponse.getProofDocumentJson();
    // }

    System.out.println("Proof: " + credentialProof);

    // verifyCredential() {
    trinsicService.credential().setProfile(airline);

    // Verify that Allison has provided a valid proof
    var verifyProofResponse =
        trinsicService.credential()
            .verifyProof(
                VerifiableCredentials.VerifyProofRequest.newBuilder()
                    .setProofDocumentJson(credentialProof)
                    .build())
            .get();

    boolean isValid = verifyProofResponse.getIsValid();
    // }

    System.out.println("Verification result: " + isValid);
    assert isValid;
  }

  private static String IssueCredential(
      TrinsicService trinsicService, String templateId, String clinic)
      throws InvalidProtocolBufferException, DidException, ExecutionException,
          InterruptedException {
    // issueCredential() {
    // Set active profile to 'clinic' so we can issue credential signed
    // with the clinic's signing keys
    trinsicService.credential().setProfile(clinic);

    // Prepare credential values
    var valuesMap = new HashMap<String, Object>();
    valuesMap.put("firstName", "Allison");
    valuesMap.put("lastName", "Allissonne");
    valuesMap.put("batchNumber", "123454321");
    valuesMap.put("countryOfVaccination", "US");

    // Serialize values to JSON
    var valuesJson = new Gson().toJson(valuesMap);

    // Issue credential
    var issueResponse =
        trinsicService.credential()
            .issueCredentialFromTemplate(
                VerifiableCredentials.IssueFromTemplateRequest.newBuilder()
                    .setTemplateId(templateId)
                    .setValuesJson(valuesJson)
                    .build())
            .get();

    var credential = issueResponse.getDocumentJson();
    // }

    return credential;
  }

  private static String DefineTemplate(CredentialTemplateService templateService, String clinic)
      throws InvalidProtocolBufferException, DidException, ExecutionException,
          InterruptedException {
    // createTemplate() {
    // Set active profile to 'clinic'
    templateService.setProfile(clinic);

    // Define fields for template
    var fields = new HashMap<String, Templates.TemplateField>();
    fields.put(
        "firstName",
        Templates.TemplateField.newBuilder()
            .setDescription("First name of vaccine recipient")
            .build());
    fields.put(
        "lastName",
        Templates.TemplateField.newBuilder()
            .setDescription("Last name of vaccine recipient")
            .build());
    fields.put(
        "batchNumber",
        Templates.TemplateField.newBuilder()
            .setType(Templates.FieldType.STRING)
            .setDescription("Batch number of vaccine")
            .build());
    fields.put(
        "countryOfVaccination",
        Templates.TemplateField.newBuilder()
            .setDescription("Country in which the subject was vaccinated")
            .build());

    // Create template request
    var templateRequest =
        Templates.CreateCredentialTemplateRequest.newBuilder()
            .setName("VaccinationCertificate")
            .setAllowAdditionalFields(false)
            .putAllFields(fields)
            .build();

    // Execute template creation
    var template = templateService.create(templateRequest).get();
    var templateId = template.getData().getId();
    // }

    return templateId;
  }
}
