import {
    AccountService,
    AddFrameworkRequest,
    RegisterMemberRequest,
    RegistrationStatus,
    SignInRequest, TrinsicService,
    TrustRegistryService,
} from "../src";
import { v4 as uuid } from "uuid";
import { getTestServerOptions } from "./env";
import { GetMembershipStatusRequest } from "../lib";

const options = getTestServerOptions();
let service: TrinsicService;

describe("TrustRegistryService Unit Tests", () => {
  beforeAll(async () => {
    service = new TrinsicService(options);
      options.authToken = await service.account().signIn(SignInRequest.fromPartial({}));
  });

  it("add governance framework", async () => {
    let response = await service.trustRegistry().addFramework(
      AddFrameworkRequest.fromPartial({
        governanceFrameworkUri: `urn:egf:${uuid()}`,
        name: `Test Governance Framework - ${uuid()}`,
      })
    );
    expect(response).not.toBeNull();
  });

  it("add governance framework - invalid uri", async () => {
    try {
      await service.trustRegistry().addFramework(
        AddFrameworkRequest.fromPartial({})
      );
      // This is a failure case since jest doesn't have expect().toThrow()
      expect(false).toBeTruthy();
    } catch (e) {
      // This is expected, pass
    }
  });

  it("Demo: Trust Registry", async () => {
    const didUri = "did:example:test";
    const frameworkUri = `urn:egf:${uuid()}`;
    const schemaUri = "https://schema.org/Card";

    let frameworkResponse = await service.trustRegistry().addFramework(
      AddFrameworkRequest.fromPartial({
        governanceFrameworkUri: frameworkUri,
        name: `Test Governance Framework - ${uuid()}`,
      })
    );

    let response = await service.trustRegistry().registerMember(
      RegisterMemberRequest.fromPartial({
        didUri: didUri,
        frameworkId: frameworkResponse.id,
        schemaUri: schemaUri,
      })
    );
    expect(response).not.toBeNull();

    let response2 = await service.trustRegistry().registerMember(
      RegisterMemberRequest.fromPartial({
        didUri: didUri,
        frameworkId: frameworkResponse.id,
        schemaUri: schemaUri,
      })
    );
    expect(response2).not.toBeNull();

    let issuerStatus = await service.trustRegistry().getMembershipStatus(
      GetMembershipStatusRequest.fromPartial({
        didUri: didUri,
        governanceFrameworkUri: frameworkUri,
        schemaUri: schemaUri,
      })
    );
    expect(issuerStatus).not.toBeNull();
    expect(issuerStatus.status).toBe(RegistrationStatus.CURRENT);

    let verifierStatus = await service.trustRegistry().getMembershipStatus(
      GetMembershipStatusRequest.fromPartial({
        didUri: didUri,
        governanceFrameworkUri: frameworkUri,
        schemaUri: schemaUri,
      })
    );
    expect(verifierStatus).not.toBeNull();
    expect(verifierStatus.status).toBe(RegistrationStatus.CURRENT);

    let searchResult = await service.trustRegistry().searchRegistry();
    expect(searchResult).not.toBeNull();
    expect(searchResult.itemsJson).not.toBeNull();
    expect(searchResult.itemsJson.length > 0).toBeTruthy();
  });
});
