import { Struct } from "google-protobuf/google/protobuf/struct_pb";
import ServiceBase from "./ServiceBase";
import {
  CredentialClient,
  AccountProfile,
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

export class CredentialService extends ServiceBase {
  credentialClient: CredentialClient;

  constructor(profile: AccountProfile, config: ServerConfig = null) {
    super(profile, config);

    this.credentialClient = new CredentialClient(this.address);
  }

  public issue(document: any): Promise<any> {
    var request = new JsonPayload().setJsonStruct(Struct.fromJavaScript(document));

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

  public send(document: JSStruct, email: string): Promise<SendResponse.AsObject> {
    var request = new JsonPayload().setJsonStruct(Struct.fromJavaScript(document));

    return new Promise(async (resolve, reject) => {
      let sendRequest = new SendRequest();
      sendRequest.setEmail(email);
      sendRequest.setDocument(request);
      this.credentialClient.send(sendRequest, await this.getMetadata(request), (error, response) => {
        if (error) {
          reject(error);
        } else {
          resolve(response.toObject());
        }
      });
    });
  }

  public createProof(documentId: string, revealDocument: any): Promise<any> {
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

  public verify(proofDocument: any): Promise<boolean> {
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
