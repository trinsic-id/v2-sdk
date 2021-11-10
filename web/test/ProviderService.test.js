import { ProviderService, WalletService, InviteRequest } from "../lib";
import { config } from "./env";

const randomEmail = (suffix = "example.com", length = 16) => {
  return Math.random().toString(16).substr(2, length) + "@" + suffix;
};

const createProfile = async () => {
  // if you don't have a profile saved
  let service = new WalletService(config);
  let profile = await service.createWallet();

  return profile;
};

it("make an invitation", async () => {
  let providerService = new ProviderService(config);
  let profile = await createProfile();
  providerService.updateActiveProfile(profile);
  let inviteRequest = new InviteRequest().setEmail(randomEmail()).setDescription("invitation");

  let inviteResponse = await providerService.inviteParticipant(inviteRequest);

  expect(inviteResponse).not.toBeNull();
  expect(inviteResponse.getInvitationId()).not.toBeNull();
}, 20000);
