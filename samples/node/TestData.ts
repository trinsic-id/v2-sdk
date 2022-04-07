import { resolve } from "path"
import { readFileSync } from "fs"

export function vaccineCertFramePath(): string {
    return resolve(__dirname, "..", "..", "devops", "testdata", "vaccination-certificate-frame.jsonld");
}

export function vaccineCertUnsignedPath(): string {
    return resolve(__dirname, "..", "..", "devops", "testdata", "vaccination-certificate-unsigned.jsonld");
}

export function templateCertFramePath(): string {
    return resolve(__dirname, "..", "..", "devops", "testdata", "credential-template-frame.jsonld");
}

export function getVaccineCertFrameJSON(): any {
    const data = readFileSync(vaccineCertFramePath(), 'utf8');
    return JSON.parse(data);
}

export function getVaccineCertUnsignedJSON(): any {
    const data = readFileSync(vaccineCertUnsignedPath(), 'utf8');
    return JSON.parse(data);
}

export function getTemplateCertFrameJSON(): any {
    const data = readFileSync(templateCertFramePath(), 'utf8');
}