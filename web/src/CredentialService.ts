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
  VerifiableCredentialDefinition,
} from "./proto";
import { Client, createChannel, createClient } from "nice-grpc-web";

export class CredentialService extends ServiceBase {
  client: Client<typeof VerifiableCredentialDefinition>;

  constructor(options?: ServiceOptions) {
    super(options);

    this.client = createClient(
      VerifiableCredentialDefinition,
      createChannel(this.address, this.transportFactory())
    );
  }

  public async issueCredential(request: IssueRequest): Promise<IssueResponse> {
    return this.client.issue(request, {
      metadata: await this.getMetadata(IssueRequest.encode(request).finish()),
    });
  }

  public async issueFromTemplate(
    request: IssueFromTemplateRequest
  ): Promise<IssueFromTemplateResponse> {
    return this.client.issueFromTemplate(request, {
      metadata: await this.getMetadata(
        IssueFromTemplateRequest.encode(request).finish()
      ),
    });
  }

  public async createProof(
    request: CreateProofRequest
  ): Promise<CreateProofResponse> {
    return this.client.createProof(request, {
      metadata: await this.getMetadata(
        CreateProofRequest.encode(request).finish()
      ),
    });
  }

  public async verifyProof(
    request: VerifyProofRequest
  ): Promise<VerifyProofResponse> {
    return this.client.verifyProof(request, {
      metadata: await this.getMetadata(
        VerifyProofRequest.encode(request).finish()
      ),
    });
  }

  public async checkStatus(
    request: CheckStatusRequest
  ): Promise<CheckStatusResponse> {
    return this.client.checkStatus(request, {
      metadata: await this.getMetadata(
        CheckStatusRequest.encode(request).finish()
      ),
    });
  }

  public async updateStatus(
    request: UpdateStatusRequest
  ): Promise<UpdateStatusResponse> {
    return this.client.updateStatus(request, {
      metadata: await this.getMetadata(
        UpdateStatusRequest.encode(request).finish()
      ),
    });
  }

  public async send(request: SendRequest): Promise<SendResponse> {
    return this.client.send(request, {
      metadata: await this.getMetadata(SendRequest.encode(request).finish()),
    });
  }
}
