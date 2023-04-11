import {
    CreateEcosystemRequest,
    EcosystemInfoRequest,
    IonOptions,
    IonOptions_IonNetwork,
    SupportedDidMethod,
    TrinsicService,
    UpdateEcosystemRequest,
    UpgradeDidRequest,
} from "../node";

import {getTestServerOptions, myEcosystemIdOrName, setTestTimeout} from "./env";

const options = getTestServerOptions();

describe("ProviderService Unit Tests", () => {
    setTestTimeout();
    beforeAll(async () => {
        let trinsic = new TrinsicService(options);
        var response = await trinsic.wallet().createWallet({ ecosystemId: myEcosystemIdOrName()});
        trinsic.options.authToken = response.authToken;
    });

    it("Demo: Ecosystem Tests", async () => {
        let trinsic = new TrinsicService(options);

        // createEcosystem() {
        let createResponse = await trinsic.provider().createEcosystem(
            CreateEcosystemRequest.fromPartial({
                description: "Test ecosystem from Node",
                uri: "https://example.com",
            })
        );
        // }

        expect(createResponse).not.toBeNull();
        expect(createResponse.ecosystem).not.toBeNull();
        expect(
            createResponse.ecosystem!.id!.startsWith("urn:trinsic:ecosystems:")
        ).toBeTruthy();

        // updateEcosystem() {
        let updateResponse = await trinsic.provider().updateEcosystem(
            UpdateEcosystemRequest.fromPartial({
                description: "New ecosystem description",
                uri: "https://new-example.com",
            })
        );
        //}

        expect(updateResponse).not.toBeNull();
        expect(updateResponse.Ecosystem).not.toBeNull();
        expect(updateResponse.Ecosystem?.description).toBe(
            "New ecosystem description"
        );

        // ecosystemInfo() {
        const infoResponse = await trinsic
            .provider()
            .ecosystemInfo(EcosystemInfoRequest.fromPartial({}));

        const ecosystem = infoResponse.ecosystem;
        //}

        expect(ecosystem).toEqual(updateResponse.Ecosystem);

        let accountInfoResponse = await trinsic.wallet().getMyInfo({});
        let walletId = accountInfoResponse.wallet!.walletId;

        // Try/catch this as ecosystems currently can't upgrade DIDs by default
        try {
            // upgradeDid() {
            let upgradeResponse = await trinsic.provider().upgradeDID(
                UpgradeDidRequest.fromPartial({
                    walletId: walletId,
                    method: SupportedDidMethod.ION,
                    ionOptions: IonOptions.fromPartial({
                        network: IonOptions_IonNetwork.TestNet,
                    }),
                })
            );
            // }
        } catch (e) {}
    });
});
