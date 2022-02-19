import test from "ava"
import {AccountService, CreateEcosystemRequest, ProviderService, AccountProfile} from "../src";
import {getTestServerConfig} from "./TestData";

require("dotenv").config();

const config = getTestServerConfig();
let profile = new AccountProfile();

test.before(async t => {
    let service = new AccountService({profile: undefined, server: config});
    let response = await service.signIn();

    profile = response.getProfile()!;
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

