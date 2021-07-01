const fs = require('fs');
const path = require('path');
const test = require("ava");
// import okapi from '@trinsic/okapi';
const okapi = require('@trinsic/okapi');
const TrinsicWalletService = require("../lib").WalletService;
const TrinsicProviderService = require("../lib").ProviderService;
const { GenerateKeyRequest } = require('@trinsic/okapi');
const { Struct } = require('google-protobuf/google/protobuf/struct_pb');
const { getuid } = require('process');
const { InviteRequest } = require('../lib');
const endpoint = process.env.SERVICE_URL

test("get provider configuration", async t => {
    let service = new TrinsicWalletService(endpoint);
    let configuration = await service.getProviderConfiguration();

    t.not(configuration, null);
    t.not(configuration.getDidDocument(), null);
    t.not(configuration.getKeyAgreementKeyId, null);
    t.pass();
});

test("create wallet profile", async t => {
    let service = new TrinsicWalletService(endpoint);
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
    let walletService = new TrinsicWalletService(endpoint);

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

test("create wallet with provider invitation", async t => {
    let providerService = new TrinsicProviderService(endpoint);
    let walletService = new TrinsicWalletService(endpoint);

    // Provider creates initial wallet for Alice
    let providerProfile = await walletService.createWallet();
    providerService.setProfile(providerProfile);

    let email = `${getuid()}@example.com`;
    let inviteRequest = new InviteRequest();
    inviteRequest.setDescription("Test Wallet");
    inviteRequest.setEmail(email);
    let invitationResponse = await providerService.inviteParticipant(inviteRequest);

    // Alice accepts the invitation and creates the wallet
    let createResponse = await walletService.createWallet(invitationResponse.getInvitationId());
    walletService.setProfile(createResponse);

    // Alice searches for wallet records
    let search = await walletService.search();
    t.not(search, null);
    t.true(search.getItemsList().length > 0);

    // Send the document to an existing email
    await walletService.send({ "test": "value" }, email);

    t.pass();
});

test("send an item to a user's wallet using email", async t => {
    let providerService = new TrinsicProviderService(endpoint);
    let walletService = new TrinsicWalletService(endpoint);

    let providerProfile = await walletService.createWallet();
    providerService.setProfile(providerProfile);

    // Provider creates initial wallet for Alice
    let aliceEmail = `${getuid()}@example.com`;
    let aliceInviteRequest = new InviteRequest();
    aliceInviteRequest.setDescription("Test Wallet");
    aliceInviteRequest.setEmail(aliceEmail);
    let invitationResponse = await providerService.inviteParticipant(aliceInviteRequest);
    let aliceProfile = await walletService.createWallet(invitationResponse.getInvitationId());

    let bobEmail = `${getuid()}@example.com`;
    let bobInviteRequest = new InviteRequest();
    bobInviteRequest.setDescription("Test Wallet");
    bobInviteRequest.setEmail(bobEmail);
    invitationResponse = await providerService.inviteParticipant(bobInviteRequest);
    let bobProfile = await walletService.createWallet(invitationResponse.getInvitationId());

    // Alice's searches for wallet records
    walletService.setProfile(aliceProfile);
    await walletService.send({ "test": "value" }, bobEmail);

    walletService.setProfile(bobProfile);
    let results = await walletService.search("SELECT * from c WHERE c.test = 'value' AND c._new = true");

    t.not(results.getItemsList(), null);
    t.true(results.getItemsList().length > 0);
    t.pass();
});

test("debug", t => t.pass());