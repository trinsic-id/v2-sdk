package trinsic;


import com.google.gson.Gson;
import com.google.protobuf.InvalidProtocolBufferException;
import trinsic.okapi.DidException;
import trinsic.services.*;
import trinsic.services.common.v1.ProviderOuterClass;
import trinsic.services.universalwallet.v1.UniversalWalletOuterClass;
import trinsic.services.verifiablecredentials.templates.v1.Templates;
import trinsic.services.verifiablecredentials.v1.VerifiableCredentials;

import java.io.*;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.HashMap;
import java.util.concurrent.ExecutionException;

public class VaccineDemo {

    public static void main(String[] args) throws IOException, DidException, ExecutionException, InterruptedException {
        run();
    }

    public static void run() throws IOException, DidException, ExecutionException, InterruptedException {
        var serverConfig = TrinsicUtilities
                .getTrinsicServiceOptions()
                .toBuilder()
                .setServerEndpoint("dev-internal.trinsic.cloud")
                .build();

        var providerService = new ProviderService(serverConfig);

        // createEcosystem() {
        var ecosystemResponse = providerService.createEcosystem(
                ProviderOuterClass.CreateEcosystemRequest.getDefaultInstance()
        ).get();

        var ecosystemId = ecosystemResponse.getEcosystem().getId();
        // }

        //Set default ecosystem on config
        serverConfig = serverConfig.toBuilder()
                .setDefaultEcosystem(ecosystemId)
                .build();
        providerService.setDefaultEcosystem(ecosystemId);

        var accountService = new AccountService(serverConfig);
        var walletService = new WalletService(serverConfig);
        var credentialService = new CredentialService(serverConfig);
        var templateService = new CredentialTemplateService(serverConfig);

        // setupActors() {
        // Create an account for each participant in the scenario
        var allison = accountService.signIn().get();
        var clinic = accountService.signIn().get();
        var airline = accountService.signIn().get();
        // }

        //Create template
        var templateId = DefineTemplate(templateService, clinic);

        //Issue credential
        var credential = IssueCredential(credentialService, templateId, clinic);

        System.out.println("Credential: " + credential);

        // storeCredential() {
        // Set active profile to 'allison' so we can manage her cloud wallet
        walletService.setProfile(allison);

        // Allison stores the credential in her cloud wallet.
        var insertItemResponse = walletService.insertItem(
                UniversalWalletOuterClass.InsertItemRequest
                        .newBuilder()
                        .setItemJson(credential)
                        .build()
        ).get();

        final var itemId = insertItemResponse.getItemId();
        // }

        System.out.println("item id = " + itemId);

        // shareCredential() {
        // Set active profile to 'allison' so we can create a proof using her key
        credentialService.setProfile(allison);

        // Allison shares the credential with the venue
        var createProofResponse = credentialService.createProof(
                VerifiableCredentials.CreateProofRequest
                        .newBuilder()
                        .setItemId(itemId)
                        .build()
        ).get();

        var credentialProof = createProofResponse.getProofDocumentJson();
        // }

        System.out.println("Proof: " + credentialProof);

        // verifyCredential() {
        credentialService.setProfile(airline);

        // Verify that Allison has provided a valid proof
        var verifyProofResponse = credentialService.verifyProof(
                VerifiableCredentials.VerifyProofRequest
                        .newBuilder()
                        .setProofDocumentJson(credentialProof)
                        .build()
        ).get();

        boolean isValid = verifyProofResponse.getIsValid();
        // }

        System.out.println("Verification result: " + isValid);
        assert isValid;

        providerService.shutdown();
        templateService.shutdown();
        accountService.shutdown();
        credentialService.shutdown();
        walletService.shutdown();
    }

    private static String IssueCredential(CredentialService credentialService, String templateId, String clinic) throws InvalidProtocolBufferException, DidException, ExecutionException, InterruptedException {
        //issueCredential() {
        // Set active profile to 'clinic' so we can issue credential signed
        // with the clinic's signing keys
        credentialService.setProfile(clinic);

        //Prepare credential values
        var valuesMap = new HashMap<String, Object>();
        valuesMap.put("firstName", "Allison");
        valuesMap.put("lastName", "Allissonne");
        valuesMap.put("batchNumber", 123454321);
        valuesMap.put("countryOfVaccination", "US");

        //Serialize values to JSON
        var valuesJson = new Gson().toJson(valuesMap);

        //Issue credential
        var issueResponse = credentialService.issueCredentialFromTemplate(
                VerifiableCredentials.IssueFromTemplateRequest.newBuilder()
                        .setTemplateId(templateId)
                        .setValuesJson(valuesJson)
                        .build()
        ).get();

        var credential = issueResponse.getDocumentJson();
        // }

        return credential;
    }

    private static String DefineTemplate(CredentialTemplateService templateService, String clinic) throws InvalidProtocolBufferException, DidException, ExecutionException, InterruptedException {
        //createTemplate() {
        //Set active profile to 'clinic'
        templateService.setProfile(clinic);

        //Define fields for template
        var fields = new HashMap<String, Templates.TemplateField>();
        fields.put("firstName", Templates.TemplateField.newBuilder()
                .setDescription("First name of vaccine recipient")
                .build());
        fields.put("lastName", Templates.TemplateField.newBuilder()
                .setDescription("Last name of vaccine recipient")
                .build());
        fields.put("batchNumber", Templates.TemplateField.newBuilder()
                .setType(Templates.FieldType.NUMBER)
                .setDescription("Batch number of vaccine")
                .build());
        fields.put("countryOfVaccination", Templates.TemplateField.newBuilder()
                .setDescription("Country in which the subject was vaccinated")
                .build());

        //Create template request
        var templateRequest = Templates.CreateCredentialTemplateRequest
                .newBuilder()
                .setName("VaccinationCertificate")
                .setAllowAdditionalFields(false)
                .putAllFields(fields)
                .build();

        //Execute template creation
        var template = templateService.create(templateRequest).get();
        var templateId = template.getData().getId();
        // }

        return templateId;
    }
}
