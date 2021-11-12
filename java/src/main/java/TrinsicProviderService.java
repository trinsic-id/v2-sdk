import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
import io.grpc.Channel;
import io.grpc.ManagedChannel;
import io.grpc.stub.MetadataUtils;
import trinsic.services.common.v1.CommonOuterClass;
import trinsic.services.common.v1.ProviderGrpc;
import trinsic.services.common.v1.ProviderOuterClass;

public class TrinsicProviderService extends ServiceBase {
    public Channel channel;
    public ProviderGrpc.ProviderBlockingStub providerClient;

    public TrinsicProviderService(CommonOuterClass.ServerConfig config) {
        this.channel = Utilities.getChannel(config);
        this.providerClient = ProviderGrpc.newBlockingStub(this.channel);
    }

    public void shutdown() throws InterruptedException {
        super.shutdown((ManagedChannel) this.channel);
    }

    public ProviderOuterClass.InviteResponse inviteParticipant(ProviderOuterClass.InviteRequest request) throws InvalidProtocolBufferException, DidException {
        // Ensure a contact method is set.
        if (request.getContactMethodCase() == ProviderOuterClass.InviteRequest.ContactMethodCase.CONTACTMETHOD_NOT_SET)
            throw new IllegalArgumentException("Contact method must be set.");

        return getProviderClient(request).invite(request);
    }

    public ProviderOuterClass.InvitationStatusResponse invitationStatus(ProviderOuterClass.InvitationStatusRequest request) throws InvalidProtocolBufferException, DidException {
        if (request.getInvitationId().strip().length() == 0)
            throw new IllegalArgumentException("Onboarding reference ID must be set.");

        return getProviderClient(request).invitationStatus(request);
    }
    private ProviderGrpc.ProviderBlockingStub getProviderClient(Message message) throws InvalidProtocolBufferException, DidException {
        return this.providerClient.withInterceptors(
                MetadataUtils.newAttachHeadersInterceptor(this.getMetadata(message)));
    }
}
