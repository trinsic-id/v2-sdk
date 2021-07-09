// import okapi from '@trinsic/okapi';
const okapi = require('@trinsic/okapi');
const { WalletService } = require("../lib");
const { Struct } = require('google-protobuf/google/protobuf/struct_pb');
let endpoint = require('./env').env.ENDPOINT
const walletService = new WalletService(endpoint);

describe("wallet service tests", () => {
    it("get provider configuration", async () => {
        let configuration = await walletService.getProviderConfiguration();
    
        expect(configuration).not.toBeNull();
        expect(configuration.getDidDocument()).not.toBeNull();
        expect(configuration.getKeyAgreementKeyId).not.toBeNull();
    });
    
    it("create wallet profile", async () => {
        let profile = await walletService.createWallet();
    
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
        let key = await okapi.DIDKey.generate(generateKeyRequest);
        let signingKey = key.getKeyList().find(x => x.getCrv() === "Ed25519");
    
        let createProofRequest = new okapi.CreateProofRequest();
        createProofRequest.setKey(signingKey);
        createProofRequest.setDocument(Struct.fromJavaScript(capabilityDocument));
        createProofRequest.setSuite(okapi.LdSuite.JCSED25519SIGNATURE2020);
    
        let proofResponse = await okapi.LdProofs.generate(createProofRequest);
    
        expect(proofResponse).not.toBeNull();
        expect(proofResponse.getSignedDocument()).not.toBeNull();
    })
    
    it("Demo: create wallet, set profile, search records, issue credential", async () => {    
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
        expect(items.getItemsList().length).toBeGreaterThan(0);
    
        let proof = await walletService.createProof(itemId, { "@context": "http://w3id.org/security/v3-unstable" });
    
        let valid = await walletService.verifyProof(proof);
    
        expect(valid).toBe(true)
    }, 20000);
    
    // it("create wallet with provider invitation", async () => {
    //     let providerService = new ProviderService(endpoint);
    //     let walletService = new WalletService(endpoint);
    
    //     // Provider creates initial wallet for Alice
    //     let providerProfile = await walletService.createWallet();
    //     providerwalletService.setProfile(providerProfile);
    
    //     let email = randomEmail();
    //     console.log("email", email);
    //     let inviteRequest = new InviteRequest();
    //     inviteRequest.setDescription("Test Wallet");
    //     inviteRequest.setEmail(email);
    //     let invitationResponse = await providerwalletService.inviteParticipant(inviteRequest);
    //     console.log("invitationResponse", invitationResponse);
    //     // Alice accepts the invitation and creates the wallet
    //     console.log("invitation ID", invitationResponse.getInvitationId());
    //     let createResponse = await walletService.createWallet(invitationResponse.getInvitationId());
    //     console.log("createResponse", createResponse);
    //     walletService.setProfile(createResponse);
    
    //     // Alice searches for wallet records
    //     let search = await walletService.search();
    //     console.log("search", search);
    //     expect(search).not.toBeNull();
    //     expect(search.getItemsList().length).toBeGreaterThan(0);
    
    //     // Send the document to an existing email
    //     await walletService.send({ "test": "value" }, email);
    // });
    
    // it("send an item to a user's wallet using email", async () => {
    //     let providerService = new ProviderService(endpoint);
    //     let walletService = new WalletService(endpoint);
    
    //     let providerProfile = await walletService.createWallet();
    //     providerwalletService.setProfile(providerProfile);
    
    //     // Provider creates initial wallet for Alice
    //     let aliceEmail = randomEmail();
    //     let aliceInviteRequest = new InviteRequest();
    //     aliceInviteRequest.setDescription("Test Wallet");
    //     aliceInviteRequest.setEmail(aliceEmail);
    //     let invitationResponse = await providerwalletService.inviteParticipant(aliceInviteRequest);
    //     let aliceProfile = await walletService.createWallet(invitationResponse.getInvitationId());
    
    //     let bobEmail = randomEmail();
    //     let bobInviteRequest = new InviteRequest();
    //     bobInviteRequest.setDescription("Test Wallet");
    //     bobInviteRequest.setEmail(bobEmail);
    //     invitationResponse = await providerwalletService.inviteParticipant(bobInviteRequest);
    //     let bobProfile = await walletService.createWallet(invitationResponse.getInvitationId());
    
    //     // Alice's searches for wallet records
    //     walletService.setProfile(aliceProfile);
    //     await walletService.send({ "test": "value" }, bobEmail);
    
    //     walletService.setProfile(bobProfile);
    //     let results = await walletService.search("SELECT * from c WHERE c.test = 'value' AND c._new = true");
    
    //     expect(results.getItemsList()).not.toBeNull();
    //     expect(results.getItemsList().length).toBeGreaterThan(0);
    // });

    it("debug", () => expect(true).toBe(true));
})
