package trinsic.services;

import com.google.common.util.concurrent.ListenableFuture;
import com.google.protobuf.ByteString;
import com.google.protobuf.InvalidProtocolBufferException;
import io.grpc.Channel;
import trinsic.okapi.DidException;
import trinsic.okapi.Oberon;
import trinsic.okapi.security.v1.Security;
import trinsic.services.account.v1.AccountGrpc;
import trinsic.services.account.v1.AccountOuterClass;
import trinsic.services.common.v1.CommonOuterClass;

public class AccountService extends ServiceBase {
    private final AccountGrpc.AccountFutureStub stub;

    public AccountService() {
        this(null, null, null);
    }

    public AccountService(AccountOuterClass.AccountProfile accountProfile) {
        this(accountProfile, null, null);
    }

    public AccountService(AccountOuterClass.AccountProfile accountProfile, Channel existingChannel) {
        this(accountProfile, null, existingChannel);
    }

    protected AccountService(AccountOuterClass.AccountProfile accountProfile, CommonOuterClass.ServerConfig serverConfig) {
        this(accountProfile, serverConfig, null);
    }

    private AccountService(AccountOuterClass.AccountProfile accountProfile, CommonOuterClass.ServerConfig serverConfig, Channel existingChannel) {
        super(accountProfile, serverConfig, existingChannel);
        this.stub = AccountGrpc.newFutureStub(this.getChannel());
    }

    public ListenableFuture<AccountOuterClass.SignInResponse> signIn(AccountOuterClass.AccountDetails details) {
        if (details == null) details = AccountOuterClass.AccountDetails.newBuilder().build();
        var request = AccountOuterClass.SignInRequest.newBuilder().setDetails(details).build();
        return this.stub.signIn(request);
    }

    public AccountOuterClass.AccountProfile unprotect(AccountOuterClass.AccountProfile profile, String securityCode) throws InvalidProtocolBufferException, DidException {
        var request = Security.UnBlindOberonTokenRequest.newBuilder().setToken(profile.getAuthToken()).addBlinding(ByteString.copyFromUtf8(securityCode)).build();
        var result = Oberon.unBlindToken(request);

        return AccountOuterClass.AccountProfile.newBuilder(profile).setAuthToken(result.getToken()).setProtection(AccountOuterClass.TokenProtection.newBuilder().setMethod(AccountOuterClass.ConfirmationMethod.None).setEnabled(false).build()).build();
    }

    public AccountOuterClass.AccountProfile protect(AccountOuterClass.AccountProfile profile, String securityCode) throws InvalidProtocolBufferException, DidException {
        var request = Security.BlindOberonTokenRequest.newBuilder().setToken(profile.getAuthToken()).addBlinding(ByteString.copyFromUtf8(securityCode)).build();
        var result = Oberon.blindToken(request);

        return AccountOuterClass.AccountProfile.newBuilder(profile).setAuthToken(result.getToken()).setProtection(AccountOuterClass.TokenProtection.newBuilder().setMethod(AccountOuterClass.ConfirmationMethod.Other).setEnabled(true).build()).build();
    }

    public ListenableFuture<AccountOuterClass.InfoResponse> getInfo() throws InvalidProtocolBufferException, DidException {
        var request = AccountOuterClass.InfoRequest.newBuilder().build();
        return withMetadata(stub, request).info(request);
    }

    public ListenableFuture<AccountOuterClass.ListDevicesResponse> listDevices(AccountOuterClass.ListDevicesRequest request) throws InvalidProtocolBufferException, DidException {
        return withMetadata(stub, request).listDevices(request);
    }

    public ListenableFuture<AccountOuterClass.RevokeDeviceResponse> revokeDevice(AccountOuterClass.RevokeDeviceRequest request) throws InvalidProtocolBufferException, DidException {
        return withMetadata(stub, request).revokeDevice(request);
    }
}
