import test from "ava"
import { AccountService, ProviderService} from "../src";
import { getTestServerOptions } from "./TestData";

require("dotenv").config();

const options = getTestServerOptions();

test.before(async t => {
    let service = new AccountService(options);
    let authToken = await service.signIn();

    options.authToken = (authToken);
});

test("Demo: Ecosystem Tests", async (t) => {
    let providerService = new ProviderService(options);
    let actualCreate = await providerService.createEcosystem({description: "Test ecosystem from Node",
    uri: "https://example.com", details: undefined, name: ""});

    t.not(actualCreate, null);
    t.not(actualCreate.ecosystem, null);
    t.true(actualCreate.ecosystem!.id.startsWith("urn:trinsic:ecosystems:"));
});
