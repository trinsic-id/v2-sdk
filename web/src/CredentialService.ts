import ServiceBase from "./ServiceBase";
import {
    ServiceOptions,
    CreateProofRequest,
    IssueFromTemplateRequest,
    IssueRequest,
    SendRequest,
    SendResponse,
    UpdateStatusRequest,
    UpdateStatusResponse,
    VerifyProofRequest,
    CheckStatusRequest,
    CheckStatusResponse,
    CreateProofResponse,
    IssueFromTemplateResponse,
    VerifyProofResponse,
    IssueResponse,
    VerifiableCredentialClient
} from "./proto";

export class CredentialService extends ServiceBase {
    credentialClient: VerifiableCredentialClient;

    constructor(options?: ServiceOptions) {
        super(options);

        this.credentialClient = new VerifiableCredentialClient(this.address);
    }

    public issueCredential(request: IssueRequest): Promise<IssueResponse> {
        return new Promise(async (resolve, reject) => {
            this.credentialClient.issue(request,
                await this.getMetadata(request),
                (error, response) => {
                    if (error) {
                        reject(error);
                    } else {
                        resolve(response);
                    }
                });
        });
    }

    public issueFromTemplate(request: IssueFromTemplateRequest): Promise<IssueFromTemplateResponse> {
        return new Promise(async (resolve, reject) => {
            this.credentialClient.issueFromTemplate(request,
                await this.getMetadata(request),
                (error, response) => {
                    if (error) {
                        reject(error);
                    } else {
                        resolve(response);
                    }
                });
        });
    }

    public createProof(request: CreateProofRequest): Promise<CreateProofResponse> {
        return new Promise(async (resolve, reject) => {
            this.credentialClient.createProof(
                request,
                await this.getMetadata(request),
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

    public verifyProof(request: VerifyProofRequest): Promise<VerifyProofResponse> {
        return new Promise(async (resolve, reject) => {
            this.credentialClient.verifyProof(
                request,
                await this.getMetadata(request),
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

    public checkStatus(request: CheckStatusRequest): Promise<CheckStatusResponse> {
        return new Promise(async (resolve, reject) => {
            this.credentialClient.checkStatus(request,
                await this.getMetadata(request),
                (error, response) => {
                    if (error) {
                        reject(error);
                    } else {
                        resolve(response);
                    }
                })
        });
    }

    public updateStatus(request: UpdateStatusRequest): Promise<UpdateStatusResponse> {
        return new Promise(async (resolve, reject) => {
            this.credentialClient.updateStatus(request,
                await this.getMetadata(request),
                (error, response) => {
                    if (error) {
                        reject(error);
                    } else {
                        resolve(response);
                    }
                })
        });
    }

    public send(request: SendRequest): Promise<SendResponse> {
        return new Promise(async (resolve, reject) => {
            this.credentialClient.send(request,
                await this.getMetadata(request),
                (error, response) => {
                    if (error) {
                        reject(error);
                    } else {
                        resolve(response);
                    }
                });
        });
    }
}
