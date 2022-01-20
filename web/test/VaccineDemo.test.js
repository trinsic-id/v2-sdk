import {
  AccountService,
  CredentialService,
  WalletService
} from '../lib';
import { config } from './env';
import vaccineCertUnsignedPath from 'vaccination-certificate-unsigned.json'
import vaccineCertFramePath from 'vaccination-certificate-frame.json'

async function vaccineDemo() {
  // createAccountService() {
  const accountService = new AccountService({ server: config });
  // }

  // setupActors() {
  // Create 3 different profiles for each participant in the scenario
  let response = await accountService.signIn();
  const allison = response.getProfile();

  response = await accountService.signIn();
  const clinic = response.getProfile();

  response = await accountService.signIn();
  const airline = response.getProfile();
  // }

  accountService.updateActiveProfile(clinic);
  const info = await accountService.info();
  console.log(`Account info=${info}`);

  // createService() {
  const walletService = new WalletService({ profile: allison, server: config });
  const credentialService = new CredentialService({ profile: clinic, server: config });
  // }

  // issueCredential() {
  // Sign a credential as the clinic and send it to Allison
  const credentialJson = require(vaccineCertUnsignedPath);
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
  const proofRequestJson = require(vaccineCertFramePath);
  const proof = await credentialService.createProof(itemId, proofRequestJson);
  // }
  console.log(`Proof=${proof}`);

  // verifyCredential() {
  // The airline verifies the credential
  accountService.updateActiveProfile(airline);
  const isValid = await credentialService.verifyProof(proof);
  // }
  console.log(`Verification result=${isValid}`);
}

describe('Demo: vaccination demo - credential issuance, storing, and verification', () => {
  it('should run the demo without raising exceptions', () => {
    expect(() => { await vaccineDemo() }).not.toThrow();
  });
});