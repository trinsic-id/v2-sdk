import ServiceBase from "./ServiceBase";
import {
    CreateEcosystemRequest,
    CreateEcosystemResponse,
    Ecosystem,
    InvitationStatusRequest,
    InvitationStatusResponse,
    InviteRequest,
    InviteResponse,
    ProviderClient,
    ServiceOptions
} from "./proto";
import { fromUint8Array } from "js-base64";

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
                } else {
                    resolve(response);
                }
            });
        });
    }

    public invitationStatus(request: InvitationStatusRequest): Promise<InvitationStatusResponse> {
        return new Promise(async (resolve, reject) => {
            this.client.invitationStatus(request, await this.getMetadata(request), (error, response) => {
                if (error) {
                    reject(error);
                } else {
                    resolve(response);
                }
            });
        });
    }

    public createEcosystem(request: CreateEcosystemRequest): Promise<[Ecosystem, string]> {
        return new Promise(async (resolve, reject) => {
            this.client.createEcosystem(request, null, (error, response) => {
                if (error) {
                    reject(error);
                } else {
                    var authToken = fromUint8Array(response.getProfile()!.serializeBinary(), true);
                    if (!response.getProfile()?.getProtection()?.getEnabled() || true) {
                        // set the auth token as active for the current service instance
                        this.options.setAuthToken(authToken);
                    }
                    resolve([response.getEcosystem()!, authToken]);
                }
            });
        });
    }
}
