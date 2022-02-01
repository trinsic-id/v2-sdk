package trinsic.services;

import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.gson.Gson;
import com.google.protobuf.InvalidProtocolBufferException;
import io.grpc.Channel;
import trinsic.TrinsicUtilities;
import trinsic.okapi.DidException;
import trinsic.services.account.v1.AccountOuterClass;
import trinsic.services.common.v1.CommonOuterClass;
import trinsic.services.verifiablecredentials.v1.VerifiableCredentialGrpc;
import trinsic.services.verifiablecredentials.v1.VerifiableCredentials;

import java.util.HashMap;
import java.util.concurrent.Executors;

public class CredentialsService extends ServiceBase {
    private final VerifiableCredentialGrpc.VerifiableCredentialFutureStub stub;

    public CredentialsService(AccountOuterClass.AccountProfile accountProfile) {
        this(accountProfile, null, null);
    }

    public CredentialsService(AccountOuterClass.AccountProfile accountProfile, Channel existingChannel) {
        this(accountProfile, null, existingChannel);
    }

    CredentialsService(AccountOuterClass.AccountProfile accountProfile, CommonOuterClass.ServerConfig serverConfig) {
        this(accountProfile, serverConfig, null);
    }

    private CredentialsService(AccountOuterClass.AccountProfile accountProfile, CommonOuterClass.ServerConfig serverConfig, Channel existingChannel) {
        super(accountProfile, serverConfig, existingChannel);

        this.stub = VerifiableCredentialGrpc.newFutureStub(this.getChannel());
    }

    public ListenableFuture<HashMap> issueCredential(HashMap document) throws InvalidProtocolBufferException, DidException {
        var request = VerifiableCredentials.IssueRequest.newBuilder().setDocument(TrinsicUtilities.createPayloadString(document)).build();
        var response = withMetadata(stub, request).issue(request);
        return Futures.transform(response, input -> {
            if (input == null) return null;
            return new Gson().fromJson(input.getDocument().getJsonString(), HashMap.class);
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

    public ListenableFuture<HashMap> createProof(String documentId, HashMap revealDocument) throws InvalidProtocolBufferException, DidException {
        final VerifiableCredentials.CreateProofRequest request = VerifiableCredentials.CreateProofRequest.newBuilder().setDocumentId(documentId).setRevealDocument(TrinsicUtilities.createPayloadString(revealDocument)).build();
        var response = withMetadata(stub, request).createProof(request);
        return Futures.transform(response, input -> {
            if (input == null) return null;
            return new Gson().fromJson(input.getProofDocument().getJsonString(), HashMap.class);
        }, Executors.newSingleThreadExecutor());
    }

    public ListenableFuture<Boolean> verifyProof(HashMap proofDocument) throws InvalidProtocolBufferException, DidException {
        final VerifiableCredentials.VerifyProofRequest request = VerifiableCredentials.VerifyProofRequest.newBuilder().setProofDocument(TrinsicUtilities.createPayloadString(proofDocument)).build();
        var response = withMetadata(stub, request).verifyProof(request);
        return Futures.transform(response, VerifiableCredentials.VerifyProofResponse::getValid, Executors.newSingleThreadExecutor());
    }

    public ListenableFuture<VerifiableCredentials.SendResponse> send(HashMap document, String email) throws InvalidProtocolBufferException, DidException {
        final VerifiableCredentials.SendRequest request = VerifiableCredentials.SendRequest.newBuilder().setEmail(email).setDocument(TrinsicUtilities.createPayloadString(document)).build();
        return withMetadata(stub, request).send(request);
    }
}
