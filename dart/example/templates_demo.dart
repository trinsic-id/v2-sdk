import 'dart:convert';

import 'package:trinsic_dart/src/proto/services/verifiable-credentials/templates/v1/templates.pbgrpc.dart';
import 'package:trinsic_dart/src/trinsic_util.dart';
import 'package:trinsic_dart/trinsic.dart';
import 'package:uuid/uuid.dart';

Future runTemplatesDemo() async {
  var trinsic = TrinsicService(trinsicConfig());
  var createWalletResponse = await trinsic
      .wallet()
      .createWallet(CreateWalletRequest()..ecosystemId = "default");
  assert(createWalletResponse.authToken.isNotEmpty);
  trinsic =
      TrinsicService(trinsicConfig(authToken: createWalletResponse.authToken));

  var uuid = Uuid();
  // createTemplate() {
  var createCredentialTemplateRequest = CreateCredentialTemplateRequest();
  createCredentialTemplateRequest.name = "An Example Credential ${uuid.v4()}";
  createCredentialTemplateRequest.allowAdditionalFields = false;
  createCredentialTemplateRequest.fields.addAll({
    "firstName": TemplateField()..description = "Given name",
    "lastName": TemplateField(),
    "age": TemplateField()
      ..type = FieldType.NUMBER
      ..optional = true,
  });
  var template =
      await trinsic.template().create(createCredentialTemplateRequest);
  // }
  assert(template.data.id != "");
  assert(template.data.schemaUri != "");

  // issueFromTemplate() {
  var values =
      jsonEncode({"firstName": "Jane", "lastName": "Doe", "age": "42"});
  var issueResponse =
      await trinsic.credential().issueFromTemplate(IssueFromTemplateRequest()
        ..templateId = template.data.id
        ..valuesJson = values);
  // }
  var jsonDocument = json.decode(issueResponse.documentJson);
  assert(jsonDocument['id'] != "");
  assert(jsonDocument['credentialSubject'] != "");
}

void main() async {
  await runTemplatesDemo();
}
