import { ChannelCredentials, Metadata } from "@grpc/grpc-js";
import {Nonce, AccountProfile, ServiceOptions} from "./proto";
import base64url from "base64url";
import { CreateOberonProofRequest, Oberon, Hashing, Blake3HashRequest } from "@trinsic/okapi";
import _m0 from "protobufjs/minimal";

export default abstract class ServiceBase {
  options: ServiceOptions;
  channelCredentials: ChannelCredentials;
  address: string;

  protected constructor(options: ServiceOptions = {serverEndpoint: "prod.trinsic.cloud",
  defaultEcosystem: "default", serverUseTls: true, serverPort: 443, authToken: ""}) {
    options.serverEndpoint = (options.serverEndpoint || "prod.trinsic.cloud");
    options.serverPort = options.serverPort || (options.serverUseTls ? 443 : 5000);
    options.defaultEcosystem = options.defaultEcosystem || "default";

    this.options = options;

    this.address = `${this.options.serverEndpoint}:${this.options.serverPort}`;
    this.channelCredentials = this.options.serverUseTls
      ? ChannelCredentials.createSsl()
      : ChannelCredentials.createInsecure();
  }

  async getMetadata(request: any, type: { encode(message: any, writer?: _m0.Writer): _m0.Writer }): Promise<Metadata> {
    if (!this.options.authToken) {
      throw new Error("auth token must be set");
    }

    const profile = AccountProfile.decode(Buffer.from(this.options.authToken, 'base64url'));

    if (profile.protection?.enabled) {
      throw new Error("profile is protected; you must use the security code to remove the protection first");
    }

    // @ts-ignore
    let requestData: Uint8Array = type.encode(request).finish(); // ClassType.encode(instanceOfClass)
    let requestHash: Buffer | string = Buffer.from('');

    if (requestData.length > 0) {
      let hashResponse = await Hashing.blake3Hash(new Blake3HashRequest()
        .setData(requestData));
      requestHash = Buffer.from(hashResponse.getDigest_asU8());
    }
    const timestamp = Date.now();

    let nonce: Nonce = {timestamp: timestamp, requestHash: requestHash }

    let proof = await Oberon.createProof(
      new CreateOberonProofRequest()
        .setNonce(Nonce.encode(nonce).finish())
        .setData(profile.authData)
        .setToken(profile.authToken)
    );

    const metadata = new Metadata();
    metadata.add(
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
