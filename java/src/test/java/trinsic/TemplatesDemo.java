package trinsic;

import com.google.gson.Gson;

import java.io.IOException;
import java.util.HashMap;
import java.util.UUID;
import java.util.concurrent.ExecutionException;

import trinsic.okapi.DidException;
import trinsic.services.TrinsicService;
import trinsic.services.verifiablecredentials.templates.v1.*;
import trinsic.services.verifiablecredentials.v1.CheckStatusRequest;
import trinsic.services.verifiablecredentials.v1.IssueFromTemplateRequest;
import trinsic.services.verifiablecredentials.v1.UpdateStatusRequest;

public class TemplatesDemo {
    private static String myEcosystemIdOrName = "default";

    public static void main(String[] args)
        throws IOException, DidException, ExecutionException, InterruptedException {
        run();
    }

    public static void run()
        throws IOException, DidException, ExecutionException, InterruptedException {
        var trinsic = new TrinsicService(TrinsicUtilities.getTrinsicServiceOptions());
        var account = trinsic.account().loginAnonymous(myEcosystemIdOrName).get();
        trinsic.setAuthToken(account);

        // create example template
        // createTemplate() {
        var templateRequest =
            CreateCredentialTemplateRequest.newBuilder()
                // Set metadata
                .setName("An Example Credential" + UUID.randomUUID())
                .setTitle("Example Credential")
                .setDescription("A credential for Trinsic's SDK samples")
                .setAllowAdditionalFields(false)
                // Construct fields
                .putFields("firstName",
                    TemplateField.newBuilder()
                        .setTitle("First Name")
                        .setDescription("Given name of holder")
                        .build()
                ).putFields("lastName",
                    TemplateField.newBuilder()
                        .setTitle("Last Name")
                        .setDescription("Surname of holder")
                        .setOptional(true)
                        .build()
                ).putFields("age",
                    TemplateField.newBuilder()
                        .setTitle("Age")
                        .setDescription("Age in years of holder")
                        .setType(FieldType.NUMBER)
                        .build()
                )
                // Specify ordering and categorization of fields for rendering of credential
                .putFieldOrdering("firstName",
                    FieldOrdering.newBuilder()
                        .setOrder(0)
                        .setSection("Name")
                        .build()
                ).putFieldOrdering("lastName",
                    FieldOrdering.newBuilder()
                        .setOrder(1)
                        .setSection("Name")
                        .build()
                ).putFieldOrdering("age",
                    FieldOrdering.newBuilder()
                        .setOrder(2)
                        .setSection("Miscellaneous")
                        .build()
                )
                // Specify Apple Wallet configuration
                .setAppleWalletOptions(
                    AppleWalletOptions.newBuilder()
                        .setPrimaryField("firstName")
                        .addSecondaryFields("lastName")
                        .addAuxiliaryFields("age")
                        .build()
                ).build();
        var template = trinsic.template().create(templateRequest).get();
        // }

        var templateId = template.getData().getId();

        assert template != null;
        assert template.hasData();
        assert !template.getData().getId().isEmpty();
        assert !template.getData().getSchemaUri().isEmpty();

        // Update template
        // updateTemplate() {
        var updateRequest =
            UpdateCredentialTemplateRequest.newBuilder()
                .setId(templateId)
                // Specify new title and description for the template
                .setTitle("New Title")
                .setDescription("New Description")
                // Update title/description for a few fields
                .putFields("firstName",
                    TemplateFieldPatch.newBuilder()
                        .setTitle("New title for firstName")
                        .build()
                )
                .putFields("lastName",
                    TemplateFieldPatch.newBuilder()
                        .setDescription("New description for lastName")
                        .build()
                )
                // Specify new ordering / categorization for template fields
                .putFieldOrdering("age",
                    FieldOrdering.newBuilder()
                        .setOrder(0)
                        .setSection("Misc")
                        .build()
                ).putFieldOrdering("firstName",
                    FieldOrdering.newBuilder()
                        .setOrder(1)
                        .setSection("Full Name")
                        .build()
                ).putFieldOrdering("lastName",
                    FieldOrdering.newBuilder()
                        .setOrder(2)
                        .setSection("Full Name")
                        .build()
                )
                // Specify new Apple Wallet configuration
                .setAppleWalletOptions(
                    AppleWalletOptions.newBuilder()
                        .setPrimaryField("age")
                        .addSecondaryFields("firstName")
                        .addSecondaryFields("lastName")
                        .build()
                ).build();

        var updatedTemplate = trinsic.template().update(updateRequest).get();
        // }

        // issue credential from this template
        // issueFromTemplate() {
        var valuesMap = new HashMap<String, Object>();
        valuesMap.put("firstName", "Jane");
        valuesMap.put("lastName", "Doe");
        valuesMap.put("age", 42);
        var valuesJson = new Gson().toJson(valuesMap);
        var issueResponse =
            trinsic
                .credential()
                .issueFromTemplate(
                    IssueFromTemplateRequest.newBuilder()
                        .setTemplateId(templateId)
                        .setValuesJson(valuesJson)
                        .build())
                .get();
        // }
        assert issueResponse != null;
        assert !issueResponse.getDocumentJson().isEmpty();

        var jsonDocument = new Gson().fromJson(issueResponse.getDocumentJson(), HashMap.class);
        assert jsonDocument.containsKey("id");
        assert jsonDocument.containsKey("credentialSubject");

        // getCredentialTemplate() {
        var getResponse =
            trinsic.template().get(GetCredentialTemplateRequest.newBuilder().setId(templateId).build()).get();
        // }

        // searchCredentialTemplate() {
        var searchResponse =
            trinsic
                .template()
                .search(
                    SearchCredentialTemplatesRequest.newBuilder()
                        .setQuery("SELECT * FROM c WHERE c.id = '" + templateId + "'")
                        .build())
                .get();
        // }

        try {
            // checkCredentialStatus() {
            var checkStatusResponse =
                trinsic.credential().checkStatus(CheckStatusRequest.newBuilder().build()).get();
            // }
        } catch (Exception e) { // This is okay as an example
        }

        try {
            // updateCredentialStatus() {
            trinsic.credential().updateStatus(UpdateStatusRequest.newBuilder().build());
            // }
        } catch (Exception e) { // This is okay as an example
        }

        try {
            // deleteCredentialTemplate() {
            var deleteResponse =
                trinsic
                    .template()
                    .delete(DeleteCredentialTemplateRequest.newBuilder().setId(templateId).build())
                    .get();
            // }
        } catch (Exception e) { // This is okay as an example
        }
        trinsic.shutdown();
    }
}
