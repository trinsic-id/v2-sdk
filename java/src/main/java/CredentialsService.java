import com.google.gson.Gson;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
import io.grpc.stub.MetadataUtils;
import trinsic.okapi.DidException;
import trinsic.services.account.v1.Account;
import trinsic.services.common.v1.CommonOuterClass;
import trinsic.services.verifiablecredentials.v1.CredentialGrpc;
import trinsic.services.verifiablecredentials.v1.VerifiableCredentials;

import java.util.HashMap;

public class CredentialsService extends ServiceBase {
    private final CredentialGrpc.CredentialBlockingStub stub;

    public CredentialsService(Account.AccountProfile accountProfile, CommonOuterClass.ServerConfig serverConfig) {
        super(accountProfile, serverConfig);

        this.stub = CredentialGrpc.newBlockingStub(this.getChannel());
    }

    public HashMap issueCredential(HashMap document) throws InvalidProtocolBufferException, DidException {
        var request = VerifiableCredentials.IssueRequest.newBuilder()
                .setDocument(TrinsicUtilities.createPayloadString(document)).build();
        var response = clientWithMetadata(request).issue(request);
        return new Gson().fromJson(response.getDocument().getJsonString(), HashMap.class);
    }

    public HashMap createProof(String documentId, HashMap revealDocument) throws InvalidProtocolBufferException, DidException {
        final VerifiableCredentials.CreateProofRequest request = VerifiableCredentials.CreateProofRequest.newBuilder()
                .setDocumentId(documentId)
                .setRevealDocument(TrinsicUtilities.createPayloadString(revealDocument))
                .build();
        return (new Gson()).fromJson(clientWithMetadata(request).createProof(request).getProofDocument().getJsonString(), HashMap.class);
    }

    public boolean verifyProof(HashMap proofDocument) throws InvalidProtocolBufferException, DidException {
        final VerifiableCredentials.VerifyProofRequest request = VerifiableCredentials.VerifyProofRequest.newBuilder()
                .setProofDocument(TrinsicUtilities.createPayloadString(proofDocument)).build();
        return clientWithMetadata(request).verifyProof(request).getValid();
    }

    public VerifiableCredentials.SendResponse send(HashMap document, String email) throws InvalidProtocolBufferException, DidException {
        final VerifiableCredentials.SendRequest request = VerifiableCredentials.SendRequest.newBuilder()
                .setEmail(email)
                .setDocument(TrinsicUtilities.createPayloadString(document))
                .build();
        return clientWithMetadata(request).send(request);
    }

    private CredentialGrpc.CredentialBlockingStub clientWithMetadata(Message message) throws InvalidProtocolBufferException, DidException {
        return this.stub.withInterceptors(
                MetadataUtils.newAttachHeadersInterceptor(this.buildMetadata(message)));
    }
}
