import ServiceBase, { DEFAULT_SERVICE_ADDRESS } from "./ServiceBase";
import { ProviderClient } from "./proto";
import { InvitationStatusRequest, InvitationStatusResponse, InviteRequest, InviteResponse } from "./proto";

export * from "grpc-web";

export class TrinsicProviderService extends ServiceBase {
  client: ProviderClient;

  constructor(serviceAddress: string = DEFAULT_SERVICE_ADDRESS) {
    super();

    this.client = new ProviderClient(serviceAddress, {}, {});
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
