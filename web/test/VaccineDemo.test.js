import {
    AccountService,
    CreateProofRequest,
    CredentialService,
    InfoRequest,
    InsertItemRequest,
    IssueRequest,
    SignInRequest,
    VerifyProofRequest,
    WalletService
} from '../lib';
import { options } from "./env";
import vaccineCertUnsignedPath from './data/vaccination-certificate-unsigned.json'
import vaccineCertFramePath from './data/vaccination-certificate-frame.json'

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
    const walletService = new WalletService(options.setAuthToken(allison));
    const credentialService = new CredentialService(options.setAuthToken(clinic));
    // }

    // issueCredential() {
    // Sign a credential as the clinic and send it to Allison
    const unsignedDocument = require(vaccineCertUnsignedPath);
    const issueResponse = await credentialService.issueCredential(new IssueRequest()
        .setDocumentJson(JSON.stringify(unsignedDocument)));
    // }
    console.log(`Credential=${issueResponse}`);

    // storeCredential() {
    // Alice stores the credential in her cloud wallet.
    walletService.options.setAuthToken(allison);
    const insertResponse = await walletService.insertItem(new InsertItemRequest()
        .setItemJson(issueResponse.getSignedDocumentJson()));
    // }
    console.log(`Item id=${insertResponse.getItemId()}`);

    // shareCredential() {
    // Allison shares the credential with the venue.
    // The venue has communicated with Allison the details of the credential
    // that they require expressed as a JSON-LD frame.
    credentialService.options.setAuthToken(allison);
    const proofRequestFrame = require(vaccineCertFramePath);
    const proofResponse = await credentialService.createProof(new CreateProofRequest()
        .setItemId(insertResponse.getItemId())
        .setRevealDocumentJson(JSON.stringify(proofRequestFrame)));
    // }
    console.log(`Proof=${proofResponse.getProofDocumentJson()}`);

    // verifyCredential() {
    // The airline verifies the credential
    credentialService.options.setAuthToken(airline);
    const verifyResponse = await credentialService.verifyProof(new VerifyProofRequest()
        .setProofDocumentJson(proofResponse.getProofDocumentJson()));
    // }
    console.log(`Verification result=${verifyResponse.getIsValid()}`);
    if (!verifyResponse.getIsValid())
        throw new Error("Verification should be true!")
}

describe('Demo: vaccination demo - credential issuance, storing, and verification', async () => {
    it('should run the demo without raising exceptions', async () => {
        expect(async () => { await vaccineDemo() }).not.toThrow();
    });
});