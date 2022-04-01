import test from "ava";
import {
    AccountService,
    CreateCredentialTemplateRequest,
    CreateProofRequest,
    CredentialService,
    FieldType,
    InsertItemRequest,
    IssueFromTemplateRequest,
    IssueRequest,
    SignInRequest,
    TemplateField,
    TemplateService,
    VerifyProofRequest,
    WalletService
} from "../src";
import {getTestServerOptions, getVaccineCertFrameJSON, getVaccineCertUnsignedJSON} from "./TestData";


require("dotenv").config();

const options = getTestServerOptions();

test.before(async t => {
    let service = new AccountService(options);
    let authToken = await service.signIn(new SignInRequest());

    options.setAuthToken(authToken);
});

test("get account info", async (t) => {
    let service = new AccountService(options);
    let info = await service.info();

    t.not(info, null);
});

test("create new account", async (t) => {
    let service = new AccountService(options);
    let response = await service.signIn(new SignInRequest());

    t.not(response, null);
    t.not(response, "");
    t.pass();
});

test("Demo: create wallet, set profile, search records, issue credential", async (t) => {
    let credentialService = new CredentialService(options);
    let walletService = new WalletService(options);

    let issueResponse = await credentialService.issueCredential(new IssueRequest()
        .setDocumentJson(JSON.stringify(getVaccineCertUnsignedJSON())));

    let insertItemResponse = await walletService.insertItem(new InsertItemRequest()
        .setItemJson(issueResponse.getSignedDocumentJson()));

    t.not(insertItemResponse, null);
    t.not(insertItemResponse.getItemId(), "");

    // Delay half a second for race condition fixes?
    await new Promise(res => setTimeout(res, 500));

    let items = await walletService.search();
    t.not(items, null);
    t.true(items.getItemsList().length > 0);

    let proof = await credentialService.createProof(new CreateProofRequest()
        .setItemId(insertItemResponse.getItemId())
        .setRevealDocumentJson(JSON.stringify(getVaccineCertFrameJSON())));

    let verifyResponse = await credentialService.verifyProof(new VerifyProofRequest()
        .setProofDocumentJson(proof.getProofDocumentJson()));

    t.true(verifyResponse.getIsValid());
    t.pass();
});

test("Demo: template management and credential issuance from template", async (t) => {
    let credentialService = new CredentialService(options);
    let templateService = new TemplateService(options);

    // create example template
    let templateRequest = new CreateCredentialTemplateRequest()
        .setName("My Example Credential")
        .setAllowAdditionalFields(false);
    templateRequest.getFieldsMap().set("firstName", new TemplateField().setDescription("Given name"));
    templateRequest.getFieldsMap().set("lastName", new TemplateField());
    templateRequest.getFieldsMap().set("age", new TemplateField().setType(FieldType.NUMBER).setOptional(true));

    let template = await templateService.createCredentialTemplate(templateRequest);

    t.not(template, null);
    t.not(template.getData(), null);
    t.not(template.getData()!.getId(), null);
    t.not(template.getData()!.getSchemaUri(), null);

    // issue credential from this template
    let values = JSON.stringify({
        firstName: "Jane",
        lastName: "Doe",
        age: 42
    });

    let issueResponse = await credentialService.issueFromTemplate(new IssueFromTemplateRequest()
        .setTemplateId(template.getData()!.getId()).setValuesJson(values));
    let jsonDocument = JSON.parse(issueResponse.getDocumentJson());

    t.not(jsonDocument, null);
    t.true(jsonDocument.hasOwnProperty("id"));
    t.true(jsonDocument.hasOwnProperty("credentialSubject"));

    t.pass();
});

// test("create wallet with provider invitation", async (t) => {
//   let providerService = new ProviderService(profile, config);
//   let walletService = new WalletService(profile, config);

//   // Provider creates initial wallet for Alice
//   let providerProfile = await walletService.createWallet();
//   providerService.updateActiveProfile(providerProfile);

//   let email = randomEmail();
//   let inviteRequest = new InviteRequest().setDescription("Test Wallet").setEmail(email);
//   let invitationResponse = await providerService.inviteParticipant(inviteRequest);

//   // Alice accepts the invitation and creates the wallet
//   let createResponse = await walletService.createWallet(invitationResponse.getInvitationId());
//   walletService.updateActiveProfile(createResponse);

//   // Alice searches for wallet records
//   let search = await walletService.search();
//   t.not(search, null);
//   t.true(search.getItemsList().length === 0);

//   // Send the document to an existing email
//   await walletService.send({ test: "value" }, email);

//   t.pass();
// });

// test("send an item to a user's wallet using email", async (t) => {
//   let providerService = new ProviderService(config);
//   let walletService = new WalletService(config);

//   let providerProfile = await walletService.createWallet();
//   providerService.updateActiveProfile(providerProfile);

//   // Provider creates initial wallet for Alice
//   let aliceEmail = randomEmail();
//   let aliceInviteRequest = new InviteRequest().setDescription("Test Wallet").setEmail(aliceEmail);
//   let invitationResponse = await providerService.inviteParticipant(aliceInviteRequest);
//   let aliceProfile = await walletService.createWallet(invitationResponse.getInvitationId());

//   let bobEmail = randomEmail();
//   let bobInviteRequest = new InviteRequest().setDescription("Test Wallet").setEmail(bobEmail);
//   invitationResponse = await providerService.inviteParticipant(bobInviteRequest);
//   let bobProfile = await walletService.createWallet(invitationResponse.getInvitationId());

//   // Alice's searches for wallet records
//   walletService.updateActiveProfile(aliceProfile);
//   await walletService.send({ test: "value" }, bobEmail);

//   walletService.updateActiveProfile(bobProfile);
//   let results = await walletService.search("SELECT * from c WHERE c.test = 'value' AND c._new = true");

//   t.not(results.getItemsList(), null);
//   t.true(results.getItemsList().length > 0);
//   t.pass();
// });
