"use strict";
var __createBinding = (this && this.__createBinding) || (Object.create ? (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    Object.defineProperty(o, k2, { enumerable: true, get: function() { return m[k]; } });
}) : (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    o[k2] = m[k];
}));
var __exportStar = (this && this.__exportStar) || function(m, exports) {
    for (var p in m) if (p !== "default" && !Object.prototype.hasOwnProperty.call(exports, p)) __createBinding(exports, m, p);
};
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.TrinsicWalletService = void 0;
const okapi = require("@trinsic/okapi");
// import okapi from "@trinsic/okapi";
const pbmse_pb_1 = require("./proto/pbmse/pbmse_pb");
const struct_pb_1 = require("google-protobuf/google/protobuf/struct_pb");
const ServiceBase_1 = __importDefault(require("./ServiceBase"));
const WalletServiceServiceClientPb_1 = require("./proto/WalletServiceServiceClientPb");
const IssuerServiceServiceClientPb_1 = require("./proto/IssuerServiceServiceClientPb");
const WalletService_pb_1 = require("./proto/WalletService_pb");
const IssuerService_pb_1 = require("./proto/IssuerService_pb");
__exportStar(require("grpc-web"), exports);
class TrinsicWalletService extends ServiceBase_1.default {
    client;
    credentialClient;
    constructor(serviceAddress = "localhost:5000") {
        super();
        // let credentials = ChannelCredentials.createInsecure();
        // let channel = new Channel(serviceAddress, credentials, {});
        // this.channel = channel;
        this.client = new WalletServiceServiceClientPb_1.WalletClient(serviceAddress, null, null);
        this.credentialClient = new IssuerServiceServiceClientPb_1.CredentialClient(serviceAddress, null, null);
    }
    // setChannel(channel: Channel) {
    //   this.channel = channel;
    //   this.client = new WalletClient(
    //     channel.getTarget(),
    //     ChannelCredentials.createInsecure()
    //   );
    // }
    registerOrConnect(email) {
        let request = new WalletService_pb_1.ConnectRequest();
        request.setEmail(email);
        return new Promise((resolve, reject) => {
            this.client.connectExternalIdentity(request, {}, (error, response) => {
                if (error) {
                    reject(error);
                }
                else {
                    resolve(response);
                }
            });
        });
    }
    getProviderConfiguration() {
        return new Promise((resolve, reject) => {
            this.client.getProviderConfiguration(new WalletService_pb_1.GetProviderConfigurationRequest(), {}, (error, response) => {
                if (error) {
                    reject(error);
                }
                else {
                    resolve(response);
                }
            });
        });
    }
    async createWallet(securityCode = null) {
        // Fetch Server Configuration and find key to use
        // for generating shared secret for authenticated encryption
        let configuration = await this.getProviderConfiguration();
        let resolveRequest = new okapi.ResolveRequest();
        resolveRequest.setDid(configuration.getKeyAgreementKeyId());
        let resolveResponse = okapi.DIDKey.resolve(resolveRequest);
        let providerExchangeKey = resolveResponse
            .getKeysList()
            .find((x) => x.getKid() === configuration.getKeyAgreementKeyId());
        if (providerExchangeKey === undefined)
            throw new Error("Key agreement key not found");
        // Generate new DID used by the current device
        let keyRequest = new okapi.GenerateKeyRequest();
        keyRequest.setKeyType(okapi.KeyType.ED25519);
        console.log("generating...");
        let myKey = okapi.DIDKey.generate(keyRequest);
        console.log("generated.", myKey);
        let myExchangeKey = myKey.getKeyList().find((x) => x.getCrv() === "X25519");
        if (myExchangeKey === undefined)
            throw new Error("Key agreement key not found");
        let myDidDocument = myKey.getDidDocument().toJavaScript();
        // Create an encrypted message
        let packRequest = new okapi.PackRequest();
        packRequest.setSenderKey(myExchangeKey);
        packRequest.setReceiverKey(providerExchangeKey);
        let createWalletRequest = new WalletService_pb_1.CreateWalletRequest();
        createWalletRequest.setDescription("My Cloud Wallet");
        createWalletRequest.setController(myDidDocument["id"].toString());
        createWalletRequest.setSecurityCode(securityCode ?? "");
        packRequest.setPlaintext(createWalletRequest.serializeBinary());
        var packedMessage = okapi.DIDComm.pack(packRequest);
        return new Promise((resolve, reject) => {
            // Invoke create wallet using encrypted message
            // Call the server endpoint with encrypted message
            let message = pbmse_pb_1.EncryptedMessage.deserializeBinary(packedMessage.getMessage().serializeBinary());
            this.client.createWalletEncrypted(message, {}, (error, response) => {
                if (error) {
                    reject(error.message);
                }
                let unpackRequest = new okapi.UnpackRequest();
                unpackRequest.setMessage(response);
                unpackRequest.setReceiverKey(myExchangeKey);
                unpackRequest.setSenderKey(providerExchangeKey);
                let decryptedResponse = okapi.DIDComm.unpack(unpackRequest);
                let createWalletResponse = WalletService_pb_1.CreateWalletResponse.deserializeBinary(decryptedResponse.getPlaintext_asU8());
                // This profile should be stored and supplied later
                let walletProfile = new WalletService_pb_1.WalletProfile();
                walletProfile.setWalletId(createWalletResponse.getWalletId());
                walletProfile.setCapability(createWalletResponse.getCapability());
                walletProfile.setDidDocument(myKey.getDidDocument());
                walletProfile.setInvoker(createWalletResponse.getInvoker());
                walletProfile.setInvokerJwk(myKey.getKeyList()[0].serializeBinary());
                resolve(walletProfile);
            });
        });
    }
    issueCredential(document) {
        return new Promise((resolve, reject) => {
            let issueRequest = new IssuerService_pb_1.IssueRequest();
            issueRequest.setDocument(struct_pb_1.Struct.fromJavaScript(document));
            this.credentialClient.issue(issueRequest, this.getMetadata(), (error, response) => {
                if (error) {
                    reject(error);
                }
                else {
                    resolve(response.getDocument().toJavaScript());
                }
            });
        });
    }
    // must be authorized
    search(query = "SELECT * from c") {
        return new Promise((resolve, reject) => {
            let searchRequest = new WalletService_pb_1.SearchRequest();
            searchRequest.setQuery(query);
            this.client.search(searchRequest, this.getMetadata(), (error, response) => {
                if (error) {
                    reject(error);
                }
                else {
                    resolve(response);
                }
            });
        });
    }
    // must be authorized
    insertItem(item) {
        return new Promise((resolve, reject) => {
            let itemRequest = new WalletService_pb_1.InsertItemRequest();
            itemRequest.setItem(struct_pb_1.Struct.fromJavaScript(item));
            this.client.insertItem(itemRequest, this.getMetadata(), (error, response) => {
                if (error) {
                    reject(error);
                }
                else {
                    resolve(response.getItemId());
                }
            });
        });
    }
    createProof(documentId, revealDocument) {
        return new Promise((resolve, reject) => {
            let createProofRequest = new IssuerService_pb_1.CreateProofRequest();
            createProofRequest.setDocumentId(documentId);
            createProofRequest.setRevealDocument(struct_pb_1.Struct.fromJavaScript(revealDocument));
            this.credentialClient.createProof(createProofRequest, this.getMetadata(), (error, response) => {
                if (error) {
                    reject(error);
                }
                else {
                    resolve(response.getProofDocument().toJavaScript());
                }
            });
        });
    }
    verifyProof(proofDocument) {
        return new Promise((resolve, reject) => {
            let verifyProofRequest = new IssuerService_pb_1.VerifyProofRequest();
            verifyProofRequest.setProofDocument(struct_pb_1.Struct.fromJavaScript(proofDocument));
            this.credentialClient.verifyProof(verifyProofRequest, this.getMetadata(), (error, response) => {
                if (error) {
                    reject(error);
                }
                else {
                    resolve(response.getValid());
                }
            });
        });
    }
}
exports.TrinsicWalletService = TrinsicWalletService;
//# sourceMappingURL=WalletService.js.map