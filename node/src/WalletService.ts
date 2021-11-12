import { Struct } from "google-protobuf/google/protobuf/struct_pb";
import ServiceBase from "./ServiceBase";
import {
  WalletClient,
  CredentialClient,
  ConnectRequest,
  CreateWalletRequest,
  WalletProfile,
  ConnectResponse,
  InsertItemRequest,
  SearchResponse,
  SearchRequest,
  CreateProofRequest,
  IssueRequest,
  SendRequest,
  SendResponse,
  VerifyProofRequest,
  JsonPayload,
  ServerConfig,
} from "./proto";

type JavaScriptValue = string | number | boolean | {} | any[];
type JSStruct = { [key: string]: JavaScriptValue };

export class TrinsicWalletService extends ServiceBase {
  walletClient: WalletClient;
  credentialClient: CredentialClient;

  constructor(config: ServerConfig = null) {
    super(null, config);

    this.walletClient = new WalletClient(this.address, this.channelCredentials);
    this.credentialClient = new CredentialClient(this.address, this.channelCredentials);
  }

  public registerOrConnect(email: string): Promise<ConnectResponse> {
    let request = new ConnectRequest().setEmail(email);

    return new Promise((resolve, reject) => {
      this.walletClient.connectExternalIdentity(request, (error, response) => {
        if (error) {
          reject(error);
        } else {
          resolve(response);
        }
      });
    });
  }

  public async createWallet(securityCode: string = null): Promise<WalletProfile> {
    let createWalletRequest = new CreateWalletRequest().setDescription("My Cloud Wallet");
    if (!securityCode) securityCode = "";
    createWalletRequest.setSecurityCode(securityCode);

    return new Promise((resolve, reject) => {
      this.walletClient.createWallet(createWalletRequest, (error, response) => {
        if (error) {
          console.error(error.message);
          reject(error.message);
        }

        // This profile should be stored and supplied later
        let walletProfile = new WalletProfile()
          .setAuthData(response.getAuthData())
          .setAuthToken(response.getAuthToken())
          .setIsProtected(response.getIsProtected())
          .setConfig(this.serverConfig);

        resolve(walletProfile);
      });
    });
  }

  public issueCredential(document: JSStruct): Promise<object> {
    var request = new JsonPayload();
    request.setJsonStruct(Struct.fromJavaScript(document));

    return new Promise(async (resolve, reject) => {
      let issueRequest = new IssueRequest().setDocument(request);

      this.credentialClient.issue(issueRequest, await this.getMetadata(issueRequest), (error, response) => {
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
    return new Promise(async (resolve, reject) => {
      let searchRequest = new SearchRequest().setQuery(query);

      this.walletClient.search(searchRequest, await this.getMetadata(searchRequest), (error, response) => {
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

    return new Promise(async (resolve, reject) => {
      let itemRequest = new InsertItemRequest().setItem(request);

      this.walletClient.insertItem(itemRequest, await this.getMetadata(itemRequest), (error, response) => {
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

    return new Promise(async (resolve, reject) => {
      let sendRequest = new SendRequest();
      sendRequest.setEmail(email);
      sendRequest.setDocument(request);
      this.credentialClient.send(sendRequest, await this.getMetadata(request), (error, response) => {
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

    return new Promise(async (resolve, reject) => {
      let createProofRequest = new CreateProofRequest().setDocumentId(documentId).setRevealDocument(request);

      this.credentialClient.createProof(
        createProofRequest,
        await this.getMetadata(createProofRequest),
        (error, response) => {
          if (error) {
            reject(error);
          } else {
            resolve(response.getProofDocument().getJsonStruct().toJavaScript());
          }
        }
      );
    });
  }

  public verifyProof(proofDocument: JSStruct): Promise<boolean> {
    var request = new JsonPayload().setJsonStruct(Struct.fromJavaScript(proofDocument));

    return new Promise(async (resolve, reject) => {
      let verifyProofRequest = new VerifyProofRequest().setProofDocument(request);

      this.credentialClient.verifyProof(
        verifyProofRequest,
        await this.getMetadata(verifyProofRequest),
        (error, response) => {
          if (error) {
            reject(error);
          } else {
            resolve(response.getValid());
          }
        }
      );
    });
  }
}
