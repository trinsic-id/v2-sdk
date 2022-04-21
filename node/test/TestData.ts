import { resolve } from "path";
import { readFileSync } from "fs";
import { ServiceOptions } from "../src";

export function vaccineCertFramePath(): string {
  return resolve(
    __dirname,
    "..",
    "..",
    "devops",
    "testdata",
    "vaccination-certificate-frame.jsonld"
  );
}

export function vaccineCertUnsignedPath(): string {
  return resolve(
    __dirname,
    "..",
    "..",
    "devops",
    "testdata",
    "vaccination-certificate-unsigned.jsonld"
  );
}

export function templateCertFramePath(): string {
  return resolve(
    __dirname,
    "..",
    "..",
    "devops",
    "testdata",
    "credential-template-frame.jsonld"
  );
}

export function getVaccineCertFrameJSON(): string {
  return readFileSync(vaccineCertFramePath(), "utf8");
}

export function getVaccineCertUnsignedJSON(): string {
  return readFileSync(vaccineCertUnsignedPath(), "utf8");
}

export function getTemplateCertFrameJSON(): string {
  return readFileSync(templateCertFramePath(), "utf8");
}

export function getTestServerOptions(): ServiceOptions {
  const endpoint =
    process.env.TEST_SERVER_ENDPOINT || "staging-internal.trinsic.cloud";
  const port = process.env.TEST_SERVER_PORT || "443";
  const useTls = (process.env.TEST_SERVER_USE_TLS || "true") != "false";

  return new ServiceOptions()
    .setServerEndpoint(endpoint)
    .setServerPort(Number(port))
    .setServerUseTls(useTls);
}
