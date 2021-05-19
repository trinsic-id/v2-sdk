import okapi from "@trinsic/okapi";
import { credentials as ChannelCredentials, Channel } from "grpc";
import ServiceBase from "./ServiceBase";
import { WalletClient } from "./proto/WalletService_grpc_pb";
import { CredentialClient } from "./proto/IssuerService_grpc_pb";
import {
  ConnectRequest,
  GetProviderConfigurationRequest,
  GetProviderConfigurationResponse,
  CreateWalletRequest,
  CreateWalletResponse,
  WalletProfile,
  ConnectResponse
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

  public registerOrConnect(email: string): Promise<ConnectResponse> {
    let request = new ConnectRequest();
    request.setEmail(email);
    
    return new Promise((resolve, reject) => {
      this.client.connectExternalIdentity(request, (error, response) => {
        if (error) {
          console.log(response);
          reject(error);
        } else {
          console.log("" + response.getStatus());
          resolve(response);
        }
      });
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

  public createWallet(securityCode: string = null): Promise<WalletProfile> {
    // Fetch Server Configuration and find key to use
    // for generating shared secret for authenticated encryption
    return new Promise((resolve, reject) => {
      this.getProviderConfiguration()
      .then((response) => {
        let configuration = response;
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
        let myKey = okapi.DIDKey.generate(keyRequest);
        let myExchangeKey = myKey.getKeyList().find((x) => x.getCrv() === "X25519");
        
        if (myExchangeKey === undefined)
          throw new Error("Key agreement key not found");
        
        let myDidDocument = myKey.getDidDocument();

        // Create an encrypted message
        let packRequest = new okapi.PackRequest();
        packRequest.setSenderKey(myExchangeKey);
        packRequest.setReceiverKey(providerExchangeKey);
        let createWalletRequest = new CreateWalletRequest();
        createWalletRequest.setDescription("My Cloud Wallet");
        createWalletRequest.setController(myDidDocument["id"]);
        createWalletRequest.setSecurityCode(securityCode ?? "");
        packRequest.setPlaintext(createWalletRequest.serializeBinary());

        let packedMessage = okapi.DIDComm.pack(packRequest);

        // Invoke create wallet using encrypted message
        // Call the server endpoint with encrypted message
        this.client.createWalletEncrypted(
          packedMessage.getMessage(),
          (error, response) => {
            if (error) 
              throw new Error(error.message);
            
            let unpackRequest = new okapi.UnpackRequest();
            unpackRequest.setMessage(response);
            unpackRequest.setReceiverKey(myExchangeKey);
            unpackRequest.setSenderKey(providerExchangeKey);
    
            let decryptedResponse = okapi.DIDComm.unpack(unpackRequest);
    
            let createWalletResponse = CreateWalletResponse.deserializeBinary(
              decryptedResponse.getPlaintext_asU8()
            );
    
            // This profile should be stored and supplied later
            let walletProfile = new WalletProfile();
            walletProfile.setWalletId(createWalletResponse.getWalletId());
            walletProfile.setCapability(createWalletResponse.getCapability());
            walletProfile.setDidDocument(myKey.getDidDocument());
            walletProfile.setInvoker(createWalletResponse.getInvoker());
            walletProfile.setInvokerJwk(myKey.getKeyList()[0].serializeBinary());

            return walletProfile;
          }
        );
      })
      .catch((error) => {
        throw new Error(error);
      });
    })
  }
}
