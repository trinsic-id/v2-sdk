package trinsic.services;

import com.google.common.util.concurrent.ListenableFuture;
import com.google.protobuf.InvalidProtocolBufferException;
import trinsic.okapi.DidException;
import trinsic.sdk.v1.Options;
import trinsic.services.common.v1.CommonOuterClass;
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
            var url = new URL(request.getGovernanceFramework().getGovernanceFrameworkUri());
        } catch (MalformedURLException e) {
            throw new IllegalArgumentException("invalid uri string", e);
        }
        return withMetadata(stub, request).addFramework(request);
    }

    public void removeGovernanceFramework(TrustRegistryOuterClass.RemoveFrameworkRequest request) throws InvalidProtocolBufferException, DidException, ExecutionException, InterruptedException {
        var response = withMetadata(stub, request).removeFramework(request).get();
        if (response.getStatus() != CommonOuterClass.ResponseStatus.SUCCESS)
            throw new RuntimeException("cannot remove governance framework: code " + response.getStatus());
    }

    public void registerIssuer(TrustRegistryOuterClass.RegisterIssuerRequest request) throws InvalidProtocolBufferException, DidException, ExecutionException, InterruptedException {
        var response = withMetadata(stub, request).registerIssuer(request).get();
        if (response.getStatus() != CommonOuterClass.ResponseStatus.SUCCESS)
            throw new RuntimeException("cannot register issuer: code " + response.getStatus());
    }

    public void unregisterIssuer(TrustRegistryOuterClass.UnregisterIssuerRequest request) throws InvalidProtocolBufferException, DidException, ExecutionException, InterruptedException {
        var response = withMetadata(stub, request).unregisterIssuer(request).get();
        if (response.getStatus() != CommonOuterClass.ResponseStatus.SUCCESS)
            throw new RuntimeException("cannot unregister verifier: code " + response.getStatus());
    }

    public void registerVerifier(TrustRegistryOuterClass.RegisterVerifierRequest request) throws InvalidProtocolBufferException, DidException, ExecutionException, InterruptedException {
        var response = withMetadata(stub, request).registerVerifier(request).get();
        if (response.getStatus() != CommonOuterClass.ResponseStatus.SUCCESS)
            throw new RuntimeException("cannot register verifier: code " + response.getStatus());
    }

    public void unregisterVerifier(TrustRegistryOuterClass.UnregisterVerifierRequest request) throws InvalidProtocolBufferException, DidException, ExecutionException, InterruptedException {
        var response = withMetadata(stub, request).unregisterVerifier(request).get();
        if (response.getStatus() != CommonOuterClass.ResponseStatus.SUCCESS)
            throw new RuntimeException("cannot unregister verifier: code " + response.getStatus());
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
