import { Struct } from "google-protobuf/google/protobuf/struct_pb";
import ServiceBase from "./ServiceBase";
import { GetProviderConfigurationRequest, ServerConfig, WalletClient, CredentialClient } from "./proto";
import {
  ConnectRequest,
  GetProviderConfigurationResponse,
  CreateWalletRequest,
  WalletProfile,
  ConnectResponse,
  InsertItemRequest,
  SearchResponse,
  SearchRequest,
} from "./proto";
import { CreateProofRequest, IssueRequest, SendRequest, SendResponse, VerifyProofRequest } from "./proto";
import { JsonPayload } from "./proto";
import { Any } from "google-protobuf/google/protobuf/any_pb";

type JavaScriptValue = string | number | boolean | {} | any[];
type JSStruct = { [key: string]: JavaScriptValue };

export * from "grpc-web";
export class TrinsicWalletService extends ServiceBase {
  client: WalletClient;
  credentialClient: CredentialClient;

  constructor(config: ServerConfig = null) {
    super(null, config);

    this.client = new WalletClient(this.address);
    this.credentialClient = new CredentialClient(this.address);
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

  public async createWallet(securityCode: string = null): Promise<Any> {
    let createWalletRequest = new CreateWalletRequest().setDescription("My Cloud Wallet");
    if (!securityCode) securityCode = "";
    createWalletRequest.setSecurityCode(securityCode);

    let createWalletResponse = await this.client.createWallet(createWalletRequest, null);

    // This profile should be stored and supplied later
    let walletProfile = new WalletProfile()
      .setAuthData(createWalletResponse.getAuthData())
      .setAuthToken(createWalletResponse.getAuthToken())
      .setIsProtected(createWalletResponse.getIsProtected());

    return new Any().setValue(walletProfile.serializeBinary());
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

      this.client.search(searchRequest, await this.getMetadata(searchRequest), (error, response) => {
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

      this.client.insertItem(itemRequest, await this.getMetadata(itemRequest), (error, response) => {
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
      this.credentialClient.send(sendRequest, await this.getMetadata(sendRequest), (error, response) => {
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
      let createProofRequest = new CreateProofRequest();
      createProofRequest.setDocumentId(documentId);
      createProofRequest.setRevealDocument(request);
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
      let verifyProofRequest = new VerifyProofRequest();
      verifyProofRequest.setProofDocument(request);
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
