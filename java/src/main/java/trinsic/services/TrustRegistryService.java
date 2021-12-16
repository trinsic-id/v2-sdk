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

public class TrustRegistryService extends ServiceBase {
    public TrustRegistryGrpc.TrustRegistryFutureStub stub;

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

    public ListenableFuture<TrustRegistryOuterClass.RegisterIssuerResponse> registerIssuer(String issuerDid, String credentialType, String governanceFramework, Instant validFrom, Instant validUntil) throws InvalidProtocolBufferException, DidException {
        if (validFrom == null) validFrom = Instant.EPOCH;
        if (validUntil == null) validUntil = Instant.EPOCH;

        final var request = TrustRegistryOuterClass.RegisterIssuerRequest.newBuilder()
                .setDidUri(issuerDid)
                .setCredentialTypeUri(credentialType)
                .setGovernanceFrameworkUri(governanceFramework)
                .setValidFromUtc(validFrom.getEpochSecond())
                .setValidUntilUtc(validUntil.getEpochSecond()).build();
        return withMetadata(stub, request).registerIssuer(request);
    }

    public ListenableFuture<TrustRegistryOuterClass.UnregisterIssuerResponse> unregisterIssuer(String issuerDid, String credentialType, String governanceFramework, Instant validFrom, Instant validUntil) throws InvalidProtocolBufferException, DidException {
        if (validFrom == null) validFrom = Instant.EPOCH;
        if (validUntil == null) validUntil = Instant.EPOCH;

        final var request = TrustRegistryOuterClass.UnregisterIssuerRequest.newBuilder()
                .setDidUri(issuerDid)
                .setCredentialTypeUri(credentialType)
                .setGovernanceFrameworkUri(governanceFramework).build();
        return withMetadata(stub, request).unregisterIssuer(request);
    }

    public ListenableFuture<TrustRegistryOuterClass.RegisterVerifierResponse> registerVerifier(String verifierDid, String presentationType, String governanceFramework, Instant validFrom, Instant validUntil) throws InvalidProtocolBufferException, DidException {
        if (validFrom == null) validFrom = Instant.EPOCH;
        if (validUntil == null) validUntil = Instant.EPOCH;

        final TrustRegistryOuterClass.RegisterVerifierRequest request = TrustRegistryOuterClass.RegisterVerifierRequest.newBuilder()
                .setDidUri(verifierDid)
                .setPresentationTypeUri(presentationType)
                .setGovernanceFrameworkUri(governanceFramework)
                .setValidFromUtc(validFrom.getEpochSecond())
                .setValidUntilUtc(validUntil.getEpochSecond()).build();
        return withMetadata(stub, request).registerVerifier(request);
    }

    public ListenableFuture<TrustRegistryOuterClass.UnregisterVerifierResponse> unregisterVerifier(String verifierDid, String presentationType, String governanceFramework,
                                                                                                   Instant validFrom, Instant validUntil) throws InvalidProtocolBufferException, DidException {
        if (validFrom == null) validFrom = Instant.EPOCH;
        if (validUntil == null) validUntil = Instant.EPOCH;

        final TrustRegistryOuterClass.UnregisterVerifierRequest request = TrustRegistryOuterClass.UnregisterVerifierRequest.newBuilder()
                .setDidUri(verifierDid)
                .setPresentationTypeUri(presentationType)
                .setGovernanceFrameworkUri(governanceFramework)
                .build();
        return withMetadata(stub, request).unregisterVerifier(request);
    }

    public ListenableFuture<TrustRegistryOuterClass.CheckIssuerStatusResponse> checkIssuerStatus(String issuerDid, String credentialType, String governanceFramework) throws InvalidProtocolBufferException, DidException {
        final TrustRegistryOuterClass.CheckIssuerStatusRequest request = TrustRegistryOuterClass.CheckIssuerStatusRequest.newBuilder()
                .setDidUri(issuerDid)
                .setCredentialTypeUri(credentialType)
                .setGovernanceFrameworkUri(governanceFramework).build();
        return withMetadata(stub, request).checkIssuerStatus(request);
    }

    public ListenableFuture<TrustRegistryOuterClass.CheckVerifierStatusResponse> checkVerifierStatus(String verifierDid, String presentationType, String governanceFramework) throws InvalidProtocolBufferException, DidException {
        final TrustRegistryOuterClass.CheckVerifierStatusRequest request = TrustRegistryOuterClass.CheckVerifierStatusRequest.newBuilder()
                .setDidUri(verifierDid)
                .setPresentationTypeUri(presentationType)
                .setGovernanceFrameworkUri(governanceFramework).build();
        return withMetadata(stub, request).checkVerifierStatus(request);
    }

    public ListenableFuture<TrustRegistryOuterClass.SearchRegistryResponse> searchRegistry(String query) throws InvalidProtocolBufferException, DidException {
        if (query == null)
            query = "SELECT * FROM c";
        final TrustRegistryOuterClass.SearchRegistryRequest request = TrustRegistryOuterClass.SearchRegistryRequest.newBuilder()
                .setQuery(query).build();
        return withMetadata(stub, request).searchRegistry(request);
    }
}
