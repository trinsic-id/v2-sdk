const test = require("ava");
const { WalletService, ProviderService, ServerConfig, AccountService, CredentialService, AccountProfile } = require("../lib");
const { GenerateKeyRequest } = require("@trinsic/okapi");
const { Struct } = require("google-protobuf/google/protobuf/struct_pb");
const { InviteRequest } = require("../lib");
const { randomEmail } = require("./helpers/random");

require("dotenv").config();

const endpoint = process.env.TEST_SERVER_ENDPOINT;
const port = process.env.TEST_SERVER_PORT;
const useTls = process.env.TEST_SERVER_USE_TLS;

const config = new ServerConfig().setEndpoint(endpoint).setPort(new Number(port)).setUseTls(useTls);

let profile = null;

test.before(async t => {
  let service = new AccountService(null, config);
  let response = await service.signIn();

  profile = response.getProfile();
});

test("get account info", async t => {
  let service = new AccountService(profile, config);
  let info = await service.info();

  t.not(info, null);
});

test("create new account", async (t) => {
  let service = new AccountService(null, config);
  let response = await service.signIn();

  service.updateActiveProfile(response.getProfile());

  t.not(profile, null);
  t.pass();
});

test("Demo: create wallet, set profile, search records, issue credential", async (t) => {
  let accountService = new AccountService(profile, config);

  // let info = await accountService.info();

  // t.not(info, null);

  let credentialService = new CredentialService(profile, config);
  let walletService = new WalletService(profile, config);

  let issueResponse = await credentialService.issue(require("./data/vaccination-certificate-unsigned.json"));

  let itemId = await walletService.insertItem(issueResponse);

  t.not(itemId, null);
  t.not(itemId, "");

  let items = await walletService.search();

  t.not(items, null);
  t.true(items.getItemsList().length > 0);

  let proof = await credentialService.createProof(itemId, require("./data/vaccination-certificate-frame.json"));

  let valid = await credentialService.verify(proof);

  t.true(valid);
  t.pass();
});

// test("create wallet with provider invitation", async (t) => {
//   let providerService = new ProviderService(profile, config);
//   let walletService = new WalletService(profile, config);

//   // Provider creates initial wallet for Alice
//   let providerProfile = await walletService.createWallet();
//   providerService.updateActiveProfile(providerProfile);

//   let email = randomEmail();
//   let inviteRequest = new InviteRequest().setDescription("Test Wallet").setEmail(email);
//   let invitationResponse = await providerService.inviteParticipant(inviteRequest);

//   // Alice accepts the invitation and creates the wallet
//   let createResponse = await walletService.createWallet(invitationResponse.getInvitationId());
//   walletService.updateActiveProfile(createResponse);

//   // Alice searches for wallet records
//   let search = await walletService.search();
//   t.not(search, null);
//   t.true(search.getItemsList().length === 0);

//   // Send the document to an existing email
//   await walletService.send({ test: "value" }, email);

//   t.pass();
// });

// test("send an item to a user's wallet using email", async (t) => {
//   let providerService = new ProviderService(config);
//   let walletService = new WalletService(config);

//   let providerProfile = await walletService.createWallet();
//   providerService.updateActiveProfile(providerProfile);

//   // Provider creates initial wallet for Alice
//   let aliceEmail = randomEmail();
//   let aliceInviteRequest = new InviteRequest().setDescription("Test Wallet").setEmail(aliceEmail);
//   let invitationResponse = await providerService.inviteParticipant(aliceInviteRequest);
//   let aliceProfile = await walletService.createWallet(invitationResponse.getInvitationId());

//   let bobEmail = randomEmail();
//   let bobInviteRequest = new InviteRequest().setDescription("Test Wallet").setEmail(bobEmail);
//   invitationResponse = await providerService.inviteParticipant(bobInviteRequest);
//   let bobProfile = await walletService.createWallet(invitationResponse.getInvitationId());

//   // Alice's searches for wallet records
//   walletService.updateActiveProfile(aliceProfile);
//   await walletService.send({ test: "value" }, bobEmail);

//   walletService.updateActiveProfile(bobProfile);
//   let results = await walletService.search("SELECT * from c WHERE c.test = 'value' AND c._new = true");

//   t.not(results.getItemsList(), null);
//   t.true(results.getItemsList().length > 0);
//   t.pass();
// });
