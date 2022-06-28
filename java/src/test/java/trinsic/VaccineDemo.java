package trinsic;

import com.google.gson.Gson;
import com.google.protobuf.InvalidProtocolBufferException;
import trinsic.okapi.DidException;
import trinsic.services.CredentialTemplateService;
import trinsic.services.TrinsicService;
import trinsic.services.common.v1.CreateEcosystemRequest;
import trinsic.services.universalwallet.v1.InsertItemRequest;
import trinsic.services.verifiablecredentials.templates.v1.CreateCredentialTemplateRequest;
import trinsic.services.verifiablecredentials.templates.v1.FieldType;
import trinsic.services.verifiablecredentials.templates.v1.TemplateField;
import trinsic.services.verifiablecredentials.v1.CreateProofRequest;
import trinsic.services.verifiablecredentials.v1.IssueFromTemplateRequest;
import trinsic.services.verifiablecredentials.v1.VerifyProofRequest;

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
    var serverConfig = TrinsicUtilities.getTrinsicServiceOptions();

    var trinsic = new TrinsicService(serverConfig);

    // createEcosystem() {
    var ecosystemResponse =
        trinsic
            .provider()
            .createEcosystem(CreateEcosystemRequest.getDefaultInstance())
            .get();

    var ecosystemId = ecosystemResponse.getEcosystem().getId();
    // }

    // Set default ecosystem on config
    serverConfig.setDefaultEcosystem(ecosystemId);
    trinsic.setDefaultEcosystem(ecosystemId);

    // setupActors() {
    // Create an account for each participant in the scenario
    var allison = trinsic.account().signIn().get();
    var clinic = trinsic.account().signIn().get();
    var airline = trinsic.account().signIn().get();
    // }

    // Create template
    var templateId = DefineTemplate(trinsic.template(), clinic);

    // Issue credential
    var credential = IssueCredential(trinsic, templateId, clinic);

    System.out.println("Credential: " + credential);

    // storeCredential() {
    // Set active profile to 'allison' so we can manage her cloud wallet
    trinsic.setProfile(allison);

    // Allison stores the credential in her cloud wallet.
    var insertItemResponse =
        trinsic
            .wallet()
            .insertItem(
                InsertItemRequest.newBuilder()
                    .setItemJson(credential)
                    .build())
            .get();

    final var itemId = insertItemResponse.getItemId();
    // }

    System.out.println("item id = " + itemId);

    // shareCredential() {
    // Set active profile to 'allison' so we can create a proof using her key
    trinsic.setProfile(allison);

    // Allison shares the credential with the venue
    var createProofResponse =
        trinsic
            .credential()
            .createProof(
                CreateProofRequest.newBuilder().setItemId(itemId).build())
            .get();

    var credentialProof = createProofResponse.getProofDocumentJson();
    // }

    System.out.println("Proof: " + credentialProof);

    // verifyCredential() {
    trinsic.setProfile(airline);

    // Verify that Allison has provided a valid proof
    var verifyProofResponse =
        trinsic
            .credential()
            .verifyProof(
                VerifyProofRequest.newBuilder()
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
    trinsicService.setProfile(clinic);

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
        trinsicService
            .credential()
            .issueCredentialFromTemplate(
                IssueFromTemplateRequest.newBuilder()
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
    var fields = new HashMap<String, TemplateField>();
    fields.put(
        "firstName",
        TemplateField.newBuilder()
            .setDescription("First name of vaccine recipient")
            .build());
    fields.put(
        "lastName",
        TemplateField.newBuilder()
            .setDescription("Last name of vaccine recipient")
            .build());
    fields.put(
        "batchNumber",
        TemplateField.newBuilder()
            .setType(FieldType.STRING)
            .setDescription("Batch number of vaccine")
            .build());
    fields.put(
        "countryOfVaccination",
        TemplateField.newBuilder()
            .setDescription("Country in which the subject was vaccinated")
            .build());

    // Create template request
    var templateRequest =
        CreateCredentialTemplateRequest.newBuilder()
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
