import io.grpc.Channel;
import io.grpc.ManagedChannel;
import io.grpc.stub.MetadataUtils;
import io.grpc.stub.StreamObserver;
import trinsic.services.common.v1.ProviderGrpc;
import trinsic.services.common.v1.ProviderOuterClass;

import java.net.MalformedURLException;

public class TrinsicProviderService extends ServiceBase {
    public Channel channel;
    public ProviderGrpc.ProviderStub providerClient;

    public TrinsicProviderService(String serviceAddress) throws MalformedURLException {
        this.channel = Utilities.getChannel(serviceAddress);
        this.providerClient = ProviderGrpc.newStub(this.channel);
    }

    public void shutdown() throws InterruptedException {
        super.shutdown((ManagedChannel) this.channel);
    }

    public void inviteParticipant(ProviderOuterClass.InviteRequest request, StreamObserver<ProviderOuterClass.InviteResponse> observer) {
        // Ensure a contact method is set.
        if (request.getContactMethodCase() == ProviderOuterClass.InviteRequest.ContactMethodCase.CONTACTMETHOD_NOT_SET)
            throw new IllegalArgumentException("Contact method must be set.");

        this.providerClient.invite(request, observer);
    }

    public void invitationStatus(ProviderOuterClass.InvitationStatusRequest request, StreamObserver<ProviderOuterClass.InvitationStatusResponse > observer) {
        if (request.getInvitationId().strip().length() == 0)
            throw new IllegalArgumentException("Onboarding reference ID must be set.");

        this.providerClient.invitationStatus(request, observer);
    }
    private ProviderGrpc.ProviderStub getProviderClient() {
        return this.providerClient.withInterceptors(
                MetadataUtils.newAttachHeadersInterceptor(this.getMetadata()));
    }
}
