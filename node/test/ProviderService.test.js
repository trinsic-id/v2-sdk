const test = require("ava");
const {InviteRequest, AccountService, ProviderService, ServerConfig, CreateEcosystemRequest} = require("../lib");
const {Struct} = require("google-protobuf/google/protobuf/struct_pb");
const fs = require("fs");
const path = require("path");
const {randomEmail} = require("./helpers/random");

require("dotenv").config();

const endpoint = process.env.TEST_SERVER_ENDPOINT;
const port = process.env.TEST_SERVER_PORT;
const useTls = process.env.TEST_SERVER_USE_TLS;

const config = new ServerConfig().setEndpoint(endpoint).setPort(Number(port)).setUseTls(useTls);
let profile = null;

test.before(async t => {
    let service = new AccountService({profile: null, server: config});
    let response = await service.signIn();

    profile = response.getProfile();
});

test("make an invitation", async (t) => {
    // let providerService = new ProviderService({profile, server: config});

    // let inviteRequest = new InviteRequest().setEmail(randomEmail()).setDescription("invitation");

    // let inviteResponse = await providerService.inviteParticipant(inviteRequest);

    // t.not(inviteResponse, null);
    // t.not(inviteResponse.getInvitationId(), null);
    t.pass();
});

test("Demo: Ecosystem Tests", async (t) => {
    let providerService = new ProviderService({profile, server: config});
    let actualCreate = await providerService.createEcosystem(new CreateEcosystemRequest().setName("Test Ecosystem").setDescription("My ecosystem").setUri("https://example.com"));

    t.not(actualCreate, null);
    t.not(actualCreate.getId(), null);
    t.true(actualCreate.getId().startsWith("urn:trinsic:ecosystems:"));

    // test list the actual ecosystems
    let actualList = await providerService.listEcosystems();
    t.not(actualList, null);
    t.true(actualList.getEcosystemList().length > 0)
});

