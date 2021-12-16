package trinsic.services

import io.grpc.Channel
import trinsic.services.account.v1.AccountOuterClass
import trinsic.services.common.v1.CommonOuterClass
import trinsic.services.verifiablecredentials.v1.VerifiableCredentialGrpcKt

class CredentialsServiceKt(
    accountProfile: AccountOuterClass.AccountProfile?,
    serverConfig: CommonOuterClass.ServerConfig?,
    channel: Channel?
) : ServiceBase(accountProfile, serverConfig, channel) {
    var stub = VerifiableCredentialGrpcKt.VerifiableCredentialCoroutineStub(this.channel)
}