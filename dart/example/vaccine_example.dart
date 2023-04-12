import 'dart:io';

import 'package:path/path.dart' as path;
import 'package:trinsic_dart/src/proto/services/account/v1/account.pbgrpc.dart';
import 'package:trinsic_dart/src/proto/services/universal-wallet/v1/universal-wallet.pbgrpc.dart';
import 'package:trinsic_dart/src/proto/services/verifiable-credentials/v1/verifiable-credentials.pbgrpc.dart';
import 'package:trinsic_dart/src/trinsic_service.dart';
import 'package:trinsic_dart/src/trinsic_util.dart';

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
  var allison = await trinsic.wallet().createWallet(CreateWalletRequest(ecosystemId: ecosystemId));
  var clinic = await trinsic.wallet().createWallet(CreateWalletRequest(ecosystemId: ecosystemId));
  var airline = await trinsic.wallet().createWallet(CreateWalletRequest(ecosystemId: ecosystemId));
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

  // issueCredential() {
  var issueResponse = await trinsic
      .credential()
      .issue(IssueRequest(documentJson: credentialJson));
  // }
  var credential = issueResponse.signedDocumentJson;
  print("Credential: $credential");

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
