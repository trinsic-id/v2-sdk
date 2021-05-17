import okapi from '@trinsic/okapi';
import { ChannelCredentials, Channel } from "@grpc/grpc-js";
import ServiceBase from "./ServiceBase";
import { trinsic as Wallet } from "../dist/WalletService";
import { trinsic as Issuer } from "../dist/IssuerService";

export default class TrinsicWalletService extends ServiceBase {
  channel: Channel;
  client: Wallet.services.WalletClient;
  credentialClient: Issuer.services.CredentialClient;
  
  constructor(serviceAddress: string = "http://localhost:5000") {
    super();

    let credentials = ChannelCredentials.createInsecure();
    let channel = new Channel(serviceAddress, credentials, {});
    this.channel = channel;
    this.client = new Wallet.services.WalletClient(serviceAddress, credentials);
    this.credentialClient = new Issuer.services.CredentialClient(serviceAddress, ChannelCredentials.createInsecure(), {});
  }
  
  setChannel(channel: Channel) {
    this.channel = channel
    this.client = new Wallet.services.WalletClient(channel.getTarget(), ChannelCredentials.createInsecure());
  }

  registerOrConnect(email: string) {
    let request = new Wallet.services.ConnectRequest();
    request.email = email;
    this.client.ConnectExternalIdentity(request);
  }

  createWallet(securityCode: string = null) {
    // Fetch Server Configuration and find key to use
    // for generating shared secret for authenticated encryption
  
    let configuration = this.client.GetProviderConfiguration(new Wallet.services.GetProviderConfigurationRequest());
    console.log(configuration);
    let resolveRequest = new okapi.ResolveRequest();
    resolveRequest.setDid(configuration.KeyAgreementKeyId);
    let resolveResponse = okapi.DIDKey.resolve(resolveRequest);
    let providerExchangeKey = resolveResponse.getKeysList().find(x => x.getKid() === configuration.KeyAgreementKeyId) 
    if (providerExchangeKey === undefined) throw new Error("Key agreement key not found");

    // Generate new DID used by the current device
    let keyRequest = new okapi.GenerateKeyRequest();
    keyRequest.setKeyType(okapi.KeyType.ED25519);
    let myKey = okapi.DIDKey.generate(keyRequest);
    let myExchangeKey = myKey.getKeyList().find(x => x.getCrv() === "X25519") 
    if (myExchangeKey === undefined) throw new Error("Key agreement key not found");
    let myDidDocument = myKey.getDidDocument();

    // Create an encrypted message
    let packRequest = new okapi.PackRequest();
    packRequest.setSenderKey(myExchangeKey);
    packRequest.setReceiverKey(providerExchangeKey);
    packRequest.setPlaintext(new Wallet.services.CreateWalletRequest({
      description: "My Cloud Wallet",
      controller: myDidDocument["id"],
      security_code: securityCode ?? ""
    }).serialize());

    let packedMessage = okapi.DIDComm.pack(packRequest);

    // Invoke create wallet using encrypted message
    // Call the server endpoint with encrypted message
    let response = this.client.CreateWalletEncrypted(packedMessage.getMessage());

    let unpackRequest = new okapi.UnpackRequest();
    unpackRequest.setMessage(response);
    unpackRequest.setReceiverKey(myExchangeKey);
    unpackRequest.setSenderKey(providerExchangeKey);

    let decryptedResponse = okapi.DIDComm.unpack(unpackRequest);

    let createWalletResponse = Wallet.services.CreateWalletResponse.deserialize(decryptedResponse.getPlaintext())

    // This profile should be stored and supplied later
    return new Wallet.services.WalletProfile({
      wallet_id: createWalletResponse.wallet_id,
      capability: createWalletResponse.capability,
      did_document: myKey.getDidDocument(),
      invoker: createWalletResponse.invoker,
      invoker_jwk: myKey.getKeyList()[0].serializeBinary()
    });
  }
}