package trinsic.services

import com.google.protobuf.InvalidProtocolBufferException
import trinsic.okapi.DidException
import trinsic.sdk.options.v1.Options
import trinsic.services.common.v1.ProviderGrpcKt
import trinsic.services.common.v1.ProviderOuterClass.*

class ProviderServiceKt(options: Options.ServiceOptions?) : ServiceBase(options) {
  var stub = ProviderGrpcKt.ProviderCoroutineStub(this.channel)

  @Throws(InvalidProtocolBufferException::class, DidException::class)
  suspend fun createEcosystem(request: CreateEcosystemRequest): CreateEcosystemResponse {
    return stub.createEcosystem(request)
  }

  @Throws(InvalidProtocolBufferException::class, DidException::class)
  suspend fun updateEcosystem(request: UpdateEcosystemRequest): UpdateEcosystemResponse {
    return stub.updateEcosystem(request)
  }

  @Throws(InvalidProtocolBufferException::class, DidException::class)
  suspend fun addWebhook(request: AddWebhookRequest): AddWebhookResponse {
    return stub.addWebhook(request)
  }

  @Throws(InvalidProtocolBufferException::class, DidException::class)
  suspend fun deleteWebhook(request: DeleteWebhookRequest): DeleteWebhookResponse {
    return stub.deleteWebhook(request)
  }

  @Throws(InvalidProtocolBufferException::class, DidException::class)
  suspend fun ecosystemInfo(request: EcosystemInfoRequest): EcosystemInfoResponse {
    return stub.ecosystemInfo(request)
  }

  @Throws(InvalidProtocolBufferException::class, DidException::class)
  suspend fun generateToken(request: GenerateTokenRequest): GenerateTokenResponse {
    return stub.generateToken(request)
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
    return stub.getEventToken(request)
  }
}
