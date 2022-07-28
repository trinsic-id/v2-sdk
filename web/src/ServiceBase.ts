import { AccountProfile, Nonce, ServiceOptions } from "./proto";
import { Metadata } from "nice-grpc-common";
import base64url from "base64url";
import { grpc } from "@improbable-eng/grpc-web";
import {
  Client,
  createChannel as webCreateChannel,
  createClient as webCreateClient,
} from "nice-grpc-web";
import {
  createChannel as nodeCreateChannel,
  createClient as nodeCreateClient,
} from "nice-grpc";
import { CompatServiceDefinition as ClientServiceDefinition } from "nice-grpc-web";
import {
  blake3HashRequest,
  oberonProofRequest,
  okapiVersion,
} from "./OkapiProvider";
import {getSdkVersion} from "./Version";
import {ITokenProvider, MemoryTokenProvider} from "./TokenProvider";

export default abstract class ServiceBase {
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

  public static isNode(): boolean {
    return (
      typeof process !== "undefined" &&
      typeof process.release !== "undefined" &&
      process.release.name === "node"
    );
  }

  private static getLanguageMetadata(): string {
    if (ServiceBase.isNode()) return "typescript-node";
    else return "typescript-web";
  }

  async buildMetadata(request?: Uint8Array): Promise<Metadata> {
    const metadata = new Metadata();
    metadata.append("trinsicokapiversion", await okapiVersion());
    metadata.append(
      "trinsicsdklanguage".toLowerCase(),
      ServiceBase.getLanguageMetadata()
    );
    metadata.append("trinsicsdkversion".toLowerCase(), getSdkVersion());
    if (request != undefined || request != null) {
        let authToken = this.options.authToken || await this.tokenProvider.getDefault();

      if (!authToken) {
        throw new Error("auth token must be set");
      }

      const profile = AccountProfile.decode(
        base64url.toBuffer(authToken)
      );
      if (profile.protection?.enabled) {
        throw new Error(
          "profile is protected; you must use security code to remove the protection first"
        );
      }

      const requestHash = await blake3HashRequest(request);
      const timestamp = Date.now();

      let nonce: Nonce = { timestamp: timestamp, requestHash: requestHash };

      const nonceUint8 = Nonce.encode(nonce).finish();
      const proof = await oberonProofRequest(profile, nonceUint8);

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

  protected transportFactory(): grpc.TransportFactory | undefined {
    // https://stackoverflow.com/questions/4224606/how-to-check-whether-a-script-is-running-under-node-js
    if (ServiceBase.isNode()) {
      let impEng = require("@improbable-eng/grpc-web-node-http-transport");
      return impEng.NodeHttpTransport();
    }
    return undefined;
  }

  protected createClient<ClientService extends ClientServiceDefinition>(
    definition: ClientService
  ): Client<ClientService> {
    let address = `${this.options.serverUseTls ? "https" : "http"}://${
      this.options.serverEndpoint
    }:${this.options.serverPort}`;
    if (ServiceBase.isNode()) {
      // @ts-ignore - We know this is bad, but it has the same API surface, so typing doesn't matter
      return nodeCreateClient(definition, nodeCreateChannel(address));
    } else {
      return webCreateClient(
        definition as ClientService,
        webCreateChannel(address, this.transportFactory())
      );
    }
  }
}
