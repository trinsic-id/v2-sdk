import { AccountService, ProviderService} from "@trinsic/trinsic";
import { getTestServerOptions } from "./TestData";

require("dotenv").config();

const options = getTestServerOptions();

beforeAll(async() => {
    let service = new AccountService(options);
    let authToken = await service.signIn();

    options.authToken = (authToken);
});

test("Demo: Ecosystem Tests", async () => {
    let providerService = new ProviderService(options);
    let actualCreate = await providerService.createEcosystem({description: "Test ecosystem from Node",
    uri: "https://example.com", details: undefined, name: ""});

    expect(actualCreate).not.toBeNull();
    expect(actualCreate.ecosystem).not.toBeNull();
    expect(actualCreate.ecosystem!!.id.startsWith("urn:trinsic:ecosystems:")).toBeTruthy();
});
