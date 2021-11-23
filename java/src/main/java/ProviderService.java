import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
import io.grpc.stub.MetadataUtils;
import trinsic.okapi.DidException;
import trinsic.services.account.v1.Account;
import trinsic.services.common.v1.CommonOuterClass;
import trinsic.services.common.v1.ProviderGrpc;
import trinsic.services.common.v1.ProviderOuterClass;

public class ProviderService extends ServiceBase {
    public ProviderGrpc.ProviderBlockingStub stub;

    public ProviderService(Account.AccountProfile accountProfile, CommonOuterClass.ServerConfig serverConfig) {
        super(accountProfile, serverConfig);
        this.stub = ProviderGrpc.newBlockingStub(this.getChannel());
    }

    public ProviderOuterClass.InviteResponse inviteParticipant(ProviderOuterClass.InviteRequest request) throws InvalidProtocolBufferException, DidException {
        // Ensure a contact method is set.
        if (request.getContactMethodCase() == ProviderOuterClass.InviteRequest.ContactMethodCase.CONTACTMETHOD_NOT_SET)
            throw new IllegalArgumentException("Contact method must be set.");

        return clientWithMetadata(request).invite(request);
    }

    public ProviderOuterClass.InvitationStatusResponse invitationStatus(ProviderOuterClass.InvitationStatusRequest request) throws InvalidProtocolBufferException, DidException {
        if (request.getInvitationId().strip().length() == 0)
            throw new IllegalArgumentException("Onboarding reference ID must be set.");

        return clientWithMetadata(request).invitationStatus(request);
    }
    private ProviderGrpc.ProviderBlockingStub clientWithMetadata(Message message) throws InvalidProtocolBufferException, DidException {
        return this.stub.withInterceptors(
                MetadataUtils.newAttachHeadersInterceptor(this.buildMetadata(message)));
    }
}
