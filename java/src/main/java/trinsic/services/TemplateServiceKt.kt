package trinsic.services

import com.google.protobuf.InvalidProtocolBufferException
import trinsic.okapi.DidException
import trinsic.sdk.options.v1.Options.ServiceOptions
import trinsic.services.verifiablecredentials.templates.v1.*
import trinsic.services.verifiablecredentials.templates.v1.CredentialTemplatesGrpcKt

class TemplateServiceKt(options: ServiceOptions.Builder?) : ServiceBase(options) {
  var stub = CredentialTemplatesGrpcKt.CredentialTemplatesCoroutineStub(this.channel)

  // BEGIN Code generated by protoc-gen-trinsic. DO NOT EDIT.
  // target: ..\sdk\java\src\main\java\trinsic\services\templateServiceKt.kt

  @Throws(InvalidProtocolBufferException::class, DidException::class)
  suspend fun create(request: CreateCredentialTemplateRequest): CreateCredentialTemplateResponse {

    // TODO - Support metadata anonymous
    return withMetadata(stub, request).create(request)
  }
  @Throws(InvalidProtocolBufferException::class, DidException::class)
  suspend fun get(request: GetCredentialTemplateRequest): GetCredentialTemplateResponse {

    // TODO - Support metadata anonymous
    return withMetadata(stub, request).get(request)
  }
  @Throws(InvalidProtocolBufferException::class, DidException::class)
  suspend fun list(request: ListCredentialTemplatesRequest): ListCredentialTemplatesResponse {

    // TODO - Support metadata anonymous
    return withMetadata(stub, request).list(request)
  }
  @Throws(InvalidProtocolBufferException::class, DidException::class)
  suspend fun search(request: SearchCredentialTemplatesRequest): SearchCredentialTemplatesResponse {

    // TODO - Support metadata anonymous
    return withMetadata(stub, request).search(request)
  }
  @Throws(InvalidProtocolBufferException::class, DidException::class)
  suspend fun delete(request: DeleteCredentialTemplateRequest): DeleteCredentialTemplateResponse {

    // TODO - Support metadata anonymous
    return withMetadata(stub, request).delete(request)
  }
  // END Code generated by protoc-gen-trinsic. DO NOT EDIT.
}