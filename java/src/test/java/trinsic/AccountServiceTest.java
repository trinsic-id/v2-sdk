package trinsic;

import com.google.protobuf.InvalidProtocolBufferException;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import trinsic.okapi.DidException;
import trinsic.services.AccountService;
import trinsic.services.TrinsicService;
import trinsic.services.account.v1.AuthorizeWebhookRequest;
import trinsic.services.account.v1.LoginRequest;
import trinsic.services.account.v1.LoginResponse;

import java.util.concurrent.ExecutionException;

class AccountServiceTest {
    private static String myEcosystemIdOrName = "default";
  @Test
  public void testLogin() {
    var trinsic = new TrinsicService(TrinsicUtilities.getTrinsicServiceOptions());
    LoginResponse myLoginResponse = LoginResponse.newBuilder().build();
    try {

      // loginRequest() {
      var loginResponse =
          trinsic
              .account()
              .login(LoginRequest.newBuilder().setEmail("bob@example.com").setEcosystemId(myEcosystemIdOrName).build())
              .get();
      // }
    } catch (Exception ignored) {
      // This is expected
    }

    try {
      // loginConfirm() {
      var authToken = trinsic.account().loginConfirm(myLoginResponse.getChallenge(), "12345").get();
      // }

      // setAuthTokenSample() {
      trinsic.setAuthToken(authToken);
      // }
    } catch (Exception ignored) {
    }
  }

  @Test
  public void testAuthWebhook()
      throws ExecutionException, InterruptedException, InvalidProtocolBufferException,
          DidException {
    var trinsic = new TrinsicService(TrinsicUtilities.getTrinsicServiceOptions());

    var profile = trinsic.account().loginAnonymous(myEcosystemIdOrName).get();
    trinsic.setAuthToken(profile);

    // authorizeWebhook() {
    var authorizeResponse =
        trinsic
            .account()
            .authorizeWebhook(
                AuthorizeWebhookRequest.newBuilder()
                    .addEvents("*") // Authorize all events
                    .build())
            .get();
    // }
  }

  @Test
  public void testProtectUnprotectAccount()
      throws ExecutionException, InterruptedException, InvalidProtocolBufferException,
          DidException {
    // accountServiceConstructor() {
    var trinsic = new TrinsicService(TrinsicUtilities.getTrinsicServiceOptions());
    // }
    // accountServiceSignIn() {
    var myProfile = trinsic.account().signIn(myEcosystemIdOrName).get();
    // }

    // protectUnprotectProfile() {
    var code = "1234";
    var myProtectedProfile = AccountService.protect(myProfile, code);
    var myUnprotectedProfile = AccountService.unprotect(myProtectedProfile, code);
    // }

    Assertions.assertThrows(
        Exception.class,
        () -> {
          trinsic.setAuthToken(myProtectedProfile);
          Assertions.assertEquals(
              myProtectedProfile, trinsic.account().getOptionsBuilder().getAuthToken());
          trinsic.account().getInfo().get();
        });

    Assertions.assertDoesNotThrow(
        () -> {
          trinsic.setAuthToken(myUnprotectedProfile);
          // getInfo() {
          var info = trinsic.account().getInfo().get();
          // }
        });
  }
}
