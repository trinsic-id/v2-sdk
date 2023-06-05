import {
    GetMemberAuthorizationStatusRequest,
    RegisterMemberRequest,
    CreateEcosystemRequest,
    RegistrationStatus,
    TrinsicService,
} from "../src";
import { v4 as uuid } from "uuid";
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
        let response2 = await trinsic.trustRegistry().registerMember(
            RegisterMemberRequest.fromPartial({
                didUri: didUri,
                schemaUri: schemaUri,
            })
        );
        expect(response2).not.toBeNull();
        // getMembershipStatus() {
        let issuerStatus = await trinsic.trustRegistry().getMemberAuthorizationStatus(
            GetMemberAuthorizationStatusRequest.fromPartial({
                didUri: didUri,
                schemaUri: schemaUri,
            })
        );
        // }
        expect(issuerStatus).not.toBeNull();
        expect(issuerStatus.status).toBe(RegistrationStatus.CURRENT);

        // unregisterMember() {
        let unregisterResult = await  trinsic.trustRegistry().unregisterMember({
            didUri: didUri,
            schemaUri: schemaUri
        })
        // }
        expect(unregisterResult).not.toBeNull();
    });
});
