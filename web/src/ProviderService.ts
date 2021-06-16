import ServiceBase from "./ServiceBase";
import { ProviderClient } from "./proto/ProviderServiceServiceClientPb";
import {
  InvitationStatusRequest,
  InvitationStatusResponse,
  InviteRequest,
  InviteResponse,
} from "./proto/ProviderService_pb";

export * from "grpc-web";
export class TrinsicProviderService extends ServiceBase {
  client: ProviderClient;

  constructor(serviceAddress: string = "localhost:5000") {
    super();

    this.client = new ProviderClient(serviceAddress, {}, {});
  }

  public inviteParticipant(request: InviteRequest): Promise<InviteResponse> {
    return new Promise((resolve, reject) => {
      this.client.invite(request, this.getMetadata(), (error, response) => {
        if (error) {
          reject(error);
        }
        return resolve(response);
      });
    });
  }

  public invitationStatus(request: InvitationStatusRequest): Promise<InvitationStatusResponse> {
    return new Promise((resolve, reject) => {
      this.client.invitationStatus(request, this.getMetadata(), (error, response) => {
        if (error) {
          reject(error);
        }
        return resolve(response);
      });
    });
  }
}
