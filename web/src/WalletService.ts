import {
  DIDComm,
  DIDKey,
  GenerateKeyRequest,
  KeyType,
  PackRequest,
  ResolveRequest,
  UnpackRequest,
} from "@trinsic/okapi";
import { EncryptedMessage } from "./proto";
import { Struct } from "google-protobuf/google/protobuf/struct_pb";
import ServiceBase from "./ServiceBase";
import { GetProviderConfigurationRequest, WalletClient } from "./proto";
import { CredentialClient } from "./proto";
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
} from "./proto";
import { CreateProofRequest, IssueRequest, SendRequest, SendResponse, VerifyProofRequest } from "./proto";
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
    let request = new ConnectRequest().setEmail(email);

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
      this.client.getProviderConfiguration(new GetProviderConfigurationRequest(), {}, (error, response) => {
        if (error) {
          reject(error);
        } else {
          resolve(response);
        }
      });
    });
  }

  public async createWallet(securityCode: string = null): Promise<WalletProfile> {
    // Generate new DID used by the current device
    let keyRequest = new GenerateKeyRequest().setKeyType(KeyType.ED25519);
    let myKey = await DIDKey.generate(keyRequest);

    let myDidDocument = myKey.getDidDocument().toJavaScript();
    // Create an encrypted message

    let createWalletRequest = new CreateWalletRequest()
      .setDescription("My Cloud Wallet")
      .setController(myDidDocument["id"].toString());
    if (!securityCode) securityCode = "";
    createWalletRequest.setSecurityCode(securityCode);

    let createWalletResponse = await this.client.createWallet(createWalletRequest, null);

    // This profile should be stored and supplied later
    let walletProfile = new WalletProfile()
      .setWalletId(createWalletResponse.getWalletId())
      .setCapability(createWalletResponse.getCapability())
      .setDidDocument(new JsonPayload().setJsonStruct(myKey.getDidDocument()))
      .setInvoker(createWalletResponse.getInvoker())
      .setInvokerJwk(myKey.getKeyList()[0].serializeBinary());

    return walletProfile;
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
