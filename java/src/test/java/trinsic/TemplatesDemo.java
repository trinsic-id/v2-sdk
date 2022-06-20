package trinsic;

import com.google.gson.Gson;
import trinsic.okapi.DidException;
import trinsic.services.TrinsicService;
import trinsic.services.verifiablecredentials.templates.v1.Templates;
import trinsic.services.verifiablecredentials.v1.VerifiableCredentials;

import java.io.IOException;
import java.util.HashMap;
import java.util.UUID;
import java.util.concurrent.ExecutionException;

public class TemplatesDemo {
  public static void main(String[] args)
      throws IOException, DidException, ExecutionException, InterruptedException {
    run();
  }

  public static void run()
      throws IOException, DidException, ExecutionException, InterruptedException {
    var trinsicService = new TrinsicService(TrinsicUtilities.getTrinsicServiceOptions());
    var account = trinsicService.account().signIn().get();

    // create example template
    // createTemplate() {
    var fields = new HashMap<String, Templates.TemplateField>();
    fields.put(
        "firstName", Templates.TemplateField.newBuilder().setDescription("Given name").build());
    fields.put("lastName", Templates.TemplateField.newBuilder().build());
    fields.put(
        "age",
        Templates.TemplateField.newBuilder()
            .setType(Templates.FieldType.NUMBER)
            .setOptional(true)
            .build());
    var templateRequest =
        Templates.CreateCredentialTemplateRequest.newBuilder()
            .setName("My Example Credential-" + UUID.randomUUID())
            .setAllowAdditionalFields(false)
            .putAllFields(fields)
            .build();
    var template = trinsicService.credentialTemplateService().create(templateRequest).get();
    // }

    assert template != null;
    assert template.hasData();
    assert !template.getData().getId().isEmpty();
    assert !template.getData().getSchemaUri().isEmpty();

    // issue credential from this template
    // issueFromTemplate() {
    var valuesMap = new HashMap<String, Object>();
    valuesMap.put("firstName", "Jane");
    valuesMap.put("lastName", "Doe");
    valuesMap.put("age", 42);
    var valuesJson = new Gson().toJson(valuesMap);
    var issueResponse =
            trinsicService.credential()
            .issueCredentialFromTemplate(
                VerifiableCredentials.IssueFromTemplateRequest.newBuilder()
                    .setTemplateId(template.getData().getId())
                    .setValuesJson(valuesJson)
                    .build())
            .get();
    // }
    assert issueResponse != null;
    assert !issueResponse.getDocumentJson().isEmpty();

    var jsonDocument = new Gson().fromJson(issueResponse.getDocumentJson(), HashMap.class);
    assert jsonDocument.containsKey("id");
    assert jsonDocument.containsKey("credentialSubject");

    var id = template.getData().getId();

    // getCredentialTemplate() {
    var getResponse =
            trinsicService.credentialTemplateService()
            .get(Templates.GetCredentialTemplateRequest.newBuilder().setId(id).build())
            .get();
    // }

    // searchCredentialTemplate() {
    var searchResponse =
            trinsicService.credentialTemplateService()
            .search(
                Templates.SearchCredentialTemplatesRequest.newBuilder()
                    .setQuery("SELECT * FROM c WHERE c.id = '" + id + "'")
                    .build())
            .get();
    // }

    // deleteCredentialTemplate() {
    var deleteResponse =
            trinsicService.credentialTemplateService()
            .delete(Templates.DeleteCredentialTemplateRequest.newBuilder().setId(id).build())
            .get();
    // }

    try {
      // checkCredentialStatus() {
      var checkStatusResponse =
              trinsicService.credential()
              .checkStatus(VerifiableCredentials.CheckStatusRequest.newBuilder().build())
              .get();
      // }
    } catch (Exception e) { // This is okay as an example
    }

    try {
      // updateCredentialStatus() {
      trinsicService.credential().updateStatus(
          VerifiableCredentials.UpdateStatusRequest.newBuilder().build());
      // }
    } catch (Exception e) { // This is okay as an example
    }
  }
}
