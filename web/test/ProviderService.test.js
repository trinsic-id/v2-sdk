const { ProviderService, WalletService, InviteRequest } = require("../lib");
let endpoint = require('./env').env.ENDPOINT

const randomEmail = (suffix = "example.com", length = 16) => {
  return Math.random().toString(16).substr(2, length) + '@' + suffix;
}

const createProfile = async () => {
  // if you don't have a profile saved
  let service = new WalletService(endpoint);
  let profile = await service.createWallet()

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
}, 10000);

it("debug", () => expect(true).toBe(true));