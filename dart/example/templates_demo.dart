import 'dart:convert';

import 'package:trinsic_dart/src/proto/services/verifiable-credentials/templates/v1/templates.pbgrpc.dart';
import 'package:trinsic_dart/src/proto/services/verifiable-credentials/v1/verifiable-credentials.pbgrpc.dart';
import 'package:trinsic_dart/src/trinsic_util.dart';
import 'package:trinsic_dart/trinsic.dart';
import 'package:uuid/uuid.dart';

Future runTemplatesDemo() async {
  var accountService = AccountService(trinsicConfig());
  var profile = await accountService.signIn();
  var templateService = TemplateService(trinsicConfig(authToken: profile));
  var credentialService = CredentialService(trinsicConfig(authToken: profile));

  var uuid = Uuid();
  // createTemplate() {
  var template = await templateService.create(CreateCredentialTemplateRequest(
      name: "An Example Credential: ${uuid.v4()}",
      allowAdditionalFields: false,
      fields: {
        "firstName": TemplateField(description: "Given name"),
        "lastName": TemplateField(),
        "age": TemplateField(optional: true, type: FieldType.NUMBER)
      }));
  // }
  assert(template.data.id != "");
  assert(template.data.schemaUri != "");

  // issueFromTemplate() {
  var values =
      jsonEncode({"firstName": "Jane", "lastName": "Doe", "age": "42"});
  var issueResponse = await credentialService.issueFromTemplate(
      IssueFromTemplateRequest(
          templateId: template.data.id, valuesJson: values));
  // }
  var jsonDocument = json.decode(issueResponse.documentJson);
  assert(jsonDocument['id'] != "");
  assert(jsonDocument['credentialSubject'] != "");
}

void main() async {
  await runTemplatesDemo();
}
