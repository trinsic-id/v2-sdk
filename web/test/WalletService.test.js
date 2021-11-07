import { WalletService } from "../lib";
import { config } from "./env";
const walletService = new WalletService(config);

describe("wallet service tests", () => {
  it("create wallet profile", async () => {
    let profile = await walletService.createWallet();

    expect(profile).not.toBeNull();
  }, 20000);

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

  // it("create wallet with provider invitation", async () => {
  //     let providerService = new ProviderService(endpoint);
  //     let walletService = new WalletService(endpoint);

  //     // Provider creates initial wallet for Alice
  //     let providerProfile = await walletService.createWallet();
  //     providerwalletService.setProfile(providerProfile);

  //     let email = randomEmail();
  //     console.log("email", email);
  //     let inviteRequest = new InviteRequest();
  //     inviteRequest.setDescription("Test Wallet");
  //     inviteRequest.setEmail(email);
  //     let invitationResponse = await providerwalletService.inviteParticipant(inviteRequest);
  //     console.log("invitationResponse", invitationResponse);
  //     // Alice accepts the invitation and creates the wallet
  //     console.log("invitation ID", invitationResponse.getInvitationId());
  //     let createResponse = await walletService.createWallet(invitationResponse.getInvitationId());
  //     console.log("createResponse", createResponse);
  //     walletService.setProfile(createResponse);

  //     // Alice searches for wallet records
  //     let search = await walletService.search();
  //     console.log("search", search);
  //     expect(search).not.toBeNull();
  //     expect(search.getItemsList().length).toBeGreaterThan(0);

  //     // Send the document to an existing email
  //     await walletService.send({ "test": "value" }, email);
  // });

  // it("send an item to a user's wallet using email", async () => {
  //     let providerService = new ProviderService(endpoint);
  //     let walletService = new WalletService(endpoint);

  //     let providerProfile = await walletService.createWallet();
  //     providerwalletService.setProfile(providerProfile);

  //     // Provider creates initial wallet for Alice
  //     let aliceEmail = randomEmail();
  //     let aliceInviteRequest = new InviteRequest();
  //     aliceInviteRequest.setDescription("Test Wallet");
  //     aliceInviteRequest.setEmail(aliceEmail);
  //     let invitationResponse = await providerwalletService.inviteParticipant(aliceInviteRequest);
  //     let aliceProfile = await walletService.createWallet(invitationResponse.getInvitationId());

  //     let bobEmail = randomEmail();
  //     let bobInviteRequest = new InviteRequest();
  //     bobInviteRequest.setDescription("Test Wallet");
  //     bobInviteRequest.setEmail(bobEmail);
  //     invitationResponse = await providerwalletService.inviteParticipant(bobInviteRequest);
  //     let bobProfile = await walletService.createWallet(invitationResponse.getInvitationId());

  //     // Alice's searches for wallet records
  //     walletService.setProfile(aliceProfile);
  //     await walletService.send({ "test": "value" }, bobEmail);

  //     walletService.setProfile(bobProfile);
  //     let results = await walletService.search("SELECT * from c WHERE c.test = 'value' AND c._new = true");

  //     expect(results.getItemsList()).not.toBeNull();
  //     expect(results.getItemsList().length).toBeGreaterThan(0);
  // });

  it("debug", () => expect(true).toBe(true));
});
