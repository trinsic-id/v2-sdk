import com.google.gson.Gson;
import com.google.protobuf.InvalidProtocolBufferException;
import io.grpc.Channel;
import io.grpc.ManagedChannel;
import io.grpc.stub.MetadataUtils;
import trinsic.okapi.keys.v1.Keys;
import trinsic.services.common.v1.CommonOuterClass;
import trinsic.services.universalwallet.v1.UniversalWallet;
import trinsic.services.universalwallet.v1.WalletGrpc;
import trinsic.services.verifiablecredentials.v1.CredentialGrpc;
import trinsic.services.verifiablecredentials.v1.VerifiableCredentials;

import java.net.MalformedURLException;
import java.util.HashMap;

public class TrinsicWalletService extends ServiceBase {
    public Channel channel;
    public WalletGrpc.WalletBlockingStub walletClient;
    public CredentialGrpc.CredentialBlockingStub credentialClient;

    public TrinsicWalletService(String serviceAddress, Channel channel) throws MalformedURLException {
        channel = Utilities.getChannel(serviceAddress, channel);
        this.channel = channel;
        // TODO - Async?
        this.walletClient = WalletGrpc.newBlockingStub(this.channel);
        this.credentialClient = CredentialGrpc.newBlockingStub(this.channel);
    }

    public void shutdown() throws InterruptedException {
        super.shutdown((ManagedChannel) this.channel);
    }

    public void registerOrConnect(String email) {
        var response = this.walletClient.connectExternalIdentity(UniversalWallet.ConnectRequest.newBuilder()
                .setEmail(email).build());
        GrpcException.assertSuccessfulResponse(response.getStatusValue(), response);
    }

    public UniversalWallet.WalletProfile createWallet(String securityCode) throws InvalidProtocolBufferException, DidException {
        securityCode = securityCode == null ? "" : securityCode;

        var myKey = DidKey.generate(Keys.GenerateKeyRequest.newBuilder().setKeyType(Keys.KeyType.KEY_TYPE_ED25519).build());
        var myDidDocument = myKey.getDidDocument().getFieldsMap();
        var request = UniversalWallet.CreateWalletRequest.newBuilder()
                .setController(myDidDocument.get("id").getStringValue())
                .setSecurityCode(securityCode)
                .build();
        var response = walletClient.createWallet(request);
        return UniversalWallet.WalletProfile.newBuilder()
                .setWalletId(response.getWalletId())
                .setCapability(response.getCapability())
                .setDidDocument(CommonOuterClass.JsonPayload.newBuilder().setJsonStruct(myKey.getDidDocument()))
                .setInvoker(response.getInvoker())
                .setInvokerJwk(myKey.getKey(0).toByteString())
                .build();
    }

    public HashMap issueCredential(HashMap document) {
        var response = getCredentialClient().issue(VerifiableCredentials.IssueRequest.newBuilder()
                .setDocument(Utilities.createPayloadString(document)).build());
        return new Gson().fromJson(response.getDocument().getJsonString(), HashMap.class);
    }

    public UniversalWallet.SearchResponse search(String query) {
        if (query == null)
            query = "SELECT * from c";

        return getWalletClient().search(UniversalWallet.SearchRequest.newBuilder().setQuery(query).build());
    }

    public String insertItem(HashMap item) {
        return getWalletClient().insertItem(UniversalWallet.InsertItemRequest.newBuilder()
                .setItem(Utilities.createPayloadString(item)).build()).getItemId();
    }

    public void send(HashMap document, String email) {
        var response  = getCredentialClient().send(VerifiableCredentials.SendRequest.newBuilder()
                        .setEmail(email)
                        .setDocument(Utilities.createPayloadString(document))
                .build());
        GrpcException.assertSuccessfulResponse(response.getStatusValue(), response);
    }

    public HashMap createProof(String documentId, HashMap revealDocument) {
        return new Gson().fromJson(
          getCredentialClient().createProof(VerifiableCredentials.CreateProofRequest.newBuilder()
                  .setDocumentId(documentId)
                  .setRevealDocument(Utilities.createPayloadString(revealDocument))
                  .build()).getProofDocument().getJsonString()
                , HashMap.class
        );
    }

    public boolean verifyProof(HashMap proofDocument) {
        return getCredentialClient().verifyProof(VerifiableCredentials.VerifyProofRequest.newBuilder()
                .setProofDocument(Utilities.createPayloadString(proofDocument)).build()).getValid();
    }

    private WalletGrpc.WalletBlockingStub getWalletClient() {
        return this.walletClient.withInterceptors(
                MetadataUtils.newAttachHeadersInterceptor(this.getMetadata()));
    }
    private CredentialGrpc.CredentialBlockingStub getCredentialClient() {
        return this.credentialClient.withInterceptors(
                MetadataUtils.newAttachHeadersInterceptor(this.getMetadata()));
    }
}

