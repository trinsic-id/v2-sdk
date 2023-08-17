package trinsic.services

import com.google.protobuf.InvalidProtocolBufferException
import java.util.*
import trinsic.sdk.options.v1.Options
import trinsic.services.provider.v1.*

class ProviderServiceKt(options: Options.TrinsicOptions.Builder?) : ServiceBase(options) {
  var stub = ProviderGrpcKt.ProviderCoroutineStub(this.channel)

  @Throws(InvalidProtocolBufferException::class)
  suspend fun createEcosystem(request: CreateEcosystemRequest): CreateEcosystemResponse {
    val response: CreateEcosystemResponse =
        if (request.name.isNullOrBlank() && request.details.email.isNullOrBlank()) {
          stub.createEcosystem(request)
        } else {
          withMetadata(stub, request).createEcosystem(request)
        }
    val token = Base64.getUrlEncoder().encodeToString(response.profile.toByteArray())
    this.setAuthToken(token)
    return response
  }
// BEGIN Code generated by protoc-gen-trinsic. DO NOT EDIT.
// target: C:\work\sdk\java\src\main\java\trinsic\services\ProviderServiceKt.kt

  @Throws(InvalidProtocolBufferException::class)
  
  suspend fun getOberonKey(): GetOberonKeyResponse {
	/** Returns the public key being used to create/verify oberon tokens */
    val request = GetOberonKeyRequest.newBuilder().build();
    return withMetadata(stub, request).getOberonKey(request)
  }
  @Throws(InvalidProtocolBufferException::class)
  
  suspend fun upgradeDID(request: UpgradeDidRequest): UpgradeDidResponse {
	/** Upgrade a wallet's DID from `did:key` to another method */
    
    return withMetadata(stub, request).upgradeDID(request)
  }
  @Throws(InvalidProtocolBufferException::class)
  
  suspend fun searchWalletConfigurations(request: SearchWalletConfigurationsRequest): SearchWalletConfigurationResponse {
	/** Search for issuers/providers/verifiers in the current ecosystem */
    
    return withMetadata(stub, request).searchWalletConfigurations(request)
  }
// END Code generated by protoc-gen-trinsic. DO NOT EDIT.
}
