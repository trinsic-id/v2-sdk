import ServiceBase from "./ServiceBase";
import {
  AccountDefinition,
  AccountProfile,
  ConfirmationMethod,
  InfoRequest,
  InfoResponse,
  ListDevicesRequest,
  ListDevicesResponse,
  RevokeDeviceRequest,
  RevokeDeviceResponse,
  ServiceOptions,
  SignInRequest,
  TokenProtection,
} from "./proto";
import { Client, createChannel, createClient } from "nice-grpc";
import {
  BlindOberonTokenRequest,
  Oberon,
  UnBlindOberonTokenRequest,
} from "@trinsic/okapi";
import base64url from "base64url";

export class AccountService extends ServiceBase {
  client: Client<typeof AccountDefinition>;

  constructor(options?: ServiceOptions) {
    super(options);

    this.client = createClient(
      AccountDefinition,
      createChannel(this.address, this.channelCredentials)
    );
  }

  /**
   * protect the given profile
   * @param profile The profile to protect with oberon blinding
   * @param securityCode must be utf-8 encoded `UInt8Array`. `string` will be decoded to utf-8.
   */
  public static async protect(
    profile: string | AccountProfile,
    securityCode: string | Uint8Array
  ): Promise<string> {
    securityCode = AccountService.convertToUtf8(securityCode);
    profile = AccountService.convertToProfile(profile);
    let cloned = AccountProfile.fromPartial(profile);
    const request = new BlindOberonTokenRequest()
      .setToken(cloned.authToken)
      .setBlindingList([securityCode]);
    const result = await Oberon.blindToken(request);
    cloned.authToken = result.getToken_asU8();
    cloned.protection = TokenProtection.fromPartial({
      enabled: true,
      method: ConfirmationMethod.Other,
    });
    return base64url(Buffer.from(AccountProfile.encode(cloned).finish()));
  }

  /**
   * unprotect the given profile
   * @param profile The profile to unprotect with oberon blinding
   * @param securityCode must be utf-8 encoded `UInt8Array`. `string` will be decoded to utf-8.
   */
  public static async unprotect(
    profile: string | AccountProfile,
    securityCode: string | Uint8Array
  ): Promise<string> {
    securityCode = AccountService.convertToUtf8(securityCode);
    profile = AccountService.convertToProfile(profile);
    let cloned = AccountProfile.fromPartial(profile);
    const request = new UnBlindOberonTokenRequest()
      .setToken(cloned.authToken)
      .setBlindingList([securityCode]);
    const result = await Oberon.unblindToken(request);
    cloned.authToken = result.getToken_asU8();
    cloned.protection = TokenProtection.fromPartial({
      enabled: false,
      method: ConfirmationMethod.None,
    });
    return base64url(Buffer.from(AccountProfile.encode(cloned).finish()));
  }

  private static convertToProfile(
    profile: string | AccountProfile
  ): AccountProfile {
    if (typeof profile == "string") {
      return AccountProfile.decode(base64url.toBuffer(profile));
    }
    return profile;
  }

  private static convertToUtf8(securityCode: string | Uint8Array): Uint8Array {
    if (typeof securityCode == "string") {
      return new TextEncoder().encode(securityCode);
    } else {
      return securityCode;
    }
  }

  public async signIn(
    request: SignInRequest = SignInRequest.fromPartial({})
  ): Promise<string> {
    request.ecosystemId = request.ecosystemId || this.options.defaultEcosystem;

    let response = await this.client.signIn(request);
    const authToken = base64url(
      Buffer.from(AccountProfile.encode(response.profile!).finish())
    );

    // set the auth token as active for the current service instance
    this.options.authToken = authToken;
    return authToken;
  }

  public async info(): Promise<InfoResponse> {
    const request = InfoRequest.fromPartial({});

    return this.client.info(request, {
      metadata: await this.getMetadata(InfoRequest.encode(request).finish()),
    });
  }

  public async listDevices(
    request: ListDevicesRequest
  ): Promise<ListDevicesResponse> {
    return this.client.listDevices(request, {
      metadata: await this.getMetadata(
        ListDevicesRequest.encode(request).finish()
      ),
    });
  }

  public async revokeDevice(
    request: RevokeDeviceRequest
  ): Promise<RevokeDeviceResponse> {
    return this.client.revokeDevice(request, {
      metadata: await this.getMetadata(
        RevokeDeviceRequest.encode(request).finish()
      ),
    });
  }
}
