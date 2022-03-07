import test from "ava";

import { AccountService, CreateProofRequest, CredentialService, InsertItemRequest, SignInRequest, WalletService } from "../src";
import { getTestServerOptions, getVaccineCertFrameJSON, getVaccineCertUnsignedJSON } from "./TestData";

require("dotenv").config();

const options = getTestServerOptions()

async function vaccineDemo() {
    // createAccountService() {
    const accountService = new AccountService(options);
    // }

    // setupActors() {
    // Create 3 different profiles for each participant in the scenario
    const allison = await accountService.signIn(new SignInRequest());
    const clinic = await accountService.signIn(new SignInRequest());
    const airline = await accountService.signIn(new SignInRequest());
    // }

    accountService.options.setAuthToken(clinic);
    const info = await accountService.info();
    console.log(`Account info=${info}`);

    // createService() {
    const walletService = new WalletService(options);
    const credentialService = new CredentialService(options);
    // }

    // issueCredential() {
    // Sign a credential as the clinic and send it to Allison
    const credentialJson = getVaccineCertUnsignedJSON()
    const credential = await credentialService.issueCredential(credentialJson);
    // }
    console.log(`Credential=${credential}`);

    // storeCredential() {
    // Alice stores the credential in her cloud wallet.
    accountService.options.setAuthToken(allison);
    const itemId = await walletService.insertItem(new InsertItemRequest().setItemJson(credential.getSignedDocumentJson()));
    // }
    console.log(`Item id=${itemId}`);

    // shareCredential() {
    // Allison shares the credential with the venue.
    // The venue has communicated with Allison the details of the credential
    // that they require expressed as a JSON-LD frame.
    credentialService.options.setAuthToken(allison);
    const proofRequestJson = getVaccineCertFrameJSON();
    const proof = await credentialService.createProof(new CreateProofRequest()
        .setItemId(itemId.getItemId())
        .setDocumentJson(proofRequestJson));
    // }
    console.log(`Proof=${proof}`);

    // verifyCredential() {
    // The airline verifies the credential
    credentialService.options.setAuthToken(airline);
    const isValid = await credentialService.verifyProof(proof);
    // }
    console.log(`Verification result=${isValid}`);
    return isValid
}

test("Demo: vaccination demo - credential issuance, storing, and verification", async (t) => {
    let isValid = await vaccineDemo();
    t.true(isValid)
    t.pass();
});