const test = require("ava");
const { TrustRegistryService } = require("../lib");
const { AddFrameworkRequest } = require("../lib/proto");
const endpoint = process.env.TRINSIC_TEST_URL;
const {v4:uuid} = require('uuid');

test("add governance framework", async (t) => {
  let trustRegistryService = new TrustRegistryService(endpoint);

  let response = await trustRegistryService.addGovernanceFramework(
    new AddFrameworkRequest().setGovernanceFramework(`urn:egf:${uuid()}`)
  );
  t.pass();
});
