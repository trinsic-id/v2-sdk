const path = require("path");
const fs = require("fs");

function vaccineCertFramePath() {
    return path.resolve(__dirname, "..", "..", "devops", "testdata", "vaccination-certificate-frame.jsonld");
}

function vaccineCertUnsignedPath() {
    return path.resolve(__dirname, "..", "..", "devops", "testdata", "vaccination-certificate-unsigned.jsonld");
}

function getVaccineCertFrameJSON() {
    const data = fs.readFileSync(vaccineCertFramePath(), 'utf8');
    return JSON.parse(data);
}

function getVaccineCertUnsignedJSON() {
    const data = fs.readFileSync(vaccineCertUnsignedPath(), 'utf8');
    return JSON.parse(data);
}

exports.vaccineCertFrame = getVaccineCertFrameJSON
exports.vaccineCertUnsigned = getVaccineCertUnsignedJSON