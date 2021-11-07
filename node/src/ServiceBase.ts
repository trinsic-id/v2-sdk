const okapi = require("@trinsic/okapi");
import { Channel, ChannelCredentials, Metadata } from "@grpc/grpc-js";
import { Nonce, ServerConfig, WalletProfile } from "./proto/";
import { Message } from "google-protobuf";
import base64url from "base64url";
import { CreateOberonProofRequest, Oberon } from "@trinsic/okapi";
import { hash } from "mini-blake3/src/dist/node";

export default abstract class ServiceBase {
  activeProfile: WalletProfile;
  serverConfig: ServerConfig;
  channel: Channel;
  channelCredentials: ChannelCredentials;
  address: string;

  constructor(
    profile: WalletProfile = null,
    config: ServerConfig = new ServerConfig().setEndpoint("prod.trinsic.cloud").setPort(443).setUseTls(true)
  ) {
    this.activeProfile = profile;
    this.serverConfig = config;
    this.address = `${this.serverConfig.getEndpoint()}:${this.serverConfig.getPort()}`;
    this.channelCredentials = config.getUseTls() ? ChannelCredentials.createSsl() : ChannelCredentials.createInsecure();
  }

  async getMetadata(request: Message): Promise<Metadata> {
    var requestHash = hash(request.serializeBinary());
    var timestamp = Date.now();

    let nonce = new Nonce().setTimestamp(timestamp).setRequestHash(requestHash);

    let proof = await Oberon.createProof(
      new CreateOberonProofRequest()
        .setNonce(nonce.serializeBinary())
        .setData(this.activeProfile.getAuthData())
        .setToken(this.activeProfile.getAuthToken())
    );

    var metadata = new Metadata();
    metadata.add(
      "Authorization",
      `Oberon ` +
        `ver=1,` +
        `proof=${base64url.encode(Buffer.from(proof.getProof_asU8()))},` +
        `data=${base64url.encode(Buffer.from(this.activeProfile.getAuthData_asU8()))},` +
        `nonce=${base64url.encode(Buffer.from(nonce.serializeBinary()))}`
    );

    return metadata;
  }

  updateActiveProfile(profile: WalletProfile): void {
    this.activeProfile = profile;
  }
}
