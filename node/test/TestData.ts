import test from "ava";
import {resolve} from "path"
import {readFileSync} from "fs"
import {ServerConfig} from "../src";
import {type, release, platform} from "os";

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

export function getTestServerConfig(): ServerConfig {
    const endpoint = process.env.TEST_SERVER_ENDPOINT || "dev-internal.trinsic.cloud";
    const port = process.env.TEST_SERVER_PORT || "443";
    const useTls = (process.env.TEST_SERVER_USE_TLS || "true") != "false";
    return new ServerConfig().setEndpoint(endpoint).setPort(Number(port)).setUseTls(useTls)
}

test("verify operation platform", async (t) => {
    console.log(`Just checking node specs: type=${type()}, release=${release}, platform=${ platform() }`)
    t.pass()
})