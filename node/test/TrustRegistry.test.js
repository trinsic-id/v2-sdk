const test = require("ava");
const { TrustRegistryService } = require("../lib");
const { AddFrameworkRequest } = require("../lib/proto/TrustRegistry_pb");
const endpoint = process.env.TRINSIC_TEST_URL;
const {v4:uuid} = require('uuid');

test("add governance framework", (t) => {
    t.pass();
//   let trustRegistryService = new TrustRegistryService(endpoint);

//   let response = await trustRegistryService.addGovernanceFramework(
//     new AddFrameworkRequest().setGovernanceFramework(`urn:egf:${uuid()}`)
//   );
});
