package trinsic.services

import com.google.protobuf.InvalidProtocolBufferException
import io.grpc.Channel
import kotlinx.coroutines.flow.Flow
import trinsic.okapi.DidException
import trinsic.services.account.v1.AccountOuterClass
import trinsic.services.common.v1.CommonOuterClass
import trinsic.services.trustregistry.v1.TrustRegistryGrpcKt
import trinsic.services.trustregistry.v1.TrustRegistryOuterClass.*

class TrustRegistryServiceKt : ServiceBase {
    var stub = TrustRegistryGrpcKt.TrustRegistryCoroutineStub(this.channel)

    public constructor(accountProfile: AccountOuterClass.AccountProfile) : this(accountProfile, null, null)
    public constructor(accountProfile: AccountOuterClass.AccountProfile, channel: Channel?) : this(accountProfile, null, channel)
    internal constructor(accountProfile: AccountOuterClass.AccountProfile, serverConfig: CommonOuterClass.ServerConfig?) : this(accountProfile, serverConfig, null)
    private constructor(
        accountProfile: AccountOuterClass.AccountProfile?, serverConfig: CommonOuterClass.ServerConfig?, channel: Channel?
    ) : super(accountProfile, serverConfig, channel)

    @Throws(InvalidProtocolBufferException::class, DidException::class)
    suspend fun registerGovernanceFramework(request: AddFrameworkRequest): AddFrameworkResponse {
        return withMetadata(stub, request).addFramework(request)
    }

    @Throws(InvalidProtocolBufferException::class, DidException::class)
    suspend fun removeGovernanceFramework(request: RemoveFrameworkRequest): RemoveFrameworkResponse {
        return withMetadata(stub, request).removeFramework(request)
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

    fun fetchData(request: FetchDataRequest): Flow<FetchDataResponse> {
        return withMetadata(stub, request).fetchData(request)
    }
}