import {
    AccountService,
    CreateProofRequest,
    CredentialService,
    InsertItemRequest,
    IssueRequest,
    SignInRequest,
    VerifyProofRequest,
    WalletService
} from "@trinsic/trinsic";

import {getVaccineCertUnsignedJSON, getVaccineCertFrameJSON} from "./TestData"

async function vaccineDemo() {
    // createAccountService() {
    const accountService = new AccountService();
    // }

    // setupActors() {
    // Create 3 different profiles for each participant in the scenario
    const allison = await accountService.signIn(new SignInRequest());
    const clinic = await accountService.signIn(new SignInRequest());
    const airline = await accountService.signIn(new SignInRequest());
    // }

    accountService.options.setAuthToken(clinic);
    const info = await accountService.info();

    // createService() {
    const walletService = new WalletService();
    const credentialService = new CredentialService();
    // }

    // issueCredential() {
    // Sign a credential as the clinic and send it to Allison
    const credentialJson = getVaccineCertUnsignedJSON()
    credentialService.options.setAuthToken(clinic)
    const credential = await credentialService.issueCredential(new IssueRequest()
        .setDocumentJson(JSON.stringify(credentialJson)));
    // }

    // storeCredential() {
    // Alice stores the credential in her cloud wallet.
    walletService.options.setAuthToken(allison);
    const itemId = await walletService.insertItem(new InsertItemRequest()
        .setItemJson(credential.getSignedDocumentJson()));
    // }

    // shareCredential() {
    // Allison shares the credential with the venue.
    // The venue has communicated with Allison the details of the credential
    // that they require expressed as a JSON-LD frame.
    credentialService.options.setAuthToken(allison);
    const proofRequestJson = getVaccineCertFrameJSON();
    const proof = await credentialService.createProof(new CreateProofRequest()
        .setItemId(itemId.getItemId())
        .setRevealDocumentJson(JSON.stringify(proofRequestJson)));
    // }

    // verifyCredential() {
    // The airline verifies the credential
    credentialService.options.setAuthToken(airline);
    const verifyResponse = await credentialService.verifyProof(new VerifyProofRequest()
        .setProofDocumentJson(proof.getProofDocumentJson()));
    // }

    return verifyResponse
}

vaccineDemo().then(x => {
    console.log("Is-valid=", x.getIsValid())
}).catch(reason => {
    console.error(reason)
})