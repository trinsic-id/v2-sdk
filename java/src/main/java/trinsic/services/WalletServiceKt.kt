package trinsic.services

import com.google.protobuf.InvalidProtocolBufferException
import trinsic.okapi.DidException
import trinsic.sdk.v1.Options
import trinsic.services.universalwallet.v1.UniversalWalletGrpcKt
import trinsic.services.universalwallet.v1.UniversalWalletOuterClass.*

class WalletServiceKt(
    options: Options.ServiceOptions?
) : ServiceBase(options) {
    var stub = UniversalWalletGrpcKt.UniversalWalletCoroutineStub(this.channel)

    @Throws(InvalidProtocolBufferException::class, DidException::class)
    suspend fun search(request: SearchRequest): SearchResponse {
        var request = request
        if (request.query.isBlank()) request = SearchRequest.newBuilder(request).setQuery("SELECT c.id, c.type, c.data FROM c LIMIT 100").build()
        return withMetadata(stub, request).search(request)
    }

    @Throws(InvalidProtocolBufferException::class, DidException::class)
    suspend fun insertItem(request: InsertItemRequest): InsertItemResponse {
        return withMetadata(stub, request).insertItem(request)
    }

    @Throws(InvalidProtocolBufferException::class, DidException::class)
    suspend fun deleteItem(request: DeleteItemRequest): DeleteItemResponse {
        return withMetadata(stub, request).deleteItem(request)
    }
}