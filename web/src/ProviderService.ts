import ServiceBase from "./ServiceBase";
import {
  CreateEcosystemRequest,
  CreateEcosystemResponse,
  InvitationStatusRequest,
  InvitationStatusResponse,
  InviteRequest,
  InviteResponse,
  ProviderDefinition,
  ServiceOptions
} from "./proto";

import type {Client as ServerClient} from "nice-grpc";
import type {Client as BrowserClient} from "nice-grpc-web";

export class ProviderService extends ServiceBase {
  client: ServerClient<typeof ProviderDefinition> | BrowserClient<typeof ProviderDefinition>;

  constructor(options?: ServiceOptions) {
    super(options);

    this.client = this.createClient(
      ProviderDefinition
    );
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

  public async createEcosystem(
    request: CreateEcosystemRequest
  ): Promise<CreateEcosystemResponse> {
    return this.client.createEcosystem(request);
  }
}
