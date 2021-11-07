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

  public inviteParticipant(request: InviteRequest): Promise<InviteResponse> {
    return new Promise(async (resolve, reject) => {
      this.client.invite(request, await this.getMetadata(request), (error, response) => {
        if (error) {
          reject(error);
        }
        return resolve(response);
      });
    });
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
