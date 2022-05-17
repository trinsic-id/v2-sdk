import {
  AccountService,
  CreateEcosystemRequest,
  ProviderService,
} from "../src";

import {getTestServerOptions} from "./env";



const options = getTestServerOptions();

describe("ProviderService Unit Tests", () => {
  beforeAll(async () => {
    let service = new AccountService(options);
    let authToken = await service.signIn();

    options.authToken = authToken;
  });

  it("Demo: Ecosystem Tests", async () => {
    let providerService = new ProviderService(options);
    // createEcosystem() {
    let actualCreate = await providerService.createEcosystem(
      CreateEcosystemRequest.fromPartial({
        description: "Test ecosystem from Node",
        uri: "https://example.com",
      })
    );
    // }

    expect(actualCreate).not.toBeNull();
    expect(actualCreate.ecosystem).not.toBeNull();
    expect(
      actualCreate.ecosystem!.id.startsWith("urn:trinsic:ecosystems:")
    ).toBeTruthy();
  });
});
