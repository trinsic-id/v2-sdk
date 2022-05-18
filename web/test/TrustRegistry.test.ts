import {
  AccountService,
  AddFrameworkRequest,
  RegisterMemberRequest,
  RegistrationStatus,
  SignInRequest,
  TrustRegistryService,
} from "../src";
import { v4 as uuid } from "uuid";
import { getTestServerOptions } from "./env";
import { GetMembershipStatusRequest } from "../lib";

const options = getTestServerOptions();

describe("TrustRegistryService Unit Tests", () => {
  beforeAll(async () => {
    let service = new AccountService(options);
    await service.signIn(SignInRequest.fromPartial({}));
  });

  it("add governance framework", async () => {
    let trustRegistryService = new TrustRegistryService(options);

    let response = await trustRegistryService.addGovernanceFramework(
      AddFrameworkRequest.fromPartial({
        governanceFrameworkUri: `urn:egf:${uuid()}`,
        name: `Test Governance Framework - ${uuid()}`,
      })
    );
    expect(response).not.toBeNull();
  });

  it("add governance framework - invalid uri", async () => {
    let trustRegistryService = new TrustRegistryService(options);

    try {
        await trustRegistryService.addGovernanceFramework(
            AddFrameworkRequest.fromPartial({})
        );
        // This is a failure case since jest doesn't have expect().toThrow()
        expect(false).toBeTruthy()
    }catch (e) {
        // This is expected, pass
    }
  });

  it("Demo: Trust Registry", async () => {
    let trustRegistryService = new TrustRegistryService(options);

    const didUri = "did:example:test";
    const frameworkUri = `urn:egf:${uuid()}`;
    const schemaUri = "https://schema.org/Card";

    let frameworkResponse = await trustRegistryService.addGovernanceFramework(
      AddFrameworkRequest.fromPartial({
        governanceFrameworkUri: frameworkUri,
        name: `Test Governance Framework - ${uuid()}`,
      })
    );

    let response = await trustRegistryService.registerMember(
      RegisterMemberRequest.fromPartial({
        didUri: didUri,
        frameworkId: frameworkResponse.id,
        schemaUri: schemaUri,
      })
    );
    expect(response).not.toBeNull();

    let response2 = await trustRegistryService.registerMember(
      RegisterMemberRequest.fromPartial({
        didUri: didUri,
        frameworkId: frameworkResponse.id,
        schemaUri: schemaUri,
      })
    );
    expect(response2).not.toBeNull();

    let issuerStatus = await trustRegistryService.getMembershipStatus(
      GetMembershipStatusRequest.fromPartial({
        didUri: didUri,
        governanceFrameworkUri: frameworkUri,
        schemaUri: schemaUri,
      })
    );
    expect(issuerStatus).not.toBeNull();
    expect(issuerStatus.status).toBe(RegistrationStatus.CURRENT);

    let verifierStatus = await trustRegistryService.getMembershipStatus(
      GetMembershipStatusRequest.fromPartial({
        didUri: didUri,
        governanceFrameworkUri: frameworkUri,
        schemaUri: schemaUri,
      })
    );
    expect(verifierStatus).not.toBeNull();
    expect(verifierStatus.status).toBe(RegistrationStatus.CURRENT);

    let searchResult = await trustRegistryService.searchRegistry();
    expect(searchResult).not.toBeNull();
    expect(searchResult.itemsJson).not.toBeNull();
    expect(searchResult.itemsJson.length > 0).toBeTruthy();
  });
});
