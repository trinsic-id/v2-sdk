import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
import io.grpc.Channel;
import io.grpc.ManagedChannel;
import io.grpc.stub.MetadataUtils;
import io.grpc.stub.StreamObserver;
import trinsic.services.common.v1.CommonOuterClass;
import trinsic.services.trustregistry.v1.TrustRegistryGrpc;
import trinsic.services.trustregistry.v1.TrustRegistryOuterClass;

import java.time.Instant;

public class TrinsicTrustRegistryService extends ServiceBase {
    public Channel channel;
    public TrustRegistryGrpc.TrustRegistryBlockingStub trustRegistryClient;

    public TrinsicTrustRegistryService(CommonOuterClass.ServerConfig config) {
        this.channel = Utilities.getChannel(config);
        this.trustRegistryClient = TrustRegistryGrpc.newBlockingStub(this.channel);
    }

    @Override
    public void shutdown() throws InterruptedException {
        super.shutdown((ManagedChannel) this.channel);
    }

    public void registerGovernanceFramework(String governanceFramework, String description) {
        throw new RuntimeException();
    }

    public void registerIssuer(String issuerDid, String credentialType, String governanceFramework, Instant validFrom, Instant validUntil,
                               StreamObserver<TrustRegistryOuterClass.RegisterIssuerResponse> observer) throws InvalidProtocolBufferException, DidException {
        if (validFrom == null) validFrom = Instant.EPOCH;
        if (validUntil == null) validUntil = Instant.EPOCH;

        final var request = TrustRegistryOuterClass.RegisterIssuerRequest.newBuilder()
                .setDidUri(issuerDid)
                .setCredentialTypeUri(credentialType)
                .setGovernanceFrameworkUri(governanceFramework)
                .setValidFromUtc(validFrom.getEpochSecond())
                .setValidUntilUtc(validUntil.getEpochSecond()).build();
        getTrustRegistryClient(request).registerIssuer(request);
    }

    public void unregisterIssuer(String issuerDid, String credentialType, String governanceFramework, Instant validFrom, Instant validUntil,
                                 StreamObserver<TrustRegistryOuterClass.UnregisterIssuerResponse> observer) throws InvalidProtocolBufferException, DidException {
        if (validFrom == null) validFrom = Instant.EPOCH;
        if (validUntil == null) validUntil = Instant.EPOCH;

        final var request = TrustRegistryOuterClass.UnregisterIssuerRequest.newBuilder()
                .setDidUri(issuerDid)
                .setCredentialTypeUri(credentialType)
                .setGovernanceFrameworkUri(governanceFramework).build();
        getTrustRegistryClient(request).unregisterIssuer(request);
    }

    public void registerVerifier(String verifierDid, String presentationType, String governanceFramework, Instant validFrom, Instant validUntil,
                                 StreamObserver<TrustRegistryOuterClass.RegisterVerifierResponse> observer) throws InvalidProtocolBufferException, DidException {
        if (validFrom == null) validFrom = Instant.EPOCH;
        if (validUntil == null) validUntil = Instant.EPOCH;

        final TrustRegistryOuterClass.RegisterVerifierRequest request = TrustRegistryOuterClass.RegisterVerifierRequest.newBuilder()
                .setDidUri(verifierDid)
                .setPresentationTypeUri(presentationType)
                .setGovernanceFrameworkUri(governanceFramework)
                .setValidFromUtc(validFrom.getEpochSecond())
                .setValidUntilUtc(validUntil.getEpochSecond()).build();
        getTrustRegistryClient(request).registerVerifier(request);
    }

    public void unregisterVerifier(String verifierDid, String presentationType, String governanceFramework,
                                   Instant validFrom, Instant validUntil, StreamObserver<TrustRegistryOuterClass.UnregisterVerifierResponse> observer) throws InvalidProtocolBufferException, DidException {
        if (validFrom == null) validFrom = Instant.EPOCH;
        if (validUntil == null) validUntil = Instant.EPOCH;

        final TrustRegistryOuterClass.UnregisterVerifierRequest request = TrustRegistryOuterClass.UnregisterVerifierRequest.newBuilder()
                .setDidUri(verifierDid)
                .setPresentationTypeUri(presentationType)
                .setGovernanceFrameworkUri(governanceFramework)
                .build();
        getTrustRegistryClient(request).unregisterVerifier(request);
    }

    public void checkIssuerStatus(String issuerDid, String credentialType, String governanceFramework,
                                  StreamObserver<TrustRegistryOuterClass.CheckIssuerStatusResponse> observer) throws InvalidProtocolBufferException, DidException {
        final TrustRegistryOuterClass.CheckIssuerStatusRequest request = TrustRegistryOuterClass.CheckIssuerStatusRequest.newBuilder()
                .setDidUri(issuerDid)
                .setCredentialTypeUri(credentialType)
                .setGovernanceFrameworkUri(governanceFramework).build();
        getTrustRegistryClient(request).checkIssuerStatus(request);
    }

    public void checkVerifierStatus(String verifierDid, String presentationType, String governanceFramework,
                                    StreamObserver<TrustRegistryOuterClass.CheckVerifierStatusResponse> observer) throws InvalidProtocolBufferException, DidException {
        final TrustRegistryOuterClass.CheckVerifierStatusRequest request = TrustRegistryOuterClass.CheckVerifierStatusRequest.newBuilder()
                .setDidUri(verifierDid)
                .setPresentationTypeUri(presentationType)
                .setGovernanceFrameworkUri(governanceFramework).build();
        getTrustRegistryClient(request).checkVerifierStatus(request);
    }

    public void searchRegistry(String query, StreamObserver<TrustRegistryOuterClass.SearchRegistryResponse> observer) throws InvalidProtocolBufferException, DidException {
        if (query == null)
            query = "SELECT * FROM c";
        final TrustRegistryOuterClass.SearchRegistryRequest request = TrustRegistryOuterClass.SearchRegistryRequest.newBuilder()
                .setQuery(query).build();
        getTrustRegistryClient(request).searchRegistry(request);
    }

    private TrustRegistryGrpc.TrustRegistryBlockingStub getTrustRegistryClient(Message message) throws InvalidProtocolBufferException, DidException {
        return this.trustRegistryClient.withInterceptors(
                MetadataUtils.newAttachHeadersInterceptor(this.getMetadata(message)));
    }
}
