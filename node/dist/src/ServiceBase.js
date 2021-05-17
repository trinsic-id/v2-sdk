"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const okapi_1 = __importDefault(require("@trinsic/okapi"));
const grpc_js_1 = require("@grpc/grpc-js");
class ServiceBase {
    GetMetadata() {
        if (!this.capInvocation)
            throw new Error("Profile not set.");
        let metadata = new grpc_js_1.Metadata();
        metadata["Capability-Invocation"] = this.capInvocation;
        return metadata;
    }
    SetProfile(profile) {
        let capabilityDocument = {
            "@context": "https://wid.org/security/v2",
            "invocationTarget": profile.wallet_id,
            "proof": {
                "proofPurpose": "capabilityInvocation",
                "created": new Date().toISOString(),
                "capability": profile.capability
            }
        };
        let proofRequest = new okapi_1.default.CreateProofRequest();
        proofRequest.setDocument(capabilityDocument);
        proofRequest.setKey(okapi_1.default.JsonWebKey.deserializeBinary(profile.invoker_jwk));
        proofRequest.setSuite(okapi_1.default.LdSuite.JCSED25519SIGNATURE2020);
        let proofResponse = okapi_1.default.LdProofs.generate(proofRequest);
        // Set the auth field to the signed document by converting it back
        // to JSON and encoding it in base64
        this.capInvocation = btoa(proofResponse.getSignedDocument());
    }
}
exports.default = ServiceBase;
//# sourceMappingURL=ServiceBase.js.map