package trinsic.services;

import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
import io.grpc.stub.MetadataUtils;
import trinsic.TrinsicUtilities;
import trinsic.okapi.DidException;
import trinsic.services.account.v1.Account;
import trinsic.services.common.v1.CommonOuterClass;
import trinsic.services.universalwallet.v1.UniversalWallet;
import trinsic.services.universalwallet.v1.WalletServiceGrpc;

import java.util.HashMap;

public class WalletService extends ServiceBase {
    private final WalletServiceGrpc.WalletServiceBlockingStub stub;

    public WalletService(Account.AccountProfile accountProfile, CommonOuterClass.ServerConfig serverConfig) {
        super(accountProfile, serverConfig);
        this.stub = WalletServiceGrpc.newBlockingStub(this.getChannel());
    }

    public UniversalWallet.SearchResponse search(String query) throws InvalidProtocolBufferException, DidException {
        if (query == null)
            query = "SELECT * from c";

        final UniversalWallet.SearchRequest request = UniversalWallet.SearchRequest.newBuilder().setQuery(query).build();
        return clientWithMetadata(request).search(request);
    }

    public String insertItem(HashMap item) throws InvalidProtocolBufferException, DidException {
        final UniversalWallet.InsertItemRequest request = UniversalWallet.InsertItemRequest.newBuilder()
                .setItem(TrinsicUtilities.createPayloadString(item)).build();
        return clientWithMetadata(request).insertItem(request).getItemId();
    }

    private WalletServiceGrpc.WalletServiceBlockingStub clientWithMetadata(Message message) throws InvalidProtocolBufferException, DidException {
        return this.stub.withInterceptors(
                MetadataUtils.newAttachHeadersInterceptor(this.buildMetadata(message)));
    }
}

