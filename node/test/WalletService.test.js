const fs = require("fs");
const path = require("path");
const test = require("ava");
// import okapi from '@trinsic/okapi';
const okapi = require("@trinsic/okapi");
const { WalletService, ProviderService } = require("../lib");
const { GenerateKeyRequest } = require("@trinsic/okapi");
const { Struct } = require("google-protobuf/google/protobuf/struct_pb");
const { InviteRequest } = require("../lib");
const { randomEmail } = require("./helpers/random");

const endpoint = process.env.TRINSIC_TEST_URL;

test("get provider configuration", async (t) => {
  console.log("TEST ENDPOINT:", endpoint);
  let service = new WalletService(endpoint);
  let configuration = await service.getProviderConfiguration();

  t.not(configuration, null);
  t.not(configuration.getDidDocument(), null);
  t.not(configuration.getKeyAgreementKeyId, null);
  t.pass();
});

test("create wallet profile", async (t) => {
  let service = new WalletService(endpoint);
  let profile = await service.createWallet();

  t.not(profile, null);
  t.pass();
});

test("generate proof with Jcs", async (t) => {
  let capabilityDocument = {
    "@context": "https://wid.org/security/v2",
    invocationTarget: "urn:trinsic:wallets:noop",
    proof: {
      proofPurpose: "capabilityInvocation",
      created: new Date().toISOString(),
      capability: "urn:trinsic:wallets:noop",
    },
  };

  let generateKeyRequest = new GenerateKeyRequest().setKeyType(okapi.KeyType.KEY_TYPE_ED25519);
  let key = await okapi.DIDKey.generate(generateKeyRequest);
  let signingKey = key.getKeyList().find((x) => x.getCrv() === "Ed25519");

  let createProofRequest = new okapi.CreateProofRequest()
    .setKey(signingKey)
    .setDocument(Struct.fromJavaScript(capabilityDocument))
    .setSuite(okapi.LdSuite.LD_SUITE_JCSED25519SIGNATURE2020);

  let proofResponse = await okapi.LdProofs.generate(createProofRequest);

  t.not(proofResponse, null);
  t.not(proofResponse.getSignedDocument(), null);
  t.pass();
});

test("Demo: create wallet, set profile, search records, issue credential", async (t) => {
  let walletService = new WalletService(endpoint);

  let profile = await walletService.createWallet();

  t.not(profile, null);

  await walletService.setProfile(profile);

  let issueResponse = await walletService.issueCredential(require("./data/vaccination-certificate-unsigned.json"));

  let itemId = await walletService.insertItem(issueResponse);

  t.not(itemId, null);
  t.not(itemId, "");

  let items = await walletService.search();

  t.not(items, null);
  t.true(items.getItemsList().length > 0);

  let proof = await walletService.createProof(itemId, require("./data/vaccination-certificate-frame.json"));

  let valid = await walletService.verifyProof(proof);

  t.true(valid);
  t.pass();
});

test("create wallet with provider invitation", async (t) => {
  let providerService = new ProviderService(endpoint);
  let walletService = new WalletService(endpoint);

  // Provider creates initial wallet for Alice
  let providerProfile = await walletService.createWallet();
  await providerService.setProfile(providerProfile);

  let email = randomEmail();
  let inviteRequest = new InviteRequest().setDescription("Test Wallet").setEmail(email);
  let invitationResponse = await providerService.inviteParticipant(inviteRequest);

  // Alice accepts the invitation and creates the wallet
  let createResponse = await walletService.createWallet(invitationResponse.getInvitationId());
  await walletService.setProfile(createResponse);

  // Alice searches for wallet records
  let search = await walletService.search();
  t.not(search, null);
  t.true(search.getItemsList().length === 0);

  // Send the document to an existing email
  await walletService.send({ test: "value" }, email);

  t.pass();
});

test("send an item to a user's wallet using email", async (t) => {
  let providerService = new ProviderService(endpoint);
  let walletService = new WalletService(endpoint);

  let providerProfile = await walletService.createWallet();
  await providerService.setProfile(providerProfile);

  // Provider creates initial wallet for Alice
  let aliceEmail = randomEmail();
  let aliceInviteRequest = new InviteRequest().setDescription("Test Wallet").setEmail(aliceEmail);
  let invitationResponse = await providerService.inviteParticipant(aliceInviteRequest);
  let aliceProfile = await walletService.createWallet(invitationResponse.getInvitationId());

  let bobEmail = randomEmail();
  let bobInviteRequest = new InviteRequest().setDescription("Test Wallet").setEmail(bobEmail);
  invitationResponse = await providerService.inviteParticipant(bobInviteRequest);
  let bobProfile = await walletService.createWallet(invitationResponse.getInvitationId());

  // Alice's searches for wallet records
  await walletService.setProfile(aliceProfile);
  await walletService.send({ test: "value" }, bobEmail);

  await walletService.setProfile(bobProfile);
  let results = await walletService.search("SELECT * from c WHERE c.test = 'value' AND c._new = true");

  t.not(results.getItemsList(), null);
  t.true(results.getItemsList().length > 0);
  t.pass();
});

test("debug", (t) => t.pass());
