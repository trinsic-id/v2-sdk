import test from "ava"
import { AccountService, CreateEcosystemRequest, ProviderService, AccountProfile, SignInRequest } from "../src";
import { getTestServerOptions } from "./TestData";

require("dotenv").config();

const options = getTestServerOptions();

test.before(async t => {
    let service = new AccountService(options);
    let authToken = await service.signIn(new SignInRequest());

    options.setAuthToken(authToken);
});

test("Demo: Ecosystem Tests", async (t) => {
    let providerService = new ProviderService(options);
    let actualCreate = await providerService.createEcosystem(
        new CreateEcosystemRequest()
            .setName(`test-${new Date().getMilliseconds()}`)
            .setDescription("My ecosystem")
            .setUri("https://example.com"));

    t.not(actualCreate, null);
    t.not(actualCreate.getEcosystem(), null);
    t.true(actualCreate.getEcosystem().getId().startsWith("urn:trinsic:ecosystems:"));
});

