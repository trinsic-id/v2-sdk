package trinsic.services;

import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
import io.grpc.Channel;
import io.grpc.stub.MetadataUtils;
import trinsic.TrinsicUtilities;
import trinsic.okapi.DidException;
import trinsic.services.account.v1.AccountOuterClass;
import trinsic.services.common.v1.CommonOuterClass;
import trinsic.services.universalwallet.v1.UniversalWalletGrpc;
import trinsic.services.universalwallet.v1.UniversalWalletOuterClass;

import java.util.HashMap;

public class WalletService extends ServiceBase {
    private final UniversalWalletGrpc.UniversalWalletBlockingStub stub;

    public WalletService(AccountOuterClass.AccountProfile accountProfile, CommonOuterClass.ServerConfig serverConfig) {
        super(accountProfile, serverConfig, null);
        this.stub = UniversalWalletGrpc.newBlockingStub(this.getChannel());
    }

    public WalletService(AccountOuterClass.AccountProfile accountProfile, CommonOuterClass.ServerConfig serverConfig, Channel existingChannel) {
        super(accountProfile, serverConfig, existingChannel);
        this.stub = UniversalWalletGrpc.newBlockingStub(this.getChannel());
    }

    public UniversalWalletOuterClass.SearchResponse search(String query) throws InvalidProtocolBufferException, DidException {
        if (query == null)
            query = "SELECT * from c";

        final UniversalWalletOuterClass.SearchRequest request = UniversalWalletOuterClass.SearchRequest.newBuilder().setQuery(query).build();
        return clientWithMetadata(request).search(request);
    }

    public String insertItem(HashMap item) throws InvalidProtocolBufferException, DidException {
        final UniversalWalletOuterClass.InsertItemRequest request = UniversalWalletOuterClass.InsertItemRequest.newBuilder()
                .setItem(TrinsicUtilities.createPayloadString(item)).build();
        return clientWithMetadata(request).insertItem(request).getItemId();
    }

    private UniversalWalletGrpc.UniversalWalletBlockingStub clientWithMetadata(Message message) throws InvalidProtocolBufferException, DidException {
        return this.stub.withInterceptors(
                MetadataUtils.newAttachHeadersInterceptor(this.buildMetadata(message)));
    }
}

