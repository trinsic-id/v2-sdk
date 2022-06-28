package trinsic.services;

import com.google.common.util.concurrent.ListenableFuture;
import com.google.protobuf.InvalidProtocolBufferException;
import trinsic.okapi.DidException;
import trinsic.sdk.options.v1.Options;
import trinsic.services.provider.v1.*;
import trinsic.services.provider.v1.ProviderGrpc;

public class ProviderService extends ServiceBase {
  public ProviderGrpc.ProviderFutureStub stub;

  public ProviderService() {
    this(null);
  }

  public ProviderService(Options.ServiceOptions.Builder options) {
    super(options);
    this.stub = ProviderGrpc.newFutureStub(this.getChannel());
  }

  public ListenableFuture<CreateEcosystemResponse> createEcosystem(CreateEcosystemRequest request)
      throws InvalidProtocolBufferException, DidException {
    if (request.getName().isBlank() && request.getDetails().getEmail().isBlank()) {
      return stub.createEcosystem(request);
    } else {
      return withMetadata(stub, request).createEcosystem(request);
    }
  }

  public ListenableFuture<UpdateEcosystemResponse> updateEcosystem(UpdateEcosystemRequest request)
      throws InvalidProtocolBufferException, DidException {
    return withMetadata(stub, request).updateEcosystem(request);
  }

  public ListenableFuture<AddWebhookResponse> addWebhook(AddWebhookRequest request)
      throws InvalidProtocolBufferException, DidException {
    return withMetadata(stub, request).addWebhook(request);
  }

  public ListenableFuture<DeleteWebhookResponse> deleteWebhook(DeleteWebhookRequest request)
      throws InvalidProtocolBufferException, DidException {
    return withMetadata(stub, request).deleteWebhook(request);
  }

  public ListenableFuture<EcosystemInfoResponse> ecosystemInfo(EcosystemInfoRequest request)
      throws InvalidProtocolBufferException, DidException {
    return withMetadata(stub, request).ecosystemInfo(request);
  }

  public ListenableFuture<GenerateTokenResponse> generateToken(GenerateTokenRequest request)
      throws InvalidProtocolBufferException, DidException {
    return withMetadata(stub, request).generateToken(request);
  }

  public ListenableFuture<InviteResponse> invite(InviteRequest request)
      throws InvalidProtocolBufferException, DidException {
    return withMetadata(stub, request).invite(request);
  }

  public ListenableFuture<InvitationStatusResponse> invitationStatus(
      InvitationStatusRequest request) throws InvalidProtocolBufferException, DidException {
    if (request.getInvitationId().isBlank())
      throw new IllegalArgumentException("Onboarding reference ID must be set.");

    return withMetadata(stub, request).invitationStatus(request);
  }

  public ListenableFuture<GetOberonKeyResponse> getOberonKey(GetOberonKeyRequest request)
      throws InvalidProtocolBufferException, DidException {
    return stub.getOberonKey(request);
  }

  public ListenableFuture<GetEventTokenResponse> getEventToken(GetEventTokenRequest request)
      throws InvalidProtocolBufferException, DidException {
    return withMetadata(stub, request).getEventToken(request);
  }
}
