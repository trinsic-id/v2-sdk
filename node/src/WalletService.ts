import {
  DIDComm,
  DIDKey,
  GenerateKeyRequest,
  KeyType,
  PackRequest,
  ResolveRequest,
  UnpackRequest,
} from "@trinsic/okapi";
import { EncryptedMessage } from "./proto/pbmse/pbmse_pb";
import { Struct } from "google-protobuf/google/protobuf/struct_pb";
import { credentials as ChannelCredentials, Channel } from "@grpc/grpc-js";
import ServiceBase from "./ServiceBase";
import { WalletClient } from "./proto/WalletService_grpc_pb";
import { CredentialClient } from "./proto/IssuerService_grpc_pb";
import {
  ConnectRequest,
  GetProviderConfigurationResponse,
  CreateWalletRequest,
  CreateWalletResponse,
  WalletProfile,
  ConnectResponse,
  InsertItemRequest,
  SearchResponse,
  SearchRequest,
} from "./proto/WalletService_pb";
import {
  CreateProofRequest,
  IssueRequest,
  SendRequest,
  SendResponse,
  VerifyProofRequest,
} from "./proto/IssuerService_pb";
import { Empty } from "google-protobuf/google/protobuf/empty_pb";
import { JsonPayload } from "./proto";

type JavaScriptValue = string | number | boolean | {} | any[];
type JSStruct = { [key: string]: JavaScriptValue };

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
    this.credentialClient = new CredentialClient(serviceAddress, ChannelCredentials.createInsecure(), {});
  }

  setChannel(channel: Channel) {
    this.channel = channel;
    this.client = new WalletClient(channel.getTarget(), ChannelCredentials.createInsecure());
  }

  public registerOrConnect(email: string): Promise<ConnectResponse> {
    let request = new ConnectRequest().setEmail(email);

    return new Promise((resolve, reject) => {
      this.client.connectExternalIdentity(request, (error, response) => {
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
      this.client.getProviderConfiguration(new Empty(), (error, response) => {
        if (error) {
          reject(error);
        } else {
          resolve(response);
        }
      });
    });
  }

  public async createWallet(securityCode: string = null): Promise<WalletProfile> {
    // Fetch Server Configuration and find key to use
    // for generating shared secret for authenticated encryption
    let configuration = await this.getProviderConfiguration();
    let resolveRequest = new ResolveRequest()
    resolveRequest.setDid(configuration.getKeyAgreementKeyId());
    let resolveResponse = await DIDKey.resolve(resolveRequest);

    let providerExchangeKey = resolveResponse
      .getKeysList()
      .find((x) => x.getKid() === configuration.getKeyAgreementKeyId());

    if (providerExchangeKey === undefined) throw new Error("Key agreement key not found");

    // Generate new DID used by the current device
    let keyRequest = new GenerateKeyRequest()
    keyRequest.setKeyType(KeyType.ED25519);
    let myKey = await DIDKey.generate(keyRequest);
    let myExchangeKey = myKey.getKeyList().find((x) => x.getCrv() === "X25519");

    if (myExchangeKey === undefined) throw new Error("Key agreement key not found");

    let myDidDocument = myKey.getDidDocument().toJavaScript();
    // Create an encrypted message

    let createWalletRequest = new CreateWalletRequest()
      .setDescription("My Cloud Wallet")
      .setController(myDidDocument["id"].toString());
    if (!securityCode) securityCode = "";
    createWalletRequest.setSecurityCode(securityCode);

    let packRequest = new PackRequest()
    packRequest.setSenderKey(myExchangeKey)
    packRequest.setReceiverKey(providerExchangeKey)
    packRequest.setPlaintext(createWalletRequest.serializeBinary());

    var packedMessage = await DIDComm.pack(packRequest);

    return new Promise((resolve, reject) => {
      // Invoke create wallet using encrypted message
      // Call the server endpoint with encrypted message
      let message = EncryptedMessage.deserializeBinary(packedMessage.getMessage().serializeBinary());

      this.client.createWalletEncrypted(message, async (error, response) => {
        if (error) {
          console.error(error.message);
          reject(error.message);
        }

        let unpackRequest = new UnpackRequest()
        unpackRequest.setMessage(response)
        unpackRequest.setReceiverKey(myExchangeKey)
        unpackRequest.setSenderKey(providerExchangeKey);

        let decryptedResponse = await DIDComm.unpack(unpackRequest);

        let createWalletResponse = CreateWalletResponse.deserializeBinary(decryptedResponse.getPlaintext_asU8());

        // This profile should be stored and supplied later
        let walletProfile = new WalletProfile()
          .setWalletId(createWalletResponse.getWalletId())
          .setCapability(createWalletResponse.getCapability())
          .setDidDocument(new JsonPayload().setJsonStruct(myKey.getDidDocument()))
          .setInvoker(createWalletResponse.getInvoker())
          .setInvokerJwk(myKey.getKeyList()[0].serializeBinary());

        resolve(walletProfile);
      });
    });
  }

  public issueCredential(document: JSStruct): Promise<object> {
    var request = new JsonPayload();
    request.setJsonStruct(Struct.fromJavaScript(document));

    return new Promise((resolve, reject) => {
      let issueRequest = new IssueRequest().setDocument(request);

      this.credentialClient.issue(issueRequest, this.getMetadata(), (error, response) => {
        if (error) {
          reject(error);
        } else {
          resolve(response.getDocument().getJsonStruct().toJavaScript());
        }
      });
    });
  }

  // must be authorized
  public search(query: string = "SELECT * from c"): Promise<SearchResponse> {
    return new Promise((resolve, reject) => {
      let searchRequest = new SearchRequest().setQuery(query);

      this.client.search(searchRequest, this.getMetadata(), (error, response) => {
        if (error) {
          reject(error);
        } else {
          resolve(response);
        }
      });
    });
  }

  // must be authorized
  public insertItem(item: JSStruct): Promise<string> {
    var request = new JsonPayload().setJsonStruct(Struct.fromJavaScript(item));

    return new Promise((resolve, reject) => {
      let itemRequest = new InsertItemRequest().setItem(request);

      this.client.insertItem(itemRequest, this.getMetadata(), (error, response) => {
        if (error) {
          reject(error);
        } else {
          resolve(response.getItemId());
        }
      });
    });
  }

  public send(document: JSStruct, email: string): Promise<SendResponse> {
    var request = new JsonPayload().setJsonStruct(Struct.fromJavaScript(document));

    return new Promise((resolve, reject) => {
      let sendRequest = new SendRequest();
      sendRequest.setEmail(email);
      sendRequest.setDocument(request);
      this.credentialClient.send(sendRequest, this.getMetadata(), (error, response) => {
        if (error) {
          reject(error);
        } else {
          resolve(response);
        }
      });
    });
  }

  public createProof(documentId: string, revealDocument: JSStruct): Promise<object> {
    var request = new JsonPayload().setJsonStruct(Struct.fromJavaScript(revealDocument));

    return new Promise((resolve, reject) => {
      let createProofRequest = new CreateProofRequest();
      createProofRequest.setDocumentId(documentId);
      createProofRequest.setRevealDocument(request);
      this.credentialClient.createProof(createProofRequest, this.getMetadata(), (error, response) => {
        if (error) {
          reject(error);
        } else {
          resolve(response.getProofDocument().getJsonStruct().toJavaScript());
        }
      });
    });
  }

  public verifyProof(proofDocument: JSStruct): Promise<boolean> {
    var request = new JsonPayload().setJsonStruct(Struct.fromJavaScript(proofDocument));

    return new Promise((resolve, reject) => {
      let verifyProofRequest = new VerifyProofRequest();
      verifyProofRequest.setProofDocument(request);
      this.credentialClient.verifyProof(verifyProofRequest, this.getMetadata(), (error, response) => {
        if (error) {
          reject(error);
        } else {
          resolve(response.getValid());
        }
      });
    });
  }
}
