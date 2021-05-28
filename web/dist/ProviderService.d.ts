import ServiceBase from "./ServiceBase";
import { ProviderClient } from "./proto/ProviderService_grpc_web_pb";
import { InvitationStatusRequest, InvitationStatusResponse, InviteRequest, InviteResponse } from "./proto/ProviderService_pb";
export * from "grpc-web";
export declare class TrinsicProviderService extends ServiceBase {
    client: ProviderClient;
    constructor(serviceAddress?: string);
    inviteParticipant(request: InviteRequest): Promise<InviteResponse>;
    invitationStatus(request: InvitationStatusRequest): Promise<InvitationStatusResponse>;
}
