package trinsic.services

import com.google.protobuf.ByteString
import com.google.protobuf.InvalidProtocolBufferException
import trinsic.okapi.DidException
import trinsic.okapi.Oberon
import trinsic.okapi.security.v1.Security
import trinsic.sdk.v1.Options.ServiceOptions
import trinsic.services.account.v1.AccountGrpcKt
import trinsic.services.account.v1.AccountOuterClass.*
import java.util.*

class AccountServiceKt(
    options: ServiceOptions?
) : ServiceBase(options) {
    var stub: AccountGrpcKt.AccountCoroutineStub = AccountGrpcKt.AccountCoroutineStub(this.channel)

    suspend fun signIn(): String {
        return signIn(SignInRequest.newBuilder().build())
    }

    suspend fun signIn(request: SignInRequest): String {
        var request2 = request
        if (request.ecosystemId.isBlank()) request2 = SignInRequest.newBuilder(request).setEcosystemId(
            options.defaultEcosystem
        ).build()
        return Base64.getUrlEncoder().encodeToString(stub.signIn(request2).profile.toByteArray())
    }

    fun unprotect(profile: AccountProfile, securityCode: String): AccountProfile {
        val request = Security.UnBlindOberonTokenRequest.newBuilder().setToken(profile.authToken)
            .addBlinding(ByteString.copyFromUtf8(securityCode)).build()
        val result = Oberon.unBlindToken(request)

        return AccountProfile.newBuilder().setAuthToken(result.token).setProtection(
            TokenProtection.newBuilder().setMethod(ConfirmationMethod.None).setEnabled(false).build()
        ).build()
    }

    fun protect(profile: AccountProfile, securityCode: String): AccountProfile {
        val request = Security.BlindOberonTokenRequest.newBuilder().setToken(profile.authToken)
            .addBlinding(ByteString.copyFromUtf8(securityCode)).build()
        val result = Oberon.blindToken(request)

        return AccountProfile.newBuilder().setAuthToken(result.token).setProtection(
            TokenProtection.newBuilder().setMethod(ConfirmationMethod.Other).setEnabled(true).build()
        ).build()
    }

    suspend fun getInfo(): InfoResponse {
        val request = InfoRequest.newBuilder().build()
        return withMetadata(stub, request).info(request)
    }

    @Throws(InvalidProtocolBufferException::class, DidException::class)
    suspend fun listDevices(request: ListDevicesRequest): ListDevicesResponse {
        return withMetadata(stub, request).listDevices(request)
    }

    @Throws(InvalidProtocolBufferException::class, DidException::class)
    suspend fun revokeDevice(request: RevokeDeviceRequest): RevokeDeviceResponse {
        return withMetadata(stub, request).revokeDevice(request)
    }
}