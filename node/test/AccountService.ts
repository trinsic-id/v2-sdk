import test from "ava";
import {
    AccountService,
    SignInRequest
} from "../src";
import {getTestServerOptions} from "./TestData";


require("dotenv").config();

const options = getTestServerOptions();

async function printGetInfo(service: AccountService, profile: string) {
    service.options.setAuthToken(profile)
    const info = await service.info();
    console.log("account info=", info);
}

test("protect/unprotect account profile", async (t) => {
    let service = new AccountService(options);
    let myProfile = await service.signIn(new SignInRequest());
    await printGetInfo(service, myProfile);

    const code = "1234";
    const myProtectedProfile = await AccountService.protect(myProfile, code);
    try {
        await printGetInfo(service, myProtectedProfile);
        t.fail("previous line should have thrown.")
    } catch {
    }

    const myUnprotectedProfile = await AccountService.unprotect(myProtectedProfile, code);
    await printGetInfo(service, myUnprotectedProfile);

    t.pass();
});
