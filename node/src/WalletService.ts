import okapi from "@trinsic/okapi";
import { credentials as ChannelCredentials, Channel } from "grpc";
import ServiceBase from "./ServiceBase";
import { WalletClient } from "./proto/WalletService_grpc_pb";
import { CredentialClient } from "./proto/IssuerService_grpc_pb";
import {
  ConnectRequest,
  GetProviderConfigurationRequest,
  GetProviderConfigurationResponse,
} from "./proto/WalletService_pb";

export * from "grpc";
export class TrinsicWalletService extends ServiceBase {
  channel: Channel;
  client: WalletClient;
  credentialClient: CredentialClient;

  constructor(serviceAddress: string = "localhost:5000") {
    super();

    let credentials = ChannelCredentials.createInsecure();
    let channel = new Channel(serviceAddress, credentials, {});
    this.channel = channel;
    this.client = new WalletClient(serviceAddress, credentials);
    this.credentialClient = new CredentialClient(
      serviceAddress,
      ChannelCredentials.createInsecure(),
      {}
    );
  }

  setChannel(channel: Channel) {
    this.channel = channel;
    this.client = new WalletClient(
      channel.getTarget(),
      ChannelCredentials.createInsecure()
    );
  }

  public registerOrConnect(email: string) {
    let request = new ConnectRequest();
    request.setEmail(email);
    this.client.connectExternalIdentity(request, (error, response) => {
      if (error) {
        console.log(response);
      } else {
        console.log("" + response.getStatus());
      }
    });
  }

  public getProviderConfiguration(): Promise<GetProviderConfigurationResponse> {
    return new Promise((resolve, reject) => {
      this.client.getProviderConfiguration(
        new GetProviderConfigurationRequest(),
        (error, response) => {
          if (error) {
            reject(error);
          } else {
            resolve(response);
          }
        }
      );
    });
  }

  public createWallet(securityCode: string = null) {
    // Fetch Server Configuration and find key to use
    // for generating shared secret for authenticated encryption

    let configuration = this.client.getProviderConfiguration(
      new GetProviderConfigurationRequest(),
      (error, response) => {}
    );
    // console.log(configuration);
    // let resolveRequest = new okapi.ResolveRequest();
    // resolveRequest.setDid(configuration.KeyAgreementKeyId);
    // let resolveResponse = okapi.DIDKey.resolve(resolveRequest);
    // let providerExchangeKey = resolveResponse
    //   .getKeysList()
    //   .find((x) => x.getKid() === configuration.KeyAgreementKeyId);
    // if (providerExchangeKey === undefined)
    //   throw new Error("Key agreement key not found");

    // // Generate new DID used by the current device
    // let keyRequest = new okapi.GenerateKeyRequest();
    // keyRequest.setKeyType(okapi.KeyType.ED25519);
    // let myKey = okapi.DIDKey.generate(keyRequest);
    // let myExchangeKey = myKey.getKeyList().find((x) => x.getCrv() === "X25519");
    // if (myExchangeKey === undefined)
    //   throw new Error("Key agreement key not found");
    // let myDidDocument = myKey.getDidDocument();

    // // Create an encrypted message
    // let packRequest = new okapi.PackRequest();
    // packRequest.setSenderKey(myExchangeKey);
    // packRequest.setReceiverKey(providerExchangeKey);
    // packRequest.setPlaintext(
    //   new Wallet.services.CreateWalletRequest({
    //     description: "My Cloud Wallet",
    //     controller: myDidDocument["id"],
    //     security_code: securityCode ?? "",
    //   }).serialize()
    // );

    // let packedMessage = okapi.DIDComm.pack(packRequest);

    // // Invoke create wallet using encrypted message
    // // Call the server endpoint with encrypted message
    // let response = this.client.CreateWalletEncrypted(
    //   packedMessage.getMessage()
    // );

    // let unpackRequest = new okapi.UnpackRequest();
    // unpackRequest.setMessage(response);
    // unpackRequest.setReceiverKey(myExchangeKey);
    // unpackRequest.setSenderKey(providerExchangeKey);

    // let decryptedResponse = okapi.DIDComm.unpack(unpackRequest);

    // let createWalletResponse = Wallet.services.CreateWalletResponse.deserialize(
    //   decryptedResponse.getPlaintext()
    // );

    // // This profile should be stored and supplied later
    // return new Wallet.services.WalletProfile({
    //   wallet_id: createWalletResponse.wallet_id,
    //   capability: createWalletResponse.capability,
    //   did_document: myKey.getDidDocument(),
    //   invoker: createWalletResponse.invoker,
    //   invoker_jwk: myKey.getKeyList()[0].serializeBinary(),
    // });
  }
}
