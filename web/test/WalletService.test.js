import { AccountService, CredentialService, WalletService } from "../lib";
import { config } from "./env";

let accountService;
let profile;
let walletService;
let credentialService;

describe("wallet service tests", () => {
  beforeAll(async () => {
    accountService = new AccountService({ server: config });
    const response = await accountService.signIn();
    profile = response.getProfile();

    walletService = new WalletService({ profile, server: config });
    credentialService = new CredentialService({ profile, server: config });

    console.log("before all ran");
  });

  it("can retrieve account info", async () => {
    accountService.updateActiveProfile(profile);

    const info = await accountService.info();
    expect(info).not.toBeNull();
  });

  it("Demo: create wallet, set profile, search records, issue credential", async () => {
    expect(profile).not.toBeNull();

    let unsignedDocument = {
      "@context": "https://w3id.org/security/v3-unstable",
      id: "https://issuer.oidp.uscis.gov/credentials/83627465",
    };

    let issueResponse = await credentialService.issue(unsignedDocument);
    expect(issueResponse).not.toBeNull();

    let itemId = await walletService.insertItem(issueResponse);
    expect(itemId).not.toBeNull();
    expect(itemId).not.toBe("");

    let items = await walletService.search();
    expect(items).not.toBeNull();
    expect(items.getItemsList().length).toBeGreaterThan(0);

    let proof = await credentialService.createProof(itemId, { "@context": "http://w3id.org/security/v3-unstable" });
    expect(proof).not.toBeNull();

    let valid = await credentialService.verify(proof);
    expect(valid).toBe(true);
  }, 20000);
});
