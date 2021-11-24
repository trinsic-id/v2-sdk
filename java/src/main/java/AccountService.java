import com.google.protobuf.ByteString;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
import io.grpc.stub.MetadataUtils;
import trinsic.okapi.security.v1.Security;
import trinsic.services.account.v1.Account;
import trinsic.services.account.v1.AccountServiceGrpc;
import trinsic.services.common.v1.CommonOuterClass;

public class AccountService extends ServiceBase {
    private final AccountServiceGrpc.AccountServiceBlockingStub stub;

    public AccountService(Account.AccountProfile accountProfile, CommonOuterClass.ServerConfig serverConfig) {
        super(accountProfile, serverConfig);
        this.stub = AccountServiceGrpc.newBlockingStub(this.getChannel());
    }

    public Account.SignInResponse signIn(Account.AccountDetails details) {
        if (details == null)
            details = Account.AccountDetails.newBuilder().build();
        var request = Account.SignInRequest.newBuilder().setDetails(details).build();
        return this.stub.signIn(request);
    }

    public Account.AccountProfile unprotect(Account.AccountProfile profile, String securityCode) throws InvalidProtocolBufferException, DidException {
        var request = Security.UnBlindOberonTokenRequest.newBuilder()
                .setToken(profile.getAuthToken())
                .addBlinding(ByteString.copyFromUtf8(securityCode))
                .build();
        var result = Oberon.unBlindToken(request);

        return Account.AccountProfile.newBuilder(profile)
                .setAuthToken(result.getToken())
                .setProtection(Account.TokenProtection.newBuilder()
                        .setMethod(Account.ConfirmationMethod.None)
                        .setEnabled(false)
                        .build()
                )
                .build();
    }

    public Account.AccountProfile protect(Account.AccountProfile profile, String securityCode) throws InvalidProtocolBufferException, DidException {
        var request = Security.BlindOberonTokenRequest.newBuilder()
                .setToken(profile.getAuthToken())
                .addBlinding(ByteString.copyFromUtf8(securityCode))
                .build();
        var result = Oberon.blindToken(request);

        return Account.AccountProfile.newBuilder(profile)
                .setAuthToken(result.getToken())
                .setProtection(Account.TokenProtection.newBuilder()
                        .setMethod(Account.ConfirmationMethod.Other)
                        .setEnabled(true)
                        .build()
                )
                .build();
    }

    public Account.InfoResponse getInfo() throws InvalidProtocolBufferException, DidException {
        var request = Account.InfoRequest.newBuilder().build();
        return clientWithMetadata(request).info(request);
    }

    private AccountServiceGrpc.AccountServiceBlockingStub clientWithMetadata(Message message) throws InvalidProtocolBufferException, DidException {
        return this.stub.withInterceptors(
                MetadataUtils.newAttachHeadersInterceptor(this.buildMetadata(message)));
    }
}
