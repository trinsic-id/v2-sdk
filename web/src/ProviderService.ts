import ServiceBase from "./ServiceBase";
import { ProviderClient, ServerConfig } from "./proto";
import { InvitationStatusRequest, InvitationStatusResponse, InviteRequest, InviteResponse } from "./proto";

export * from "grpc-web";

export class TrinsicProviderService extends ServiceBase {
  client: ProviderClient;

  constructor(config: ServerConfig = null) {
    super(null, config);

    this.client = new ProviderClient(this.address);
  }

  public async inviteParticipant(request: InviteRequest): Promise<InviteResponse> {
    let response = await this.client.invite(request, await this.getMetadata(request));
    return response;
  }

  public invitationStatus(request: InvitationStatusRequest): Promise<InvitationStatusResponse> {
    return new Promise(async (resolve, reject) => {
      this.client.invitationStatus(request, await this.getMetadata(request), (error, response) => {
        if (error) {
          reject(error);
        }
        return resolve(response);
      });
    });
  }
}
