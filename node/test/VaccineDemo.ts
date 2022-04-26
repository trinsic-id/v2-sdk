import test from "ava";

import {
  AccountService,
  CreateProofRequest,
  CredentialService,
  InsertItemRequest,
  IssueRequest,
  VerifyProofRequest,
  WalletService,
} from "../src";
import {
  getTestServerOptions,
  getVaccineCertFrameJSON,
  getVaccineCertUnsignedJSON,
} from "./TestData";

require("dotenv").config();

const options = getTestServerOptions();

async function vaccineDemo() {
  // createAccountService() {
  const accountService = new AccountService(options);
  // }

  // setupActors() {
  // Create 3 different profiles for each participant in the scenario
  const allison = await accountService.signIn();
  const clinic = await accountService.signIn();
  const airline = await accountService.signIn();
  // }

  accountService.options.authToken = clinic;
  const info = await accountService.info();

  // createService() {
  const walletService = new WalletService(options);
  const credentialService = new CredentialService(options);
  // }

  // issueCredential() {
  // Sign a credential as the clinic and send it to Allison
  const credentialJson = getVaccineCertUnsignedJSON();
  const credential = await credentialService.issueCredential(
    IssueRequest.fromPartial({ documentJson: credentialJson })
  );
  // }

  // storeCredential() {
  // Alice stores the credential in her cloud wallet.
  walletService.options.authToken = allison;
  const itemId = await walletService.insertItem(
    InsertItemRequest.fromPartial({ itemJson: credential.signedDocumentJson })
  );
  // }

  // shareCredential() {
  // Allison shares the credential with the venue.
  // The venue has communicated with Allison the details of the credential
  // that they require expressed as a JSON-LD frame.
  credentialService.options.authToken = allison;
  const proofRequestJson = getVaccineCertFrameJSON();
  const proof = await credentialService.createProof(
    CreateProofRequest.fromPartial({
      itemId: itemId.itemId,
      revealDocumentJson: proofRequestJson,
    })
  );
  // }

  // verifyCredential() {
  // The airline verifies the credential
  credentialService.options.authToken = airline;
  const verifyResponse = await credentialService.verifyProof(
    VerifyProofRequest.fromPartial({
      proofDocumentJson: proof.proofDocumentJson,
    })
  );
  // }

  return verifyResponse;
}

test("Demo: vaccination demo - credential issuance, storing, and verification", async (t) => {
  let response = await vaccineDemo();
  t.true(response.isValid);
  t.pass();
});
