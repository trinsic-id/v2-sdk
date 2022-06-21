package trinsic.services

import com.google.protobuf.InvalidProtocolBufferException
import trinsic.okapi.DidException
import trinsic.sdk.options.v1.Options
import trinsic.services.universalwallet.v1.UniversalWalletGrpcKt
import trinsic.services.universalwallet.v1.UniversalWalletOuterClass.*

class WalletServiceKt(options: Options.ServiceOptions.Builder?) : ServiceBase(options) {
  var stub = UniversalWalletGrpcKt.UniversalWalletCoroutineStub(this.channel)

  @Throws(InvalidProtocolBufferException::class, DidException::class)
  suspend fun search(request: SearchRequest): SearchResponse {
    var request2 = request
    if (request2.query.isBlank())
        request2 =
            SearchRequest.newBuilder(request2)
                .setQuery("SELECT c.id, c.type, c.data FROM c OFFSET 0 LIMIT 100")
                .build()
    return withMetadata(stub, request2).search(request2)
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
