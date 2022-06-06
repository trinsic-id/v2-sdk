package trinsic.services

import com.google.protobuf.InvalidProtocolBufferException
import io.grpc.Channel
import trinsic.okapi.DidException
import trinsic.sdk.options.v1.Options;
import trinsic.services.account.v1.AccountOuterClass
import trinsic.services.common.v1.Common
import trinsic.services.common.v1.ProviderGrpcKt
import trinsic.services.common.v1.ProviderOuterClass.*

class ProviderServiceKt(
    options: Options.ServiceOptions?
) : ServiceBase(options) {
    var stub = ProviderGrpcKt.ProviderCoroutineStub(this.channel)

    @Throws(InvalidProtocolBufferException::class, DidException::class)
    suspend fun inviteParticipant(request: InviteRequest): InviteResponse {
        return withMetadata(stub, request).invite(request)
    }

    @Throws(InvalidProtocolBufferException::class, DidException::class)
    suspend fun invitationStatus(request: InvitationStatusRequest): InvitationStatusResponse {
        require(request.invitationId.isNotBlank()) { "Onboarding reference ID must be set." }
        return withMetadata(stub, request).invitationStatus(request)
    }

    @Throws(InvalidProtocolBufferException::class, DidException::class)
    suspend fun createEcosystem(request: CreateEcosystemRequest): CreateEcosystemResponse {
        return stub.createEcosystem(request)
    }
}