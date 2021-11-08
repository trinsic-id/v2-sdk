import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
import io.grpc.Channel;
import io.grpc.ManagedChannel;
import io.grpc.stub.MetadataUtils;
import io.grpc.stub.StreamObserver;
import trinsic.services.common.v1.CommonOuterClass;
import trinsic.services.universalwallet.v1.UniversalWallet;
import trinsic.services.universalwallet.v1.WalletGrpc;
import trinsic.services.verifiablecredentials.v1.CredentialGrpc;
import trinsic.services.verifiablecredentials.v1.VerifiableCredentials;

import java.util.HashMap;

public class TrinsicWalletService extends ServiceBase {
    public Channel channel;
    public WalletGrpc.WalletStub walletClient;
    public CredentialGrpc.CredentialStub credentialClient;

    public TrinsicWalletService(CommonOuterClass.ServerConfig config) {
        this.channel = Utilities.getChannel(config);
        this.walletClient = WalletGrpc.newStub(this.channel);
        this.credentialClient = CredentialGrpc.newStub(this.channel);
    }

    public void shutdown() throws InterruptedException {
        super.shutdown((ManagedChannel) this.channel);
    }

    public void registerOrConnect(String email, StreamObserver<UniversalWallet.ConnectResponse> observer) {
        this.walletClient.connectExternalIdentity(UniversalWallet.ConnectRequest.newBuilder()
                .setEmail(email).build(), observer);
    }

    public void createWallet(String securityCode, StreamObserver<UniversalWallet.CreateWalletResponse> observer) {
        securityCode = securityCode == null ? "" : securityCode;

        var request = UniversalWallet.CreateWalletRequest.newBuilder()
                .setSecurityCode(securityCode)
                .build();
        try {this.walletClient.createWallet(request, observer);}catch(Exception e){e.printStackTrace();}
    }

    public static UniversalWallet.WalletProfile toWalletProfile(UniversalWallet.CreateWalletResponse response)
    {
        return UniversalWallet.WalletProfile.newBuilder()
                .setIsProtected(response.getIsProtected())
                .setAuthToken(response.getAuthToken())
                .setAuthData(response.getAuthData())
                .build();
    }

    public void issueCredential(HashMap document, StreamObserver<VerifiableCredentials.IssueResponse> observer) throws InvalidProtocolBufferException, DidException {
        final VerifiableCredentials.IssueRequest request = VerifiableCredentials.IssueRequest.newBuilder()
                .setDocument(Utilities.createPayloadString(document)).build();
        getCredentialClient(request).issue(request, observer);
    }

    public void search(String query, StreamObserver<UniversalWallet.SearchResponse> observer) throws InvalidProtocolBufferException, DidException {
        if (query == null)
            query = "SELECT * from c";

        final UniversalWallet.SearchRequest request = UniversalWallet.SearchRequest.newBuilder().setQuery(query).build();
        getWalletClient(request).search(request, observer);
    }

    public void insertItem(HashMap item, StreamObserver<UniversalWallet.InsertItemResponse> observer) throws InvalidProtocolBufferException, DidException {
        final UniversalWallet.InsertItemRequest request = UniversalWallet.InsertItemRequest.newBuilder()
                .setItem(Utilities.createPayloadString(item)).build();
        getWalletClient(request).insertItem(request, observer);
    }

    public void send(HashMap document, String email, StreamObserver<VerifiableCredentials.SendResponse> observer) throws InvalidProtocolBufferException, DidException {
        final VerifiableCredentials.SendRequest request = VerifiableCredentials.SendRequest.newBuilder()
                .setEmail(email)
                .setDocument(Utilities.createPayloadString(document))
                .build();
        getCredentialClient(request).send(request, observer);
    }

    public void createProof(String documentId, HashMap revealDocument, StreamObserver<VerifiableCredentials.CreateProofResponse> observer) throws InvalidProtocolBufferException, DidException {
        final VerifiableCredentials.CreateProofRequest request = VerifiableCredentials.CreateProofRequest.newBuilder()
                .setDocumentId(documentId)
                .setRevealDocument(Utilities.createPayloadString(revealDocument))
                .build();
        getCredentialClient(request).createProof(request, observer);
    }

    public void verifyProof(HashMap proofDocument, StreamObserver<VerifiableCredentials.VerifyProofResponse> observer) throws InvalidProtocolBufferException, DidException {
        final VerifiableCredentials.VerifyProofRequest request = VerifiableCredentials.VerifyProofRequest.newBuilder()
                .setProofDocument(Utilities.createPayloadString(proofDocument)).build();
        getCredentialClient(request).verifyProof(request, observer);
    }

    private WalletGrpc.WalletStub getWalletClient(Message message) throws InvalidProtocolBufferException, DidException {
        return this.walletClient.withInterceptors(
                MetadataUtils.newAttachHeadersInterceptor(this.getMetadata(message)));
    }
    private CredentialGrpc.CredentialStub getCredentialClient(Message message) throws InvalidProtocolBufferException, DidException {
        return this.credentialClient.withInterceptors(
                MetadataUtils.newAttachHeadersInterceptor(this.getMetadata(message)));
    }
}

