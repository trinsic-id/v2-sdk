package trinsic.services

import com.google.protobuf.InvalidProtocolBufferException
import trinsic.TrinsicUtilities
import trinsic.okapi.DidException
import trinsic.sdk.v1.Options
import trinsic.services.universalwallet.v1.UniversalWalletGrpcKt
import trinsic.services.universalwallet.v1.UniversalWalletOuterClass.*

class WalletServiceKt(
    options: Options.ServiceOptions?
) : ServiceBase(options) {
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
        val request = InsertItemRequest.newBuilder().setItemJson(TrinsicUtilities.hashmapToJson(item)).build()
        return withMetadata(stub, request).insertItem(request).itemId
    }

    @Throws(InvalidProtocolBufferException::class, DidException::class)
    suspend fun deleteItem(request: DeleteItemRequest): DeleteItemResponse {
        return withMetadata(stub, request).deleteItem(request)
    }
}