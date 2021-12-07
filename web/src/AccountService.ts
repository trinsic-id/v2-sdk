import ServiceBase from "./ServiceBase";
import {
  AccountClient,
  ServerConfig,
  AccountProfile,
  AccountDetails,
  SignInRequest,
  SignInResponse,
  InfoRequest,
  InfoResponse,
} from "./proto";

export class AccountService extends ServiceBase {
  client: AccountClient;

  constructor(profile: AccountProfile = null, config: ServerConfig = null) {
    super(profile, config);

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
}
