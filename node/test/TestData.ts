import { resolve } from "path"
import { readFileSync } from "fs"
import { ServiceOptions } from "../src";

export function vaccineCertFramePath(): string {
    return resolve(__dirname, "..", "..", "devops", "testdata", "vaccination-certificate-frame.jsonld");
}

export function vaccineCertUnsignedPath(): string {
    return resolve(__dirname, "..", "..", "devops", "testdata", "vaccination-certificate-unsigned.jsonld");
}

export function getVaccineCertFrameJSON(): any {
    const data = readFileSync(vaccineCertFramePath(), 'utf8');
    return JSON.parse(data);
}

export function getVaccineCertUnsignedJSON(): any {
    const data = readFileSync(vaccineCertUnsignedPath(), 'utf8');
    return JSON.parse(data);
}

export function getTestServerOptions(): ServiceOptions {
    const endpoint = process.env.TEST_SERVER_ENDPOINT || "staging-internal.trinsic.cloud";
    const port = process.env.TEST_SERVER_PORT || "443";
    const useTls = (process.env.TEST_SERVER_USE_TLS || "true") != "false";

    return new ServiceOptions()
        .setServerEndpoint(endpoint)
        .setServerPort(Number(port))
        .setServerUseTls(useTls)
}
