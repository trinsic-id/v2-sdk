import ServiceBase from "./ServiceBase";
import {
    AddWebhookRequest, AddWebhookResponse,
    CreateEcosystemRequest,
    CreateEcosystemResponse, DeleteWebhookRequest, DeleteWebhookResponse,
    EcosystemInfoRequest,
    EcosystemInfoResponse,
    GenerateTokenRequest,
    GenerateTokenResponse,
    GetEventTokenRequest,
    GetEventTokenResponse,
    GetOberonKeyRequest,
    GetOberonKeyResponse,
    InvitationStatusRequest,
    InvitationStatusResponse,
    InviteRequest,
    InviteResponse,
    ProviderDefinition,
    ServiceOptions,
    UpdateEcosystemRequest,
    UpdateEcosystemResponse,
} from "./proto";

import type { Client as BrowserClient } from "nice-grpc-web";

export class ProviderService extends ServiceBase {
  client: BrowserClient<typeof ProviderDefinition>;

  constructor(options?: ServiceOptions) {
    super(options);

    this.client = this.createClient(ProviderDefinition);
  }

  public async createEcosystem(
    request: CreateEcosystemRequest
  ): Promise<CreateEcosystemResponse> {
    return this.client.createEcosystem(request);
  }

  public async updateEcosystem(
    request: UpdateEcosystemRequest
  ): Promise<UpdateEcosystemResponse> {
    return this.client.updateEcosystem(request, {
      metadata: await this.getMetadata(
        UpdateEcosystemRequest.encode(request).finish()
      ),
    });
  }

  public async addWebhook(
    request: AddWebhookRequest
  ): Promise<AddWebhookResponse> {
    return this.client.addWebhook(request, {
      metadata: await this.getMetadata(
        AddWebhookRequest.encode(request).finish()
      ),
    });
  }

  public async deleteWebhook(
    request: DeleteWebhookRequest
  ): Promise<DeleteWebhookResponse> {
    return this.client.deleteWebhook(request, {
      metadata: await this.getMetadata(
          DeleteWebhookRequest.encode(request).finish()
      ),
    });
  }

  public async ecosystemInfo(
    request: EcosystemInfoRequest
  ): Promise<EcosystemInfoResponse> {
    return this.client.ecosystemInfo(request, {
      metadata: await this.getMetadata(
        EcosystemInfoRequest.encode(request).finish()
      ),
    });
  }

  public async generateToken(
    request: GenerateTokenRequest
  ): Promise<GenerateTokenResponse> {
    return this.client.generateToken(request, {
      metadata: await this.getMetadata(
        GenerateTokenRequest.encode(request).finish()
      ),
    });
  }

  public async inviteParticipant(
    request: InviteRequest
  ): Promise<InviteResponse> {
    return this.client.invite(request, {
      metadata: await this.getMetadata(InviteRequest.encode(request).finish()),
    });
  }

  public async invitationStatus(
    request: InvitationStatusRequest
  ): Promise<InvitationStatusResponse> {
    return this.client.invitationStatus(request, {
      metadata: await this.getMetadata(
        InvitationStatusRequest.encode(request).finish()
      ),
    });
  }

  public async getOberonKey(
    request: GetOberonKeyRequest
  ): Promise<GetOberonKeyResponse> {
    return this.client.getOberonKey(request, {
      metadata: await this.getMetadata(
        GetOberonKeyRequest.encode(request).finish()
      ),
    });
  }

  public async getEventToken(
    request: GetEventTokenRequest
  ): Promise<GetEventTokenResponse> {
    return this.client.getEventToken(request, {
      metadata: await this.getMetadata(
        GetEventTokenRequest.encode(request).finish()
      ),
    });
  }
}
