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
    var account = trinsic.account().signIn(myEcosystemIdOrName).get();
    trinsic.setAuthToken(account);

    // create example template
    // createTemplate() {
    var fields = new HashMap<String, TemplateField>();
    fields.put("firstName", TemplateField.newBuilder().setDescription("Given name").build());
    fields.put("lastName", TemplateField.newBuilder().build());
    fields.put(
        "age", TemplateField.newBuilder().setType(FieldType.NUMBER).setOptional(true).build());
    var templateRequest =
        CreateCredentialTemplateRequest.newBuilder()
            .setName("My Example Credential-" + UUID.randomUUID())
            .setAllowAdditionalFields(false)
            .putAllFields(fields)
            .build();
    var template = trinsic.template().create(templateRequest).get();
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
        trinsic
            .credential()
            .issueFromTemplate(
                IssueFromTemplateRequest.newBuilder()
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
        trinsic.template().get(GetCredentialTemplateRequest.newBuilder().setId(id).build()).get();
    // }

    // searchCredentialTemplate() {
    var searchResponse =
        trinsic
            .template()
            .search(
                SearchCredentialTemplatesRequest.newBuilder()
                    .setQuery("SELECT * FROM c WHERE c.id = '" + id + "'")
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
              .delete(DeleteCredentialTemplateRequest.newBuilder().setId(id).build())
              .get();
      // }
    } catch (Exception e) { // This is okay as an example
    }
    trinsic.shutdown();
  }
}
