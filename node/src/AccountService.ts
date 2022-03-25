import ServiceBase from "./ServiceBase";
import {
    AccountClient,
    AccountProfile,
    ConfirmationMethod,
    InfoRequest,
    InfoResponse,
    ListDevicesRequest,
    ListDevicesResponse,
    ResponseStatus,
    RevokeDeviceRequest,
    RevokeDeviceResponse,
    ServiceOptions,
    SignInRequest,

} from "./proto";
import {BlindOberonTokenRequest, Oberon, UnBlindOberonTokenRequest} from "@trinsic/okapi";

export class AccountService extends ServiceBase {
    client: AccountClient;

    constructor(options?: ServiceOptions) {
        super(options);

        this.client = new AccountClient(this.address, this.channelCredentials);
    }

    public signIn(request: SignInRequest = {ecosystemId: "", details: undefined, invitationCode:""}): Promise<string> {
        request.ecosystemId = request.ecosystemId || this.options.defaultEcosystem;

        return new Promise((resolve, reject) => {
            this.client.signIn(request, (error, response) => {
                if (error || response.status != ResponseStatus.SUCCESS) {
                    reject(error);
                } else {
                    const authToken = Buffer
                        .from(AccountProfile.encode(response.profile!).finish())
                        .toString('base64');

                    // set the auth token as active for the current service instance
                    this.options.authToken = authToken;

                    resolve(authToken);
                }
            });
        });
    }

    public info(): Promise<InfoResponse> {
        const request: InfoRequest = {};

        return new Promise(async (resolve, reject) => {
            this.client.info(request, await this.getMetadata(request, InfoRequest), (error, response) => {
                if (error) {
                    reject(error);
                } else {
                    resolve(response);
                }
            });
        });
    }

    public async protect(profile: AccountProfile, securityCode: string): Promise<AccountProfile> {
        const request = new BlindOberonTokenRequest().setToken(profile.authToken).setBlindingList([securityCode]);
        const result = await Oberon.blindToken(request);
        return {authToken: result.getToken_asU8(),
        authData: profile.authData,
        protection: {enabled: true, method: ConfirmationMethod.Other},
        profileType: profile.profileType};
    }

    public async unprotect(profile: AccountProfile, securityCode: string): Promise<AccountProfile> {
        const request = new UnBlindOberonTokenRequest().setToken(profile.authToken).setBlindingList([securityCode]);
        const result = await Oberon.unblindToken(request);
        return {authToken: result.getToken_asU8(),
            authData: profile.authData,
            protection: {enabled: false, method: ConfirmationMethod.None},
            profileType: profile.profileType};
    }

    public listDevices(request: ListDevicesRequest): Promise<ListDevicesResponse> {
        return new Promise(async (resolve, reject) => {
            this.client.listDevices(request, await this.getMetadata(request, ListDevicesRequest), (error, response) => {
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
            this.client.revokeDevice(request, await this.getMetadata(request, RevokeDeviceRequest), (error, response) => {
                if (error) {
                    reject(error);
                } else {
                    resolve(response);
                }
            })
        })
    }
}
