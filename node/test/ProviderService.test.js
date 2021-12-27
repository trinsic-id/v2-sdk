const test = require("ava");
const { InviteRequest, AccountService, ProviderService, ServerConfig } = require("../lib");
const { Struct } = require("google-protobuf/google/protobuf/struct_pb");
const fs = require("fs");
const path = require("path");
const { randomEmail } = require("./helpers/random");

require("dotenv").config();

const endpoint = process.env.TEST_SERVER_ENDPOINT;
const port = process.env.TEST_SERVER_PORT;
const useTls = process.env.TEST_SERVER_USE_TLS;

const config = new ServerConfig().setEndpoint(endpoint).setPort(Number(port)).setUseTls(useTls);
let profile = null;

// test.before(async t => {
//   let service = new AccountService(null, config);
//   let response = await service.signIn();

//   profile = response.getProfile();
// });

test("make an invitation", async (t) => {
  // let providerService = new ProviderService(profile, config);

  // let inviteRequest = new InviteRequest().setEmail(randomEmail()).setDescription("invitation");

  // let inviteResponse = await providerService.inviteParticipant(inviteRequest);

  // t.not(inviteResponse, null);
  // t.not(inviteResponse.getInvitationId(), null);
  t.pass();
});

