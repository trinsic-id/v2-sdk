import { AccountProfile, Nonce, ServiceOptions } from "./proto";
import { Metadata } from "nice-grpc-common";
import base64url from "base64url";
import {
  Client as BrowserClient,
  CompatServiceDefinition as ClientServiceDefinition,
} from "nice-grpc-web";
import { getSdkVersion } from "./Version";
import { ITokenProvider, MemoryTokenProvider } from "./TokenProvider";
import { ITrinsicProvider } from "./ITrinsicProvider";

export default abstract class ServiceBase {
  static trinsicProvider: ITrinsicProvider;
  options: ServiceOptions;
  tokenProvider: ITokenProvider = MemoryTokenProvider.DefaultInstance();

  protected constructor(
    options: ServiceOptions = ServiceOptions.fromPartial({})
  ) {
    options.serverEndpoint = options.serverEndpoint || "prod.trinsic.cloud";
    options.serverPort = options.serverPort || 443;
    options.serverUseTls =
      options.serverPort == 443 ? true : options.serverUseTls || false;

    this.options = options;
  }

  public static setProvider(provider: ITrinsicProvider) {
    ServiceBase.trinsicProvider = provider;
  }

  async buildMetadata(request?: Uint8Array): Promise<Metadata> {
    const metadata = new Metadata();
    metadata.append(
      "trinsicokapiversion",
      await ServiceBase.trinsicProvider.okapiVersion()
    );
    metadata.append(
      "trinsicsdklanguage".toLowerCase(),
      ServiceBase.trinsicProvider.metadataLanguage()
    );
    metadata.append("trinsicsdkversion".toLowerCase(), getSdkVersion());
    if (request != undefined || request != null) {
      let authToken =
        this.options.authToken || (await this.tokenProvider.getDefault());

      if (!authToken) {
        throw new Error("auth token must be set");
      }

      const profile = AccountProfile.decode(base64url.toBuffer(authToken));
      if (profile.protection?.enabled) {
        throw new Error(
          "profile is protected; you must use security code to remove the protection first"
        );
      }

      const requestHash = await ServiceBase.trinsicProvider.blake3HashRequest(
        request
      );
      const timestamp = Date.now();

      let nonce: Nonce = { timestamp: timestamp, requestHash: requestHash };

      const nonceUint8 = Nonce.encode(nonce).finish();
      const proof = await ServiceBase.trinsicProvider.oberonProofRequest(
        profile,
        nonceUint8
      );

      metadata.append(
        "authorization",
        `Oberon ` +
          `ver=1,` +
          `proof=${base64url(Buffer.from(proof))},` +
          `data=${base64url(Buffer.from(profile.authData))},` +
          `nonce=${base64url(Buffer.from(nonceUint8))}`
      );
    }
    return metadata;
  }

  public setAuthToken(token: string) {
    this.options.authToken = token;
  }

  protected createClient<ClientService extends ClientServiceDefinition>(
    definition: ClientService
  ): BrowserClient<ClientService> {
    let address = `${this.options.serverUseTls ? "https" : "http"}://${
      this.options.serverEndpoint
    }:${this.options.serverPort}`;
    return ServiceBase.trinsicProvider.createGrpcClient(definition, address);
  }
}
