const test = require("ava");
const {
  TrustRegistryService,
  AddFrameworkRequest,
  GovernanceFramework,
  AccountService,
  ServerConfig,
} = require("../lib");
const { v4: uuid } = require("uuid");

require("dotenv").config();

const endpoint = process.env.TEST_SERVER_ENDPOINT;
const port = process.env.TEST_SERVER_PORT;
const useTls = process.env.TEST_SERVER_USE_TLS;

const config = new ServerConfig().setEndpoint(endpoint).setPort(new Number(port)).setUseTls(useTls);
let profile = null;

test.before(async t => {
  let service = new AccountService({ server: config});
  let response = await service.signIn();

  profile = response.getProfile();
});

test("add governance framework", async (t) => {
  let trustRegistryService = new TrustRegistryService({ profile, server: config});

  let response = await trustRegistryService.addGovernanceFramework(
    new AddFrameworkRequest().setGovernanceFramework(
      new GovernanceFramework().setGovernanceFrameworkUri(`urn:egf:${uuid()}`)
    )
  );
  t.not(response, null);
});
