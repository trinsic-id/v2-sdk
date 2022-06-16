package trinsic.services;

import com.google.common.util.concurrent.ListenableFuture;
import com.google.protobuf.InvalidProtocolBufferException;
import trinsic.okapi.DidException;
import trinsic.sdk.options.v1.Options;
import trinsic.services.common.v1.ProviderGrpc;
import trinsic.services.common.v1.ProviderOuterClass;

public class ProviderService extends ServiceBase {
  public ProviderGrpc.ProviderFutureStub stub;

  public ProviderService() {
    this(null);
  }

  public ProviderService(Options.ServiceOptions options) {
    super(options);
    this.stub = ProviderGrpc.newFutureStub(this.getChannel());
  }

  public ListenableFuture<ProviderOuterClass.CreateEcosystemResponse> createEcosystem(
      ProviderOuterClass.CreateEcosystemRequest request)
      throws InvalidProtocolBufferException, DidException {
      if (request.getName().isBlank() && request.getDetails().getEmail().isBlank()) {
          return stub.createEcosystem(request);
      } else {
          return withMetadata(stub, request).createEcosystem(request);
      }
  }

  public ListenableFuture<ProviderOuterClass.UpdateEcosystemResponse> updateEcosystem(
      ProviderOuterClass.UpdateEcosystemRequest request)
      throws InvalidProtocolBufferException, DidException {
    return withMetadata(stub, request).updateEcosystem(request);
  }

  public ListenableFuture<ProviderOuterClass.AddWebhookResponse> addWebhook(
      ProviderOuterClass.AddWebhookRequest request)
      throws InvalidProtocolBufferException, DidException {
    return withMetadata(stub, request).addWebhook(request);
  }

  public ListenableFuture<ProviderOuterClass.DeleteWebhookResponse> deleteWebhook(
      ProviderOuterClass.DeleteWebhookRequest request)
      throws InvalidProtocolBufferException, DidException {
    return withMetadata(stub, request).deleteWebhook(request);
  }

  public ListenableFuture<ProviderOuterClass.EcosystemInfoResponse> ecosystemInfo(
      ProviderOuterClass.EcosystemInfoRequest request)
      throws InvalidProtocolBufferException, DidException {
    return withMetadata(stub, request).ecosystemInfo(request);
  }

  public ListenableFuture<ProviderOuterClass.GenerateTokenResponse> generateToken(
      ProviderOuterClass.GenerateTokenRequest request)
      throws InvalidProtocolBufferException, DidException {
    return withMetadata(stub, request).generateToken(request);
  }

  public ListenableFuture<ProviderOuterClass.InviteResponse> invite(
      ProviderOuterClass.InviteRequest request)
      throws InvalidProtocolBufferException, DidException {
    return withMetadata(stub, request).invite(request);
  }

  public ListenableFuture<ProviderOuterClass.InvitationStatusResponse> invitationStatus(
      ProviderOuterClass.InvitationStatusRequest request)
      throws InvalidProtocolBufferException, DidException {
    if (request.getInvitationId().isBlank())
      throw new IllegalArgumentException("Onboarding reference ID must be set.");

    return withMetadata(stub, request).invitationStatus(request);
  }

  public ListenableFuture<ProviderOuterClass.GetOberonKeyResponse> getOberonKey(
      ProviderOuterClass.GetOberonKeyRequest request)
      throws InvalidProtocolBufferException, DidException {
    return withMetadata(stub, request).getOberonKey(request);
  }

  public ListenableFuture<ProviderOuterClass.GetEventTokenResponse> getEventToken(
      ProviderOuterClass.GetEventTokenRequest request)
      throws InvalidProtocolBufferException, DidException {
    return withMetadata(stub, request).getEventToken(request);
  }
}
