import java.nio.charset.StandardCharsets;
import java.time.Instant;
import java.util.Base64;
import java.util.HashMap;

import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Value;
import com.google.protobuf.util.JsonFormat;

import io.grpc.Metadata;
import trinsic.okapi.Keys;
import trinsic.okapi.Proofs;
import trinsic.services.WalletService.WalletProfile;

public class ServiceBase {
    protected String capInvocation = "";

    public Metadata getMetadata() {
        if (capInvocation == null || capInvocation.strip().length() == 0)
            throw new IllegalArgumentException("Profile not set");
        var metadata = new Metadata();
        metadata.put(Metadata.Key.of("capability-invocation", Metadata.ASCII_STRING_MARSHALLER), capInvocation);
        return  metadata;
    }

    public void setProfile(WalletProfile profile) throws InvalidProtocolBufferException, DidException {
        var proofDict = new HashMap<String, Value>() {{
            put("proofPurpose", Utilities.stringValue("capabilityInvocation"));
            put("created", Utilities.stringValue(Instant.now().toString()));
            put("capability", Utilities.stringValue(profile.getCapability()));
        }};

        var capabilityDict = new HashMap<String, com.google.protobuf.Value>() {{
            put("@context", Utilities.stringValue("https://w3id.org/security/v2"));
            put("invocationTarget", Utilities.stringValue(profile.getWalletId()));
            put("proof", Utilities.structValue(proofDict));
        }};

        var proofResponse = LdProofs.createProof( Proofs.CreateProofRequest.newBuilder()
                        .setKey(Keys.JsonWebKey.parseFrom(profile.getInvokerJwk()))
                        .setDocument(Utilities.hashmapToStruct(capabilityDict))
                        .setSuite(Proofs.LdSuite.JcsEd25519Signature2020)
                .build());
        var proofJson = proofResponse.getSignedDocument().getFieldsMap();
        var format = JsonFormat.printer().print(proofResponse.getSignedDocument());
        this.capInvocation = new String( Base64.getEncoder().encode(format.getBytes(StandardCharsets.UTF_8)), StandardCharsets.UTF_8);
    }

}

