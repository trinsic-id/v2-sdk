import okapi from '@trinsic/okapi';
import { Metadata } from "@grpc/grpc-js";
import { trinsic as Wallet } from '../dist/WalletService';

export default abstract class ServiceBase {
  capInvocation: String;
  
  GetMetadata(): Metadata {
    if (!this.capInvocation) throw new Error("Profile not set.");
    let metadata = new Metadata();
    metadata["Capability-Invocation"] = this.capInvocation;
    return metadata;
  }

  SetProfile(profile: Wallet.services.WalletProfile): void {
    let capabilityDocument = {
      "@context": "https://wid.org/security/v2",
      "invocationTarget": profile.wallet_id,
      "proof": {
        "proofPurpose": "capabilityInvocation",
        "created": new Date().toISOString(),
        "capability": profile.capability
      }
    };

    let proofRequest = new okapi.CreateProofRequest();
    proofRequest.setDocument(capabilityDocument);
    proofRequest.setKey(okapi.JsonWebKey.deserializeBinary(profile.invoker_jwk));
    proofRequest.setSuite(okapi.LdSuite.JCSED25519SIGNATURE2020);

    let proofResponse = okapi.LdProofs.generate(proofRequest)

    // Set the auth field to the signed document by converting it back
    // to JSON and encoding it in base64
    this.capInvocation = btoa(proofResponse.getSignedDocument());
  }
}