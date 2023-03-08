import ServiceBase from "./ServiceBase";
import {
    AccountDefinition,
    AccountInfoResponse,
    AccountProfile,
    ConfirmationMethod,
    LoginRequest,
    LoginResponse,
    ServiceOptions,
    SignInRequest,
    TokenProtection,
} from "./proto";
import * as proto from "./proto";
import { Base64 } from "js-base64";

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
        const result = await ServiceBase.trinsicProvider.blindOberon(
            cloned,
            securityCode
        );
        cloned.authToken = result;
        cloned.protection = TokenProtection.fromPartial({
            enabled: true,
            method: ConfirmationMethod.Other,
        });
        return AccountService.convertToToken(cloned);
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
        const result = await ServiceBase.trinsicProvider.unblindOberon(
            cloned,
            securityCode
        );
        cloned.authToken = result;
        cloned.protection = TokenProtection.fromPartial({
            enabled: false,
            method: ConfirmationMethod.None,
        });
        return AccountService.convertToToken(cloned);
    }

    public static convertToProfile(
        profile: string | AccountProfile
    ): AccountProfile {
        if (typeof profile == "string") {
            return AccountProfile.decode(Base64.toUint8Array(profile));
        }
        return profile;
    }

    public static convertToToken(profile: string | AccountProfile): string {
        if (typeof profile == "string") {
            return profile;
        }
        return Base64.fromUint8Array(
            AccountProfile.encode(profile as AccountProfile).finish(),
            true
        );
    }

    private static convertToUtf8(
        securityCode: string | Uint8Array
    ): Uint8Array {
        if (typeof securityCode == "string") {
            return new TextEncoder().encode(securityCode);
        } else {
            return securityCode;
        }
    }

    public async signIn(
        request: SignInRequest = SignInRequest.fromPartial({})
    ): Promise<string> {
        let response = await this.client.signIn(request);
        const authToken = AccountService.convertToToken(response.profile!);

        // set the auth token as active for the current service instance
        await this.tokenProvider.saveDefault(authToken);
        return authToken;
    }

    public async login(
        request: LoginRequest = LoginRequest.fromPartial({})
    ): Promise<LoginResponse> {
        return this.client.login(request, {
            metadata: await this.buildMetadata(),
        });
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
        let digest = await ServiceBase.trinsicProvider.blake3HashRequest(
            authCode
        );

        let response = await this.client.loginConfirm({
            challenge: challenge,
            confirmationCodeHashed: digest,
        });
        if (response.profile === undefined) {
            return "";
        }

        let authToken = AccountService.convertToToken(response.profile!);
        if (response.profile.protection?.enabled ?? false) {
            authToken = await AccountService.unprotect(authToken, authCode);
        }

        // set the auth token as active for the current service instance
        await this.tokenProvider.saveDefault(authToken);
        return authToken;
    }

    public async loginAnonymous(ecosystemId?: string): Promise<string> {
        const request = LoginRequest.fromPartial({
            email: "",
            invitationCode: "",
            ecosystemId: (ecosystemId ||= ""),
        });
        let response = await this.login(request);
        if (response.profile === undefined) {
            throw new Error("undefined profile returned");
        }
        if (response.profile!.protection!.enabled) {
            throw new Error("protected profile returned from login");
        }
        const authToken = AccountService.convertToToken(response.profile!);
        await this.tokenProvider.saveDefault(authToken);
        return authToken;
    }

    public async getInfo(): Promise<AccountInfoResponse> {
        return await this.info();
    }

// BEGIN Code generated by protoc-gen-trinsic. DO NOT EDIT.
// target: /home/runner/work/sdk/sdk/web/src/AccountService.ts

  /** Get account information */
  public async info(): Promise<proto.AccountInfoResponse> {
    let request = proto.AccountInfoRequest.fromPartial({});
    return this.client.info(request, {
      metadata: await this.buildMetadata(proto.AccountInfoRequest.encode(request).finish())
    });
  }
// END Code generated by protoc-gen-trinsic. DO NOT EDIT.
}
