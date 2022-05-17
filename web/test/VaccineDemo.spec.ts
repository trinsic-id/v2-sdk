// @ts-ignore
import vaccineCertUnsigned from "./data/vaccination-certificate-unsigned.json";
// @ts-ignore
import vaccineCertFrame from "./data/vaccination-certificate-frame.json";
import {vaccineDemo} from "./VaccineDemoShared";

describe("Demo: vaccination demo - credential issuance, storing, and verification", () => {
  try {
    jest.setTimeout(20000)
  } catch {}
  it("should run the demo without raising exceptions", async () => {
    let response = await vaccineDemo(vaccineCertUnsigned, vaccineCertFrame);
    expect(response.isValid).toBeTruthy();
  });
});
