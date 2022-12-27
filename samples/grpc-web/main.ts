import {getTestServerOptions, myEcosystemIdOrName, setTestTimeout} from "./env";
import {TrinsicService} from "@trinsic/trinsic/browser";

const options = getTestServerOptions();
async function printGetInfo(service: TrinsicService, profile: string) {
    service.options.authToken = profile;
    const info = await service.account().getInfo();
    console.log(info);
}

describe("AccountService Unit Tests", () => {
    setTestTimeout()
    it("Login and get info", async () => {
        let trinsic = new TrinsicService(options);
        let myProfile = await trinsic.account().loginAnonymous(myEcosystemIdOrName());
        await printGetInfo(trinsic, myProfile);
    });
});
