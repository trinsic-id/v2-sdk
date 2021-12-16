package trinsic.services

import io.grpc.Channel
import trinsic.services.account.v1.AccountGrpcKt
import trinsic.services.account.v1.AccountOuterClass
import trinsic.services.common.v1.CommonOuterClass

class AccountServiceKt(
    accountProfile: AccountOuterClass.AccountProfile?,
    serverConfig: CommonOuterClass.ServerConfig?,
    channel: Channel?
) : ServiceBase(accountProfile, serverConfig, channel) {
    var stub: AccountGrpcKt.AccountCoroutineStub = AccountGrpcKt.AccountCoroutineStub(this.channel)

    suspend fun signIn(details: AccountOuterClass.AccountDetails?) : AccountOuterClass.SignInResponse {
        val details2 = details ?: AccountOuterClass.AccountDetails.newBuilder().build()
        val request = AccountOuterClass.SignInRequest.newBuilder().setDetails(details2).build();
        return stub.signIn(request);
    }

    
}