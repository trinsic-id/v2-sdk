import test from "ava";
import {
    AccountProfile,
    TrustRegistryService,
    AddFrameworkRequest,
    GovernanceFramework,
    AccountService,
    RegisterIssuerRequest,
    ResponseStatus,
    RegisterVerifierRequest, CheckIssuerStatusRequest, CheckVerifierStatusRequest, RegistrationStatus,
} from "../src"
import {v4 as uuid} from "uuid";
import {getTestServerConfig} from "./TestData";

require("dotenv").config();

const config = getTestServerConfig()
let profile = new AccountProfile();

test.before(async t => {
    let service = new AccountService({server: config});
    let response = await service.signIn();

    profile = response.getProfile()!;
});

test("add governance framework", async (t) => {
    let trustRegistryService = new TrustRegistryService({profile, server: config});

    let response = await trustRegistryService.addGovernanceFramework(new AddFrameworkRequest().setGovernanceFramework(new GovernanceFramework().setGovernanceFrameworkUri(`urn:egf:${uuid()}`)));
    t.not(response, null);
});

test("add governance framework - invalid uri", async (t) => {
    let trustRegistryService = new TrustRegistryService({profile, server: config});

    const error = await t.throwsAsync(async () => await trustRegistryService.addGovernanceFramework(new AddFrameworkRequest().setGovernanceFramework(new GovernanceFramework())));
});

test("Demo: Trust Registry", async (t) => {
    let trustRegistryService = new TrustRegistryService({profile, server: config});

    let response = await trustRegistryService.registerIssuer(new RegisterIssuerRequest().setDidUri("did:example:test").setGovernanceFrameworkUri("https://example.com").setCredentialTypeUri("https://schema.org/Card"));
    t.not(response, null);
    t.is(response.getStatus(), ResponseStatus.SUCCESS)

    let response2 = await trustRegistryService.registerVerifier(new RegisterVerifierRequest().setDidUri("did:example:test").setGovernanceFrameworkUri("https://example.com").setPresentationTypeUri("https://schema.org/Card"));
    t.not(response, null);
    t.is(response.getStatus(), ResponseStatus.SUCCESS)

    let issuerStatus = await trustRegistryService.checkIssuerStatus(new CheckIssuerStatusRequest().setDidUri("did:example:test").setGovernanceFrameworkUri("https://example.com").setCredentialTypeUri("https://schema.org/Card"));
    t.not(issuerStatus, null);
    t.is(issuerStatus.getStatus(), RegistrationStatus.CURRENT)

    let verifierStatus = await trustRegistryService.checkVerifierStatus(new CheckVerifierStatusRequest().setDidUri("did:example:test").setGovernanceFrameworkUri("https://example.com").setPresentationTypeUri("https://schema.org/Card"));
    t.not(verifierStatus, null);
    t.is(verifierStatus.getStatus(), RegistrationStatus.CURRENT)

    let searchResult = await trustRegistryService.searchRegistry();
    t.not(searchResult, null);
    t.not(searchResult.getItemsJson(), null)
    t.true(searchResult.getItemsJson().length > 0)
});
