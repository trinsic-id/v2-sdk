import com.google.protobuf.InvalidProtocolBufferException;
import io.grpc.Channel;
import io.grpc.ManagedChannel;
import io.grpc.stub.MetadataUtils;
import io.grpc.stub.StreamObserver;
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
    public WalletGrpc.WalletStub walletClient;
    public CredentialGrpc.CredentialStub credentialClient;

    public TrinsicWalletService(String serviceAddress) throws MalformedURLException {
        this.channel = Utilities.getChannel(serviceAddress);
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

    public void createWallet(String securityCode, StreamObserver<UniversalWallet.WalletProfile> observer) throws InvalidProtocolBufferException, DidException {
        securityCode = securityCode == null ? "" : securityCode;

        var myKey = DidKey.generate(Keys.GenerateKeyRequest.newBuilder().setKeyType(Keys.KeyType.KEY_TYPE_ED25519).build());
        var myDidDocument = myKey.getDidDocument().getFieldsMap();
        var request = UniversalWallet.CreateWalletRequest.newBuilder()
                .setController(myDidDocument.get("id").getStringValue())
                .setSecurityCode(securityCode)
                .build();
        StreamObserver<UniversalWallet.CreateWalletResponse> createWalletResponseStreamObserver = new StreamObserver<>() {
            @Override
            public void onNext(UniversalWallet.CreateWalletResponse value) {
                var profile = UniversalWallet.WalletProfile.newBuilder()
                        .setWalletId(value.getWalletId())
                        .setCapability(value.getCapability())
                        .setDidDocument(CommonOuterClass.JsonPayload.newBuilder().setJsonStruct(myKey.getDidDocument()))
                        .setInvoker(value.getInvoker())
                        .setInvokerJwk(myKey.getKey(0).toByteString())
                        .build();
                observer.onNext(profile);
            }

            @Override
            public void onError(Throwable t) {
                observer.onError(t);
            }

            @Override
            public void onCompleted() {
                observer.onCompleted();
            }
        };
        walletClient.createWallet(request, createWalletResponseStreamObserver);
    }

    public void issueCredential(HashMap document, StreamObserver<VerifiableCredentials.IssueResponse> observer) {
        getCredentialClient().issue(VerifiableCredentials.IssueRequest.newBuilder()
                .setDocument(Utilities.createPayloadString(document)).build(), observer);
    }

    public void search(String query, StreamObserver<UniversalWallet.SearchResponse> observer) {
        if (query == null)
            query = "SELECT * from c";

        getWalletClient().search(UniversalWallet.SearchRequest.newBuilder().setQuery(query).build(), observer);
    }

    public void insertItem(HashMap item, StreamObserver<UniversalWallet.InsertItemResponse> observer) {
        getWalletClient().insertItem(UniversalWallet.InsertItemRequest.newBuilder()
                .setItem(Utilities.createPayloadString(item)).build(), observer);
    }

    public void send(HashMap document, String email, StreamObserver<VerifiableCredentials.SendResponse> observer) {
        getCredentialClient().send(VerifiableCredentials.SendRequest.newBuilder()
                        .setEmail(email)
                        .setDocument(Utilities.createPayloadString(document))
                .build(), observer);
    }

    public void createProof(String documentId, HashMap revealDocument, StreamObserver<VerifiableCredentials.CreateProofResponse> observer) {
          getCredentialClient().createProof(VerifiableCredentials.CreateProofRequest.newBuilder()
                  .setDocumentId(documentId)
                  .setRevealDocument(Utilities.createPayloadString(revealDocument))
                  .build(), observer);
    }

    public void verifyProof(HashMap proofDocument, StreamObserver<VerifiableCredentials.VerifyProofResponse> observer) {
        getCredentialClient().verifyProof(VerifiableCredentials.VerifyProofRequest.newBuilder()
                .setProofDocument(Utilities.createPayloadString(proofDocument)).build(), observer);
    }

    private WalletGrpc.WalletStub getWalletClient() {
        return this.walletClient.withInterceptors(
                MetadataUtils.newAttachHeadersInterceptor(this.getMetadata()));
    }
    private CredentialGrpc.CredentialStub getCredentialClient() {
        return this.credentialClient.withInterceptors(
                MetadataUtils.newAttachHeadersInterceptor(this.getMetadata()));
    }
}

