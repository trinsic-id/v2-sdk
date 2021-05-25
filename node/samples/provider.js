const { TrinsicProviderService } = require("../dist/ProviderService.js");
const { InviteRequest, InvitationStatusRequest } = require('../dist/proto/ProviderService_pb');
const { TrinsicWalletService } = require("../dist/WalletService.js");
const { WalletProfile } = require("../dist/proto/WalletService_pb.js");
const { Struct } = require('google-protobuf/google/protobuf/struct_pb');
const fs = require("fs");
const path = require("path");

const createProfile = async () => {
  let homePath = process.env[(process.platform === 'win32') ? 'USERPROFILE' : 'HOME']
  let profilePath = path.join(homePath, '.trinsic', 'profile.bin');

  let profileJSON = JSON.parse(fs.readFileSync(profilePath));
  let profile = new WalletProfile();
  profile.setCapability(profileJSON.capability);
  profile.setDidDocument(Struct.fromJavaScript(profile.didDocument));
  profile.setInvoker(profileJSON.invoker);
  profile.setInvokerJwk(profileJSON.invokerJwk);
  profile.setWalletId(profileJSON.walletId);

  // let walletService = new TrinsicWalletService();
  // let profile = await walletService.createWallet()

  return profile;
}

const inviteParticipant = async () => {
  let providerService = new TrinsicProviderService();
  let profile = await createProfile();
  providerService.setProfile(profile);
  let inviteRequest = new InviteRequest();
  inviteRequest.setEmail("michaelblack117@gmail.com");
  inviteRequest.setDescription("inviting me")
  
  let inviteResponse = await providerService.inviteParticipant(inviteRequest);

  console.log(inviteResponse.getInvitationId())
  return inviteResponse;
}

const checkStatus = async (invitationId) => {
  let providerService = new TrinsicProviderService();
  let profile = await createProfile();
  providerService.setProfile(profile);
  let invitationStatusRequest = new InvitationStatusRequest();
  invitationStatusRequest.setInvitationId(invitationId);
  
  let invitationStatusResponse = await providerService.invitationStatus(invitationStatusRequest);

  console.log(invitationStatusResponse.getStatus());
  return invitationStatusResponse
}

const main = async () => {
  let inviteResponse = await inviteParticipant();
  let invitationStatus = await checkStatus(inviteResponse.getInvitationId())

  console.log(invitationStatus.getStatus())
  console.log(invitationStatus);
}

main();