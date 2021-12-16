package trinsic.services;

import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.gson.Gson;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
import io.grpc.Channel;
import io.grpc.stub.MetadataUtils;
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

    public CredentialsService(AccountOuterClass.AccountProfile accountProfile, CommonOuterClass.ServerConfig serverConfig) {
        this(accountProfile, serverConfig, null);
    }

    public CredentialsService(AccountOuterClass.AccountProfile accountProfile, CommonOuterClass.ServerConfig serverConfig, Channel existingChannel) {
        super(accountProfile, serverConfig, existingChannel);

        this.stub = VerifiableCredentialGrpc.newFutureStub(this.getChannel());
    }

    public ListenableFuture<HashMap<String, Object>> issueCredential(HashMap<String, Object> document) throws InvalidProtocolBufferException, DidException {
        var request = VerifiableCredentials.IssueRequest.newBuilder()
                .setDocument(TrinsicUtilities.createPayloadString(document)).build();
        var response = clientWithMetadata(request).issue(request);
        return Futures.transform(response, input -> {
            if (input == null) return null;
            return (HashMap<String, Object>) new Gson().fromJson(input.getDocument().getJsonString(), HashMap.class);
        }, Executors.newSingleThreadExecutor());
    }

    public ListenableFuture<HashMap<String, Object>> createProof(String documentId, HashMap<String, Object> revealDocument) throws InvalidProtocolBufferException, DidException {
        final VerifiableCredentials.CreateProofRequest request = VerifiableCredentials.CreateProofRequest.newBuilder()
                .setDocumentId(documentId)
                .setRevealDocument(TrinsicUtilities.createPayloadString(revealDocument))
                .build();
        var response = clientWithMetadata(request).createProof(request);
        return Futures.transform(response, input -> {
            if (input == null) return null;
            return (HashMap<String, Object>) new Gson().fromJson(input.getProofDocument().getJsonString(), HashMap.class);
        }, Executors.newSingleThreadExecutor());
    }

    public ListenableFuture<Boolean> verifyProof(HashMap<String, Object> proofDocument) throws InvalidProtocolBufferException, DidException {
        final VerifiableCredentials.VerifyProofRequest request = VerifiableCredentials.VerifyProofRequest.newBuilder()
                .setProofDocument(TrinsicUtilities.createPayloadString(proofDocument)).build();
        var response = clientWithMetadata(request).verifyProof(request);
        return Futures.transform(response, VerifiableCredentials.VerifyProofResponse::getValid, Executors.newSingleThreadExecutor());
    }

    public ListenableFuture<VerifiableCredentials.SendResponse> send(HashMap<String, Object> document, String email) throws InvalidProtocolBufferException, DidException {
        final VerifiableCredentials.SendRequest request = VerifiableCredentials.SendRequest.newBuilder()
                .setEmail(email)
                .setDocument(TrinsicUtilities.createPayloadString(document))
                .build();
        return clientWithMetadata(request).send(request);
    }

    private VerifiableCredentialGrpc.VerifiableCredentialFutureStub clientWithMetadata(Message message) throws InvalidProtocolBufferException, DidException {
        return this.stub.withInterceptors(
                MetadataUtils.newAttachHeadersInterceptor(this.buildMetadata(message)));
    }
}
