const okapi = require("@trinsic/okapi");
// import okapi from "@trinsic/okapi";
import { EncryptedMessage } from "./proto/pbmse/pbmse_pb";
import { Struct } from "google-protobuf/google/protobuf/struct_pb";
import ServiceBase from "./ServiceBase";
import { WalletClient } from "./proto/WalletServiceServiceClientPb";
import { CredentialClient } from "./proto/IssuerServiceServiceClientPb";
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
import { CreateProofRequest, IssueRequest, VerifyProofRequest } from "./proto/IssuerService_pb";
import { Empty } from "google-protobuf/google/protobuf/empty_pb";
import { JsonPayload } from "./proto";

type JavaScriptValue = string | number | boolean | {} | any[];
type JSStruct = { [key: string]: JavaScriptValue };

export * from "grpc-web";
export class TrinsicWalletService extends ServiceBase {
  client: WalletClient;
  credentialClient: CredentialClient;

  constructor(serviceAddress: string = "localhost:5000") {
    super();

    this.client = new WalletClient(serviceAddress, null, null);
    this.credentialClient = new CredentialClient(serviceAddress, null, null);
  }

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
      this.client.getProviderConfiguration(new Empty(), {}, (error, response) => {
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
    let resolveRequest = new okapi.ResolveRequest();
    resolveRequest.setDid(configuration.getKeyAgreementKeyId());
    let resolveResponse = okapi.DIDKey.resolve(resolveRequest);

    let providerExchangeKey = (await resolveResponse)
      .getKeysList()
      .find((x) => x.getKid() === configuration.getKeyAgreementKeyId());

    if (providerExchangeKey === undefined) throw new Error("Key agreement key not found");

    // Generate new DID used by the current device
    let keyRequest = new okapi.GenerateKeyRequest();
    keyRequest.setKeyType(okapi.KeyType.ED25519);
    let myKey = okapi.DIDKey.generate(keyRequest);
    let myExchangeKey = (await myKey).getKeyList().find((x) => x.getCrv() === "X25519");

    if (myExchangeKey === undefined) throw new Error("Key agreement key not found");

    let myDidDocument = (await myKey).getDidDocument().toJavaScript();
    // Create an encrypted message
    let packRequest = new okapi.PackRequest();
    packRequest.setSenderKey(myExchangeKey);
    packRequest.setReceiverKey(providerExchangeKey);
    let createWalletRequest = new CreateWalletRequest();
    createWalletRequest.setDescription("My Cloud Wallet");
    createWalletRequest.setController(myDidDocument["id"].toString());
    createWalletRequest.setSecurityCode(securityCode ?? "");
    packRequest.setPlaintext(createWalletRequest.serializeBinary());

    var packedMessage = await okapi.DIDComm.pack(packRequest);
    let message = EncryptedMessage.deserializeBinary(packedMessage.getMessage().serializeBinary());

    return new Promise((resolve, reject) => {
      this.client.createWalletEncrypted(message, {}, async (err, response) => {
        if (err) {
          console.error(err);
          reject(err);
        }
        let unpackRequest = new okapi.UnpackRequest();
        unpackRequest.setMessage(response);
        unpackRequest.setReceiverKey(myExchangeKey);
        unpackRequest.setSenderKey(providerExchangeKey);

        let decryptedResponse = await okapi.DIDComm.unpack(unpackRequest);
        let createWalletResponse = CreateWalletResponse.deserializeBinary(decryptedResponse.getPlaintext_asU8());

        // This profile should be stored and supplied later
        let walletProfile = new WalletProfile();
        walletProfile.setWalletId(createWalletResponse.getWalletId());
        walletProfile.setCapability(createWalletResponse.getCapability());
        walletProfile.setDidDocument((await myKey).getDidDocument());
        walletProfile.setInvoker(createWalletResponse.getInvoker());
        walletProfile.setInvokerJwk((await myKey).getKeyList()[0].serializeBinary());

        resolve(walletProfile);
      });
    });
  }

  public issueCredential(document: JSStruct): Promise<object> {
    var request = new JsonPayload();
    request.setJsonStruct(Struct.fromJavaScript(document));

    return new Promise((resolve, reject) => {
      let issueRequest = new IssueRequest();
      issueRequest.setDocument(request);
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
      let searchRequest = new SearchRequest();
      searchRequest.setQuery(query);
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
    var request = new JsonPayload();
    request.setJsonStruct(Struct.fromJavaScript(item));

    return new Promise((resolve, reject) => {
      let itemRequest = new InsertItemRequest();
      itemRequest.setItem(request);
      this.client.insertItem(itemRequest, this.getMetadata(), (error, response) => {
        if (error) {
          reject(error);
        } else {
          resolve(response.getItemId());
        }
      });
    });
  }

  public createProof(documentId: string, revealDocument: JSStruct): Promise<object> {
    var request = new JsonPayload();
    request.setJsonStruct(Struct.fromJavaScript(revealDocument));

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
    var request = new JsonPayload();
    request.setJsonStruct(Struct.fromJavaScript(proofDocument));

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
