// @ts-ignore
import vaccineCertUnsigned from "./data/vaccination-certificate-unsigned.json";
// @ts-ignore
import vaccineCertFrame from "./data/vaccination-certificate-frame.json";
import { AccountService} from "../browser"
import { vaccineDemo } from "./VaccineDemoShared";
import { setTestTimeout } from "./env";

describe("Demo: vaccination demo - credential issuance, storing, and verification", () => {
  setTestTimeout();
  it("should run the demo without raising exceptions", async () => {
      // Used to cause browser import to set the right provider
      new AccountService();
    let response = await vaccineDemo();
    expect(response.isValid).toBeTruthy();
  });
});
