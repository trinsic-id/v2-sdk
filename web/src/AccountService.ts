import ServiceBase from "./ServiceBase";
import {
  AccountDefinition,
  AccountInfoRequest,
  AccountInfoResponse,
  AccountProfile,
  AuthorizeWebhookRequest,
  AuthorizeWebhookResponse,
  ConfirmationMethod,
  ListDevicesRequest,
  ListDevicesResponse,
  LoginRequest,
  LoginResponse,
  RevokeDeviceRequest,
  RevokeDeviceResponse,
  ServiceOptions,
  SignInRequest,
  TokenProtection,
} from "./proto";
import base64url from "base64url";

import type { Client as BrowserClient } from "nice-grpc-web";
import { blake3HashRequest, blindOberon, unblindOberon } from "./OkapiProvider";

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
    const result = await blindOberon(cloned, securityCode);
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
    const result = await unblindOberon(cloned, securityCode);
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
    request.ecosystemId ||= "default";

    let response = await this.client.signIn(request);
    const authToken = base64url(
      Buffer.from(AccountProfile.encode(response.profile!).finish())
    );

    // set the auth token as active for the current service instance
    await this.tokenProvider.saveDefault(authToken);
    return authToken;
  }

  public async login(
    request: LoginRequest = LoginRequest.fromPartial({})
  ): Promise<LoginResponse> {
    return this.client.login(request, { metadata: await this.buildMetadata() });
  }

  public async loginConfirm(
    challenge: Uint8Array | undefined,
    authCode: string | Uint8Array
  ): Promise<string> {
    if (typeof challenge === "undefined") {
      throw new TypeError("challenge must be a Uint8Array");
    }

    challenge = AccountService.convertToUtf8(challenge);
    authCode = AccountService.convertToUtf8(authCode);
    let digest = await blake3HashRequest(authCode);

    let response = await this.client.loginConfirm({
      challenge: challenge,
      confirmationCodeHashed: digest,
    });
    if (response.profile === undefined) {
      return "";
    }

    let authToken = base64url(
      Buffer.from(AccountProfile.encode(response.profile!).finish())
    );
    if (response.profile.protection?.enabled ?? false) {
      authToken = await AccountService.unprotect(authToken, authCode);
    }

    // set the auth token as active for the current service instance
    await this.tokenProvider.saveDefault(authToken);
    return authToken;
  }

  public async loginAnonymous(ecosystemId?: string): Promise<string> {
    ecosystemId ||= "default";

    const request = LoginRequest.fromPartial({
      email: "",
      invitationCode: "",
      ecosystemId: ecosystemId,
    });
    let response = await this.login(request);
    if (response.profile === undefined) {
      throw new Error("undefined profile returned");
    }
    if (response.profile!.protection!.enabled) {
      throw new Error("protected profile returned from login");
    }
    const authToken = base64url(
      Buffer.from(AccountProfile.encode(response.profile!).finish())
    );
    await this.tokenProvider.saveDefault(authToken);
    return authToken;
  }

  public async getInfo(): Promise<AccountInfoResponse> {
    return await this.info({});
  }

  // BEGIN Code generated by protoc-gen-trinsic. DO NOT EDIT.
  // target: ..\sdk\web\src\accountService.ts

  public async info(request: AccountInfoRequest): Promise<AccountInfoResponse> {
    return await this.client.info(request, {
      metadata: await this.buildMetadata(
        AccountInfoRequest.encode(request).finish()
      ),
    });
  }
  public async listDevices(
    request: ListDevicesRequest
  ): Promise<ListDevicesResponse> {
    return await this.client.listDevices(request, {
      metadata: await this.buildMetadata(
        ListDevicesRequest.encode(request).finish()
      ),
    });
  }
  public async revokeDevice(
    request: RevokeDeviceRequest
  ): Promise<RevokeDeviceResponse> {
    return await this.client.revokeDevice(request, {
      metadata: await this.buildMetadata(
        RevokeDeviceRequest.encode(request).finish()
      ),
    });
  }
  public async authorizeWebhook(
    request: AuthorizeWebhookRequest
  ): Promise<AuthorizeWebhookResponse> {
    return await this.client.authorizeWebhook(request, {
      metadata: await this.buildMetadata(
        AuthorizeWebhookRequest.encode(request).finish()
      ),
    });
  }
  // END Code generated by protoc-gen-trinsic. DO NOT EDIT.
}
