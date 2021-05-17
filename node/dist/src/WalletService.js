"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const okapi_1 = __importDefault(require("@trinsic/okapi"));
const grpc_js_1 = require("@grpc/grpc-js");
const ServiceBase_1 = __importDefault(require("./ServiceBase"));
const WalletService_1 = require("../dist/WalletService");
const IssuerService_1 = require("../dist/IssuerService");
class TrinsicWalletService extends ServiceBase_1.default {
    constructor(serviceAddress = "http://localhost:5000") {
        super();
        let credentials = grpc_js_1.ChannelCredentials.createInsecure();
        let channel = new grpc_js_1.Channel(serviceAddress, credentials, {});
        this.channel = channel;
        this.client = new WalletService_1.trinsic.services.WalletClient(serviceAddress, credentials);
        this.credentialClient = new IssuerService_1.trinsic.services.CredentialClient(serviceAddress, grpc_js_1.ChannelCredentials.createInsecure(), {});
    }
    setChannel(channel) {
        this.channel = channel;
        this.client = new WalletService_1.trinsic.services.WalletClient(channel.getTarget(), grpc_js_1.ChannelCredentials.createInsecure());
    }
    registerOrConnect(email) {
        let request = new WalletService_1.trinsic.services.ConnectRequest();
        request.email = email;
        this.client.ConnectExternalIdentity(request);
    }
    createWallet(securityCode = null) {
        // Fetch Server Configuration and find key to use
        // for generating shared secret for authenticated encryption
        let configuration = this.client.GetProviderConfiguration(new WalletService_1.trinsic.services.GetProviderConfigurationRequest());
        console.log(configuration);
        let resolveRequest = new okapi_1.default.ResolveRequest();
        resolveRequest.setDid(configuration.KeyAgreementKeyId);
        let resolveResponse = okapi_1.default.DIDKey.resolve(resolveRequest);
        let providerExchangeKey = resolveResponse.getKeysList().find(x => x.getKid() === configuration.KeyAgreementKeyId);
        if (providerExchangeKey === undefined)
            throw new Error("Key agreement key not found");
        // Generate new DID used by the current device
        let keyRequest = new okapi_1.default.GenerateKeyRequest();
        keyRequest.setKeyType(okapi_1.default.KeyType.ED25519);
        let myKey = okapi_1.default.DIDKey.generate(keyRequest);
        let myExchangeKey = myKey.getKeyList().find(x => x.getCrv() === "X25519");
        if (myExchangeKey === undefined)
            throw new Error("Key agreement key not found");
        let myDidDocument = myKey.getDidDocument();
        // Create an encrypted message
        let packRequest = new okapi_1.default.PackRequest();
        packRequest.setSenderKey(myExchangeKey);
        packRequest.setReceiverKey(providerExchangeKey);
        packRequest.setPlaintext(new WalletService_1.trinsic.services.CreateWalletRequest({
            description: "My Cloud Wallet",
            controller: myDidDocument["id"],
            security_code: securityCode ?? ""
        }).serialize());
        let packedMessage = okapi_1.default.DIDComm.pack(packRequest);
        // Invoke create wallet using encrypted message
        // Call the server endpoint with encrypted message
        let response = this.client.CreateWalletEncrypted(packedMessage.getMessage());
        let unpackRequest = new okapi_1.default.UnpackRequest();
        unpackRequest.setMessage(response);
        unpackRequest.setReceiverKey(myExchangeKey);
        unpackRequest.setSenderKey(providerExchangeKey);
        let decryptedResponse = okapi_1.default.DIDComm.unpack(unpackRequest);
        let createWalletResponse = WalletService_1.trinsic.services.CreateWalletResponse.deserialize(decryptedResponse.getPlaintext());
        // This profile should be stored and supplied later
        return new WalletService_1.trinsic.services.WalletProfile({
            wallet_id: createWalletResponse.wallet_id,
            capability: createWalletResponse.capability,
            did_document: myKey.getDidDocument(),
            invoker: createWalletResponse.invoker,
            invoker_jwk: myKey.getKeyList()[0].serializeBinary()
        });
    }
}
exports.default = TrinsicWalletService;
//# sourceMappingURL=WalletService.js.map