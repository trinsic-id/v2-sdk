import Okapi.Keys.API;
import com.google.gson.Gson;
import com.google.protobuf.Empty;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.util.JsonFormat;
import io.grpc.Channel;
import io.grpc.stub.MetadataUtils;
import pbmse.Pbmse;
import trinsic.services.*;

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

    public void registerOrConnect(String email) {
        var response = this.walletClient.connectExternalIdentity(WalletService.ConnectRequest.newBuilder()
                .setEmail(email).build());
        GrpcException.assertSuccessfulResponse(response.getStatusValue(), response);
    }

    public WalletService.WalletProfile createWallet(String securityCode) throws InvalidProtocolBufferException, DidException {
        securityCode = securityCode == null ? "" : securityCode;

        var configuration = this.walletClient.getProviderConfiguration(Empty.newBuilder().build());
        var resolveResponse = DidKey.resolve(API.ResolveRequest.newBuilder()
                .setDid(configuration.getKeyAgreementKeyId()).build());
        var providerExchangeKey = resolveResponse.getKeysList().stream().filter(x -> x.getKid().equals(configuration.getKeyAgreementKeyId())).findFirst().get();

        var myKey = DidKey.generate(API.GenerateKeyRequest.newBuilder().setKeyType(API.KeyType.Ed25519).build());
        var myExchangeKey = myKey.getKeyList().stream().filter(x -> x.getCrv().equals("X25519")).findFirst().get();

        var myDidDocument = myKey.getDidDocument();

        var packedMessage = DidComm.pack(Okapi.Transport.API.PackRequest.newBuilder()
                .setSenderKey(myExchangeKey)
                .setReceiverKey(providerExchangeKey)
                .setPlaintext(WalletService.CreateWalletRequest.newBuilder()
                        .setDescription("My Cloud Wallet")
                        .setController(myDidDocument.getFieldsOrThrow("id").getStringValue())
                        .setSecurityCode(securityCode)
                        .build().toByteString()).build());

        var response = walletClient.createWalletEncrypted(Pbmse.EncryptedMessage.newBuilder()
                .setIv(packedMessage.getMessage().getIv())
                .addAllRecipients(packedMessage.getMessage().getRecipientsList())
                .setCiphertext(packedMessage.getMessage().getCiphertext())
                .setAad(packedMessage.getMessage().getAad())
                .setTag(packedMessage.getMessage().getTag())
                .build());

        var decryptedResponse = DidComm.unpack(Okapi.Transport.API.UnpackRequest.newBuilder()
                .setMessage(response)
                .setReceiverKey(myExchangeKey)
                .setSenderKey(providerExchangeKey)
                .build());

        var createWalletResponse = WalletService.CreateWalletResponse.parseFrom(decryptedResponse.getPlaintext());
        return WalletService.WalletProfile.newBuilder()
                .setWalletId(createWalletResponse.getWalletId())
                .setCapability(createWalletResponse.getCapability())
                .setDidDocument(CoreService.JsonPayload.newBuilder().setJsonString(JsonFormat.printer().print(myDidDocument)))
                .setInvoker(createWalletResponse.getInvoker())
                .setInvokerJwk(myKey.getKey(0).toByteString())
                .build();
    }

    public HashMap issueCredential(HashMap document) {
        var response = getCredentialClient().issue(IssuerService.IssueRequest.newBuilder()
                .setDocument(Utilities.createPayloadString(document)).build());
        return new Gson().fromJson(response.getDocument().getJsonString(), HashMap.class);
    }

    public WalletService.SearchResponse search(String query) {
        if (query == null)
            query = "SELECT * from c";

        return getWalletClient().search(WalletService.SearchRequest.newBuilder().setQuery(query).build());
    }

    public String insertItem(HashMap item) {
        return getWalletClient().insertItem(WalletService.InsertItemRequest.newBuilder()
                .setItem(Utilities.createPayloadString(item)).build()).getItemId();
    }

    public void send(HashMap document, String email) {
        var response  = getCredentialClient().send(IssuerService.SendRequest.newBuilder()
                        .setEmail(email)
                        .setDocument(Utilities.createPayloadString(document))
                .build());
        GrpcException.assertSuccessfulResponse(response.getStatusValue(), response);
    }

    public HashMap createProof(String documentId, HashMap revealDocument) {
        return new Gson().fromJson(
          getCredentialClient().createProof(IssuerService.CreateProofRequest.newBuilder()
                  .setDocumentId(documentId)
                  .setRevealDocument(Utilities.createPayloadString(revealDocument))
                  .build()).getProofDocument().getJsonString()
                , HashMap.class
        );
    }

    public boolean verifyProof(HashMap proofDocument) {
        return getCredentialClient().verifyProof(IssuerService.VerifyProofRequest.newBuilder()
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

