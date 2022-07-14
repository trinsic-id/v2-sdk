import 'dart:io';

import 'package:path/path.dart' as path;
import 'package:trinsic_dart/src/proto/services/account/v1/account.pbgrpc.dart';
import 'package:trinsic_dart/src/proto/services/universal-wallet/v1/universal-wallet.pbgrpc.dart';
import 'package:trinsic_dart/src/proto/services/verifiable-credentials/v1/verifiable-credentials.pbgrpc.dart';
import 'package:trinsic_dart/src/trinsic_service.dart';
import 'package:trinsic_dart/src/trinsic_util.dart';
import 'package:trinsic_dart/trinsic.dart';

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
  var allison = await trinsic.account().signIn();
  var clinic = await trinsic.account().signIn();
  var airline = await trinsic.account().signIn();
  // }

  trinsic.serviceOptions.authToken = clinic;
  var info = await trinsic.account().getInfo();
  print("Account info=$info");

  // storeAndRecallProfile() {
  // Store profile for later use
  var fid = File('allison.txt');
  await fid.writeAsString(allison);
  // Create profile from existing data
  fid = File('allison.txt');
  allison = await fid.readAsString();
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

  // TODO - Send example

  // storeCredential() {
  // Alice stores the credential in her cloud wallet.
  trinsic.serviceOptions.authToken = allison;
  // insertItemWallet() {
  var insertResponse = await trinsic
      .wallet()
      .insertItem(InsertItemRequest(itemJson: credential));
  // }
  var itemId = insertResponse.itemId;
  // }
  print("item id = $itemId");
  // TODO - Search examples

  // shareCredential() {
  // Allison shares the credential with the venue.
  // The venue has communicated with Allison the details of the credential that the require expressed as a JSON-LD frame.
  var proofRequestJson = await File(vaccineCertFramePath()).readAsString();

  // createProof() {
  var proofResponse = await trinsic.credential().createProof(
      CreateProofRequest(revealDocumentJson: proofRequestJson, itemId: itemId));
  // }
  var credentialProof = proofResponse.proofDocumentJson;
  print("Proof: $credentialProof");
  // }

  // verifyCredential() {
  // The airline verifies the credential
  trinsic.serviceOptions.authToken = airline;
  // verifyProof() {
  var verifyResult = await trinsic
      .credential()
      .verifyProof(VerifyProofRequest(proofDocumentJson: credentialProof));
  // }
  print("Verification result: $verifyResult");
  assert(verifyResult.validationResults["SignatureVerification"]?.isValid ??
      false);
  // }

  // TODO - Revoke credential
}

void main() async {
  await runVaccineDemo();
}
