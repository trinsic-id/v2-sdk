const test = require("ava");
const {AccountService, CredentialService, ServerConfig, WalletService} = require("../lib");
const testData = require("./TestData")

require("dotenv").config();

const endpoint = process.env.TEST_SERVER_ENDPOINT;
const port = process.env.TEST_SERVER_PORT;
const useTLS = process.env.TEST_SERVER_USE_TLS !== "false"; // This ensures the default is true for security.

const config = new ServerConfig().setEndpoint(endpoint).setPort(Number(port)).setUseTls(useTLS);

async function vaccineDemo() {
    // createAccountService() {
    const accountService = new AccountService({server: config});
    // }

    // setupActors() {
    // Create 3 different profiles for each participant in the scenario
    const allison = (await accountService.signIn()).getProfile();
    const clinic = (await accountService.signIn()).getProfile();
    const airline = (await accountService.signIn()).getProfile();
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
    const credentialJson = testData.vaccineCertUnsigned()
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
    accountService.updateActiveProfile(allison);
    const proofRequestJson = testData.vaccineCertFrame();
    const proof = await credentialService.createProof(itemId, proofRequestJson);
    // }
    console.log(`Proof=${proof}`);

    // verifyCredential() {
    // The airline verifies the credential
    accountService.updateActiveProfile(airline);
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