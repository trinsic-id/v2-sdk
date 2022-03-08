import {
  AccountService,
  CredentialService,
  InfoRequest,
  SignInRequest,
  WalletService
} from '../lib';
import {options} from "./env";
import vaccineCertUnsignedPath from 'vaccination-certificate-unsigned.json'
import vaccineCertFramePath from 'vaccination-certificate-frame.json'

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
  const info = await accountService.info(new InfoRequest());
  console.log(`Account info=${info}`);

  // createService() {
  const walletService = new WalletService(options.setAuthToken(allison));
  const credentialService = new CredentialService(options.setAuthToken(clinic));
  // }

  // issueCredential() {
  // Sign a credential as the clinic and send it to Allison
  const credentialJson = require(vaccineCertUnsignedPath);
  const credential = await credentialService.issueCredential(credentialJson);
  // }
  console.log(`Credential=${credential}`);

  // storeCredential() {
  // Alice stores the credential in her cloud wallet.
  walletService.updateActiveProfile(allison);
  const itemId = await walletService.insertItem(credential);
  // }
  console.log(`Item id=${itemId}`);

  // shareCredential() {
  // Allison shares the credential with the venue.
  // The venue has communicated with Allison the details of the credential
  // that they require expressed as a JSON-LD frame.
  credentialService.updateActiveProfile(allison);
  const proofRequestJson = require(vaccineCertFramePath);
  const proof = await credentialService.createProof(itemId, proofRequestJson);
  // }
  console.log(`Proof=${proof}`);

  // verifyCredential() {
  // The airline verifies the credential
  credentialService.updateActiveProfile(airline);
  const isValid = await credentialService.verifyProof(proof);
  // }
  console.log(`Verification result=${isValid}`);
  if (!isValid)
    throw new Error("Verification should be true!")
}

describe('Demo: vaccination demo - credential issuance, storing, and verification', async () => {
  it('should run the demo without raising exceptions', async () => {
    expect(async () => { await vaccineDemo() }).not.toThrow();
  });
});