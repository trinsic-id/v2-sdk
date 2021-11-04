import io.grpc.Channel;
import io.grpc.ManagedChannel;
import trinsic.services.trustregistry.v1.TrustRegistryGrpc;

public class TrinsicTrustRegistryService extends ServiceBase {
    public Channel channel;
    public TrustRegistryGrpc.TrustRegistryStub trustRegistryClient;

    @Override
    public void shutdown() throws InterruptedException {
        super.shutdown((ManagedChannel) this.channel);
    }
}
