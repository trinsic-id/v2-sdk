import test from "ava";

import {AccountService, CredentialService, WalletService} from "../src";
import {getTestServerConfig, getVaccineCertFrameJSON, getVaccineCertUnsignedJSON} from "./TestData";

require("dotenv").config();

const config = getTestServerConfig()

async function vaccineDemo() {
    // createAccountService() {
    const accountService = new AccountService({server: config});
    // }

    // setupActors() {
    // Create 3 different profiles for each participant in the scenario
    const allison = (await accountService.signIn()).getProfile()!;
    const clinic = (await accountService.signIn()).getProfile()!;
    const airline = (await accountService.signIn()).getProfile()!;
    // }

    accountService.updateActiveProfile(clinic);
    const info = await accountService.info();
    console.log(`Account info=${info}`);

    // createService() {
    const walletService = new WalletService({profile: allison, server: config});
    const credentialService = new CredentialService({profile: clinic, server: config});
    // }

    // issueCredential() {
    // Sign a credential as the clinic and send it to Allison
    const credentialJson = getVaccineCertUnsignedJSON()
    const credential = await credentialService.issueCredential(credentialJson);
    // }
    console.log(`Credential=${credential}`);

    // storeCredential() {
    // Alice stores the credential in her cloud wallet.
    accountService.updateActiveProfile(allison);
    const itemId = await walletService.insertItem(credential);
    // }
    console.log(`Item id=${itemId}`);

    // shareCredential() {
    // Allison shares the credential with the venue.
    // The venue has communicated with Allison the details of the credential
    // that they require expressed as a JSON-LD frame.
    credentialService.updateActiveProfile(allison);
    const proofRequestJson = getVaccineCertFrameJSON();
    const proof = await credentialService.createProof(itemId, proofRequestJson);
    // }
    console.log(`Proof=${proof}`);

    // verifyCredential() {
    // The airline verifies the credential
    credentialService.updateActiveProfile(airline);
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