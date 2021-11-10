import { WalletService } from "../lib";
import { config } from "./env";
const walletService = new WalletService(config);

describe("wallet service tests", () => {
  it("Demo: create wallet, set profile, search records, issue credential", async () => {
    let profile = await walletService.createWallet();

    expect(profile).not.toBeNull();

    walletService.updateActiveProfile(profile);

    let unsignedDocument = {
      "@context": "https://w3id.org/security/v3-unstable",
      id: "https://issuer.oidp.uscis.gov/credentials/83627465",
    };

    let issueResponse = await walletService.issueCredential(unsignedDocument);

    let itemId = await walletService.insertItem(issueResponse);

    expect(itemId).not.toBeNull();
    expect(itemId).not.toBe("");

    let items = await walletService.search();

    expect(items).not.toBeNull();
    expect(items.getItemsList().length).toBeGreaterThan(0);

    let proof = await walletService.createProof(itemId, { "@context": "http://w3id.org/security/v3-unstable" });

    let valid = await walletService.verifyProof(proof);

    expect(valid).toBe(true);
  }, 20000);
});
