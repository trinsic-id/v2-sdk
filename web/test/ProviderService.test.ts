import {
    AddWebhookRequest,
    CreateEcosystemRequest,
    DeleteWebhookRequest,
    EcosystemInfoRequest,
    IonOptions,
    IonOptions_IonNetwork,
    SupportedDidMethod,
    TrinsicService,
    UpdateEcosystemRequest,
    UpgradeDidRequest,
} from "../node";

import { getTestServerOptions, setTestTimeout } from "./env";
import {myEcosystemIdOrName} from "./TestData";

const options = getTestServerOptions();

describe("ProviderService Unit Tests", () => {
    setTestTimeout();
    beforeAll(async () => {
        let trinsic = new TrinsicService(options);
        options.authToken = await trinsic.account().loginAnonymous(myEcosystemIdOrName());
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

        // addWebhook() {
        let addResponse = await trinsic.provider().addWebhook(
            AddWebhookRequest.fromPartial({
                destinationUrl: "https://example.com/webhooks/trinsic",
                secret: "my well-kept secret",
                events: ["*"],
            })
        );
        //}

        expect(addResponse.ecosystem?.webhooks?.length).toBe(1);

        const webhook = addResponse.ecosystem?.webhooks![0];
        const webhookId = webhook?.id;

        // deleteWebhook() {
        let deleteResponse = await trinsic.provider().deleteWebhook(
            DeleteWebhookRequest.fromPartial({
                webhookId: webhookId,
            })
        );
        //}

        expect(deleteResponse.ecosystem).not.toBeNull();
        expect(deleteResponse.ecosystem!.webhooks!.length).toBe(0);

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

        let accountInfoResponse = await trinsic.account().info();
        let walletId = accountInfoResponse.walletId;

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
