package trinsic.services;

import com.google.common.util.concurrent.ListenableFuture;
import com.google.protobuf.InvalidProtocolBufferException;
import trinsic.okapi.DidException;
import trinsic.sdk.options.v1.Options;
import trinsic.services.universalwallet.v1.UniversalWalletGrpc;
import trinsic.services.universalwallet.v1.UniversalWalletOuterClass;

public class WalletService extends ServiceBase {
  private final UniversalWalletGrpc.UniversalWalletFutureStub stub;

  public WalletService() {
    this(null);
  }

  public WalletService(Options.ServiceOptions.Builder options) {
    super(options);
    this.stub = UniversalWalletGrpc.newFutureStub(this.getChannel());
  }

  public ListenableFuture<UniversalWalletOuterClass.SearchResponse> search()
      throws InvalidProtocolBufferException, DidException {
    return search(UniversalWalletOuterClass.SearchRequest.getDefaultInstance());
  }

  public ListenableFuture<UniversalWalletOuterClass.SearchResponse> search(
      UniversalWalletOuterClass.SearchRequest request)
      throws InvalidProtocolBufferException, DidException {
    if (request.getQuery().isBlank())
      request =
          UniversalWalletOuterClass.SearchRequest.newBuilder(request)
              .setQuery("SELECT c.id, c.type, c.data FROM c OFFSET 0 LIMIT 100")
              .build();

    return withMetadata(stub, request).search(request);
  }

  public ListenableFuture<UniversalWalletOuterClass.InsertItemResponse> insertItem(
      UniversalWalletOuterClass.InsertItemRequest request)
      throws InvalidProtocolBufferException, DidException {
    return withMetadata(stub, request).insertItem(request);
  }

  public ListenableFuture<UniversalWalletOuterClass.DeleteItemResponse> deleteItem(
      UniversalWalletOuterClass.DeleteItemRequest request)
      throws InvalidProtocolBufferException, DidException {
    return withMetadata(stub, request).deleteItem(request);
  }
}
