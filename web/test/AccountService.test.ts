import {
    AccountService,
    LoginRequest,
    TrinsicService,
} from "../node";

import {getTestServerOptions, myEcosystemIdOrName, setTestTimeout} from "./env";

const options = getTestServerOptions();
async function printGetInfo(service: TrinsicService, profile: string) {
    service.options.authToken = profile;
    const info = await service.account().getInfo();
    console.log(info);
}

describe("AccountService Unit Tests", () => {
    setTestTimeout();

    it("login / loginconfirm", async () => {
        let trinsic = new TrinsicService(options);
        // loginRequest() {
        const loginResponse = await trinsic.account().login(
            LoginRequest.fromPartial({
                ecosystemId: myEcosystemIdOrName(),
                email: "bob@example.com",
            })
        );
        //}

        // We expect this to fail; we have no real auth flow here
        try {
            // loginConfirm() {
            const authToken = await trinsic
                .account()
                .loginConfirm(loginResponse.challenge, "12345");
            //}

            // setAuthTokenSample() {
            trinsic.options.authToken = authToken;
            //}
        } catch {}
    });

    it("protect/unprotect account profile", async () => {
        let trinsic = new TrinsicService(options);
        let myProfile = await trinsic.account().loginAnonymous(myEcosystemIdOrName());
        await printGetInfo(trinsic, myProfile);

        const code = "1234";
        const myProtectedProfile = await AccountService.protect(
            myProfile,
            code
        );
        try {
            await printGetInfo(trinsic, myProtectedProfile);
            fail("previous line should have thrown.");
        } catch {}

        const myUnprotectedProfile = await AccountService.unprotect(
            myProtectedProfile,
            code
        );
        await printGetInfo(trinsic, myUnprotectedProfile);
    });
});
