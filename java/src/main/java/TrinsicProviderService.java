import io.grpc.Channel;
import io.grpc.stub.MetadataUtils;
import trinsic.services.ProviderGrpc;
import trinsic.services.ProviderService;

import java.net.MalformedURLException;

public class TrinsicProviderService extends ServiceBase {
    public Channel channel;
    public ProviderGrpc.ProviderBlockingStub providerClient;

    public TrinsicProviderService(String serviceAddress, Channel channel) throws MalformedURLException {
        channel = Utilities.getChannel(serviceAddress, channel);
        this.channel = channel;
        this.providerClient = ProviderGrpc.newBlockingStub(this.channel);
    }

    public ProviderService.InviteResponse inviteParticipant(ProviderService.InviteRequest request) {
        // Ensure a contact method is set.
        if (request.getContactMethodCase() == ProviderService.InviteRequest.ContactMethodCase.CONTACTMETHOD_NOT_SET)
            throw new IllegalArgumentException("Contact method must be set.");

        return this.providerClient.invite(request);
    }

    public ProviderService.InvitationStatusResponse invitationStatus(ProviderService.InvitationStatusRequest request) {
        if (request.getInvitationId().strip().length() == 0)
            throw new IllegalArgumentException("Onboarding reference ID must be set.");

        return this.providerClient.invitationStatus(request);
    }
    private ProviderGrpc.ProviderBlockingStub getProviderClient() {
        return this.providerClient.withInterceptors(
                MetadataUtils.newAttachHeadersInterceptor(this.getMetadata()));
    }
}
