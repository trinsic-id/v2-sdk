import {
  AccountService,
  CheckIssuerStatusRequest,
  CheckVerifierStatusRequest,
  GovernanceFramework,
  RegisterIssuerRequest,
  RegisterVerifierRequest,
  RegistrationStatus,
  SignInRequest,
  TrustRegistryService,
} from "../src";
import { v4 as uuid } from "uuid";
import {getTestServerOptions} from "./env";




const options = getTestServerOptions();

describe("TrustRegistryService Unit Tests", () => {
  beforeAll(async () => {
    let service = new AccountService(options);
    await service.signIn(SignInRequest.fromPartial({}));
  });

  it("add governance framework", async () => {
    let trustRegistryService = new TrustRegistryService(options);

    let response = await trustRegistryService.addGovernanceFramework({
      governanceFramework: GovernanceFramework.fromPartial({
        governanceFrameworkUri: `urn:egf:${uuid()}`,
      }),
    });
    expect(response).not.toBeNull();
  });

  it("add governance framework - invalid uri", async () => {
    let trustRegistryService = new TrustRegistryService(options);

    await expectAsync(
      trustRegistryService.addGovernanceFramework({
          governanceFramework: GovernanceFramework.fromPartial({}),
        })
    ).toBeRejected();
  });

  it("Demo: Trust Registry", async () => {
    let trustRegistryService = new TrustRegistryService(options);

    let response = await trustRegistryService.registerIssuer(
      RegisterIssuerRequest.fromPartial({
        didUri: "did:example:test",
        governanceFrameworkUri: "https://example.com",
        credentialTypeUri: "https://schema.org/Card",
      })
    );
    expect(response).not.toBeNull();

    let response2 = await trustRegistryService.registerVerifier(
      RegisterVerifierRequest.fromPartial({
        didUri: "did:example:test",
        governanceFrameworkUri: "https://example.com",
        presentationTypeUri: "https://schema.org/Card",
      })
    );
    expect(response2).not.toBeNull();

    let issuerStatus = await trustRegistryService.checkIssuerStatus(
      CheckIssuerStatusRequest.fromPartial({
        didUri: "did:example:test",
        governanceFrameworkUri: "https://example.com",
        credentialTypeUri: "https://schema.org/Card",
      })
    );
    expect(issuerStatus).not.toBeNull();
    expect(issuerStatus.status).toBe(RegistrationStatus.CURRENT);

    let verifierStatus = await trustRegistryService.checkVerifierStatus(
      CheckVerifierStatusRequest.fromPartial({
        didUri: "did:example:test",
        governanceFrameworkUri: "https://example.com",
        presentationTypeUri: "https://schema.org/Card",
      })
    );
    expect(verifierStatus).not.toBeNull();
    expect(verifierStatus.status).toBe(RegistrationStatus.CURRENT);

    let searchResult = await trustRegistryService.searchRegistry();
    expect(searchResult).not.toBeNull();
    expect(searchResult.itemsJson).not.toBeNull();
    expect(searchResult.itemsJson.length > 0).toBeTrue();
  });
});
