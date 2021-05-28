// const okapi = require("@trinsic/okapi");
import okapi from "@trinsic/okapi";
import { EncryptedMessage } from './proto/pbmse/pbmse_pb';
import { Struct } from 'google-protobuf/google/protobuf/struct_pb';
import ServiceBase from "./ServiceBase";
import { WalletClient } from "./proto/WalletService_grpc_web_pb";
import { CredentialClient } from "./proto/IssuerService_grpc_web_pb";
import {
  ConnectRequest,
  GetProviderConfigurationRequest,
  GetProviderConfigurationResponse,
  CreateWalletRequest,
  CreateWalletResponse,
  WalletProfile,
  ConnectResponse,
  InsertItemRequest,
  SearchResponse,
  SearchRequest,
} from "./proto/WalletService_pb";
import { CreateProofRequest, IssueRequest, VerifyProofRequest } from './proto/IssuerService_pb';


type JavaScriptValue = string | number | boolean | {} | any[]
type JSStruct = {[key: string]: JavaScriptValue}

export * from "grpc-web";
export class TrinsicWalletService extends ServiceBase {
  client: WalletClient;
  credentialClient: CredentialClient;

  constructor(serviceAddress: string = "localhost:5000") {
    super();

    // let credentials = ChannelCredentials.createInsecure();
    // let channel = new Channel(serviceAddress, credentials, {});
    // this.channel = channel;
    this.client = new WalletClient(serviceAddress, {}, {});
    this.credentialClient = new CredentialClient(
      serviceAddress,
      // ChannelCredentials.createInsecure(),
      {},
      {}
    );
  }

  // setChannel(channel: Channel) {
  //   this.channel = channel;
  //   this.client = new WalletClient(
  //     channel.getTarget(),
  //     ChannelCredentials.createInsecure()
  //   );
  // }

  public registerOrConnect(email: string): Promise<ConnectResponse> {
    let request = new ConnectRequest();
    request.setEmail(email);
    
    return new Promise((resolve, reject) => {
      this.client.connectExternalIdentity(request, {}, (error, response) => {
        if (error) {
          reject(error);
        } else {
          resolve(response);
        }
      });
    });
  }

  public getProviderConfiguration(): Promise<GetProviderConfigurationResponse> {
    return new Promise((resolve, reject) => {
      this.client.getProviderConfiguration(
        new GetProviderConfigurationRequest(),
        {},
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

  public async createWallet(securityCode: string = null): Promise<WalletProfile> {
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
    let myKey = okapi.DIDKey.generate(keyRequest);
    let myExchangeKey = myKey.getKeyList().find((x) => x.getCrv() === "X25519");
    
    if (myExchangeKey === undefined)
      throw new Error("Key agreement key not found");
    
    let myDidDocument = myKey.getDidDocument().toJavaScript();
    // Create an encrypted message
    let packRequest = new okapi.PackRequest();
    packRequest.setSenderKey(myExchangeKey);
    packRequest.setReceiverKey(providerExchangeKey);
    let createWalletRequest = new CreateWalletRequest();
    createWalletRequest.setDescription("My Cloud Wallet");
    createWalletRequest.setController(myDidDocument["id"].toString());
    createWalletRequest.setSecurityCode(securityCode ?? "");
    packRequest.setPlaintext(createWalletRequest.serializeBinary());

    var packedMessage = okapi.DIDComm.pack(packRequest);

    return new Promise((resolve, reject) => {
      // Invoke create wallet using encrypted message
      // Call the server endpoint with encrypted message
      let message = EncryptedMessage.deserializeBinary(packedMessage.getMessage().serializeBinary())
      this.client.createWalletEncrypted(
        message,
        {},
        (error, response) => {
          if (error) {
            console.error(error.message)
            reject(error.message);
          }
          
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

          resolve(walletProfile);
        }
      );
    })
  }

  public issueCredential(document: JSStruct): Promise<object> {
    return new Promise((resolve, reject) => {
      let issueRequest = new IssueRequest();
      issueRequest.setDocument(Struct.fromJavaScript(document));
      this.credentialClient.issue(issueRequest, this.getMetadata(), (error, response) => {
        if (error) {
          reject(error);
        }
        else {
          resolve(response.getDocument().toJavaScript());
        }
      })
    })
  }

  // must be authorized
  public search(query: string = "SELECT * from c"): Promise<SearchResponse> {
    return new Promise((resolve, reject) => {
      let searchRequest = new SearchRequest();
      searchRequest.setQuery(query)
      this.client.search(searchRequest, this.getMetadata(),(error, response) => {
        if (error) {
          reject(error);
        }
        else {
          resolve(response);
        }
      })
    })
  }

  // must be authorized
  public insertItem(item: JSStruct): Promise<string> {
    return new Promise((resolve, reject) => {
      let itemRequest = new InsertItemRequest();
      itemRequest.setItem(Struct.fromJavaScript(item));
      this.client.insertItem(itemRequest, this.getMetadata(), (error, response) => {
        if (error) {
          reject(error);
        }
        else {
          resolve(response.getItemId())
        }
      })
    })
  }

  public createProof(documentId: string, revealDocument: JSStruct): Promise<object> {
    return new Promise((resolve, reject) => {
      let createProofRequest = new CreateProofRequest();
      createProofRequest.setDocumentId(documentId);
      createProofRequest.setRevealDocument(Struct.fromJavaScript(revealDocument));
      this.credentialClient.createProof(createProofRequest, this.getMetadata(), (error, response) => {
        if (error) {
          reject(error);
        }
        else {
          resolve(response.getProofDocument().toJavaScript())
        }
      })
    })
  }

  public verifyProof(proofDocument: JSStruct): Promise<boolean> {
    return new Promise((resolve, reject) => {
      let verifyProofRequest = new VerifyProofRequest();
      verifyProofRequest.setProofDocument(Struct.fromJavaScript(proofDocument));
      this.credentialClient.verifyProof(verifyProofRequest, this.getMetadata(), (error, response) => {
        if (error) {
          reject(error);
        }
        else {
          resolve(response.getValid())
        }
      })
    })
  }
}
