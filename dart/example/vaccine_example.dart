import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as path;
import 'package:uuid/uuid.dart';
import 'package:trinsic_dart/src/proto/services/universal-wallet/v1/universal-wallet.pbgrpc.dart';
import 'package:trinsic_dart/src/proto/services/verifiable-credentials/templates/v1/templates.pb.dart';
import 'package:trinsic_dart/src/proto/services/verifiable-credentials/v1/verifiable-credentials.pbgrpc.dart';
import 'package:trinsic_dart/src/trinsic_service.dart';
import 'package:trinsic_dart/src/trinsic_util.dart';

var uuid = Uuid();

String baseDataPath() {
  return path.join(path.current, "..", "devops", "testdata");
}

String vaccineCertUnsignedPath() {
  return path.absolute(
      path.join(baseDataPath(), "vaccination-certificate-unsigned.jsonld"));
}

String vaccineCertFramePath() {
  return path.absolute(
      path.join(baseDataPath(), "vaccination-certificate-frame.jsonld"));
}

Future runVaccineDemo() async {
  // createService() {
  var trinsic = TrinsicService(trinsicConfig());
  // }

  // createEcosystem() {
  var ecosystem = await trinsic.provider().createEcosystem();
  var ecosystemId = ecosystem.ecosystem.id;
  // }

  // setupActors() {
  // Create 3 different profiles for each participant in the scenario
  var allison = await trinsic
      .wallet()
      .createWallet(CreateWalletRequest(ecosystemId: ecosystemId));
  var clinic = await trinsic
      .wallet()
      .createWallet(CreateWalletRequest(ecosystemId: ecosystemId));
  var airline = await trinsic
      .wallet()
      .createWallet(CreateWalletRequest(ecosystemId: ecosystemId));
  // }

  trinsic.serviceOptions.authToken = clinic.authToken;

  // storeAndRecallProfile() {
  // Store profile for later use
  var fid = File('allison.txt');
  await fid.writeAsString(allison.authToken);
  // Create profile from existing data
  fid = File('allison.txt');
  allison.authToken = await fid.readAsString();
  // }

  // Sign credential as clinic and send to Allison
  var vaccineCertFile = File(vaccineCertUnsignedPath());
  var credentialJson = await vaccineCertFile.readAsString();

  // createCredentialTemplate() {
  var credentialTemplateResponse = await trinsic.template().create(
      CreateCredentialTemplateRequest(name: "Vaccination-Certificate-${uuid.v4()}", fields: {
        "firstName": TemplateField(description: "First name"),
        "lastName": TemplateField(description: "Last name"),
        "batchNumber": TemplateField(description: "Batch number of vaccine"),
        "countryOfVaccination": TemplateField(description: "Country of vaccination"),
      }));
  var template = credentialTemplateResponse.data;
  // }

  // issueCredential() {
  Map<String, dynamic> credentialValues = {
    'firstName': 'Allison',
    'lastName': 'Allisonne',
    'batchNumber': '123454321',
    'countryOfVaccination': 'US',
  };

  String jsonString = json.encode(credentialValues);
  // Issue credential from the template above
  trinsic.serviceOptions.authToken = clinic.authToken;
  var issueResponse = await trinsic.credential().issueFromTemplate(
      IssueFromTemplateRequest(
          templateId: template.id, valuesJson: jsonString));
  var credential = issueResponse.documentJson;
  // }


  // storeCredential() {
  // Alice stores the credential in her cloud wallet.
  trinsic.serviceOptions.authToken = allison.authToken;
  // insertItemWallet() {
  var insertResponse = await trinsic
      .wallet()
      .insertItem(InsertItemRequest(itemJson: credential));
  // }
  var itemId = insertResponse.itemId;
  // }
  print("item id = $itemId");

  // shareCredential() {
  // Allison shares the credential with the venue.
  // The venue has communicated with Allison the details of the credential that the require expressed as a JSON-LD frame.
  var proofRequestJson = await File(vaccineCertFramePath()).readAsString();

  // createProof() {
  var proofResponse = await trinsic.credential().createProof(
      CreateProofRequest(revealDocumentJson: proofRequestJson, itemId: itemId));
  var selectiveProofResponse = await trinsic.credential().createProof(
      CreateProofRequest(
          revealTemplate:
              RevealTemplateAttributes(templateAttributes: {"batchNumber"}),
          itemId: itemId));
  // }
  var credentialProof = proofResponse.proofDocumentJson;
  print("Proof: $credentialProof");
  // }

  // verifyCredential() {
  // The airline verifies the credential
  trinsic.serviceOptions.authToken = airline.authToken;
  // verifyProof() {
  var verifyResult = await trinsic
      .credential()
      .verifyProof(VerifyProofRequest(proofDocumentJson: credentialProof));
  // }

  var selectiveVerifyResult = await trinsic.credential().verifyProof(
      VerifyProofRequest(
          proofDocumentJson: selectiveProofResponse.proofDocumentJson));

  print("Verification result: $verifyResult");
  assert(verifyResult.validationResults["SignatureVerification"]?.isValid ??
      false);
  assert(selectiveVerifyResult
          .validationResults["SignatureVerification"]?.isValid ??
      false);
  // }

  // TODO - Revoke credential
}

void main() async {
  await runVaccineDemo();
}
