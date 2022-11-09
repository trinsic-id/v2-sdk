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

  public ListenableFuture<SearchResponse> searchWallet()
      throws InvalidProtocolBufferException, DidException {
    return searchWallet(SearchRequest.getDefaultInstance());
  }

  public ListenableFuture<SearchResponse> searchWallet(SearchRequest request)
      throws InvalidProtocolBufferException, DidException {
    if (request.getQuery().isBlank())
      request =
          SearchRequest.newBuilder(request)
              .setQuery("SELECT c.id, c.type, c.data FROM c OFFSET 0 LIMIT 100")
              .build();

    return search(request);
  }

  // BEGIN Code generated by protoc-gen-trinsic. DO NOT EDIT.
  // target: /home/runner/work/sdk/sdk/java/src/main/java/trinsic/services/WalletService.java

  /** Retrieve an item from the wallet with a given item identifier */
  public ListenableFuture<GetItemResponse> getItem(GetItemRequest request)
      throws InvalidProtocolBufferException, DidException {

    return withMetadata(stub, request).getItem(request);
  }
  /** Search the wallet using a SQL syntax */
  public ListenableFuture<SearchResponse> search(SearchRequest request)
      throws InvalidProtocolBufferException, DidException {

    return withMetadata(stub, request).search(request);
  }
  /** Insert an item into the wallet */
  public ListenableFuture<InsertItemResponse> insertItem(InsertItemRequest request)
      throws InvalidProtocolBufferException, DidException {

    return withMetadata(stub, request).insertItem(request);
  }
  /** Update an item in the wallet */
  public ListenableFuture<UpdateItemResponse> updateItem(UpdateItemRequest request)
      throws InvalidProtocolBufferException, DidException {

    return withMetadata(stub, request).updateItem(request);
  }
  /** Delete an item from the wallet permanently */
  public ListenableFuture<DeleteItemResponse> deleteItem(DeleteItemRequest request)
      throws InvalidProtocolBufferException, DidException {

    return withMetadata(stub, request).deleteItem(request);
  }
  // END Code generated by protoc-gen-trinsic. DO NOT EDIT.
}
