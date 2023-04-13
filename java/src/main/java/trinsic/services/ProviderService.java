package trinsic.services;

import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.protobuf.InvalidProtocolBufferException;
import java.util.Base64;
import java.util.concurrent.Executors;
import trinsic.okapi.DidException;
import trinsic.sdk.options.v1.Options;
import trinsic.services.provider.v1.*;

public class ProviderService extends ServiceBase {
  public ProviderGrpc.ProviderFutureStub stub;

  public ProviderService() {
    this(null);
  }

  public ProviderService(Options.TrinsicOptions.Builder options) {
    super(options);
    this.stub = ProviderGrpc.newFutureStub(this.getChannel());
  }

  public ListenableFuture<CreateEcosystemResponse> createEcosystem(CreateEcosystemRequest request)
      throws InvalidProtocolBufferException, DidException {
    ListenableFuture<CreateEcosystemResponse> response;
    if (request.getName().isBlank() && request.getDetails().getEmail().isBlank()) {
      response = stub.createEcosystem(request);
    } else {
      response = withMetadata(stub, request).createEcosystem(request);
    }
    return Futures.transform(
        response,
        input -> {
          if (!input.hasProfile() || input.getProfile().getProtection().getEnabled()) return null;

          var token = Base64.getUrlEncoder().encodeToString(input.getProfile().toByteArray());
          this.setAuthToken(token);
          return input;
        },
        Executors.newSingleThreadExecutor());
  }

  // BEGIN Code generated by protoc-gen-trinsic. DO NOT EDIT.
  // target: /home/runner/work/sdk/sdk/java/src/main/java/trinsic/services/ProviderService.java

  /**
   * This will be removed June 1, 2023 The below display can be removed only once the Dashboard is
   * updating this itself - currently it uses this request DEPRECATED, will be removed June 1st 2023
   */
  @Deprecated(since = "This will be removed June 1, 2023")
  public ListenableFuture<UpdateEcosystemResponse> updateEcosystem(UpdateEcosystemRequest request)
      throws InvalidProtocolBufferException, DidException {

    return withMetadata(stub, request).updateEcosystem(request);
  }
  /**
   * This will be removed June 1, 2023 The below display can be removed only once the Dashboard is
   * updating this itself - currently it uses this request DEPRECATED, will be removed June 1st 2023
   */
  @Deprecated(since = "This will be removed June 1, 2023")
  public ListenableFuture<EcosystemInfoResponse> ecosystemInfo(EcosystemInfoRequest request)
      throws InvalidProtocolBufferException, DidException {

    return withMetadata(stub, request).ecosystemInfo(request);
  }
  /**
   * This will be removed June 1, 2023 The below display can be removed only once the Dashboard is
   * updating this itself - currently it uses this request DEPRECATED, will be removed June 1st 2023
   */
  @Deprecated(since = "This will be removed June 1, 2023")
  public ListenableFuture<GetPublicEcosystemInfoResponse> getPublicEcosystemInfo(
      GetPublicEcosystemInfoRequest request) throws InvalidProtocolBufferException, DidException {

    return withMetadata(stub, request).getPublicEcosystemInfo(request);
  }
  /** Returns the public key being used to create/verify oberon tokens */
  public ListenableFuture<GetOberonKeyResponse> getOberonKey()
      throws InvalidProtocolBufferException, DidException {
    var request = GetOberonKeyRequest.newBuilder().build();
    return withMetadata(stub, request).getOberonKey(request);
  }
  /** Upgrade a wallet's DID from `did:key` to another method */
  public ListenableFuture<UpgradeDidResponse> upgradeDID(UpgradeDidRequest request)
      throws InvalidProtocolBufferException, DidException {

    return withMetadata(stub, request).upgradeDID(request);
  }
  /** Retrieve a random hash TXT that can be used to verify domain ownership */
  public ListenableFuture<RetrieveDomainVerificationRecordResponse>
      retrieveDomainVerificationRecord() throws InvalidProtocolBufferException, DidException {
    var request = RetrieveDomainVerificationRecordRequest.newBuilder().build();
    return withMetadata(stub, request).retrieveDomainVerificationRecord(request);
  }
  /** Call to verify domain */
  public ListenableFuture<RefreshDomainVerificationStatusResponse> refreshDomainVerificationStatus()
      throws InvalidProtocolBufferException, DidException {
    var request = RefreshDomainVerificationStatusRequest.newBuilder().build();
    return withMetadata(stub, request).refreshDomainVerificationStatus(request);
  }
  /** Search for issuers/providers/verifiers in the current ecosystem */
  public ListenableFuture<SearchWalletConfigurationResponse> searchWalletConfigurations(
      SearchWalletConfigurationsRequest request)
      throws InvalidProtocolBufferException, DidException {

    return withMetadata(stub, request).searchWalletConfigurations(request);
  }
  // END Code generated by protoc-gen-trinsic. DO NOT EDIT.
}
