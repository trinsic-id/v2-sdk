import { AccountProfile, Nonce, ServiceOptions } from "./proto/";
import base64url from "base64url";
import {
  Blake3HashRequest,
  CreateOberonProofRequest,
  Hashing,
  Oberon,
} from "@trinsic/okapi";
import { ChannelCredentials, Metadata } from "nice-grpc";
import * as _m0 from "protobufjs/minimal";

type MessageLike = {
  encode(_: MessageLike, writer: _m0.Writer): _m0.Writer;
};

export default abstract class ServiceBase {
  options: ServiceOptions;
  channelCredentials: ChannelCredentials;
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

    this.address = `${this.options.serverEndpoint}:${this.options.serverPort}`;
    this.channelCredentials = this.options.serverUseTls
      ? ChannelCredentials.createSsl()
      : ChannelCredentials.createInsecure();
  }

  async getMetadata(requestData: Uint8Array): Promise<Metadata> {
    if (!this.options.authToken) {
      throw new Error("auth token must be set");
    }

    const profile = AccountProfile.decode(
      Buffer.from(this.options.authToken, "base64url")
    );

    if (profile.protection?.enabled) {
      throw new Error(
        "profile is protected; you must use security code to remove the protection first"
      );
    }

    // @ts-ignore
    let requestHash: Buffer | string = Buffer.from("");

    if (requestData.length > 0) {
      let hashResponse = await Hashing.blake3Hash(
        new Blake3HashRequest().setData(requestData)
      );
      requestHash = Buffer.from(hashResponse.getDigest_asU8());
    }
    const timestamp = Date.now();

    let nonce = Nonce.fromPartial({
      requestHash: requestHash,
      timestamp: timestamp,
    });

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
        `proof=${base64url.encode(Buffer.from(proof.getProof_asU8()))},` +
        `data=${base64url.encode(Buffer.from(profile.authData))},` +
        `nonce=${base64url.encode(Buffer.from(Nonce.encode(nonce).finish()))}`
    );

    return metadata;
  }
}
