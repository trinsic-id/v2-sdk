import ServiceBase, {ServiceOptions} from "./ServiceBase";
import {
    AccountClient,
    AccountDetails,
    InfoRequest,
    InfoResponse,
    ListDevicesRequest,
    ListDevicesResponse,
    RevokeDeviceRequest,
    RevokeDeviceResponse,
    SignInRequest,
    SignInResponse,
} from "./proto";

export class AccountService extends ServiceBase {
    client: AccountClient;

    constructor(options?: ServiceOptions) {
        super(options);

        this.client = new AccountClient(this.address);
    }

    public signIn(details?: AccountDetails, invitationCode?: string): Promise<SignInResponse> {
        let request = new SignInRequest().setDetails(details ?? new AccountDetails()).setInvitationCode(invitationCode ?? "");

        return new Promise((resolve, reject) => {
            this.client.signIn(request, null, (error, response) => {
                if (error) {
                    reject(error);
                } else {
                    resolve(response);
                }
            });
        });
    }

    public info(): Promise<InfoResponse.AsObject> {
        var request = new InfoRequest();

        return new Promise(async (resolve, reject) => {
            this.client.info(request, await this.getMetadata(request), (error, response) => {
                if (error) {
                    reject(error);
                } else {
                    resolve(response.toObject());
                }
            });
        });
    }

    public listDevices(request: ListDevicesRequest): Promise<ListDevicesResponse> {
        return new Promise(async (resolve, reject) => {
            this.client.listDevices(request, await this.getMetadata(request), (error, response) => {
                if (error) {
                    reject(error);
                } else {
                    resolve(response);
                }
            });
        });
    }

    public revokeDevice(request: RevokeDeviceRequest): Promise<RevokeDeviceResponse> {
        return new Promise(async (resolve, reject) => {
            this.client.revokeDevice(request, await this.getMetadata(request), (error, response) => {
                if (error) {
                    reject(error);
                } else {
                    resolve(response);
                }
            });
        });
    }
}
