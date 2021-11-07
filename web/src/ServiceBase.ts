import { CreateOberonProofRequest, CreateProofRequest, JsonWebKey, LdProofs, LdSuite, Oberon } from "@trinsic/okapi";
import { Metadata } from "grpc-web";
import { Nonce, ServerConfig, WalletProfile } from "./proto";
import { Struct } from "google-protobuf/google/protobuf/struct_pb";
import { Buffer } from "buffer";
import { Message } from "google-protobuf";
import base64url from "base64url";
import { hash } from "blake3/browser";

export const DEFAULT_SERVICE_ADDRESS = "https://prod.trinsic.cloud:443";

export default abstract class ServiceBase {
  activeProfile: WalletProfile;
  serverConfig: ServerConfig;

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

    var metadata = {
      Authorization: `Oberon ver=1,
              proof=${base64url.encode(Buffer.from(proof.getProof_asU8()))},
              data=${base64url.encode(Buffer.from(this.activeProfile.getAuthData_asU8()))},
              nonce=${base64url.encode(Buffer.from(nonce.serializeBinary()))}`,
    };

    return metadata;
  }

  updateActiveProfile(profile: WalletProfile): void {
    this.activeProfile = profile;
  }
}
