import {
    AddFrameworkRequest,
    GetMembershipStatusRequest,
    RegisterMemberRequest,
    RegistrationStatus,
    SignInRequest,
    TrinsicService,
} from "../node";
import { v4 as uuid } from "uuid";
import {getTestServerOptions, myEcosystemIdOrName, setTestTimeout} from "./env";

const options = getTestServerOptions();
let trinsic: TrinsicService;

describe("TrustRegistryService Unit Tests", () => {
    setTestTimeout();
    beforeAll(async () => {
        trinsic = new TrinsicService(options);
        trinsic.options.authToken = await trinsic.account().loginAnonymous(myEcosystemIdOrName());
    });

    it("add governance framework", async () => {
        let response = await trinsic.trustRegistry().addFramework(
            AddFrameworkRequest.fromPartial({
                governanceFrameworkUri: `urn:egf:${uuid()}`,
                name: `Test Governance Framework - ${uuid()}`,
            })
        );
        expect(response).not.toBeNull();
    });

    it("add governance framework - invalid uri", async () => {
        try {
            await trinsic
                .trustRegistry()
                .addFramework(AddFrameworkRequest.fromPartial({}));
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

        let frameworkResponse = await trinsic.trustRegistry().addFramework(
            AddFrameworkRequest.fromPartial({
                governanceFrameworkUri: frameworkUri,
                name: `Test Governance Framework - ${uuid()}`,
            })
        );

        let response = await trinsic.trustRegistry().registerMember(
            RegisterMemberRequest.fromPartial({
                didUri: didUri,
                frameworkId: frameworkResponse.id,
                schemaUri: schemaUri,
            })
        );
        expect(response).not.toBeNull();

        let response2 = await trinsic.trustRegistry().registerMember(
            RegisterMemberRequest.fromPartial({
                didUri: didUri,
                frameworkId: frameworkResponse.id,
                schemaUri: schemaUri,
            })
        );
        expect(response2).not.toBeNull();

        let issuerStatus = await trinsic.trustRegistry().getMembershipStatus(
            GetMembershipStatusRequest.fromPartial({
                didUri: didUri,
                governanceFrameworkUri: frameworkUri,
                schemaUri: schemaUri,
            })
        );
        expect(issuerStatus).not.toBeNull();
        expect(issuerStatus.status).toBe(RegistrationStatus.CURRENT);

        let verifierStatus = await trinsic.trustRegistry().getMembershipStatus(
            GetMembershipStatusRequest.fromPartial({
                didUri: didUri,
                governanceFrameworkUri: frameworkUri,
                schemaUri: schemaUri,
            })
        );
        expect(verifierStatus).not.toBeNull();
        expect(verifierStatus.status).toBe(RegistrationStatus.CURRENT);

        let searchResult = await trinsic.trustRegistry().search();
        expect(searchResult).not.toBeNull();
        expect(searchResult.itemsJson).not.toBeNull();
        expect(searchResult.itemsJson!.length > 0).toBeTruthy();
    });
});
