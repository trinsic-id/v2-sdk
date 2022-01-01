import { CreateOberonProofRequest, Oberon } from "@trinsic/okapi";
import { Metadata } from "grpc-web";
import { Nonce, ServerConfig, AccountProfile } from "./proto";
import { Message } from "google-protobuf";
import { encode, fromUint8Array } from "js-base64";

export interface ServiceOptions {
  profile?: AccountProfile;
  server?: ServerConfig;
  ecosystem?: string
}

export default abstract class ServiceBase {
  activeProfile?: AccountProfile;
  serverConfig: ServerConfig;
  address: string;

  constructor(options: ServiceOptions = {}) {
    options.server = options.server || new ServerConfig()
      .setEndpoint("prod.trinsic.cloud")
      .setPort(443)
      .setUseTls(true);

    this.activeProfile = options.profile;
    this.serverConfig = options.server;
    this.address = `${this.serverConfig.getUseTls() ? "https" : "http"}://${this.serverConfig.getEndpoint()}:${this.serverConfig.getPort()}`;
  }

  async getMetadata(request: Message): Promise<Metadata> {
    if (!this.activeProfile) {
      throw new Error("profile must be set");
    }

    var requestData = request.serializeBinary();
    var requestHash = new ArrayBuffer(0);

    if (requestData.length > 0) {
      requestHash = await crypto.subtle.digest("SHA-256", request.serializeBinary());
    }
    var timestamp = Date.now();

    let nonce = new Nonce().setTimestamp(timestamp).setRequestHash(new Uint8Array(requestHash));

    let proof = await Oberon.createProof(
      new CreateOberonProofRequest()
        .setNonce(nonce.serializeBinary())
        .setData(this.activeProfile.getAuthData())
        .setToken(this.activeProfile.getAuthToken())
    );

    var metadata = {
      Authorization:
        `Oberon ` +
        `ver=1,` +
        `proof=${fromUint8Array(proof.getProof_asU8(), true)},` +
        `data=${fromUint8Array(this.activeProfile.getAuthData_asU8(), true)},` +
        `nonce=${fromUint8Array(nonce.serializeBinary(), true)}`,
    };

    return metadata;
  }

  updateActiveProfile(profile: AccountProfile): void {
    this.activeProfile = profile;
  }
}
