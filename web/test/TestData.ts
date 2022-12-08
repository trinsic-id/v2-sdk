import { resolve } from "path";
import { readFileSync } from "fs";

export function myEcosystemIdOrName(): string {
    return "default";
}

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
