const test = require("ava");
const { InviteRequest, WalletProfile, ProviderService } = require("../lib");
const { Struct } = require("google-protobuf/google/protobuf/struct_pb");
const fs = require("fs");
const path = require("path");
const { getuid } = require("process");

const endpoint = process.env.SERVICE_URL

const createProfile = async () => {
  // if you have a profile saved
  let homePath = process.env[process.platform === "win32" ? "USERPROFILE" : "HOME"];
  let profilePath = path.join(homePath, ".trinsic", "profile.bin");

  let profileJSON = JSON.parse(fs.readFileSync(profilePath));
  let profile = new WalletProfile(endpoint);
  profile.setCapability(profileJSON.capability);
  profile.setDidDocument(Struct.fromJavaScript(profile.didDocument));
  profile.setInvoker(profileJSON.invoker);
  profile.setInvokerJwk(profileJSON.invokerJwk);
  profile.setWalletId(profileJSON.walletId);

  // // if you don't have a profile saved
  // let walletService = new TrinsicWalletService();
  // let profile = await walletService.createWallet()

  return profile;
};

test("make an invitation", async (t) => {
  let providerService = new ProviderService(endpoint);
  let profile = await createProfile();
  providerService.setProfile(profile);
  let inviteRequest = new InviteRequest();
  let email = `${getuid()}@example.com`;
  inviteRequest.setEmail(email);
  inviteRequest.setDescription("invitation");

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
