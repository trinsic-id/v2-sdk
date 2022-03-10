package trinsic.services;

import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.gson.Gson;
import com.google.protobuf.InvalidProtocolBufferException;
import trinsic.TrinsicUtilities;
import trinsic.okapi.DidException;
import trinsic.sdk.v1.Options;
import trinsic.services.verifiablecredentials.v1.VerifiableCredentialGrpc;
import trinsic.services.verifiablecredentials.v1.VerifiableCredentials;

import java.util.HashMap;
import java.util.concurrent.Executors;

public class CredentialsService extends ServiceBase {
    private final VerifiableCredentialGrpc.VerifiableCredentialFutureStub stub;

    public CredentialsService() { this(null); }

    public CredentialsService(Options.ServiceOptions options) {
        super(options);

        this.stub = VerifiableCredentialGrpc.newFutureStub(this.getChannel());
    }

    public ListenableFuture<HashMap> issueCredential(HashMap document) throws InvalidProtocolBufferException, DidException {
        var request = VerifiableCredentials.IssueRequest.newBuilder().setDocumentJson(TrinsicUtilities.hashmapToJson(document)).build();
        var response = withMetadata(stub, request).issue(request);
        return Futures.transform(response, input -> {
            if (input == null) return null;
            return new Gson().fromJson(input.getSignedDocumentJson(), HashMap.class);
        }, Executors.newSingleThreadExecutor());
    }

    public ListenableFuture<VerifiableCredentials.IssueFromTemplateResponse> issueCredentialFromTemplate(VerifiableCredentials.IssueFromTemplateRequest request) throws InvalidProtocolBufferException, DidException {
        return withMetadata(stub, request).issueFromTemplate(request);
    }

    public ListenableFuture<VerifiableCredentials.CheckStatusResponse> checkStatus(String credentialStatusId) throws InvalidProtocolBufferException, DidException {
        var request = VerifiableCredentials.CheckStatusRequest.newBuilder().setCredentialStatusId(credentialStatusId).build();
        return withMetadata(stub, request).checkStatus(request);
    }

    public ListenableFuture<VerifiableCredentials.UpdateStatusResponse> updateStatus(String credentialStatusId, Boolean revoked) throws InvalidProtocolBufferException, DidException {
        var request = VerifiableCredentials.UpdateStatusRequest.newBuilder().setCredentialStatusId(credentialStatusId).setRevoked(revoked).build();
        return withMetadata(stub, request).updateStatus(request);
    }

    public ListenableFuture<HashMap> createProof(String itemId, HashMap revealDocument) throws InvalidProtocolBufferException, DidException {
        final VerifiableCredentials.CreateProofRequest request = VerifiableCredentials.CreateProofRequest.newBuilder().setItemId(itemId).setRevealDocumentJson(TrinsicUtilities.hashmapToJson(revealDocument)).build();
        var response = withMetadata(stub, request).createProof(request);
        return Futures.transform(response, input -> {
            if (input == null) return null;
            return new Gson().fromJson(input.getProofDocumentJson(), HashMap.class);
        }, Executors.newSingleThreadExecutor());
    }

    public ListenableFuture<Boolean> verifyProof(HashMap proofDocument) throws InvalidProtocolBufferException, DidException {
        final VerifiableCredentials.VerifyProofRequest request = VerifiableCredentials.VerifyProofRequest.newBuilder().setProofDocumentJson(TrinsicUtilities.hashmapToJson(proofDocument)).build();
        var response = withMetadata(stub, request).verifyProof(request);
        return Futures.transform(response, VerifiableCredentials.VerifyProofResponse::getIsValid, Executors.newSingleThreadExecutor());
    }

    public ListenableFuture<VerifiableCredentials.SendResponse> send(HashMap document, String email) throws InvalidProtocolBufferException, DidException {
        final VerifiableCredentials.SendRequest request = VerifiableCredentials.SendRequest.newBuilder().setEmail(email).setDocumentJson(TrinsicUtilities.hashmapToJson(document)).build();
        return withMetadata(stub, request).send(request);
    }
}
