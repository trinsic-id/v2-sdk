import {getTestServerOptions, myEcosystemIdOrName, setTestTimeout} from "./env";
import {TrinsicService} from "@trinsic/trinsic";

const options = getTestServerOptions();
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
});
