package trinsic.services;

import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.protobuf.InvalidProtocolBufferException;
import io.grpc.Channel;
import trinsic.TrinsicUtilities;
import trinsic.okapi.DidException;
import trinsic.services.account.v1.AccountOuterClass;
import trinsic.services.common.v1.CommonOuterClass;
import trinsic.services.universalwallet.v1.UniversalWalletGrpc;
import trinsic.services.universalwallet.v1.UniversalWalletOuterClass;

import java.util.HashMap;
import java.util.concurrent.Executors;

public class WalletService extends ServiceBase {
    private final UniversalWalletGrpc.UniversalWalletFutureStub stub;

    public WalletService(AccountOuterClass.AccountProfile accountProfile) {
        this(accountProfile, null, null);
    }

    public WalletService(AccountOuterClass.AccountProfile accountProfile, CommonOuterClass.ServerConfig serverConfig) {
        this(accountProfile, serverConfig, null);
    }

    public WalletService(AccountOuterClass.AccountProfile accountProfile, CommonOuterClass.ServerConfig serverConfig, Channel existingChannel) {
        super(accountProfile, serverConfig, existingChannel);
        this.stub = UniversalWalletGrpc.newFutureStub(this.getChannel());
    }

    public ListenableFuture<UniversalWalletOuterClass.SearchResponse> search(String query) throws InvalidProtocolBufferException, DidException {
        if (query == null) query = "SELECT * from c";

        final UniversalWalletOuterClass.SearchRequest request = UniversalWalletOuterClass.SearchRequest.newBuilder().setQuery(query).build();
        return withMetadata(stub, request).search(request);
    }

    public ListenableFuture<String> insertItem(HashMap item) throws InvalidProtocolBufferException, DidException {
        final UniversalWalletOuterClass.InsertItemRequest request = UniversalWalletOuterClass.InsertItemRequest.newBuilder().setItem(TrinsicUtilities.createPayloadString(item)).build();
        var response = withMetadata(stub, request).insertItem(request);

        return Futures.transform(response, input -> {
            if (input == null) return null;
            return input.getItemId();
        }, Executors.newSingleThreadExecutor());
    }

    public ListenableFuture<UniversalWalletOuterClass.DeleteItemResponse> deleteItem(UniversalWalletOuterClass.DeleteItemRequest request) throws InvalidProtocolBufferException, DidException {
        return withMetadata(stub, request).deleteItem(request);
    }
}

