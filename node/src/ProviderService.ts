import ServiceBase from "./ServiceBase";
import { AccountProfile, ProviderClient, ServerConfig } from "./proto";
import { InvitationStatusRequest, InvitationStatusResponse, InviteRequest, InviteResponse } from "./proto";

export class ProviderService extends ServiceBase {
  client: ProviderClient;

  constructor(profile: AccountProfile, config: ServerConfig = null) {
    super(profile, config);

    this.client = new ProviderClient(this.address, this.channelCredentials);
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
