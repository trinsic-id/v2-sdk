import okapi from '@trinsic/okapi';
import { ChannelCredentials, Channel } from "@grpc/grpc-js";
import ServiceBase from "./ServiceBase";
import { ProviderClient } from "../dist/ProviderService_grpc_pb";
import { trinsic as Provider } from '../dist/ProviderService';


export default class ProviderService extends ServiceBase {
  channel: Channel;
  client: ProviderClient;

  constructor(serviceAddress: string = "http://localhost:5000") {
    super();
    let channel = new Channel(serviceAddress, ChannelCredentials.createInsecure(), {});
    this.channel = channel;
    this.client = new ProviderClient(channel);
  }

  setChannel(channel: Channel) {
    this.channel = channel;
    this.client = new ProviderClient(channel);
  }
  
  async inviteParticipant(request: Provider.services.InviteRequest) : Promise<Provider.services.InviteResponse> {
    let response = await this.client.invite(request, this.GetMetadata()) as Provider.services.InviteResponse;
    return response;
  }

  async invitationStatus(request: Provider.services.InvitationStatusRequest) : Promise<Provider.services.InvitationStatusResponse> {
    let response = await this.client.invitationStatus(request, this.GetMetadata()) as Provider.services.InvitationStatusResponse;
    return response;
  }
}