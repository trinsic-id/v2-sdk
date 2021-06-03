const fs = require('fs');
const path = require('path');
const test = require("ava");
// import okapi from '@trinsic/okapi';
const okapi = require('@trinsic/okapi');
const TrinsicWalletService = require("../dist/WalletService.js").TrinsicWalletService;
const { GenerateKeyRequest } = require('@trinsic/okapi');
const { Struct } = require('google-protobuf/google/protobuf/struct_pb');

test("get provider configuration", async t => {
    let service = new TrinsicWalletService("https://localhost:5000");
    let configuration = await service.getProviderConfiguration();

    t.not(configuration, null);
    t.not(configuration.getDidDocument(), null);
    t.not(configuration.getKeyAgreementKeyId, null);
    t.pass();
});

test("create wallet profile", async t => {
    let service = new TrinsicWalletService("https://localhost:5000");
    let profile = await service.createWallet();

    let homePath = process.env[(process.platform === 'win32') ? 'USERPROFILE' : 'HOME']
    if (!fs.existsSync(path.join(homePath, '.trinsic'))) {
        fs.mkdirSync(path.join(homePath, '.trinsic'));
    }
    let p = path.join(homePath, '.trinsic', 'profile.bin');
    fs.writeFileSync(p, JSON.stringify(profile.toObject()));

    t.not(profile, null);
    t.pass();
})

test("generate proof with Jcs", async t => {
    let capabilityDocument = {
        "@context": "https://wid.org/security/v2",
        "invocationTarget": "urn:trinsic:wallets:noop",
        "proof": {
            "proofPurpose": "capabilityInvocation",
            "created": new Date().toISOString(),
            "capability": "urn:trinsic:wallets:noop"
        }
    };

    let generateKeyRequest = new GenerateKeyRequest();
    generateKeyRequest.setKeyType = okapi.KeyType.ED25519;
    let key = okapi.DIDKey.generate(generateKeyRequest);
    let signingKey = key.getKeyList().find(x => x.getCrv() === "Ed25519");

    let createProofRequest = new okapi.CreateProofRequest();
    createProofRequest.setKey(signingKey);
    createProofRequest.setDocument(Struct.fromJavaScript(capabilityDocument));
    createProofRequest.setSuite(okapi.LdSuite.JCSED25519SIGNATURE2020);

    let proofResponse = okapi.LdProofs.generate(createProofRequest);

    t.not(proofResponse, null);
    t.not(proofResponse.getSignedDocument(), null);
    t.pass();
})

test("Demo: create wallet, set profile, search records, issue credential", async t => {
    let walletService = new TrinsicWalletService("https://localhost:5000");

    let profile = await walletService.createWallet();

    t.not(profile, null);

    walletService.setProfile(profile);

    let unsignedDocument = {
        "@context": "https://w3id.org/security/v3-unstable",
        "id": "https://issuer.oidp.uscis.gov/credentials/83627465"
    }

    let issueResponse = await walletService.issueCredential(unsignedDocument);

    let itemId = await walletService.insertItem(issueResponse);

    t.not(itemId, null);
    t.not(itemId, "");

    let items = await walletService.search();

    t.not(items, null);
    t.true(items.getItemsList().length > 0);

    let proof = await walletService.createProof(itemId, { "@context": "https://w3id.org/security/v3-unstable" });

    let valid = await walletService.verifyProof(proof);

    t.true(valid);
    t.pass();
})

test("debug", t => t.pass());