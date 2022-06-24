import {AccountService, TrinsicService} from "../src";

import { getTestServerOptions, setTestTimeout } from "./env";

const options = getTestServerOptions();

async function printGetInfo(service: TrinsicService, profile: string) {
  service.options.authToken = profile;
  const info = await service.account().info();
}

describe("AccountService Unit Tests", () => {
  setTestTimeout();
  it("protect/unprotect account profile", async () => {
    let trinsic = new TrinsicService(options);
    let myProfile = await trinsic.account().signIn();
    await printGetInfo(trinsic, myProfile);

    const code = "1234";
    const myProtectedProfile = await AccountService.protect(myProfile, code);
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
