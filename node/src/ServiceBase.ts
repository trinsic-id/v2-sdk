const okapi = require("@trinsic/okapi");
const { CreateProofRequest } = okapi;
import { Metadata } from "@grpc/grpc-js";
import { WalletProfile } from "./proto/WalletService_pb";
import { Struct } from "google-protobuf/google/protobuf/struct_pb";

export default abstract class ServiceBase {
  capInvocation: string;

  getMetadata(): Metadata {
    if (!this.capInvocation) throw new Error("Profile not set.");
    let metadata = new Metadata();
    metadata.add("Capability-Invocation", this.capInvocation);
    return metadata;
  }

  async setProfile(profile: WalletProfile): Promise<void> {
    let capabilityDocument = {
      "@context": "https://wid.org/security/v2",
      invocationTarget: profile.getWalletId(),
      proof: {
        proofPurpose: "capabilityInvocation",
        created: new Date().toISOString(),
        capability: profile.getCapability(),
      },
    };

    let proofRequest = new CreateProofRequest()
      .setDocument(Struct.fromJavaScript(capabilityDocument))
      .setKey(okapi.JsonWebKey.deserializeBinary(profile.getInvokerJwk_asU8()))
      .setSuite(okapi.LdSuite.JCSED25519SIGNATURE2020);

    let proofResponse = await okapi.LdProofs.generate(proofRequest);

    // Set the auth field to the signed document by converting it back
    // to JSON and encoding it in base64
    this.capInvocation = Buffer.from(JSON.stringify(proofResponse.getSignedDocument().toJavaScript())).toString(
      "base64"
    );
  }
}
