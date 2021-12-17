package trinsic.services;

import com.google.common.util.concurrent.ListenableFuture;
import com.google.protobuf.InvalidProtocolBufferException;
import io.grpc.Channel;
import trinsic.okapi.DidException;
import trinsic.services.account.v1.AccountOuterClass;
import trinsic.services.common.v1.CommonOuterClass;
import trinsic.services.common.v1.ProviderGrpc;
import trinsic.services.common.v1.ProviderOuterClass;

public class ProviderService extends ServiceBase {
    public ProviderGrpc.ProviderFutureStub stub;

    public ProviderService(AccountOuterClass.AccountProfile accountProfile, CommonOuterClass.ServerConfig serverConfig) {
        this(accountProfile, serverConfig, null);
    }

    public ProviderService(AccountOuterClass.AccountProfile accountProfile, CommonOuterClass.ServerConfig serverConfig, Channel existingChannel) {
        super(accountProfile, serverConfig, existingChannel);
        this.stub = ProviderGrpc.newFutureStub(this.getChannel());
    }

    public ListenableFuture<ProviderOuterClass.InviteResponse> inviteParticipant(ProviderOuterClass.InviteRequest request) throws InvalidProtocolBufferException, DidException {
        // Ensure a contact method is set.
        if (request.getContactMethodCase() == ProviderOuterClass.InviteRequest.ContactMethodCase.CONTACTMETHOD_NOT_SET)
            throw new IllegalArgumentException("Contact method must be set.");

        return withMetadata(stub, request).invite(request);
    }

    public ListenableFuture<ProviderOuterClass.InvitationStatusResponse> invitationStatus(ProviderOuterClass.InvitationStatusRequest request) throws InvalidProtocolBufferException, DidException {
        if (request.getInvitationId().strip().length() == 0)
            throw new IllegalArgumentException("Onboarding reference ID must be set.");

        return withMetadata(stub, request).invitationStatus(request);
    }
}
