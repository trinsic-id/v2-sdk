import {getTestServerOptions, myEcosystemIdOrName, setTestTimeout} from "./env";
import {IdentityProvider, TrinsicService} from "@trinsic/trinsic";

const options = getTestServerOptions("5b8f-208-102-143-85.ngrok-free.app");
async function printGetInfo(service: TrinsicService, profile: string) {
    service.options.authToken = profile;
    const info = await service.wallet().getMyInfo({});
    console.log(info);
}

describe("AccountService Unit Tests", () => {
    setTestTimeout()
    it("Login and get info", async () => {
        let trinsic = new TrinsicService(options);
        let myProfile = await trinsic.wallet().createWallet({ecosystemId: myEcosystemIdOrName()});
        await printGetInfo(trinsic, myProfile.authToken!);
    });

    it("Spam the `AuthenticateInit` endpoint", async () => {
        let trinsic = new TrinsicService(options);
        for (let i = 0; i < 100; i++) {
            let myProfile = await trinsic.wallet().authenticateInit({ecosystemId: "default", provider: IdentityProvider.EMAIL, identity: "polygonguru@gmail.com"});
        }
    });
});
