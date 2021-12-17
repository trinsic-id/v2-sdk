package trinsic.services

import com.google.protobuf.InvalidProtocolBufferException
import io.grpc.Channel
import trinsic.okapi.DidException
import trinsic.services.account.v1.AccountOuterClass
import trinsic.services.common.v1.CommonOuterClass
import trinsic.services.trustregistry.v1.TrustRegistryGrpcKt
import trinsic.services.trustregistry.v1.TrustRegistryOuterClass.*
import java.time.Instant

class TrustRegistryServiceKt(
    accountProfile: AccountOuterClass.AccountProfile?,
    serverConfig: CommonOuterClass.ServerConfig?,
    channel: Channel?
) : ServiceBase(accountProfile, serverConfig, channel) {
    var stub = TrustRegistryGrpcKt.TrustRegistryCoroutineStub(this.channel)

    fun registerGovernanceFramework(governanceFramework: String?, description: String?) {
        throw RuntimeException()
    }

    @Throws(InvalidProtocolBufferException::class, DidException::class)
    suspend fun registerIssuer(
        issuerDid: String?,
        credentialType: String?,
        governanceFramework: String?,
        validFrom: Instant?,
        validUntil: Instant?
    ): RegisterIssuerResponse {
        var validFrom = validFrom
        var validUntil = validUntil
        if (validFrom == null) validFrom = Instant.EPOCH
        if (validUntil == null) validUntil = Instant.EPOCH
        val request = RegisterIssuerRequest.newBuilder().setDidUri(issuerDid).setCredentialTypeUri(credentialType)
            .setGovernanceFrameworkUri(governanceFramework).setValidFromUtc(
                validFrom!!.epochSecond
            ).setValidUntilUtc(validUntil!!.epochSecond).build()
        return withMetadata(stub, request).registerIssuer(request)
    }

    @Throws(InvalidProtocolBufferException::class, DidException::class)
    suspend fun unregisterIssuer(
        issuerDid: String?,
        credentialType: String?,
        governanceFramework: String?,
        validFrom: Instant?,
        validUntil: Instant?
    ): UnregisterIssuerResponse {
        var validFrom = validFrom
        var validUntil = validUntil
        if (validFrom == null) validFrom = Instant.EPOCH
        if (validUntil == null) validUntil = Instant.EPOCH
        val request = UnregisterIssuerRequest.newBuilder().setDidUri(issuerDid).setCredentialTypeUri(credentialType)
            .setGovernanceFrameworkUri(governanceFramework).build()
        return withMetadata(stub, request).unregisterIssuer(request)
    }

    @Throws(InvalidProtocolBufferException::class, DidException::class)
    suspend fun registerVerifier(
        verifierDid: String?,
        presentationType: String?,
        governanceFramework: String?,
        validFrom: Instant?,
        validUntil: Instant?
    ): RegisterVerifierResponse {
        var validFrom = validFrom
        var validUntil = validUntil
        if (validFrom == null) validFrom = Instant.EPOCH
        if (validUntil == null) validUntil = Instant.EPOCH
        val request =
            RegisterVerifierRequest.newBuilder().setDidUri(verifierDid).setPresentationTypeUri(presentationType)
                .setGovernanceFrameworkUri(governanceFramework).setValidFromUtc(
                    validFrom!!.epochSecond
                ).setValidUntilUtc(validUntil!!.epochSecond).build()
        return withMetadata(stub, request).registerVerifier(request)
    }

    @Throws(InvalidProtocolBufferException::class, DidException::class)
    suspend fun unregisterVerifier(
        verifierDid: String?,
        presentationType: String?,
        governanceFramework: String?,
        validFrom: Instant?,
        validUntil: Instant?
    ): UnregisterVerifierResponse {
        var validFrom = validFrom
        var validUntil = validUntil
        if (validFrom == null) validFrom = Instant.EPOCH
        if (validUntil == null) validUntil = Instant.EPOCH
        val request =
            UnregisterVerifierRequest.newBuilder().setDidUri(verifierDid).setPresentationTypeUri(presentationType)
                .setGovernanceFrameworkUri(governanceFramework).build()
        return withMetadata(stub, request).unregisterVerifier(request)
    }

    @Throws(InvalidProtocolBufferException::class, DidException::class)
    suspend fun checkIssuerStatus(
        issuerDid: String?,
        credentialType: String?,
        governanceFramework: String?
    ): CheckIssuerStatusResponse {
        val request = CheckIssuerStatusRequest.newBuilder().setDidUri(issuerDid).setCredentialTypeUri(credentialType)
            .setGovernanceFrameworkUri(governanceFramework).build()
        return withMetadata(stub, request).checkIssuerStatus(request)
    }

    @Throws(InvalidProtocolBufferException::class, DidException::class)
    suspend fun checkVerifierStatus(
        verifierDid: String?,
        presentationType: String?,
        governanceFramework: String?
    ): CheckVerifierStatusResponse {
        val request =
            CheckVerifierStatusRequest.newBuilder().setDidUri(verifierDid).setPresentationTypeUri(presentationType)
                .setGovernanceFrameworkUri(governanceFramework).build()
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