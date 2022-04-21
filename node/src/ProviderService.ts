import ServiceBase from "./ServiceBase";
import {
  CreateEcosystemRequest,
  CreateEcosystemResponse,
  InvitationStatusRequest,
  InvitationStatusResponse,
  InviteRequest,
  InviteResponse,
  ProviderClient,
  ServiceOptions,
} from "./proto";

export class ProviderService extends ServiceBase {
  client: ProviderClient;

  constructor(options?: ServiceOptions) {
    super(options);

    this.client = new ProviderClient(this.address, this.channelCredentials);
  }

  public inviteParticipant(request: InviteRequest): Promise<InviteResponse> {
    return new Promise(async (resolve, reject) => {
      try {
        let metadata = await this.getMetadata(request);
        this.client.invite(request, metadata, (error, response) => {
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

  public invitationStatus(
    request: InvitationStatusRequest
  ): Promise<InvitationStatusResponse> {
    return new Promise(async (resolve, reject) => {
      try {
        let metadata = await this.getMetadata(request);
        this.client.invitationStatus(request, metadata, (error, response) => {
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

  public createEcosystem(
    request: CreateEcosystemRequest
  ): Promise<CreateEcosystemResponse> {
    return new Promise(async (resolve, reject) => {
      this.client.createEcosystem(request, (error, response) => {
        if (error) {
          reject(error);
        } else {
          resolve(response);
        }
      });
    });
  }
}
