import {
    AccountService,
    CheckIssuerStatusRequest,
    CheckVerifierStatusRequest,
    GovernanceFramework,
    RegisterIssuerRequest,
    RegisterVerifierRequest,
    ResponseStatus,
    TrustRegistryService,
} from "../src"
import {v4 as uuid} from "uuid";
import {getTestServerOptions} from "./TestData";

require("dotenv").config();

const options = getTestServerOptions();

beforeAll(async() => {
    let service = new AccountService(options);
    await service.signIn();
});

test("add governance framework", async () => {
    let trustRegistryService = new TrustRegistryService(options);

    let response = await trustRegistryService.addGovernanceFramework({governanceFramework: GovernanceFramework.fromPartial({governanceFrameworkUri: `urn:egf:${uuid()}`})});
    expect(response).not.toBeNull();
});

test("add governance framework - invalid uri", async () => {
    let trustRegistryService = new TrustRegistryService(options);

    await expect(async () => await trustRegistryService.addGovernanceFramework({governanceFramework: GovernanceFramework.fromPartial({})})).rejects.toThrowError(new TypeError("Invalid URL"))
});

test("Demo: Trust Registry", async () => {
    let trustRegistryService = new TrustRegistryService(options);

    let response = await trustRegistryService.registerIssuer(RegisterIssuerRequest.fromPartial({
        didUri: "did:example:test",
        governanceFrameworkUri: "https://example.com",
        credentialTypeUri: "https://schema.org/Card"
    }));
    expect(response).not.toBeNull();
    expect(response.status).toBe(ResponseStatus.SUCCESS);

    let response2 = await trustRegistryService.registerVerifier(RegisterVerifierRequest.fromPartial({
        didUri: "did:example:test",
        governanceFrameworkUri: "https://example.com",
        presentationTypeUri: "https://schema.org/Card"
    }));
    expect(response2).not.toBeNull();
    expect(response2.status).toBe(ResponseStatus.SUCCESS);

    let issuerStatus = await trustRegistryService.checkIssuerStatus(
        CheckIssuerStatusRequest.fromPartial({
            didUri: "did:example:test",
            governanceFrameworkUri: "https://example.com", credentialTypeUri: "https://schema.org/Card"
        }));
    expect(issuerStatus).not.toBeNull();
    expect(issuerStatus.status).toBe(ResponseStatus.SUCCESS);

    let verifierStatus = await trustRegistryService.checkVerifierStatus(
        CheckVerifierStatusRequest.fromPartial({
            didUri: "did:example:test",
            governanceFrameworkUri: "https://example.com",
            presentationTypeUri: "https://schema.org/Card"
        }));
    expect(verifierStatus).not.toBeNull();
    expect(verifierStatus.status).toBe(ResponseStatus.SUCCESS);

    let searchResult = await trustRegistryService.searchRegistry();
    expect(searchResult).not.toBeNull();
    expect(searchResult.itemsJson).not.toBeNull();
    expect(searchResult.itemsJson.length > 0).toBeTruthy();
});
