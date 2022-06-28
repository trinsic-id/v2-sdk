package trinsic.services;

import com.google.common.util.concurrent.ListenableFuture;
import com.google.protobuf.InvalidProtocolBufferException;
import trinsic.okapi.DidException;
import trinsic.sdk.options.v1.Options;
import trinsic.services.universalwallet.v1.*;
import trinsic.services.universalwallet.v1.UniversalWalletGrpc;

public class WalletService extends ServiceBase {
  private final UniversalWalletGrpc.UniversalWalletFutureStub stub;

  public WalletService() {
    this(null);
  }

  public WalletService(Options.ServiceOptions.Builder options) {
    super(options);
    this.stub = UniversalWalletGrpc.newFutureStub(this.getChannel());
  }

  public ListenableFuture<SearchResponse> search()
      throws InvalidProtocolBufferException, DidException {
    return search(SearchRequest.getDefaultInstance());
  }

  public ListenableFuture<SearchResponse> search(SearchRequest request)
      throws InvalidProtocolBufferException, DidException {
    if (request.getQuery().isBlank())
      request =
          SearchRequest.newBuilder(request)
              .setQuery("SELECT c.id, c.type, c.data FROM c OFFSET 0 LIMIT 100")
              .build();

    return withMetadata(stub, request).search(request);
  }

  public ListenableFuture<InsertItemResponse> insertItem(InsertItemRequest request)
      throws InvalidProtocolBufferException, DidException {
    return withMetadata(stub, request).insertItem(request);
  }

  public ListenableFuture<DeleteItemResponse> deleteItem(DeleteItemRequest request)
      throws InvalidProtocolBufferException, DidException {
    return withMetadata(stub, request).deleteItem(request);
  }
}
