package trinsic.services;

import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.protobuf.ByteString;
import com.google.protobuf.InvalidProtocolBufferException;
import java.nio.charset.StandardCharsets;
import java.util.Base64;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executors;
import org.jetbrains.annotations.NotNull;
import trinsic.okapi.DidException;
import trinsic.okapi.Hashing;
import trinsic.okapi.Oberon;
import trinsic.okapi.security.v1.Security;
import trinsic.sdk.options.v1.Options;
import trinsic.services.account.v1.*;

public class AccountService extends ServiceBase {
  private final AccountGrpc.AccountFutureStub stub;

  public AccountService() {
    this(null);
  }

  public AccountService(Options.ServiceOptions.Builder options) {
    super(options);
    this.stub = AccountGrpc.newFutureStub(this.getChannel());
  }

  public ListenableFuture<String> signIn() {
    return signIn(SignInRequest.getDefaultInstance());
  }

  public ListenableFuture<String> signIn(@NotNull SignInRequest request) {
    if (request.getEcosystemId().isBlank())
      request = SignInRequest.newBuilder(request).setEcosystemId("default").build();
    var response = this.stub.signIn(request);
    return Futures.transform(
        response,
        input -> {
          var token = Base64.getUrlEncoder().encodeToString(input.getProfile().toByteArray());
          this.getOptionsBuilder().setAuthToken(token);
          return token;
        },
        Executors.newSingleThreadExecutor());
  }

  public static String unprotect(String base64Profile, String securityCode)
      throws InvalidProtocolBufferException, DidException {
    var profile =
        AccountProfile.newBuilder().mergeFrom(Base64.getUrlDecoder().decode(base64Profile)).build();
    var request =
        Security.UnBlindOberonTokenRequest.newBuilder()
            .setToken(profile.getAuthToken())
            .addBlinding(ByteString.copyFromUtf8(securityCode))
            .build();
    var result = Oberon.unBlindToken(request);

    profile =
        AccountProfile.newBuilder(profile)
            .setAuthToken(result.getToken())
            .setProtection(
                TokenProtection.newBuilder()
                    .setMethod(ConfirmationMethod.None)
                    .setEnabled(false)
                    .build())
            .build();
    return Base64.getUrlEncoder().encodeToString(profile.toByteArray());
  }

  public static String protect(String base64Profile, String securityCode)
      throws InvalidProtocolBufferException, DidException {
    var profile =
        AccountProfile.newBuilder().mergeFrom(Base64.getUrlDecoder().decode(base64Profile)).build();
    var request =
        Security.BlindOberonTokenRequest.newBuilder()
            .setToken(profile.getAuthToken())
            .addBlinding(ByteString.copyFromUtf8(securityCode))
            .build();
    var result = Oberon.blindToken(request);

    profile =
        AccountProfile.newBuilder(profile)
            .setAuthToken(result.getToken())
            .setProtection(
                TokenProtection.newBuilder()
                    .setMethod(ConfirmationMethod.Other)
                    .setEnabled(true)
                    .build())
            .build();
    return Base64.getUrlEncoder().encodeToString(profile.toByteArray());
  }

  public ListenableFuture<LoginResponse> login(LoginRequest request)
      throws InvalidProtocolBufferException, DidException {
    return stub.login(request);
  }

  public ListenableFuture<String> loginConfirm(ByteString challenge, String authCode)
      throws InvalidProtocolBufferException, DidException {
    var hashed =
        Hashing.blake3_hash(
                trinsic.okapi.hashing.v1.Hashing.Blake3HashRequest.newBuilder()
                    .setData(ByteString.copyFrom(authCode.getBytes(StandardCharsets.UTF_8)))
                    .build())
            .getDigest();

    var request =
        LoginConfirmRequest.newBuilder()
            .setChallenge(challenge)
            .setConfirmationCodeHashed(hashed)
            .build();

    var response = stub.loginConfirm(request);

    return Futures.transform(
        response,
        input -> {
          if (!input.hasProfile()) return null;

          var token = Base64.getUrlEncoder().encodeToString(input.getProfile().toByteArray());

          if (input.getProfile().getProtection().getEnabled()) {
            try {
              token = unprotect(token, authCode);
            } catch (InvalidProtocolBufferException | DidException e) {
              throw new RuntimeException(e);
            }
          }
          this.getOptionsBuilder().setAuthToken(token);
          return token;
        },
        Executors.newSingleThreadExecutor());
  }

  public ListenableFuture<String> loginAnonymous()
      throws InvalidProtocolBufferException, DidException, ExecutionException,
          InterruptedException {
    return loginAnonymous("default");
  }

  public ListenableFuture<String> loginAnonymous(String ecosystemId)
      throws InvalidProtocolBufferException, DidException, ExecutionException,
          InterruptedException {
    var response = login(LoginRequest.newBuilder().setEcosystemId(ecosystemId).build());

    return Futures.transform(
        response,
        input -> {
          if (!input.hasProfile() || input.getProfile().getProtection().getEnabled()) return null;

          var token = Base64.getUrlEncoder().encodeToString(input.getProfile().toByteArray());
          this.getOptionsBuilder().setAuthToken(token);
          return token;
        },
        Executors.newSingleThreadExecutor());
  }

  public ListenableFuture<AccountInfoResponse> getInfo()
      throws InvalidProtocolBufferException, DidException {
    var request = AccountInfoRequest.newBuilder().build();
    return withMetadata(stub, request).info(request);
  }

  // BEGIN Code generated by protoc-gen-trinsic. DO NOT EDIT.
  // target: C:\work\sdk\java\src\main\java\trinsic\services\AccountService.java

  public ListenableFuture<AccountInfoResponse> info(AccountInfoRequest request)
      throws InvalidProtocolBufferException, DidException {
    // TODO - Handle metadata
    return withMetadata(stub, request).info(request);
  }

  public ListenableFuture<ListDevicesResponse> listDevices(ListDevicesRequest request)
      throws InvalidProtocolBufferException, DidException {
    // TODO - Handle metadata
    return withMetadata(stub, request).listDevices(request);
  }

  public ListenableFuture<RevokeDeviceResponse> revokeDevice(RevokeDeviceRequest request)
      throws InvalidProtocolBufferException, DidException {
    // TODO - Handle metadata
    return withMetadata(stub, request).revokeDevice(request);
  }

  public ListenableFuture<AuthorizeWebhookResponse> authorizeWebhook(
      AuthorizeWebhookRequest request) throws InvalidProtocolBufferException, DidException {
    // TODO - Handle metadata
    return withMetadata(stub, request).authorizeWebhook(request);
  }
  // END Code generated by protoc-gen-trinsic. DO NOT EDIT.
}
