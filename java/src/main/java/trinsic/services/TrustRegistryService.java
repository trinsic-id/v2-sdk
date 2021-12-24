package trinsic.services;

import com.google.common.util.concurrent.ListenableFuture;
import com.google.protobuf.InvalidProtocolBufferException;
import io.grpc.Channel;
import trinsic.okapi.DidException;
import trinsic.services.account.v1.AccountOuterClass;
import trinsic.services.common.v1.CommonOuterClass;
import trinsic.services.trustregistry.v1.TrustRegistryGrpc;
import trinsic.services.trustregistry.v1.TrustRegistryOuterClass;

import java.time.Instant;
import java.util.concurrent.ExecutionException;

public class TrustRegistryService extends ServiceBase {
    public TrustRegistryGrpc.TrustRegistryFutureStub stub;

    public TrustRegistryService(AccountOuterClass.AccountProfile accountProfile) {
        this(accountProfile, null, null);
    }

    public TrustRegistryService(AccountOuterClass.AccountProfile accountProfile, CommonOuterClass.ServerConfig serverConfig) {
        this(accountProfile, serverConfig, null);
    }

    public TrustRegistryService(AccountOuterClass.AccountProfile accountProfile, CommonOuterClass.ServerConfig serverConfig, Channel existingChannel) {
        super(accountProfile, serverConfig, existingChannel);
        this.stub = TrustRegistryGrpc.newFutureStub(this.getChannel());
    }

    public void registerGovernanceFramework(String governanceFramework, String description) {
        throw new RuntimeException();
    }

    public void registerIssuer(TrustRegistryOuterClass.RegisterIssuerRequest request) throws InvalidProtocolBufferException, DidException, ExecutionException, InterruptedException {
        var response = withMetadata(stub, request).registerIssuer(request).get();
        if (response.getStatus() != CommonOuterClass.ResponseStatus.SUCCESS)
            throw new RuntimeException("cannot register issuer: code " + response.getStatus());
    }

    public ListenableFuture<TrustRegistryOuterClass.UnregisterIssuerResponse> unregisterIssuer(String issuerDid, String credentialType, String governanceFramework, Instant validFrom, Instant validUntil) throws InvalidProtocolBufferException, DidException {
        if (validFrom == null) validFrom = Instant.MIN;
        if (validUntil == null) validUntil = Instant.MAX;

        final var request = TrustRegistryOuterClass.UnregisterIssuerRequest.newBuilder().setDidUri(issuerDid).setCredentialTypeUri(credentialType).setGovernanceFrameworkUri(governanceFramework).build();
        return withMetadata(stub, request).unregisterIssuer(request);
    }

    public void registerVerifier(TrustRegistryOuterClass.RegisterVerifierRequest request) throws InvalidProtocolBufferException, DidException, ExecutionException, InterruptedException {
        var response = withMetadata(stub, request).registerVerifier(request).get();
        if (response.getStatus() != CommonOuterClass.ResponseStatus.SUCCESS)
            throw new RuntimeException("cannot register issuer: code " + response.getStatus());
    }

    public ListenableFuture<TrustRegistryOuterClass.UnregisterVerifierResponse> unregisterVerifier(String verifierDid, String presentationType, String governanceFramework, Instant validFrom, Instant validUntil) throws InvalidProtocolBufferException, DidException {
        if (validFrom == null) validFrom = Instant.MIN;
        if (validUntil == null) validUntil = Instant.MAX;

        final TrustRegistryOuterClass.UnregisterVerifierRequest request = TrustRegistryOuterClass.UnregisterVerifierRequest.newBuilder().setDidUri(verifierDid).setPresentationTypeUri(presentationType).setGovernanceFrameworkUri(governanceFramework).build();
        return withMetadata(stub, request).unregisterVerifier(request);
    }

    public ListenableFuture<TrustRegistryOuterClass.CheckIssuerStatusResponse> checkIssuerStatus(TrustRegistryOuterClass.CheckIssuerStatusRequest request) throws InvalidProtocolBufferException, DidException {
        return withMetadata(stub, request).checkIssuerStatus(request);
    }

    public ListenableFuture<TrustRegistryOuterClass.CheckVerifierStatusResponse> checkVerifierStatus(TrustRegistryOuterClass.CheckVerifierStatusRequest request) throws InvalidProtocolBufferException, DidException {
        return withMetadata(stub, request).checkVerifierStatus(request);
    }

    public ListenableFuture<TrustRegistryOuterClass.SearchRegistryResponse> searchRegistry(String query) throws InvalidProtocolBufferException, DidException {
        if (query == null) query = "SELECT * FROM c";
        final TrustRegistryOuterClass.SearchRegistryRequest request = TrustRegistryOuterClass.SearchRegistryRequest.newBuilder().setQuery(query).build();
        return withMetadata(stub, request).searchRegistry(request);
    }
}
