package trinsic.services

import com.google.protobuf.InvalidProtocolBufferException
import trinsic.okapi.DidException
import trinsic.sdk.options.v1.Options
import trinsic.services.common.v1.ProviderGrpcKt
import trinsic.services.common.v1.ProviderOuterClass.*

class ProviderServiceKt(options: Options.ServiceOptions.Builder?) : ServiceBase(options) {
  var stub = ProviderGrpcKt.ProviderCoroutineStub(this.channel)

  @Throws(InvalidProtocolBufferException::class, DidException::class)
  suspend fun createEcosystem(request: CreateEcosystemRequest): CreateEcosystemResponse {
    if (request.name.isNullOrBlank() && request.details.email.isNullOrBlank()) {
      return stub.createEcosystem(request)
    }
    return withMetadata(stub, request).createEcosystem(request)
  }

  @Throws(InvalidProtocolBufferException::class, DidException::class)
  suspend fun updateEcosystem(request: UpdateEcosystemRequest): UpdateEcosystemResponse {
    return withMetadata(stub, request).updateEcosystem(request)
  }

  @Throws(InvalidProtocolBufferException::class, DidException::class)
  suspend fun addWebhook(request: AddWebhookRequest): AddWebhookResponse {
    return withMetadata(stub, request).addWebhook(request)
  }

  @Throws(InvalidProtocolBufferException::class, DidException::class)
  suspend fun deleteWebhook(request: DeleteWebhookRequest): DeleteWebhookResponse {
    return withMetadata(stub, request).deleteWebhook(request)
  }

  @Throws(InvalidProtocolBufferException::class, DidException::class)
  suspend fun ecosystemInfo(request: EcosystemInfoRequest): EcosystemInfoResponse {
    return withMetadata(stub, request).ecosystemInfo(request)
  }

  @Throws(InvalidProtocolBufferException::class, DidException::class)
  suspend fun generateToken(request: GenerateTokenRequest): GenerateTokenResponse {
    return withMetadata(stub, request).generateToken(request)
  }

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
  suspend fun getOberonKey(request: GetOberonKeyRequest): GetOberonKeyResponse {
    return stub.getOberonKey(request)
  }

  @Throws(InvalidProtocolBufferException::class, DidException::class)
  suspend fun getEventToken(request: GetEventTokenRequest): GetEventTokenResponse {
    return withMetadata(stub, request).getEventToken(request)
  }
}
