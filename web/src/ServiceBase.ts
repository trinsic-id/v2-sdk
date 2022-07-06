import { AccountProfile, Nonce, ServiceOptions } from "./proto";
import { Hashing, Oberon } from "@trinsic/okapi";
import { Metadata } from "nice-grpc-common";
import base64url from "base64url";
import { grpc } from "@improbable-eng/grpc-web";
import {
  Client as BrowserClient,
  createChannel,
  createClient,
} from "nice-grpc-web";
import { CompatServiceDefinition as ClientServiceDefinition } from "nice-grpc-web/lib/service-definitions";

export default abstract class ServiceBase {
  // TODO - Maybe move this into the `ServiceOptions` structure or something? This is a global flag
  // public static useNodeHttpTransport: boolean = false;
  options: ServiceOptions;
  address: string;

  protected constructor(
    options: ServiceOptions = ServiceOptions.fromPartial({})
  ) {
    options.serverEndpoint = options.serverEndpoint || "prod.trinsic.cloud";
    options.serverPort = options.serverPort || 443;
    options.serverUseTls =
      options.serverPort == 443 ? true : options.serverUseTls || false;

    this.options = options;

    this.address = `${this.options.serverUseTls ? "https" : "http"}://${
      this.options.serverEndpoint
    }:${this.options.serverPort}`;
  }

  public static isNode(): boolean {
    return (
      typeof process !== "undefined" &&
      typeof process.release !== "undefined" &&
      process.release.name === "node"
    );
  }

  async getMetadata(request: Uint8Array): Promise<Metadata> {
    if (!this.options.authToken) {
      throw new Error("auth token must be set");
    }

    const profile = AccountProfile.decode(
      base64url.toBuffer(this.options.authToken)
    );
    if (profile.protection?.enabled) {
      throw new Error(
        "profile is protected; you must use security code to remove the protection first"
      );
    }

    const requestData = request;
    let requestHash = new Uint8Array();

    if (requestData.length > 0) {
      let hashResponse = await Hashing.blake3Hash({ data: requestData });
      requestHash = hashResponse.digest;
    }
    const timestamp = Date.now();

    let nonce: Nonce = { timestamp: timestamp, requestHash: requestHash };

    const nonceUint8 = Nonce.encode(nonce).finish();
    let proof = await Oberon.createProof({
      data: profile.authData,
      nonce: nonceUint8,
      token: profile.authToken,
      blinding: [],
    });

    const metadata = new Metadata();
    metadata.append(
      "authorization",
      `Oberon ` +
        `ver=1,` +
        `proof=${base64url(Buffer.from(proof.proof))},` +
        `data=${base64url(Buffer.from(profile.authData))},` +
        `nonce=${base64url(Buffer.from(nonceUint8))}`
    );

    return metadata;
  }

  protected setAuthToken(token: string) {
    this.options.authToken = token;
  }

  protected transportFactory(): grpc.TransportFactory | undefined {
    // https://stackoverflow.com/questions/4224606/how-to-check-whether-a-script-is-running-under-node-js
    try {
      if (ServiceBase.isNode()) {
        let impEng = require("@improbable-eng/grpc-web-node-http-transport");
        return impEng.NodeHttpTransport();
      }
    } catch {}
    return undefined;
  }

  protected createClient<ClientService extends ClientServiceDefinition>(
    definition: ClientService
  ): BrowserClient<ClientService> {
    // ServerClient<ServerService> | BrowserClient<ClientService>
    // if (!ServiceBase.isNode() || ServiceBase.useNodeHttpTransport) {
    //   let clientMod = require("nice-grpc-web");
    return createClient(
      definition as ClientService,
      createChannel(this.address, this.transportFactory())
    );
    // } else {
    //   let serverMod = require("nice-grpc");
    //   return serverMod.createClient(
    //     definition,
    //     serverMod.createChannel(this.address)
    //   );
    // }
  }
}
