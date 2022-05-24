package trinsic.services;

import com.google.common.util.concurrent.ListenableFuture;
import com.google.protobuf.InvalidProtocolBufferException;
import trinsic.okapi.DidException;
import trinsic.sdk.options.v1.Options;
import trinsic.services.common.v1.Common;
import trinsic.services.verifiablecredentials.v1.VerifiableCredentialGrpc;
import trinsic.services.verifiablecredentials.v1.VerifiableCredentials;

import java.util.concurrent.ExecutionException;

public class CredentialsService extends ServiceBase {
    private final VerifiableCredentialGrpc.VerifiableCredentialFutureStub stub;

    public CredentialsService() {
        this(null);
    }

    public CredentialsService(Options.ServiceOptions options) {
        super(options);

        this.stub = VerifiableCredentialGrpc.newFutureStub(this.getChannel());
    }

    public ListenableFuture<VerifiableCredentials.IssueResponse> issueCredential(VerifiableCredentials.IssueRequest request) throws InvalidProtocolBufferException, DidException {
        if (request.getDocumentJson().isBlank()) throw new IllegalArgumentException("document json must not be empty");

        return withMetadata(stub, request).issue(request);
    }

    public ListenableFuture<VerifiableCredentials.IssueFromTemplateResponse> issueCredentialFromTemplate(VerifiableCredentials.IssueFromTemplateRequest request) throws InvalidProtocolBufferException, DidException {
        return withMetadata(stub, request).issueFromTemplate(request);
    }

    public ListenableFuture<VerifiableCredentials.CheckStatusResponse> checkStatus(VerifiableCredentials.CheckStatusRequest request) throws InvalidProtocolBufferException, DidException {
        return withMetadata(stub, request).checkStatus(request);
    }

    public void updateStatus(VerifiableCredentials.UpdateStatusRequest request) throws InvalidProtocolBufferException, DidException, ExecutionException, InterruptedException {
        var response = withMetadata(stub, request).updateStatus(request).get();
    }

    public ListenableFuture<VerifiableCredentials.CreateProofResponse> createProof(VerifiableCredentials.CreateProofRequest request) throws InvalidProtocolBufferException, DidException {
        return withMetadata(stub, request).createProof(request);
    }

    public ListenableFuture<VerifiableCredentials.VerifyProofResponse> verifyProof(VerifiableCredentials.VerifyProofRequest request) throws InvalidProtocolBufferException, DidException {
        return withMetadata(stub, request).verifyProof(request);
    }

    public void send(VerifiableCredentials.SendRequest request) throws InvalidProtocolBufferException, DidException, ExecutionException, InterruptedException {
        var response = withMetadata(stub, request).send(request).get();
    }
}
