package trinsic.services;

import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.protobuf.ByteString;
import com.google.protobuf.InvalidProtocolBufferException;
import java.util.Base64;
import java.util.concurrent.Executors;
import org.jetbrains.annotations.NotNull;
import trinsic.okapi.DidException;
import trinsic.okapi.Oberon;
import trinsic.okapi.security.v1.Security;
import trinsic.sdk.options.v1.Options;
import trinsic.services.account.v1.AccountGrpc;
import trinsic.services.account.v1.AccountOuterClass;

public class AccountService extends ServiceBase {
  private final AccountGrpc.AccountFutureStub stub;

  public AccountService() {
    this(null);
  }

  public AccountService(Options.ServiceOptions options) {
    super(options);
    this.stub = AccountGrpc.newFutureStub(this.getChannel());
  }

  public ListenableFuture<String> signIn() {
    return signIn(AccountOuterClass.SignInRequest.getDefaultInstance());
  }

  public ListenableFuture<String> signIn(@NotNull AccountOuterClass.SignInRequest request) {
    if (request.getEcosystemId().isBlank())
      request =
          AccountOuterClass.SignInRequest.newBuilder(request)
              .setEcosystemId(this.getOptions().getDefaultEcosystem())
              .build();
    var response = this.stub.signIn(request);
    return Futures.transform(
        response,
        input -> {
          var profileBase64 =
              Base64.getUrlEncoder().encodeToString(input.getProfile().toByteArray());
          this.setProfile(profileBase64);
          return profileBase64;
        },
        Executors.newSingleThreadExecutor());
  }

  public static String unprotect(String base64Profile, String securityCode)
      throws InvalidProtocolBufferException, DidException {
    var profile =
        AccountOuterClass.AccountProfile.newBuilder()
            .mergeFrom(Base64.getUrlDecoder().decode(base64Profile))
            .build();
    var request =
        Security.UnBlindOberonTokenRequest.newBuilder()
            .setToken(profile.getAuthToken())
            .addBlinding(ByteString.copyFromUtf8(securityCode))
            .build();
    var result = Oberon.unBlindToken(request);

    profile =
        AccountOuterClass.AccountProfile.newBuilder(profile)
            .setAuthToken(result.getToken())
            .setProtection(
                AccountOuterClass.TokenProtection.newBuilder()
                    .setMethod(AccountOuterClass.ConfirmationMethod.None)
                    .setEnabled(false)
                    .build())
            .build();
    return Base64.getUrlEncoder().encodeToString(profile.toByteArray());
  }

  public static String protect(String base64Profile, String securityCode)
      throws InvalidProtocolBufferException, DidException {
    var profile =
        AccountOuterClass.AccountProfile.newBuilder()
            .mergeFrom(Base64.getUrlDecoder().decode(base64Profile))
            .build();
    var request =
        Security.BlindOberonTokenRequest.newBuilder()
            .setToken(profile.getAuthToken())
            .addBlinding(ByteString.copyFromUtf8(securityCode))
            .build();
    var result = Oberon.blindToken(request);

    profile =
        AccountOuterClass.AccountProfile.newBuilder(profile)
            .setAuthToken(result.getToken())
            .setProtection(
                AccountOuterClass.TokenProtection.newBuilder()
                    .setMethod(AccountOuterClass.ConfirmationMethod.Other)
                    .setEnabled(true)
                    .build())
            .build();
    return Base64.getUrlEncoder().encodeToString(profile.toByteArray());
  }

  public ListenableFuture<AccountOuterClass.InfoResponse> getInfo()
      throws InvalidProtocolBufferException, DidException {
    var request = AccountOuterClass.InfoRequest.newBuilder().build();
    return withMetadata(stub, request).info(request);
  }

  public ListenableFuture<AccountOuterClass.ListDevicesResponse> listDevices(
      AccountOuterClass.ListDevicesRequest request)
      throws InvalidProtocolBufferException, DidException {
    return withMetadata(stub, request).listDevices(request);
  }

  public ListenableFuture<AccountOuterClass.RevokeDeviceResponse> revokeDevice(
      AccountOuterClass.RevokeDeviceRequest request)
      throws InvalidProtocolBufferException, DidException {
    return withMetadata(stub, request).revokeDevice(request);
  }
}
