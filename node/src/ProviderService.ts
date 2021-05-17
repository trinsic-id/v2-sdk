import okapi from "@trinsic/okapi";
import { credentials as ChannelCredentials, Channel } from "grpc";
import ServiceBase from "./ServiceBase";
import { ProviderClient } from "./proto/ProviderService_grpc_pb";
import {
  InvitationStatusRequest,
  InvitationStatusResponse,
  InviteRequest,
  InviteResponse,
} from "./proto/ProviderService_pb";

export default class ProviderService extends ServiceBase {
  channel: Channel;
  client: ProviderClient;

  constructor(serviceAddress: string = "http://localhost:5000") {
    super();

    let credentials = ChannelCredentials.createInsecure();
    let channel = new Channel(serviceAddress, credentials, {});
    this.channel = channel;
    this.client = new ProviderClient(serviceAddress, credentials);
  }

  setChannel(channel: Channel) {
    this.channel = channel;
    this.client = new ProviderClient(
      channel.getTarget(),
      ChannelCredentials.createInsecure()
    );
  }

  async inviteParticipant(request: InviteRequest): Promise<InviteResponse> {
    return new Promise((resolve, reject) => {
      this.client.invite(request, this.GetMetadata(), (error, response) => {
        if (error) {
          reject(error);
        }
        return resolve(response);
      });
    });
  }

  async invitationStatus(
    request: InvitationStatusRequest
  ): Promise<InvitationStatusResponse> {
    return new Promise((resolve, reject) => {
      this.client.invitationStatus(
        request,
        this.GetMetadata(),
        (error, response) => {
          if (error) {
            reject(error);
          }
          return resolve(response);
        }
      );
    });
  }
}
