"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const okapi = require("@trinsic/okapi");
const struct_pb_1 = require("google-protobuf/google/protobuf/struct_pb");
const Buffer = require('buffer').Buffer;
class ServiceBase {
    capInvocation;
    getMetadata() {
        if (!this.capInvocation)
            throw new Error("Profile not set.");
        let metadata = { "Capability-Invocation": this.capInvocation };
        return metadata;
    }
    async setProfile(profile) {
        let capabilityDocument = {
            "@context": "https://wid.org/security/v2",
            "invocationTarget": profile.getWalletId(),
            "proof": {
                "proofPurpose": "capabilityInvocation",
                "created": new Date().toISOString(),
                "capability": profile.getCapability()
            }
        };
        let proofRequest = new okapi.CreateProofRequest();
        proofRequest.setDocument(struct_pb_1.Struct.fromJavaScript(capabilityDocument));
        proofRequest.setKey(okapi.JsonWebKey.deserializeBinary(profile.getInvokerJwk_asU8()));
        proofRequest.setSuite(okapi.LdSuite.JCSED25519SIGNATURE2020);
        let proofResponse = await okapi.LdProofs.generate(proofRequest);
        // Set the auth field to the signed document by converting it back
        // to JSON and encoding it in base64
        this.capInvocation = Buffer.from(JSON.stringify(proofResponse.getSignedDocument().toJavaScript())).toString('base64');
    }
}
exports.default = ServiceBase;
//# sourceMappingURL=ServiceBase.js.map