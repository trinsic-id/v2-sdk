package trinsic.services;

import com.google.common.util.concurrent.ListenableFuture;
import com.google.protobuf.InvalidProtocolBufferException;
import trinsic.okapi.DidException;
import trinsic.sdk.v1.Options;
import trinsic.services.common.v1.ProviderGrpc;
import trinsic.services.common.v1.ProviderOuterClass;

public class ProviderService extends ServiceBase {
    public ProviderGrpc.ProviderFutureStub stub;

    public ProviderService() { this(null); }

    public ProviderService(Options.ServiceOptions options) {
        super(options);
        this.stub = ProviderGrpc.newFutureStub(this.getChannel());
    }

    public ListenableFuture<ProviderOuterClass.InviteResponse> inviteParticipant(ProviderOuterClass.InviteRequest request) throws InvalidProtocolBufferException, DidException {
        // Ensure a contact method is set.
//        if (request.getContactMethodCase() == ProviderOuterClass.InviteRequest.ContactMethodCase.CONTACTMETHOD_NOT_SET)
//            throw new IllegalArgumentException("Contact method must be set.");

        return withMetadata(stub, request).invite(request);
    }

//    public ListenableFuture<ProviderOuterClass.AcceptInviteResponse> acceptInvite(ProviderOuterClass.AcceptInviteRequest request) throws InvalidProtocolBufferException, DidException {
//        return withMetadata(stub, request).acceptInvite(request);
//    }

    public ListenableFuture<ProviderOuterClass.InvitationStatusResponse> invitationStatus(ProviderOuterClass.InvitationStatusRequest request) throws InvalidProtocolBufferException, DidException {
        if (request.getInvitationId().strip().length() == 0)
            throw new IllegalArgumentException("Onboarding reference ID must be set.");

        return withMetadata(stub, request).invitationStatus(request);
    }

    public ListenableFuture<ProviderOuterClass.CreateEcosystemResponse> createEcosystem(ProviderOuterClass.CreateEcosystemRequest request) throws InvalidProtocolBufferException, DidException {
        return stub.createEcosystem(request);
    }

//    public ListenableFuture<List<ProviderOuterClass.Ecosystem>> listEcosystems(ProviderOuterClass.ListEcosystemsRequest request) throws InvalidProtocolBufferException, DidException {
//        var response = withMetadata(stub, request).listEcosystems(request);
//        return Futures.transform(response, ProviderOuterClass.ListEcosystemsResponse::getEcosystemList, Executors.newSingleThreadExecutor());
//    }
}
