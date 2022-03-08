import { CreateOberonProofRequest, Oberon } from "@trinsic/okapi";
import { Metadata } from "grpc-web";
import { Nonce, AccountProfile, ServiceOptions } from "./proto";
import { Message } from "google-protobuf";
import { fromUint8Array, toUint8Array } from "js-base64";

export default abstract class ServiceBase {
  options: ServiceOptions;
  address: string;

  constructor(options: ServiceOptions = new ServiceOptions()) {
    options.setServerEndpoint(options.getServerEndpoint() || "prod.trinsic.cloud")
      .setServerPort(options.getServerPort() || 443)
      .setServerUseTls(options.getServerPort() == 443 ? true : options.getServerUseTls())
      .setDefaultEcosystem(options.getDefaultEcosystem() || "default");

    this.options = options;

    this.address = `${this.options.getServerUseTls() ? "https" : "http"}://${this.options.getServerEndpoint()}:${this.options.getServerPort()}`;
  }

  async getMetadata(request: Message): Promise<Metadata> {
    if (!this.options.getAuthToken()) {
      throw new Error("auth token must be set");
    }

    var profile = AccountProfile.deserializeBinary(toUint8Array(this.options.getAuthToken()));

    const requestData = request.serializeBinary();
    let requestHash = new ArrayBuffer(0);

    if (requestData.length > 0) {
      requestHash = await crypto.subtle.digest("SHA-256", request.serializeBinary());
    }
    const timestamp = Date.now();

    let nonce = new Nonce().setTimestamp(timestamp).setRequestHash(new Uint8Array(requestHash));

    let proof = await Oberon.createProof(
      new CreateOberonProofRequest()
        .setNonce(nonce.serializeBinary())
        .setData(profile.getAuthData())
        .setToken(profile.getAuthToken())
    );

    const metadata = {
      Authorization:
        `Oberon ` +
        `ver=1,` +
        `proof=${fromUint8Array(proof.getProof_asU8(), true)},` +
        `data=${fromUint8Array(profile.getAuthData_asU8(), true)},` +
        `nonce=${fromUint8Array(nonce.serializeBinary(), true)}`,
    };

    return metadata;
  }
}
