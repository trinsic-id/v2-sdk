import { AccountService, AuthorizeWebhookRequest, LoginConfirmRequest, LoginRequest, TrinsicService } from "../src";

import { getTestServerOptions, setTestTimeout } from "./env";

const options = getTestServerOptions();

async function printGetInfo(service: TrinsicService, profile: string) {
  service.options.authToken = profile;
  const info = await service.account().info();
  // console.log("account info=", info);
}

describe("AccountService Unit Tests", () => {
  setTestTimeout();

  it("login / loginconfirm", async () => {
    let trinsic = new TrinsicService(options);

    // loginRequest() {
    const loginResponse = await trinsic.account().login(
      LoginRequest.fromPartial({
        email: "bob@example.com"
      })
    );
    //}

    // We expect this to fail; we have no real auth flow here
    try {
      // loginConfirm() {
      const authToken = await trinsic.account().loginConfirm(loginResponse.challenge, "12345");
      //}
    } catch { }
  });

  it("authorize webhook", async () => {
    let trinsic = new TrinsicService(options);
    let account = await trinsic.account().loginAnonymous();

    trinsic.options.authToken = account.toString(); //wat

    // authorizeWebhook() {
    const response = await trinsic.account().authorizeWebhook(
      AuthorizeWebhookRequest.fromPartial({
        events: ["*"]  // Authorize all events
      })
    );
    //}
  });

  it("protect/unprotect account profile", async () => {
    let service = new TrinsicService(options);
    let myProfile = await service.account().signIn();
    await printGetInfo(service, myProfile);

    const code = "1234";
    const myProtectedProfile = await AccountService.protect(myProfile, code);
    try {
      await printGetInfo(service, myProtectedProfile);
      fail("previous line should have thrown.");
    } catch { }

    const myUnprotectedProfile = await AccountService.unprotect(
      myProtectedProfile,
      code
    );
    await printGetInfo(service, myUnprotectedProfile);
  });
});
