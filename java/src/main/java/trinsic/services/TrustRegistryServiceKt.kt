package trinsic.services

import com.google.protobuf.InvalidProtocolBufferException
import kotlinx.coroutines.flow.Flow
import trinsic.okapi.DidException
import trinsic.sdk.v1.Options
import trinsic.services.trustregistry.v1.TrustRegistryGrpcKt
import trinsic.services.trustregistry.v1.TrustRegistryOuterClass.*
import java.net.MalformedURLException
import java.net.URL
import java.util.concurrent.ExecutionException

class TrustRegistryServiceKt(
    options: Options.ServiceOptions?
) : ServiceBase(options) {
    var stub = TrustRegistryGrpcKt.TrustRegistryCoroutineStub(this.channel)

    @Throws(InvalidProtocolBufferException::class, DidException::class)
    suspend fun registerGovernanceFramework(request: AddFrameworkRequest): AddFrameworkResponse {
        try {
            val url = URL(request.governanceFramework.governanceFrameworkUri)
        } catch (e: MalformedURLException) {
            throw IllegalArgumentException("invalid uri string", e)
        }
        return withMetadata(stub, request).addFramework(request)
    }

    @Throws(
        InvalidProtocolBufferException::class,
        DidException::class,
        ExecutionException::class,
        InterruptedException::class
    )
    suspend fun removeGovernanceFramework(request: RemoveFrameworkRequest): RemoveFrameworkResponse {
        return withMetadata(stub, request).removeFramework(request)
    }

    @Throws(
        InvalidProtocolBufferException::class,
        DidException::class,
        ExecutionException::class,
        InterruptedException::class
    )
    suspend fun registerIssuer(request: RegisterIssuerRequest): RegisterIssuerResponse {
        return withMetadata(stub, request).registerIssuer(request)
    }

    @Throws(
        InvalidProtocolBufferException::class,
        DidException::class,
        ExecutionException::class,
        InterruptedException::class
    )
    suspend fun unregisterIssuer(request: UnregisterIssuerRequest): UnregisterIssuerResponse {
        return withMetadata(stub, request).unregisterIssuer(request)
    }

    @Throws(
        InvalidProtocolBufferException::class,
        DidException::class,
        ExecutionException::class,
        InterruptedException::class
    )
    suspend fun registerVerifier(request: RegisterVerifierRequest): RegisterVerifierResponse {
        return withMetadata(stub, request).registerVerifier(request)
    }

    @Throws(
        InvalidProtocolBufferException::class,
        DidException::class,
        ExecutionException::class,
        InterruptedException::class
    )
    suspend fun unregisterVerifier(request: UnregisterVerifierRequest): UnregisterVerifierResponse {
        return withMetadata(stub, request).unregisterVerifier(request)
    }

    @Throws(InvalidProtocolBufferException::class, DidException::class)
    suspend fun checkIssuerStatus(request: CheckIssuerStatusRequest): CheckIssuerStatusResponse {
        return withMetadata(stub, request).checkIssuerStatus(request)
    }

    @Throws(InvalidProtocolBufferException::class, DidException::class)
    suspend fun checkVerifierStatus(request: CheckVerifierStatusRequest): CheckVerifierStatusResponse {
        return withMetadata(stub, request).checkVerifierStatus(request)
    }

    @Throws(InvalidProtocolBufferException::class, DidException::class)
    suspend fun searchRegistry(): SearchRegistryResponse {
        return searchRegistry(SearchRegistryRequest.getDefaultInstance())
    }

    @Throws(InvalidProtocolBufferException::class, DidException::class)
    suspend fun searchRegistry(request: SearchRegistryRequest): SearchRegistryResponse {
        var request = request
        if (request.query.isBlank()) request =
            SearchRegistryRequest.newBuilder(request).setQuery("SELECT * FROM c LIMIT 100").build()
        return withMetadata(stub, request).searchRegistry(request)
    }

    @Throws(InvalidProtocolBufferException::class, DidException::class)
    suspend fun fetchData(request: FetchDataRequest): Flow<FetchDataResponse> {
        return withMetadata(stub, request).fetchData(request)
    }
}