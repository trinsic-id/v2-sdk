package trinsic;

import com.google.gson.Gson;
import trinsic.okapi.DidException;
import trinsic.services.AccountService;
import trinsic.services.CredentialTemplateService;
import trinsic.services.CredentialsService;
import trinsic.services.verifiablecredentials.templates.v1.Templates;
import trinsic.services.verifiablecredentials.v1.VerifiableCredentials;

import java.io.IOException;
import java.util.HashMap;
import java.util.concurrent.ExecutionException;

public class TemplatesDemo {
    public static void main(String[] args) throws IOException, DidException, ExecutionException, InterruptedException {
        // Make sure you set the TEST_SERVER_ENDPOINT environment variable
        run();
    }

    public static void run() throws IOException, DidException, ExecutionException, InterruptedException {
        var accountService = new AccountService(TrinsicUtilities.getTrinsicServiceOptions());
        var account = accountService.signIn(null).get();
        var templateService = new CredentialTemplateService(TrinsicUtilities.getTrinsicServiceOptions(account));
        var credentialService = new CredentialsService(TrinsicUtilities.getTrinsicServiceOptions(account));

        // create example template
        var fields = new HashMap<String, Templates.TemplateField>();
        fields.put("firstName", Templates.TemplateField.newBuilder().setDescription("Given name").build());
        fields.put("lastName", Templates.TemplateField.newBuilder().build());
        fields.put("age", Templates.TemplateField.newBuilder().setType(Templates.FieldType.NUMBER).setOptional(true).build());
        var templateRequest = Templates.CreateCredentialTemplateRequest.newBuilder().setName("My Example Credential").setAllowAdditionalFields(false).putAllFields(fields).build();
        var template = templateService.create(templateRequest).get();

        assert template != null;
        assert template.hasData();
        assert !template.getData().getId().isEmpty();
        assert !template.getData().getSchemaUri().isEmpty();

        // issue credential from this template
        var valuesMap = new HashMap<String, Object>();
        valuesMap.put("firstName", "Jane");
        valuesMap.put("lastName", "Doe");
        valuesMap.put("age", 42);
        var valuesJson = new Gson().toJson(valuesMap);
        var credentialJson = credentialService.issueCredentialFromTemplate(VerifiableCredentials.IssueFromTemplateRequest.newBuilder().setTemplateId(template.getData().getId()).setValuesJson(valuesJson).build()).get();
        assert credentialJson != null;
        assert !credentialJson.getDocumentJson().isEmpty();

        var jsonDocument = new Gson().fromJson(credentialJson.getDocumentJson(), HashMap.class);
        assert jsonDocument.containsKey("id");
        assert jsonDocument.containsKey("credentialSubject");
    }
}
