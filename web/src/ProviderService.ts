import ServiceBase, { ServiceOptions } from "./ServiceBase";
import {
  AcceptInviteRequest,
  AcceptInviteResponse,
  AccountProfile,
  CreateEcosystemRequest,
  CreateEcosystemResponse,
  ListEcosystemsRequest, ListEcosystemsResponse,
  ProviderClient,
  ServerConfig
} from "./proto";
import { InvitationStatusRequest, InvitationStatusResponse, InviteRequest, InviteResponse } from "./proto";

export class ProviderService extends ServiceBase {
  client: ProviderClient;

  constructor(options?: ServiceOptions) {
    super(options);

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

  public acceptInvite(request: AcceptInviteRequest): Promise<AcceptInviteResponse> {
    return new Promise(async (resolve, reject) => {
      this.client.acceptInvite(request, await this.getMetadata(request), (error, response) => {
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

  public createEcosystem(request: CreateEcosystemRequest): Promise<CreateEcosystemResponse> {
    return new Promise(async (resolve, reject) => {
      this.client.createEcosystem(request, await this.getMetadata(request), (error, response) => {
        if (error) {
          reject(error);
        }
        return resolve(response);
      });
    });
  }

  public listEcosystems(): Promise<ListEcosystemsResponse> {
    let request = new ListEcosystemsRequest();
    return new Promise(async (resolve, reject) => {
      this.client.listEcosystems(request, await this.getMetadata(request), (error, response) => {
        if (error) {
          reject(error);
        }
        return resolve(response);
      });
    });
  }
}
