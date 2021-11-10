const test = require("ava");
const { TrustRegistryService, AddFrameworkRequest, GovernanceFramework, WalletService, ServerConfig } = require("../lib");
const endpoint = process.env.TEST_SERVER_ENDPOINT;
const port = process.env.TEST_SERVER_PORT;
const useTls = process.env.TEST_SERVER_USE_TLS;
const { v4: uuid } = require("uuid");

const config = new ServerConfig().setEndpoint(endpoint).setPort(port).setUseTls(JSON.parse(useTls));

test("add governance framework", async (t) => {
  let service = new WalletService(config);
  let profile = await service.createWallet();

  let trustRegistryService = new TrustRegistryService(config);
  trustRegistryService.updateActiveProfile(profile);

  let response = await trustRegistryService.addGovernanceFramework(
    new AddFrameworkRequest().setGovernanceFramework(
      new GovernanceFramework().setGovernanceFrameworkUri(`urn:egf:${uuid()}`)
    )
  );
  t.pass();
});
