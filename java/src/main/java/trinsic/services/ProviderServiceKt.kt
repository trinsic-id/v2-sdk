package trinsic.services

import com.google.protobuf.InvalidProtocolBufferException
import io.grpc.Channel
import trinsic.okapi.DidException
import trinsic.services.account.v1.AccountOuterClass
import trinsic.services.common.v1.CommonOuterClass
import trinsic.services.common.v1.ProviderGrpcKt
import trinsic.services.common.v1.ProviderOuterClass.*

class ProviderServiceKt(
    accountProfile: AccountOuterClass.AccountProfile?,
    serverConfig: CommonOuterClass.ServerConfig?,
    channel: Channel?
) : ServiceBase(accountProfile, serverConfig, channel) {
    var stub = ProviderGrpcKt.ProviderCoroutineStub(this.channel)

    @Throws(InvalidProtocolBufferException::class, DidException::class)
    suspend fun inviteParticipant(request: InviteRequest): InviteResponse {
        // Ensure a contact method is set.
        require(request.contactMethodCase != InviteRequest.ContactMethodCase.CONTACTMETHOD_NOT_SET) { "Contact method must be set." }
        return withMetadata(stub, request).invite(request)
    }

    @Throws(InvalidProtocolBufferException::class, DidException::class)
    suspend fun acceptInvite(request: AcceptInviteRequest): AcceptInviteResponse {
        return withMetadata(stub, request).acceptInvite(request)
    }

    @Throws(InvalidProtocolBufferException::class, DidException::class)
    suspend fun invitationStatus(request: InvitationStatusRequest): InvitationStatusResponse {
        require(request.invitationId.isNotEmpty()) { "Onboarding reference ID must be set." }
        return withMetadata(stub, request).invitationStatus(request)
    }

    @Throws(InvalidProtocolBufferException::class, DidException::class)
    suspend fun createEcosystem(request: CreateEcosystemRequest): CreateEcosystemResponse {
        return withMetadata(stub, request).createEcosystem(request)
    }

    @Throws(InvalidProtocolBufferException::class, DidException::class)
    suspend fun listEcosystems(request: ListEcosystemsRequest): List<Ecosystem> {
        val response = withMetadata(stub, request).listEcosystems(request)
        return response.ecosystemList
    }
}