import ServiceBase from "./ServiceBase";
import {
    AccountClient,
    AccountDetails,
    AccountProfile,
    ConfirmationMethod,
    InfoRequest,
    InfoResponse,
    SignInRequest,
    SignInResponse,
    TokenProtection,
    ServiceOptions,
    ListDevicesRequest,
    ListDevicesResponse,
    RevokeDeviceRequest,
    RevokeDeviceResponse,
    ResponseStatus,
} from "./proto";
import { BlindOberonTokenRequest, Oberon, UnBlindOberonTokenRequest } from "@trinsic/okapi";

export class AccountService extends ServiceBase {
    client: AccountClient;

    constructor(options?: ServiceOptions) {
        super(options);

        this.client = new AccountClient(this.address, this.channelCredentials);
    }

    public signIn(request: SignInRequest): Promise<string> {
        request.setEcosystemId(request.getEcosystemId() || this.options.getDefaultEcosystem());

        return new Promise((resolve, reject) => {
            this.client.signIn(request, (error, response) => {
                if (error || response.getStatus() != ResponseStatus.SUCCESS) {
                    reject(error);
                } else {
                    var authToken = Buffer
                        .from(response.getProfile()!.serializeBinary())
                        .toString('base64');

                    // set the auth token as active for the current service instance
                    this.options.setAuthToken(authToken);

                    resolve(authToken);
                }
            });
        });
    }

    public info(): Promise<InfoResponse> {
        const request = new InfoRequest();

        return new Promise(async (resolve, reject) => {
            this.client.info(request, await this.getMetadata(request), (error, response) => {
                if (error) {
                    reject(error);
                } else {
                    resolve(response);
                }
            });
        });
    }

    public async protect(profile: AccountProfile, securityCode: string): Promise<AccountProfile> {
        const cloned = profile.clone();
        const request = new BlindOberonTokenRequest().setToken(cloned.getAuthToken()).setBlindingList([securityCode]);
        const result = await Oberon.blindToken(request);
        return cloned.setAuthToken(result.getToken()).setProtection(new TokenProtection().setEnabled(true).setMethod(ConfirmationMethod.OTHER));
    }

    public async unprotect(profile: AccountProfile, securityCode: string): Promise<AccountProfile> {
        const cloned = profile.clone();
        const request = new UnBlindOberonTokenRequest().setToken(cloned.getAuthToken()).setBlindingList([securityCode]);
        const result = await Oberon.unblindToken(request);
        return cloned.setAuthToken(result.getToken()).setProtection(new TokenProtection().setEnabled(false).setMethod(ConfirmationMethod.NONE));
    }

    public listDevices(request: ListDevicesRequest): Promise<ListDevicesResponse> {
        return new Promise(async (resolve, reject) => {
            this.client.listDevices(request, await this.getMetadata(request), (error, response) => {
                if (error) {
                    reject(error);
                } else {
                    resolve(response);
                }
            })
        })
    }

    public revokeDevice(request: RevokeDeviceRequest): Promise<RevokeDeviceResponse> {
        return new Promise(async (resolve, reject) => {
            this.client.revokeDevice(request, await this.getMetadata(request), (error, response) => {
                if (error) {
                    reject(error);
                } else {
                    resolve(response);
                }
            })
        })
    }
}
