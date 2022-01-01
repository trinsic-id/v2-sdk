package trinsic.services

import com.google.protobuf.InvalidProtocolBufferException
import io.grpc.Channel
import trinsic.okapi.DidException
import trinsic.services.account.v1.AccountOuterClass
import trinsic.services.common.v1.CommonOuterClass
import trinsic.services.trustregistry.v1.TrustRegistryGrpcKt
import trinsic.services.trustregistry.v1.TrustRegistryOuterClass.*

class TrustRegistryServiceKt(
    accountProfile: AccountOuterClass.AccountProfile?, serverConfig: CommonOuterClass.ServerConfig?, channel: Channel?
) : ServiceBase(accountProfile, serverConfig, channel) {
    var stub = TrustRegistryGrpcKt.TrustRegistryCoroutineStub(this.channel)

    fun registerGovernanceFramework(governanceFramework: String?, description: String?) {
        throw RuntimeException()
    }

    @Throws(InvalidProtocolBufferException::class, DidException::class)
    suspend fun registerIssuer(
        request: RegisterIssuerRequest
    ): RegisterIssuerResponse {
        return withMetadata(stub, request).registerIssuer(request)
    }

    @Throws(InvalidProtocolBufferException::class, DidException::class)
    suspend fun unregisterIssuer(
        request: UnregisterIssuerRequest
    ): UnregisterIssuerResponse {
        return withMetadata(stub, request).unregisterIssuer(request)
    }

    @Throws(InvalidProtocolBufferException::class, DidException::class)
    suspend fun registerVerifier(
        request: RegisterVerifierRequest
    ): RegisterVerifierResponse {
        return withMetadata(stub, request).registerVerifier(request)
    }

    @Throws(InvalidProtocolBufferException::class, DidException::class)
    suspend fun unregisterVerifier(
        request: UnregisterVerifierRequest
    ): UnregisterVerifierResponse {
        return withMetadata(stub, request).unregisterVerifier(request)
    }

    @Throws(InvalidProtocolBufferException::class, DidException::class)
    suspend fun checkIssuerStatus(
        request: CheckIssuerStatusRequest
    ): CheckIssuerStatusResponse {
        return withMetadata(stub, request).checkIssuerStatus(request)
    }

    @Throws(InvalidProtocolBufferException::class, DidException::class)
    suspend fun checkVerifierStatus(
        request: CheckVerifierStatusRequest
    ): CheckVerifierStatusResponse {
        return withMetadata(stub, request).checkVerifierStatus(request)
    }

    @Throws(InvalidProtocolBufferException::class, DidException::class)
    suspend fun searchRegistry(query: String?): SearchRegistryResponse {
        var query = query
        if (query == null) query = "SELECT * FROM c"
        val request = SearchRegistryRequest.newBuilder().setQuery(query).build()
        return withMetadata(stub, request).searchRegistry(request)
    }
}