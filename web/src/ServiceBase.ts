import { AccountProfile, Nonce, ServiceOptions } from "./proto";
import { Hashing, Oberon } from "@trinsic/okapi";
import { Metadata } from "nice-grpc-common";
import { fromUint8Array, toUint8Array } from "js-base64";
import { grpc } from "@improbable-eng/grpc-web";
// These imports are used by require directives below, but commented out to prevent webpack from complaining as much.
// Ideally, we can configure webpack to ignore these packages?
// import { NodeHttpTransport } from "@improbable-eng/grpc-web-node-http-transport";
// import type { CompatServiceDefinition as ServerServiceDefinition } from "nice-grpc/lib/service-definitions";
// import type { Client as ServerClient } from "nice-grpc";
import type { CompatServiceDefinition as ClientServiceDefinition } from "nice-grpc-web/lib/service-definitions";
import type { Client as BrowserClient } from "nice-grpc-web";

export default abstract class ServiceBase {
  // TODO - Maybe move this into the `ServiceOptions` structure or something? This is a global flag
  public static useNodeHttpTransport: boolean = false;
  options: ServiceOptions;
  address: string;

  protected constructor(
    options: ServiceOptions = ServiceOptions.fromPartial({})
  ) {
    options.serverEndpoint = options.serverEndpoint || "prod.trinsic.cloud";
    options.serverPort = options.serverPort || 443;
    options.serverUseTls =
      options.serverPort == 443 ? true : options.serverUseTls || false;
    options.defaultEcosystem = options.defaultEcosystem || "default";

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

    const profile = AccountProfile.decode(toUint8Array(this.options.authToken));
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
        `proof=${fromUint8Array(proof.proof, true)},` +
        `data=${fromUint8Array(profile.authData, true)},` +
        `nonce=${fromUint8Array(nonceUint8, true)}`
    );

    return metadata;
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
    if (!ServiceBase.isNode() || ServiceBase.useNodeHttpTransport) {
      let clientMod = require("nice-grpc-web");
      return clientMod.createClient(
        definition as ClientService,
        clientMod.createChannel(this.address, this.transportFactory())
      );
    } else {
      let serverMod = require("nice-grpc");
      return serverMod.createClient(
        definition,
        serverMod.createChannel(this.address)
      );
    }
  }
}
