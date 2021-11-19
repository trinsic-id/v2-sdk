import com.google.gson.Gson;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
import io.grpc.Channel;
import io.grpc.ManagedChannel;
import io.grpc.stub.MetadataUtils;
import trinsic.services.common.v1.CommonOuterClass;
import trinsic.services.universalwallet.v1.UniversalWallet;
import trinsic.services.universalwallet.v1.WalletGrpc;
import trinsic.services.verifiablecredentials.v1.CredentialGrpc;
import trinsic.services.verifiablecredentials.v1.VerifiableCredentials;

import java.util.HashMap;

public class TrinsicWalletService extends ServiceBase {
    public final Channel channel;
    public final WalletGrpc.WalletBlockingStub walletClient;
    public final CredentialGrpc.CredentialBlockingStub credentialClient;

    public TrinsicWalletService(CommonOuterClass.ServerConfig config) {
        this.channel = TrinsicUtilities.getChannel(config);
        this.walletClient = WalletGrpc.newBlockingStub(this.channel);
        this.credentialClient = CredentialGrpc.newBlockingStub(this.channel);
    }

    public void shutdown() throws InterruptedException {
        super.shutdown((ManagedChannel) this.channel);
    }

    public UniversalWallet.ConnectResponse registerOrConnect(String email) {
        return this.walletClient.connectExternalIdentity(UniversalWallet.ConnectRequest.newBuilder()
                .setEmail(email).build());
    }

    public UniversalWallet.WalletProfile createWallet(String securityCode) {
        securityCode = securityCode == null ? "" : securityCode;

        var request = UniversalWallet.CreateWalletRequest.newBuilder()
                .setSecurityCode(securityCode)
                .build();
        var response = this.walletClient.createWallet(request);
        return UniversalWallet.WalletProfile.newBuilder()
                .setAuthData(response.getAuthData())
                .setAuthToken(response.getAuthToken())
                .setIsProtected(response.getIsProtected())
                .build();
    }

    public HashMap issueCredential(HashMap document) throws InvalidProtocolBufferException, DidException {
        var request = VerifiableCredentials.IssueRequest.newBuilder()
                .setDocument(TrinsicUtilities.createPayloadString(document)).build();
        var response = getCredentialClient(request).issue(request);
        return new Gson().fromJson(response.getDocument().getJsonString(), HashMap.class);
    }

    public UniversalWallet.SearchResponse search(String query) throws InvalidProtocolBufferException, DidException {
        if (query == null)
            query = "SELECT * from c";

        final UniversalWallet.SearchRequest request = UniversalWallet.SearchRequest.newBuilder().setQuery(query).build();
        return getWalletClient(request).search(request);
    }

    public String insertItem(HashMap item) throws InvalidProtocolBufferException, DidException {
        final UniversalWallet.InsertItemRequest request = UniversalWallet.InsertItemRequest.newBuilder()
                .setItem(TrinsicUtilities.createPayloadString(item)).build();
        return getWalletClient(request).insertItem(request).getItemId();
    }

    public VerifiableCredentials.SendResponse send(HashMap document, String email) throws InvalidProtocolBufferException, DidException {
        final VerifiableCredentials.SendRequest request = VerifiableCredentials.SendRequest.newBuilder()
                .setEmail(email)
                .setDocument(TrinsicUtilities.createPayloadString(document))
                .build();
        return getCredentialClient(request).send(request);
    }

    public HashMap createProof(String documentId, HashMap revealDocument) throws InvalidProtocolBufferException, DidException {
        final VerifiableCredentials.CreateProofRequest request = VerifiableCredentials.CreateProofRequest.newBuilder()
                .setDocumentId(documentId)
                .setRevealDocument(TrinsicUtilities.createPayloadString(revealDocument))
                .build();
        return (new Gson()).fromJson(getCredentialClient(request).createProof(request).getProofDocument().getJsonString(), HashMap.class);
    }

    public boolean verifyProof(HashMap proofDocument) throws InvalidProtocolBufferException, DidException {
        final VerifiableCredentials.VerifyProofRequest request = VerifiableCredentials.VerifyProofRequest.newBuilder()
                .setProofDocument(TrinsicUtilities.createPayloadString(proofDocument)).build();
        return getCredentialClient(request).verifyProof(request).getValid();
    }

    private WalletGrpc.WalletBlockingStub getWalletClient(Message message) throws InvalidProtocolBufferException, DidException {
        return this.walletClient.withInterceptors(
                MetadataUtils.newAttachHeadersInterceptor(this.getMetadata(message)));
    }
    private CredentialGrpc.CredentialBlockingStub getCredentialClient(Message message) throws InvalidProtocolBufferException, DidException {
        return this.credentialClient.withInterceptors(
                MetadataUtils.newAttachHeadersInterceptor(this.getMetadata(message)));
    }
}

