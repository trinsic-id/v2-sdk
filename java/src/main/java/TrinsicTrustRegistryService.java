import io.grpc.Channel;
import io.grpc.ManagedChannel;
import io.grpc.stub.MetadataUtils;
import io.grpc.stub.StreamObserver;
import trinsic.services.trustregistry.v1.TrustRegistryGrpc;
import trinsic.services.trustregistry.v1.TrustRegistryOuterClass;

import java.net.MalformedURLException;
import java.time.Instant;

public class TrinsicTrustRegistryService extends ServiceBase {
    public Channel channel;
    public TrustRegistryGrpc.TrustRegistryStub trustRegistryClient;

    public TrinsicTrustRegistryService(String url) throws MalformedURLException {
        this.channel = Utilities.getChannel(url);
        this.trustRegistryClient = TrustRegistryGrpc.newStub(this.channel);
    }

    @Override
    public void shutdown() throws InterruptedException {
        super.shutdown((ManagedChannel) this.channel);
    }

    public void registerGovernanceFramework(String governanceFramework, String description) {
        throw new RuntimeException();
    }

    public void registerIssuer(String issuerDid, String credentialType, String governanceFramework, Instant validFrom, Instant validUntil,
                               StreamObserver<TrustRegistryOuterClass.RegisterIssuerResponse> observer) {
        if (validFrom == null) validFrom = Instant.EPOCH;
        if (validUntil == null) validUntil = Instant.EPOCH;

        getTrustRegistryClient().registerIssuer(TrustRegistryOuterClass.RegisterIssuerRequest.newBuilder()
                .setDidUri(issuerDid)
                .setCredentialTypeUri(credentialType)
                .setGovernanceFrameworkUri(governanceFramework)
                .setValidFromUtc(validFrom.getEpochSecond())
                .setValidUntilUtc(validUntil.getEpochSecond()).build(), observer);
    }

    public void unregisterIssuer(String issuerDid, String credentialType, String governanceFramework, Instant validFrom, Instant validUntil,
                                 StreamObserver<TrustRegistryOuterClass.UnregisterIssuerResponse> observer) {
        if (validFrom == null) validFrom = Instant.EPOCH;
        if (validUntil == null) validUntil = Instant.EPOCH;

        getTrustRegistryClient().unregisterIssuer(TrustRegistryOuterClass.UnregisterIssuerRequest.newBuilder()
                .setDidUri(issuerDid)
                .setCredentialTypeUri(credentialType)
                .setGovernanceFrameworkUri(governanceFramework).build(), observer);
    }

    public void registerVerifier(String verifierDid, String presentationType, String governanceFramework, Instant validFrom, Instant validUntil,
                                 StreamObserver<TrustRegistryOuterClass.RegisterVerifierResponse> observer) {
        if (validFrom == null) validFrom = Instant.EPOCH;
        if (validUntil == null) validUntil = Instant.EPOCH;

        getTrustRegistryClient().registerVerifier(TrustRegistryOuterClass.RegisterVerifierRequest.newBuilder()
                .setDidUri(verifierDid)
                .setPresentationTypeUri(presentationType)
                .setGovernanceFrameworkUri(governanceFramework)
                .setValidFromUtc(validFrom.getEpochSecond())
                .setValidUntilUtc(validUntil.getEpochSecond()).build(), observer);
    }

    public void unregisterVerifier(String verifierDid, String presentationType, String governanceFramework,
                                   Instant validFrom, Instant validUntil, StreamObserver<TrustRegistryOuterClass.UnregisterVerifierResponse> observer) {
        if (validFrom == null) validFrom = Instant.EPOCH;
        if (validUntil == null) validUntil = Instant.EPOCH;

        getTrustRegistryClient().unregisterVerifier(TrustRegistryOuterClass.UnregisterVerifierRequest.newBuilder()
                .setDidUri(verifierDid)
                .setPresentationTypeUri(presentationType)
                .setGovernanceFrameworkUri(governanceFramework)
                .build(), observer);
    }

    public void checkIssuerStatus(String issuerDid, String credentialType, String governanceFramework,
                                  StreamObserver<TrustRegistryOuterClass.CheckIssuerStatusResponse> observer) {
        getTrustRegistryClient().checkIssuerStatus(TrustRegistryOuterClass.CheckIssuerStatusRequest.newBuilder()
                .setDidUri(issuerDid)
                .setCredentialTypeUri(credentialType)
                .setGovernanceFrameworkUri(governanceFramework).build(), observer);
    }

    public void checkVerifierStatus(String verifierDid, String presentationType, String governanceFramework,
                                    StreamObserver<TrustRegistryOuterClass.CheckVerifierStatusResponse> observer) {
        getTrustRegistryClient().checkVerifierStatus(TrustRegistryOuterClass.CheckVerifierStatusRequest.newBuilder()
                .setDidUri(verifierDid)
                .setPresentationTypeUri(presentationType)
                .setGovernanceFrameworkUri(governanceFramework).build(), observer);
    }

    public void searchRegistry(String query, StreamObserver<TrustRegistryOuterClass.SearchRegistryResponse> observer) {
        if (query == null)
            query = "SELECT * FROM c";
        getTrustRegistryClient().searchRegistry(TrustRegistryOuterClass.SearchRegistryRequest.newBuilder()
                .setQuery(query).build(), observer);
    }

    private TrustRegistryGrpc.TrustRegistryStub getTrustRegistryClient() {
        return this.trustRegistryClient.withInterceptors(
                MetadataUtils.newAttachHeadersInterceptor(this.getMetadata()));
    }
}
