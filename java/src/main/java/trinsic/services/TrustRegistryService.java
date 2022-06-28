package trinsic.services;

import com.google.common.util.concurrent.ListenableFuture;
import com.google.protobuf.InvalidProtocolBufferException;
import trinsic.okapi.DidException;
import trinsic.sdk.options.v1.Options;
import trinsic.services.trustregistry.v1.*;
import trinsic.services.trustregistry.v1.TrustRegistryGrpc;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.Iterator;
import java.util.concurrent.ExecutionException;

public class TrustRegistryService extends ServiceBase {
  public TrustRegistryGrpc.TrustRegistryFutureStub stub;
  // We only use the blocking stub for server-side streaming call.
  public TrustRegistryGrpc.TrustRegistryBlockingStub stub2;

  public TrustRegistryService() {
    this(null);
  }

  public TrustRegistryService(Options.ServiceOptions.Builder options) {
    super(options);
    this.stub = TrustRegistryGrpc.newFutureStub(this.getChannel());
    this.stub2 = TrustRegistryGrpc.newBlockingStub(this.getChannel());
  }

  public ListenableFuture<AddFrameworkResponse> addFramework(
      AddFrameworkRequest request)
      throws InvalidProtocolBufferException, DidException {
    try {
      new URL(request.getGovernanceFrameworkUri());
    } catch (MalformedURLException e) {
      throw new IllegalArgumentException("invalid uri string", e);
    }
    return withMetadata(stub, request).addFramework(request);
  }

  public RemoveFrameworkResponse removeFramework(
      RemoveFrameworkRequest request)
      throws InvalidProtocolBufferException, DidException, ExecutionException,
          InterruptedException {
    return withMetadata(stub, request).removeFramework(request).get();
  }

  public RegisterMemberResponse registerMember(
      RegisterMemberRequest request)
      throws InvalidProtocolBufferException, DidException, ExecutionException,
          InterruptedException {
    return withMetadata(stub, request).registerMember(request).get();
  }

  public UnregisterMemberResponse unregisterIssuer(
      UnregisterMemberRequest request)
      throws InvalidProtocolBufferException, DidException, ExecutionException,
          InterruptedException {
    return withMetadata(stub, request).unregisterMember(request).get();
  }

  public ListenableFuture<GetMembershipStatusResponse> checkIssuerStatus(
      GetMembershipStatusRequest request)
      throws InvalidProtocolBufferException, DidException {
    return withMetadata(stub, request).getMembershipStatus(request);
  }

  public ListenableFuture<SearchRegistryResponse> searchRegistry()
      throws InvalidProtocolBufferException, DidException {
    return searchRegistry(SearchRegistryRequest.getDefaultInstance());
  }

  public ListenableFuture<SearchRegistryResponse> searchRegistry(
      SearchRegistryRequest request)
      throws InvalidProtocolBufferException, DidException {
    if (request.getQuery().isBlank())
      request =
          SearchRegistryRequest.newBuilder(request)
              .setQuery("SELECT * FROM c OFFSET 0 LIMIT 100")
              .build();
    return withMetadata(stub, request).searchRegistry(request);
  }

  public Iterator<FetchDataResponse> fetchData(
      FetchDataRequest request)
      throws InvalidProtocolBufferException, DidException {
    return withMetadata(stub2, request).fetchData(request);
  }
}
