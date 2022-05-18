// @ts-ignore
import vaccineCertUnsigned from "./data/vaccination-certificate-unsigned.json";
// @ts-ignore
import vaccineCertFrame from "./data/vaccination-certificate-frame.json";
import {vaccineDemo} from "./VaccineDemoShared";
import {set20SecTimeout} from "./env";

describe("Demo: vaccination demo - credential issuance, storing, and verification", () => {
  set20SecTimeout()
  it("should run the demo without raising exceptions", async () => {
    let response = await vaccineDemo(vaccineCertUnsigned, vaccineCertFrame);
    expect(response.isValid).toBeTruthy();
  });
});
