import { Channel } from "@grpc/grpc-js";
import ServiceBase from "./ServiceBase";
import { ProviderClient } from "../dist/ProviderService_grpc_pb";
import { trinsic as Provider } from '../dist/ProviderService';
export default class ProviderService extends ServiceBase {
    channel: Channel;
    client: ProviderClient;
    constructor(serviceAddress?: string);
    setChannel(channel: Channel): void;
    inviteParticipant(request: Provider.services.InviteRequest): Promise<Provider.services.InviteResponse>;
    invitationStatus(request: Provider.services.InvitationStatusRequest): Promise<Provider.services.InvitationStatusResponse>;
}
