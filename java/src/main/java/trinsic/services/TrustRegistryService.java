package trinsic.services;

import com.google.common.util.concurrent.ListenableFuture;
import com.google.protobuf.InvalidProtocolBufferException;
import trinsic.okapi.DidException;
import trinsic.sdk.v1.Options;
import trinsic.services.trustregistry.v1.TrustRegistryGrpc;
import trinsic.services.trustregistry.v1.TrustRegistryOuterClass;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.Iterator;
import java.util.concurrent.ExecutionException;

public class TrustRegistryService extends ServiceBase {
    public TrustRegistryGrpc.TrustRegistryFutureStub stub;
    // We only use the blocking stub for server-side streaming call.
    public TrustRegistryGrpc.TrustRegistryBlockingStub stub2;

    public TrustRegistryService() { this(null); }

    public TrustRegistryService(Options.ServiceOptions options) {
        super(options);
        this.stub = TrustRegistryGrpc.newFutureStub(this.getChannel());
        this.stub2 = TrustRegistryGrpc.newBlockingStub(this.getChannel());
    }

    public ListenableFuture<TrustRegistryOuterClass.AddFrameworkResponse> registerGovernanceFramework(TrustRegistryOuterClass.AddFrameworkRequest request) throws InvalidProtocolBufferException, DidException {
        try {
            new URL(request.getGovernanceFramework().getGovernanceFrameworkUri());
        } catch (MalformedURLException e) {
            throw new IllegalArgumentException("invalid uri string", e);
        }
        return withMetadata(stub, request).addFramework(request);
    }

    public TrustRegistryOuterClass.RemoveFrameworkResponse removeGovernanceFramework(TrustRegistryOuterClass.RemoveFrameworkRequest request) throws InvalidProtocolBufferException, DidException, ExecutionException, InterruptedException {
        return withMetadata(stub, request).removeFramework(request).get();
    }

    public TrustRegistryOuterClass.RegisterIssuerResponse registerIssuer(TrustRegistryOuterClass.RegisterIssuerRequest request) throws InvalidProtocolBufferException, DidException, ExecutionException, InterruptedException {
        return withMetadata(stub, request).registerIssuer(request).get();
    }

    public TrustRegistryOuterClass.UnregisterIssuerResponse unregisterIssuer(TrustRegistryOuterClass.UnregisterIssuerRequest request) throws InvalidProtocolBufferException, DidException, ExecutionException, InterruptedException {
        return withMetadata(stub, request).unregisterIssuer(request).get();
    }

    public TrustRegistryOuterClass.RegisterVerifierResponse registerVerifier(TrustRegistryOuterClass.RegisterVerifierRequest request) throws InvalidProtocolBufferException, DidException, ExecutionException, InterruptedException {
        return withMetadata(stub, request).registerVerifier(request).get();
    }

    public TrustRegistryOuterClass.UnregisterVerifierResponse unregisterVerifier(TrustRegistryOuterClass.UnregisterVerifierRequest request) throws InvalidProtocolBufferException, DidException, ExecutionException, InterruptedException {
        return withMetadata(stub, request).unregisterVerifier(request).get();
    }

    public ListenableFuture<TrustRegistryOuterClass.CheckIssuerStatusResponse> checkIssuerStatus(TrustRegistryOuterClass.CheckIssuerStatusRequest request) throws InvalidProtocolBufferException, DidException {
        return withMetadata(stub, request).checkIssuerStatus(request);
    }

    public ListenableFuture<TrustRegistryOuterClass.CheckVerifierStatusResponse> checkVerifierStatus(TrustRegistryOuterClass.CheckVerifierStatusRequest request) throws InvalidProtocolBufferException, DidException {
        return withMetadata(stub, request).checkVerifierStatus(request);
    }

    public ListenableFuture<TrustRegistryOuterClass.SearchRegistryResponse> searchRegistry() throws InvalidProtocolBufferException, DidException {
        return searchRegistry(TrustRegistryOuterClass.SearchRegistryRequest.getDefaultInstance());
    }

    public ListenableFuture<TrustRegistryOuterClass.SearchRegistryResponse> searchRegistry(TrustRegistryOuterClass.SearchRegistryRequest request) throws InvalidProtocolBufferException, DidException {
        if (request.getQuery().isBlank()) request = TrustRegistryOuterClass.SearchRegistryRequest.newBuilder(request).setQuery("SELECT * FROM c").build();
        return withMetadata(stub, request).searchRegistry(request);
    }

    public Iterator<TrustRegistryOuterClass.FetchDataResponse> fetchData(TrustRegistryOuterClass.FetchDataRequest request) throws InvalidProtocolBufferException, DidException {
        return withMetadata(stub2, request).fetchData(request);
    }
}
