import test from "ava";
import {
    TrustRegistryService,
    AddFrameworkRequest,
    GovernanceFramework,
    AccountService,
    RegisterIssuerRequest,
    ResponseStatus,
    RegisterVerifierRequest,
    CheckIssuerStatusRequest,
    CheckVerifierStatusRequest,
    RegistrationStatus,
    SignInRequest,
} from "../src"
import { v4 as uuid } from "uuid";
import { getTestServerOptions } from "./TestData";

require("dotenv").config();

const options = getTestServerOptions();

test.before(async t => {
    let service = new AccountService(options);
    await service.signIn();
});

test("add governance framework", async (t) => {
    let trustRegistryService = new TrustRegistryService(options);

    let response = await trustRegistryService.addGovernanceFramework({governanceFramework: GovernanceFramework.fromPartial({governanceFrameworkUri: `urn:egf:${uuid()}`})});
    t.not(response, null);
});

test("add governance framework - invalid uri", async (t) => {
    let trustRegistryService = new TrustRegistryService(options);

    const error = await t.throwsAsync(async () => await trustRegistryService.addGovernanceFramework({governanceFramework: GovernanceFramework.fromPartial({})}));
});

test("Demo: Trust Registry", async (t) => {
    let trustRegistryService = new TrustRegistryService(options);

    let response = await trustRegistryService.registerIssuer(RegisterIssuerRequest.fromPartial({didUri: "did:example:test",governanceFrameworkUri: "https://example.com", credentialTypeUri: "https://schema.org/Card"}));
    t.not(response, null);
    t.is(response.status, ResponseStatus.SUCCESS)

    let response2 = await trustRegistryService.registerVerifier(RegisterVerifierRequest.fromPartial({didUri: "did:example:test", governanceFrameworkUri: "https://example.com", presentationTypeUri: "https://schema.org/Card"}));
    t.not(response, null);
    t.is(response.status, ResponseStatus.SUCCESS)

    let issuerStatus = await trustRegistryService.checkIssuerStatus(
        CheckIssuerStatusRequest.fromPartial({didUri:"did:example:test",
            governanceFrameworkUri:"https://example.com",credentialTypeUri:"https://schema.org/Card"}));
    t.not(issuerStatus, null);
    t.is(issuerStatus.status, RegistrationStatus.CURRENT)

    let verifierStatus = await trustRegistryService.checkVerifierStatus(
        CheckVerifierStatusRequest.fromPartial({didUri:"did:example:test",
        governanceFrameworkUri:"https://example.com",
        presentationTypeUri:"https://schema.org/Card"}));
    t.not(verifierStatus, null);
    t.is(verifierStatus.status, RegistrationStatus.CURRENT)

    let searchResult = await trustRegistryService.searchRegistry();
    t.not(searchResult, null);
    t.not(searchResult.itemsJson, null)
    t.true(searchResult.itemsJson.length > 0)
});
