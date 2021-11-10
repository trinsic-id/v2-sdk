const test = require("ava");
const { InviteRequest, WalletProfile, ProviderService, WalletService, ServerConfig } = require("../lib");
const { Struct } = require("google-protobuf/google/protobuf/struct_pb");
const fs = require("fs");
const path = require("path");
const { randomEmail } = require("./helpers/random");

const endpoint = process.env.TEST_SERVER_ENDPOINT;
const port = process.env.TEST_SERVER_PORT;
const useTls = process.env.TEST_SERVER_USE_TLS;

const config = new ServerConfig().setEndpoint(endpoint).setPort(port).setUseTls(JSON.parse(useTls));

const createProfile = async () => {
  // if you don't have a profile saved
  let walletService = new WalletService(config);
  let profile = await walletService.createWallet();

  return profile;
};

test("make an invitation", async (t) => {
  let providerService = new ProviderService(config);
  let profile = await createProfile();
  providerService.updateActiveProfile(profile);

  let inviteRequest = new InviteRequest().setEmail(randomEmail()).setDescription("invitation");

  let inviteResponse = await providerService.inviteParticipant(inviteRequest);

  t.not(inviteResponse, null);
  t.not(inviteResponse.getInvitationId(), null);
  t.pass();
});

test("check status of invitation", async (t) => {
  // let providerService = new TrinsicProviderService();
  // let profile = await createProfile();
  // providerService.setProfile(profile);
  // let inviteRequest = new InviteRequest();
  // inviteRequest.setEmail("michael.black@trinsic.id");
  // inviteRequest.setDescription("invitation");

  // let inviteResponse = await providerService.inviteParticipant(inviteRequest);

  // let invitationStatusRequest = new InvitationStatusRequest();
  // invitationStatusRequest.setInvitationId(inviteResponse.getInvitationId());

  // let invitationStatusResponse = await providerService.invitationStatus(invitationStatusRequest);

  // t.not(invitationStatusResponse, null);
  // t.not(invitationStatusResponse.getStatus(), null);
  t.pass();
});

test("debug", (t) => t.pass());
