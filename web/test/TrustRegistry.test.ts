import {
    GetMemberAuthorizationStatusRequest,
    RegisterMemberRequest,
    CreateEcosystemRequest,
    RegistrationStatus,
    TrinsicService,
} from "../src";
import {v4 as uuid} from "uuid";
import {
    getTestServerOptions,
    myEcosystemIdOrName,
    setTestTimeout,
} from "./env";

const options = getTestServerOptions();
let trinsic: TrinsicService;

describe("TrustRegistryService Unit Tests", () => {
    setTestTimeout();
    beforeAll(async () => {
        trinsic = new TrinsicService(options);
        await trinsic
            .provider().createEcosystem(CreateEcosystemRequest.fromPartial({}));
    });

    it("Demo: Trust Registry", async () => {
        const didUri = "did:example:test";
        const schemaUri = "https://schema.org/Card";

        // registerMemberSample() {
        let response = await trinsic.trustRegistry().registerMember(
            RegisterMemberRequest.fromPartial({
                didUri: didUri,
                schemaUri: schemaUri,
            })
        );
        // }
        expect(response).not.toBeNull();

        // checkIssuerStatus() {
        let issuerStatus = await trinsic.trustRegistry().getMemberAuthorizationStatus({
                didUri: didUri,
                schemaUri: schemaUri,
            }
        );
        // }
        expect(issuerStatus).not.toBeNull();
        expect(issuerStatus.status).toBe(RegistrationStatus.CURRENT);

        // listMembers() {
        const members = await trinsic.trustRegistry().listAuthorizedMembers({
                schemaUri: schemaUri
            }
        );
        // }
        expect(members).not.toBeNull();
        expect(members.authorizedMembers?.length).toBe(1);

        // getMemberSample() {
        const member = await trinsic.trustRegistry().getMember({
            didUri: didUri
        });
        // }
        expect(member.authorizedMember).toBe(members.authorizedMembers![0]);

        // unregisterMember() {
        let unregisterResult = await trinsic.trustRegistry().unregisterMember({
            didUri: didUri,
            schemaUri: schemaUri
        })
        // }
        expect(unregisterResult).not.toBeNull();
    });
});
