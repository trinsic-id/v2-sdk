// @ts-ignore
import {
    AccountService,
    CreateProofRequest,
    CredentialService,
    InsertItemRequest,
    ServiceOptions,
    WalletService
} from '@trinsic/trinsic';  // This is set in jest.config.js
// @ts-ignore
import vaccineCertUnsignedPath from '../data/vaccination-certificate-unsigned.json'
// @ts-ignore
import vaccineCertFramePath from '../data/vaccination-certificate-frame.json'

const endpoint = "staging-internal.trinsic.cloud";
const port = 443;
const useTls = true
const options = ServiceOptions.fromPartial({serverPort: port, serverEndpoint: endpoint, serverUseTls: useTls});

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

    accountService.options.authToken = (clinic);
    const info = await accountService.info();
    console.log(`Account info=${info}`);

    // createService() {
    const walletService = new WalletService();
    walletService.options.authToken = allison
    const credentialService = new CredentialService();
    credentialService.options.authToken = clinic
    // }

    // issueCredential() {
    // Sign a credential as the clinic and send it to Allison
    const unsignedDocument = require(vaccineCertUnsignedPath);
    const issueResponse = await credentialService.issueCredential({documentJson: JSON.stringify(unsignedDocument)});
    // }
    console.log(`Credential=${issueResponse}`);

    // storeCredential() {
    // Alice stores the credential in her cloud wallet.
    walletService.options.authToken = (allison);
    const insertResponse = await walletService.insertItem(InsertItemRequest.fromPartial({itemJson: issueResponse.signedDocumentJson}));
    // }
    console.log(`Item id=${insertResponse.itemId}`);

    // shareCredential() {
    // Allison shares the credential with the venue.
    // The venue has communicated with Allison the details of the credential
    // that they require expressed as a JSON-LD frame.
    credentialService.options.authToken = (allison);
    const proofRequestFrame = require(vaccineCertFramePath);
    const proofResponse = await credentialService.createProof(CreateProofRequest.fromPartial({
        itemId: insertResponse.itemId,
        documentJson: JSON.stringify(proofRequestFrame)
    }));
    // }
    console.log(`Proof=${proofResponse.proofDocumentJson}`);

    // verifyCredential() {
    // The airline verifies the credential
    credentialService.options.authToken = (airline);
    const verifyResponse = await credentialService.verifyProof({proofDocumentJson: proofResponse.proofDocumentJson})
    // }
    console.log(`Verification result=${verifyResponse.isValid}`);
    if (!verifyResponse.isValid)
        throw new Error("Verification should be true!")

    await new Promise(resolve => setTimeout(resolve, 250)); // 0.25 sec - need an await after the last console.log
}

describe('Demo: vaccination demo - credential issuance, storing, and verification', () => {
    it('should run the demo without raising exceptions', async () => {
        expect(async () => {
            await vaccineDemo()
        }).not.toThrow();
    });
});