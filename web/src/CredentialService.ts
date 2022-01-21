import {Struct} from "google-protobuf/google/protobuf/struct_pb";
import ServiceBase, {ServiceOptions} from "./ServiceBase";
import {
    CheckStatusRequest,
    CheckStatusResponse,
    CreateProofRequest, IssueFromTemplateRequest, IssueFromTemplateResponse,
    IssueRequest,
    JsonPayload,
    SendRequest,
    SendResponse, UpdateStatusRequest, UpdateStatusResponse,
    VerifiableCredentialClient,
    VerifyProofRequest,
} from "./proto";

type JavaScriptValue = string | number | boolean | {} | any[];
type JSStruct = { [key: string]: JavaScriptValue };

export class CredentialService extends ServiceBase {
    credentialClient: VerifiableCredentialClient;

    constructor(options?: ServiceOptions) {
        super(options);

        this.credentialClient = new VerifiableCredentialClient(this.address);
    }

    public issue(document: any): Promise<any> {
        const request = new JsonPayload().setJsonString(JSON.stringify(document));

        return new Promise(async (resolve, reject) => {
            let issueRequest = new IssueRequest().setDocument(request);

            this.credentialClient.issue(issueRequest, await this.getMetadata(issueRequest), (error, response) => {
                if (error) {
                    reject(error);
                } else {
                    resolve(JSON.parse(response.getDocument()!.getJsonString()));
                }
            });
        });
    }

    public issueFromTemplate(request: IssueFromTemplateRequest): Promise<IssueFromTemplateResponse> {
        return new Promise(async (resolve, reject) => {
            this.credentialClient.issueFromTemplate(request, await this.getMetadata(request), (error, response) => {
                if (error) {
                    reject(error);
                } else {
                    resolve(response);
                }
            });
        });
    }

    public send(document: JSStruct, email: string): Promise<SendResponse> {
        const request = new JsonPayload().setJsonString(JSON.stringify(document));

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

    public checkStatus(credentialStatusId: string): Promise<CheckStatusResponse> {
        const request = new CheckStatusRequest().setCredentialStatusId(credentialStatusId);
        return new Promise(async (resolve, reject) => {
           this.credentialClient.checkStatus(request, await this.getMetadata(request), (error, response) => {
               if (error) {
                   reject(error);
               } else {
                   resolve(response);
               }
           })
        });
    }

    public updateStatus(credentialStatusId: string, revoked: boolean): Promise<UpdateStatusResponse> {
        const request = new UpdateStatusRequest().setCredentialStatusId(credentialStatusId).setRevoked(revoked);
        return new Promise(async (resolve, reject) => {
            this.credentialClient.updateStatus(request, await this.getMetadata(request), (error, response) => {
                if (error) {
                    reject(error);
                } else {
                    resolve(response);
                }
            })
        });
    }

    public createProof(documentId: string, revealDocument: any): Promise<any> {
        const request = new JsonPayload().setJsonString(JSON.stringify(revealDocument));

        return new Promise(async (resolve, reject) => {
            let createProofRequest = new CreateProofRequest().setDocumentId(documentId).setRevealDocument(request);

            this.credentialClient.createProof(
                createProofRequest,
                await this.getMetadata(createProofRequest),
                (error, response) => {
                    if (error) {
                        reject(error);
                    } else {
                        resolve(JSON.parse(response.getProofDocument()!.getJsonString()));
                    }
                }
            );
        });
    }

    public verifyProof(proofDocument: any): Promise<boolean> {
        const request = new JsonPayload().setJsonString(JSON.stringify(proofDocument));

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
