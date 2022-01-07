package trinsic.services

import com.google.protobuf.ByteString
import com.google.protobuf.InvalidProtocolBufferException
import io.grpc.Channel
import trinsic.okapi.DidException
import trinsic.okapi.Oberon
import trinsic.okapi.security.v1.Security
import trinsic.services.account.v1.AccountGrpcKt
import trinsic.services.account.v1.AccountOuterClass
import trinsic.services.account.v1.AccountOuterClass.*
import trinsic.services.common.v1.CommonOuterClass

class AccountServiceKt(
    accountProfile: AccountOuterClass.AccountProfile?, serverConfig: CommonOuterClass.ServerConfig?, channel: Channel?
) : ServiceBase(accountProfile, serverConfig, channel) {
    var stub: AccountGrpcKt.AccountCoroutineStub = AccountGrpcKt.AccountCoroutineStub(this.channel)

    suspend fun signIn(details: AccountOuterClass.AccountDetails?): AccountOuterClass.SignInResponse {
        val details2 = details ?: AccountOuterClass.AccountDetails.newBuilder().build()
        val request = AccountOuterClass.SignInRequest.newBuilder().setDetails(details2).build()
        return stub.signIn(request)
    }

    fun unprotect(profile: AccountOuterClass.AccountProfile, securityCode: String): AccountOuterClass.AccountProfile {
        val request = Security.UnBlindOberonTokenRequest.newBuilder().setToken(profile.authToken)
            .addBlinding(ByteString.copyFromUtf8(securityCode)).build()
        val result = Oberon.unBlindToken(request)

        return AccountOuterClass.AccountProfile.newBuilder().setAuthToken(result.token).setProtection(
                AccountOuterClass.TokenProtection.newBuilder().setMethod(AccountOuterClass.ConfirmationMethod.None)
                    .setEnabled(false).build()
            ).build()
    }

    fun protect(profile: AccountOuterClass.AccountProfile, securityCode: String): AccountOuterClass.AccountProfile {
        val request = Security.BlindOberonTokenRequest.newBuilder().setToken(profile.authToken)
            .addBlinding(ByteString.copyFromUtf8(securityCode)).build()
        val result = Oberon.blindToken(request)

        return AccountOuterClass.AccountProfile.newBuilder().setAuthToken(result.token).setProtection(
                AccountOuterClass.TokenProtection.newBuilder().setMethod(AccountOuterClass.ConfirmationMethod.Other)
                    .setEnabled(true).build()
            ).build()
    }

    suspend fun getInfo(): AccountOuterClass.InfoResponse {
        val request = AccountOuterClass.InfoRequest.newBuilder().build()
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