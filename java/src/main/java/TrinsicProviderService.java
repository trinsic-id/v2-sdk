import io.grpc.Channel;
import io.grpc.ManagedChannel;
import io.grpc.stub.MetadataUtils;
import trinsic.services.common.v1.ProviderGrpc;
import trinsic.services.common.v1.ProviderOuterClass;

import java.net.MalformedURLException;

public class TrinsicProviderService extends ServiceBase {
    public Channel channel;
    public ProviderGrpc.ProviderBlockingStub providerClient;

    public TrinsicProviderService(String serviceAddress, Channel channel) throws MalformedURLException {
        channel = Utilities.getChannel(serviceAddress, channel);
        this.channel = channel;
        this.providerClient = ProviderGrpc.newBlockingStub(this.channel);
    }

    public void shutdown() throws InterruptedException {
        super.shutdown((ManagedChannel) this.channel);
    }

    public ProviderOuterClass.InviteResponse inviteParticipant(ProviderOuterClass.InviteRequest request) {
        // Ensure a contact method is set.
        if (request.getContactMethodCase() == ProviderOuterClass.InviteRequest.ContactMethodCase.CONTACTMETHOD_NOT_SET)
            throw new IllegalArgumentException("Contact method must be set.");

        return this.providerClient.invite(request);
    }

    public ProviderOuterClass.InvitationStatusResponse invitationStatus(ProviderOuterClass.InvitationStatusRequest request) {
        if (request.getInvitationId().strip().length() == 0)
            throw new IllegalArgumentException("Onboarding reference ID must be set.");

        return this.providerClient.invitationStatus(request);
    }
    private ProviderGrpc.ProviderBlockingStub getProviderClient() {
        return this.providerClient.withInterceptors(
                MetadataUtils.newAttachHeadersInterceptor(this.getMetadata()));
    }
}
