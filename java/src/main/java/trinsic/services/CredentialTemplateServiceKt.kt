package trinsic.services

import com.google.protobuf.InvalidProtocolBufferException
import trinsic.okapi.DidException
import trinsic.sdk.options.v1.Options.ServiceOptions
import trinsic.services.verifiablecredentials.templates.v1.*
import trinsic.services.verifiablecredentials.templates.v1.CredentialTemplatesGrpcKt

class CredentialTemplateServiceKt(options: ServiceOptions.Builder?) : ServiceBase(options) {
  var stub = CredentialTemplatesGrpcKt.CredentialTemplatesCoroutineStub(this.channel)

  @Throws(InvalidProtocolBufferException::class, DidException::class)
  suspend fun create(request: CreateCredentialTemplateRequest): CreateCredentialTemplateResponse {
    return withMetadata(stub, request).create(request)
  }

  @Throws(InvalidProtocolBufferException::class, DidException::class)
  suspend fun get(request: GetCredentialTemplateRequest): GetCredentialTemplateResponse {
    return withMetadata(stub, request).get(request)
  }

  @Throws(InvalidProtocolBufferException::class, DidException::class)
  suspend fun list(request: ListCredentialTemplatesRequest): ListCredentialTemplatesResponse {
    return withMetadata(stub, request).list(request)
  }

  @Throws(InvalidProtocolBufferException::class, DidException::class)
  suspend fun search(request: SearchCredentialTemplatesRequest): SearchCredentialTemplatesResponse {
    return withMetadata(stub, request).search(request)
  }

  @Throws(InvalidProtocolBufferException::class, DidException::class)
  suspend fun delete(request: DeleteCredentialTemplateRequest): DeleteCredentialTemplateResponse {
    return withMetadata(stub, request).delete(request)
  }
}
