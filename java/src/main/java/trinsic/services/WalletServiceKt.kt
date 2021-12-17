package trinsic.services

import com.google.protobuf.InvalidProtocolBufferException
import io.grpc.Channel
import trinsic.TrinsicUtilities
import trinsic.okapi.DidException
import trinsic.services.account.v1.AccountOuterClass
import trinsic.services.common.v1.CommonOuterClass
import trinsic.services.universalwallet.v1.UniversalWalletGrpcKt
import trinsic.services.universalwallet.v1.UniversalWalletOuterClass.*

class WalletServiceKt(
    accountProfile: AccountOuterClass.AccountProfile?,
    serverConfig: CommonOuterClass.ServerConfig?,
    channel: Channel?
) : ServiceBase(accountProfile, serverConfig, channel) {
    var stub = UniversalWalletGrpcKt.UniversalWalletCoroutineStub(this.channel)

    @Throws(InvalidProtocolBufferException::class, DidException::class)
    suspend fun search(query: String?): SearchResponse {
        var query = query
        if (query == null) query = "SELECT * from c"
        val request = SearchRequest.newBuilder().setQuery(query).build()
        return withMetadata(stub, request).search(request)
    }

    @Throws(InvalidProtocolBufferException::class, DidException::class)
    suspend fun insertItem(item: HashMap<*, *>?): String? {
        val request = InsertItemRequest.newBuilder().setItem(TrinsicUtilities.createPayloadString(item)).build()
        return withMetadata(stub, request).insertItem(request).itemId
    }
}