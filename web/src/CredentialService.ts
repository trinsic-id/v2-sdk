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
  VerifiableCredentialClient,
} from "./proto";

export class CredentialService extends ServiceBase {
  credentialClient: VerifiableCredentialClient;

  constructor(options?: ServiceOptions) {
    super(options);

    this.credentialClient = new VerifiableCredentialClient(this.address);
  }

  public issueCredential(request: IssueRequest): Promise<IssueResponse> {
    return new Promise(async (resolve, reject) => {
      try {
        let metadata = await this.getMetadata(request);
        this.credentialClient.issue(request, metadata, (error, response) => {
          if (error) {
            reject(error);
          } else {
            resolve(response);
          }
        });
      } catch (e) {
        reject(e);
      }
    });
  }

  public issueFromTemplate(
    request: IssueFromTemplateRequest
  ): Promise<IssueFromTemplateResponse> {
    return new Promise(async (resolve, reject) => {
      try {
        let metadata = await this.getMetadata(request);
        this.credentialClient.issueFromTemplate(
          request,
          metadata,
          (error, response) => {
            if (error) {
              reject(error);
            } else {
              resolve(response);
            }
          }
        );
      } catch (e) {
        reject(e);
      }
    });
  }

  public createProof(
    request: CreateProofRequest
  ): Promise<CreateProofResponse> {
    return new Promise(async (resolve, reject) => {
      try {
        let metadata = await this.getMetadata(request);
        this.credentialClient.createProof(
          request,
          metadata,
          (error, response) => {
            if (error) {
              reject(error);
            } else {
              resolve(response);
            }
          }
        );
      } catch (e) {
        reject(e);
      }
    });
  }

  public verifyProof(
    request: VerifyProofRequest
  ): Promise<VerifyProofResponse> {
    return new Promise(async (resolve, reject) => {
      try {
        let metadata = await this.getMetadata(request);
        this.credentialClient.verifyProof(
          request,
          metadata,
          (error, response) => {
            if (error) {
              reject(error);
            } else {
              resolve(response);
            }
          }
        );
      } catch (e) {
        reject(e);
      }
    });
  }

  public checkStatus(
    request: CheckStatusRequest
  ): Promise<CheckStatusResponse> {
    return new Promise(async (resolve, reject) => {
      try {
        let metadata = await this.getMetadata(request);
        this.credentialClient.checkStatus(
          request,
          metadata,
          (error, response) => {
            if (error) {
              reject(error);
            } else {
              resolve(response);
            }
          }
        );
      } catch (e) {
        reject(e);
      }
    });
  }

  public updateStatus(
    request: UpdateStatusRequest
  ): Promise<UpdateStatusResponse> {
    return new Promise(async (resolve, reject) => {
      try {
        let metadata = await this.getMetadata(request);
        this.credentialClient.updateStatus(
          request,
          metadata,
          (error, response) => {
            if (error) {
              reject(error);
            } else {
              resolve(response);
            }
          }
        );
      } catch (e) {
        reject(e);
      }
    });
  }

  public send(request: SendRequest): Promise<SendResponse> {
    return new Promise(async (resolve, reject) => {
      try {
        let metadata = await this.getMetadata(request);
        this.credentialClient.send(request, metadata, (error, response) => {
          if (error) {
            reject(error);
          } else {
            resolve(response);
          }
        });
      } catch (e) {
        reject(e);
      }
    });
  }
}
