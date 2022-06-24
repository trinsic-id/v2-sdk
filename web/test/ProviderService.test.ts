import { CreateEcosystemRequest, TrinsicService } from "../src";

import { getTestServerOptions, setTestTimeout } from "./env";

const options = getTestServerOptions();

describe("ProviderService Unit Tests", () => {
  setTestTimeout();
  beforeAll(async () => {
    let trinsic = new TrinsicService(options);
      options.authToken = await trinsic.account().signIn();
  });

  it("Demo: Ecosystem Tests", async () => {
    let trinsic = new TrinsicService(options);
    // createEcosystem() {
    let actualCreate = await trinsic.provider().createEcosystem(
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
