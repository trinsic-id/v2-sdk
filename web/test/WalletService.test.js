const fs = require('fs');
const path = require('path');
const jasmine = require("jasmine");
// import okapi from '@trinsic/okapi';
const okapi = require('@trinsic/okapi');
const TrinsicWalletService = require("../dist/WalletService.js").TrinsicWalletService;
const { Struct } = require('google-protobuf/google/protobuf/struct_pb');

it("get provider configuration", async () => {
    let service = new TrinsicWalletService("http://localhost:5000");
    let configuration = await service.getProviderConfiguration();

    expect(configuration).not.toBeNull();
    expect(configuration.getDidDocument()).not.toBeNull();
    expect(configuration.getKeyAgreementKeyId).not.toBeNull();
});

it("create wallet profile", async () => {
    let service = new TrinsicWalletService("http://localhost:5000");
    let profile = await service.createWallet();

    let homePath = process.env[(process.platform === 'win32') ? 'USERPROFILE' : 'HOME']
    if (!fs.existsSync(path.join(homePath, '.trinsic'))) {
        fs.mkdirSync(path.join(homePath, '.trinsic'));
    }
    let p = path.join(homePath, '.trinsic', 'profile.bin');
    fs.writeFileSync(p, JSON.stringify(profile.toObject()));

    expect(profile).not.toBeNull();
})

it("generate proof with Jcs", async () => {
    let capabilityDocument = {
        "@context": "https://wid.org/security/v2",
        "invocationTarget": "urn:trinsic:wallets:noop",
        "proof": {
            "proofPurpose": "capabilityInvocation",
            "created": new Date().toISOString(),
            "capability": "urn:trinsic:wallets:noop"
        }
    };

    let generateKeyRequest = new okapi.GenerateKeyRequest();
    generateKeyRequest.setKeyType = okapi.KeyType.ED25519;
    let key = okapi.DIDKey.generate(generateKeyRequest);
    let signingKey = key.getKeysList().find(x => x.getCrv() === "Ed25519");

    let createProofRequest = new okapi.CreateProofRequest();
    createProofRequest.setKey(signingKey);
    createProofRequest.setDocument(Struct.fromJavaScript(capabilityDocument));
    createProofRequest.setSuite(okapi.LdSuite.JCSED25519SIGNATURE2020);

    let proofResponse = okapi.LdProofs.generate(createProofRequest);

    expect(proofResponse).not.toBeNull();
    expect(proofResponse.getSignedDocument()).not.toBeNull();
})

it("Demo: create wallet, set profile, search records, issue credential", async () => {
    let walletService = new TrinsicWalletService("http://localhost:5000");

    let profile = await walletService.createWallet();

    expect(profile).not.toBeNull();

    await walletService.setProfile(profile);

    let unsignedDocument = {
        "@context": "https://w3id.org/security/v3-unstable",
        "id": "https://issuer.oidp.uscis.gov/credentials/83627465"
    }

    let issueResponse = await walletService.issueCredential(unsignedDocument);

    let itemId = await walletService.insertItem(issueResponse);

    expect(itemId).not.toBeNull();
    expect(itemId).not.toBe("");

    let items = await walletService.search();

    expect(items).not.toBeNull();
    expect(items.getItemsList().length > 0).toBe(true);

    let proof = await walletService.createProof(itemId, { "@context": "http://w3id.org/security/v3-unstable" });

    let valid = await walletService.verifyProof(proof);

    expect(valid).toBe(true)
})

it("debug", () => expect(true).toBe(true));