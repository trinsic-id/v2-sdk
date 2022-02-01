package trinsic.services

import com.google.protobuf.InvalidProtocolBufferException
import io.grpc.Channel
import trinsic.TrinsicUtilities
import trinsic.okapi.DidException
import trinsic.services.account.v1.AccountOuterClass
import trinsic.services.common.v1.CommonOuterClass
import trinsic.services.universalwallet.v1.UniversalWalletGrpcKt
import trinsic.services.universalwallet.v1.UniversalWalletOuterClass.*

class WalletServiceKt : ServiceBase {
    var stub = UniversalWalletGrpcKt.UniversalWalletCoroutineStub(this.channel)

    public constructor(accountProfile: AccountOuterClass.AccountProfile) : this(accountProfile, null, null)
    public constructor(accountProfile: AccountOuterClass.AccountProfile, channel: Channel?) : this(accountProfile, null, channel)
    internal constructor(accountProfile: AccountOuterClass.AccountProfile, serverConfig: CommonOuterClass.ServerConfig?) : this(accountProfile, serverConfig, null)
    private constructor(
        accountProfile: AccountOuterClass.AccountProfile?, serverConfig: CommonOuterClass.ServerConfig?, channel: Channel?
    ) : super(accountProfile, serverConfig, channel)

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

    @Throws(InvalidProtocolBufferException::class, DidException::class)
    suspend fun deleteItem(request: DeleteItemRequest): DeleteItemResponse {
        return withMetadata(stub, request).deleteitem(request)
    }
}