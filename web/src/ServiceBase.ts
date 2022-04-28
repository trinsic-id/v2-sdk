import {
  Blake3HashRequest,
  CreateOberonProofRequest,
  Hashing,
  Oberon,
} from "@trinsic/okapi";
import { Metadata } from "nice-grpc-web";
import { Nonce, AccountProfile, ServiceOptions } from "./proto";
import { fromUint8Array, toUint8Array } from "js-base64";
import { grpc } from "@improbable-eng/grpc-web";
import {NodeHttpTransport} from "@improbable-eng/grpc-web-node-http-transport";

export default abstract class ServiceBase {
  options: ServiceOptions;
  address: string;

  protected constructor(options: ServiceOptions = ServiceOptions.fromPartial({})) {
    options.serverEndpoint = options.serverEndpoint || "prod.trinsic.cloud";
    options.serverPort = options.serverPort || 443;
    options.serverUseTls =
      options.serverPort == 443 ? true : options.serverUseTls;
    options.defaultEcosystem = options.defaultEcosystem || "default";

    this.options = options;

    this.address = `${this.options.serverUseTls ? "https" : "http"}://${
      this.options.serverEndpoint
    }:${this.options.serverPort}`;
  }

  async getMetadata(request: Uint8Array): Promise<Metadata> {
    if (!this.options.authToken) {
      throw new Error("auth token must be set");
    }

    const profile = AccountProfile.decode(toUint8Array(this.options.authToken));

    const requestData = request;
    let requestHash = new Uint8Array();

    if (requestData.length > 0) {
      let hashResponse = await Hashing.blake3Hash(
        new Blake3HashRequest().setData(requestData)
      );
      requestHash = hashResponse.getDigest_asU8();
    }
    const timestamp = Date.now();

    let nonce: Nonce = { timestamp: timestamp, requestHash: requestHash };

    let proof = await Oberon.createProof(
      new CreateOberonProofRequest()
        .setNonce(Nonce.encode(nonce).finish())
        .setData(profile.authData)
        .setToken(profile.authToken)
    );

    const metadata = new Metadata();
    metadata.append(
      "authorization",
      `Oberon ` +
        `ver=1,` +
        `proof=${fromUint8Array(proof.getProof_asU8(), true)},` +
        `data=${fromUint8Array(profile.authData, true)},` +
        `nonce=${fromUint8Array(Nonce.encode(nonce).finish(), true)}`
    );

    return metadata;
  }

  protected transportFactory(): grpc.TransportFactory | undefined {
    // https://stackoverflow.com/questions/4224606/how-to-check-whether-a-script-is-running-under-node-js
    try {
      if ((typeof process !== 'undefined') && (process.release.name === 'node')) {
        return NodeHttpTransport();
      }
    } catch {}
    return undefined;
  }
}
