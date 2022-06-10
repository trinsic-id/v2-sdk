import ServiceBase from "./ServiceBase";
import {
  AccountDefinition,
  AccountProfile,
  ConfirmationMethod,
  AccountInfoRequest,
  AccountInfoResponse,
  ListDevicesRequest,
  ListDevicesResponse,
  RevokeDeviceRequest,
  RevokeDeviceResponse,
  ServiceOptions,
  SignInRequest,
  TokenProtection,
  LoginRequest,
  LoginResponse,
  LoginConfirmRequest,
  LoginConfirmResponse,
  AuthorizeWebhookRequest,
  AuthorizeWebhookResponse,
} from "./proto";
import { Oberon } from "@trinsic/okapi";
import base64url from "base64url";

import type { Client as BrowserClient } from "nice-grpc-web";

export class AccountService extends ServiceBase {
  client: BrowserClient<typeof AccountDefinition>;

  constructor(options?: ServiceOptions) {
    super(options);

    this.client = this.createClient(AccountDefinition);
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
    const result = await Oberon.blindToken({
      blinding: [securityCode],
      token: cloned.authToken,
    });
    cloned.authToken = result.token;
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
    const result = await Oberon.unblindToken({
      token: cloned.authToken,
      blinding: [securityCode],
    });
    cloned.authToken = result.token;
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

  public async login(request: LoginRequest): Promise<LoginResponse> {
    return this.client.login(request, {
      metadata: await this.getMetadata(
        ListDevicesRequest.encode(request).finish()
      ),
    });
  }

  public async loginConfirm(
    request: LoginConfirmRequest
  ): Promise<LoginConfirmResponse> {
    return this.client.loginConfirm(request, {
      metadata: await this.getMetadata(
        ListDevicesRequest.encode(request).finish()
      ),
    });
  }

  public async info(): Promise<AccountInfoResponse> {
    const request = AccountInfoRequest.fromPartial({});

    return this.client.info(request, {
      metadata: await this.getMetadata(
        AccountInfoRequest.encode(request).finish()
      ),
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

  public async authorizeWebhook(
    request: AuthorizeWebhookRequest
  ): Promise<AuthorizeWebhookResponse> {
    return this.client.authorizeWebhook(request, {
      metadata: await this.getMetadata(
        ListDevicesRequest.encode(request).finish()
      ),
    });
  }
}