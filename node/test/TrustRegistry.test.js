const test = require("ava");
const { TrustRegistryService, AddFrameworkRequest, GovernanceFramework, WalletService } = require("../lib");
const endpoint = process.env.TRINSIC_TEST_URL;
const { v4: uuid } = require("uuid");

test("add governance framework", async (t) => {
  let service = new WalletService(endpoint);
  let profile = await service.createWallet();

  let trustRegistryService = new TrustRegistryService(endpoint);
  await trustRegistryService.setProfile(profile);

  let response = await trustRegistryService.addGovernanceFramework(
    new AddFrameworkRequest().setGovernanceFramework(
      new GovernanceFramework().setGovernanceFrameworkUri(`urn:egf:${uuid()}`)
    )
  );
  t.pass();
});
