package trinsic.services;

import com.google.common.util.concurrent.ListenableFuture;
import com.google.protobuf.InvalidProtocolBufferException;
import trinsic.okapi.DidException;
import trinsic.sdk.options.v1.Options;
import trinsic.services.verifiablecredentials.v1.*;

import java.util.concurrent.ExecutionException;

public class CredentialService extends ServiceBase {
  private final VerifiableCredentialGrpc.VerifiableCredentialFutureStub stub;

  public CredentialService() {
    this(null);
  }

  public CredentialService(Options.ServiceOptions.Builder options) {
    super(options);

    this.stub = VerifiableCredentialGrpc.newFutureStub(this.getChannel());
  }

  public ListenableFuture<IssueResponse> issueCredential(
      IssueRequest request)
      throws InvalidProtocolBufferException, DidException {
    if (request.getDocumentJson().isBlank())
      throw new IllegalArgumentException("document json must not be empty");

    return withMetadata(stub, request).issue(request);
  }

  public ListenableFuture<IssueFromTemplateResponse>
      issueCredentialFromTemplate(IssueFromTemplateRequest request)
          throws InvalidProtocolBufferException, DidException {
    return withMetadata(stub, request).issueFromTemplate(request);
  }

  public ListenableFuture<CheckStatusResponse> checkStatus(
      CheckStatusRequest request)
      throws InvalidProtocolBufferException, DidException {
    return withMetadata(stub, request).checkStatus(request);
  }

  public void updateStatus(UpdateStatusRequest request)
      throws InvalidProtocolBufferException, DidException, ExecutionException,
          InterruptedException {
    var response = withMetadata(stub, request).updateStatus(request).get();
  }

  public ListenableFuture<CreateProofResponse> createProof(
      CreateProofRequest request)
      throws InvalidProtocolBufferException, DidException {
    return withMetadata(stub, request).createProof(request);
  }

  public ListenableFuture<VerifyProofResponse> verifyProof(
      VerifyProofRequest request)
      throws InvalidProtocolBufferException, DidException {
    return withMetadata(stub, request).verifyProof(request);
  }

  public void send(SendRequest request)
      throws InvalidProtocolBufferException, DidException, ExecutionException,
          InterruptedException {
    var response = withMetadata(stub, request).send(request).get();
  }
}
