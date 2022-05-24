import 'dart:io';

import 'package:path/path.dart' as path;
import 'package:trinsic_dart/src/proto/services/account/v1/account.pbgrpc.dart';
import 'package:trinsic_dart/src/proto/services/universal-wallet/v1/universal-wallet.pbgrpc.dart';
import 'package:trinsic_dart/src/proto/services/verifiable-credentials/v1/verifiable-credentials.pbgrpc.dart';
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

Future run() async {
  // createAccountService() {
  var accountService = AccountService(trinsicConfig());
  var account = await accountService.signIn();
  // }

  // createProviderService() {
  var providerService = ProviderService(trinsicConfig(authToken: account));
  var ecosystem = await providerService.createEcosystem();
  var ecosystemId = ecosystem.ecosystem.id;
  // }

  // setupActors() {
  // Create 3 different profiles for each participant in the scenario
  var allison = await accountService.signIn(
      request: SignInRequest(ecosystemId: ecosystemId));
  var clinic = await accountService.signIn(
      request: SignInRequest(ecosystemId: ecosystemId));
  var airline = await accountService.signIn(
      request: SignInRequest(ecosystemId: ecosystemId));
  // }

  accountService.serviceOptions.authToken = clinic;
  var info = await accountService.getInfo();
  print("Account info=$info");

  // createService() {
  var walletService = WalletService(trinsicConfig(authToken: allison));
  var credentialService = CredentialService(trinsicConfig(authToken: clinic));
  // }

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
  var issueResponse = await credentialService.issueCredential(
      IssueRequest(documentJson: credentialJson));
  // }
  var credential = issueResponse.signedDocumentJson;
  print("Credential: $credential");

  // TODO - Send example

  // storeCredential() {
  // Alice stores the credential in her cloud wallet.
  walletService.serviceOptions.authToken = allison;
  // insertItemWallet() {
  var insertResponse = await walletService.insertItem(
      InsertItemRequest(itemJson: credential));
  // }
  var itemId = insertResponse.itemId;
  // }
  print("item id = $itemId");
  // TODO - Search examples

  // shareCredential() {
  // Allison shares the credential with the venue.
  // The venue has communicated with Allison the details of the credential that the require expressed as a JSON-LD frame.
  credentialService.serviceOptions.authToken = allison;
  walletService.serviceOptions.authToken = allison;
  var proofRequestJson = await File(vaccineCertFramePath()).readAsString();

  // createProof() {
  var proofResponse = await credentialService.createProof(CreateProofRequest(revealDocumentJson: proofRequestJson, itemId: itemId));
  // }
  var credentialProof = proofResponse.proofDocumentJson;
  print("Proof: $credentialProof");
  // }

  // verifyCredential() {
  // The airline verifies the credential
  credentialService.serviceOptions.authToken = airline;
  walletService.serviceOptions.authToken = airline;
  // verifyProof() {
  var verifyResult = await credentialService.verifyProof(VerifyProofRequest(proofDocumentJson: credentialProof));
  // }
  var valid = verifyResult.isValid;
  print("Verification result: $valid");
  assert(valid);
  // }

  // TODO - Revoke credential
}

void main() async {
  await run();
}