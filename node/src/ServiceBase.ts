require("@trinsic/okapi");
import { Channel, ChannelCredentials, Metadata } from "@grpc/grpc-js";
import { Nonce, ServerConfig, AccountProfile } from "./proto/";
import { Message } from "google-protobuf";
import base64url from "base64url";
import { CreateOberonProofRequest, Oberon } from "@trinsic/okapi";
import { hash } from "mini-blake3/src/dist/node";

export interface ServiceOptions {
  profile?: AccountProfile;
  server?: ServerConfig;
  ecosystem?: string
}

export default abstract class ServiceBase {
  activeProfile?: AccountProfile;
  serverConfig: ServerConfig;
  channel?: Channel;
  channelCredentials: ChannelCredentials;
  address: string;

  constructor(options: ServiceOptions = {}) {
    options.server = options.server || new ServerConfig()
      .setEndpoint("prod.trinsic.cloud")
      .setPort(443)
      .setUseTls(true);


    this.activeProfile = options.profile;
    this.serverConfig = options.server;
    this.address = `${this.serverConfig.getEndpoint()}:${this.serverConfig.getPort()}`;
    this.channelCredentials = this.serverConfig.getUseTls()
      ? ChannelCredentials.createSsl()
      : ChannelCredentials.createInsecure();
  }

  async getMetadata(request: Message): Promise<Metadata> {
    if (!this.activeProfile) {
      throw new Error("profile must be set");
    }

    if (this.activeProfile!.getProtection()?.getEnabled()) {
      throw new Error("profile is protected; you must use security code to remove the protection first");
    }

    let requestData = request.serializeBinary();
    let requestHash: Buffer | string = Buffer.from('');

    if (requestData.length > 0) {
      requestHash = hash(requestData, {length:64});
    }
    const timestamp = Date.now();

    let nonce = new Nonce().setTimestamp(timestamp).setRequestHash(requestHash);

    let proof = await Oberon.createProof(
      new CreateOberonProofRequest()
        .setNonce(nonce.serializeBinary())
        .setData(this.activeProfile.getAuthData())
        .setToken(this.activeProfile.getAuthToken())
    );

    const metadata = new Metadata();
    metadata.add(
      "authorization",
      `Oberon ` +
      `ver=1,` +
      `proof=${base64url.encode(Buffer.from(proof.getProof_asU8()))},` +
      `data=${base64url.encode(Buffer.from(this.activeProfile.getAuthData_asU8()))},` +
      `nonce=${base64url.encode(Buffer.from(nonce.serializeBinary()))}`
    );

    return metadata;
  }

  updateActiveProfile(profile: AccountProfile): void {
    this.activeProfile = profile;
  }
}
