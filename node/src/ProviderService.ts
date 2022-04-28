import ServiceBase from "./ServiceBase";
import {
  CreateEcosystemRequest,
  CreateEcosystemResponse,
  InvitationStatusRequest,
  InvitationStatusResponse,
  InviteRequest,
  InviteResponse,
  ProviderDefinition,
  ServiceOptions,
} from "./proto";
import { Client, createChannel, createClient } from "nice-grpc";

export class ProviderService extends ServiceBase {
  client: Client<typeof ProviderDefinition>;

  constructor(options?: ServiceOptions) {
    super(options);

    this.client = createClient(
      ProviderDefinition,
      createChannel(this.address, this.channelCredentials)
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
