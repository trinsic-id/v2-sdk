const jasmine = require("jasmine");
const { ProviderService } = require("../lib");
const { InviteRequest, InvitationStatusRequest, InvitationStatusResponse } = require('../lib/proto/ProviderService_pb');
const { TrinsicWalletService } = require("../lib/WalletService.js");
const { WalletProfile } = require("../lib/proto/WalletService_pb.js");
const { Struct } = require('google-protobuf/google/protobuf/struct_pb');
const { randomEmail } = require('./helpers/random');
global.XMLHttpRequest = require('xmlhttprequest').XMLHttpRequest;
const endpoint = "http://" + (process.env.TRINSIC_TEST_URL_WEB ?? "localhost:5000")

const createProfile = async () => {
  // // if you have a profile saved
  // let homePath = process.env[(process.platform === 'win32') ? 'USERPROFILE' : 'HOME']
  // let profilePath = path.join(homePath, '.trinsic', 'profile.bin');

  // let profileJSON = JSON.parse(fs.readFileSync(profilePath));
  // let profile = new WalletProfile();
  // profile.setCapability(profileJSON.capability);
  // profile.setDidDocument(Struct.fromJavaScript(profile.didDocument));
  // profile.setInvoker(profileJSON.invoker);
  // profile.setInvokerJwk(profileJSON.invokerJwk);
  // profile.setWalletId(profileJSON.walletId);

  // if you don't have a profile saved
  let walletService = new TrinsicWalletService(endpoint);
  let profile = await walletService.createWallet()

  return profile;
}

it("make an invitation", async () => {
  let providerService = new ProviderService(endpoint);
  let profile = await createProfile();
  await providerService.setProfile(profile);
  let inviteRequest = new InviteRequest();
  inviteRequest.setEmail(randomEmail());
  inviteRequest.setDescription("invitation");
  
  let inviteResponse = await providerService.inviteParticipant(inviteRequest);

  expect(inviteResponse).not.toBeNull();
  expect(inviteResponse.getInvitationId()).not.toBeNull();
});

it("check status of invitation", async () => {
  // let providerService = new ProviderService();
  // let profile = await createProfile();
  // providerService.setProfile(profile);
  // let inviteRequest = new InviteRequest();
  // inviteRequest.setEmail(randomEmail());
  // inviteRequest.setDescription("invitation");

  // let inviteResponse = await providerService.inviteParticipant(inviteRequest);

  // let invitationStatusRequest = new InvitationStatusRequest();
  // invitationStatusRequest.setInvitationId(inviteResponse.getInvitationId());
  
  // let invitationStatusResponse = await providerService.invitationStatus(invitationStatusRequest);

  // t.not(invitationStatusResponse, null);
  // t.not(invitationStatusResponse.getStatus(), null);
})

it("debug", () => expect(true).toBe(true));