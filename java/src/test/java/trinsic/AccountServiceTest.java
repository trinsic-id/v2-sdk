package trinsic;

import com.google.protobuf.InvalidProtocolBufferException;
import java.util.concurrent.ExecutionException;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import trinsic.okapi.DidException;
import trinsic.services.AccountService;
import trinsic.services.TrinsicService;
import trinsic.services.account.v1.AccountOuterClass;

class AccountServiceTest {

  @Test
  public void testLogin()
    throws ExecutionException, InterruptedException, InvalidProtocolBufferException,
        DidException {
    var trinsic = new TrinsicService(TrinsicUtilities.getTrinsicServiceOptions());

    // loginRequest() {
    var loginResponse =
        trinsic.accountService().login(
            AccountOuterClass.LoginRequest.newBuilder()
                .setEmail("bob@example.com")
                .build()
        ).get();
    // }


    Assertions.assertThrows(Exception.class, () -> {
        // loginConfirm() {
        var authToken = trinsic.accountService()
            .loginConfirm(loginResponse.getChallenge(), "12345");
        // }
    });
  }

  @Test
  public void testAuthWebhook()
    throws ExecutionException, InterruptedException, InvalidProtocolBufferException,
        DidException {
    var trinsic = new TrinsicService(TrinsicUtilities.getTrinsicServiceOptions());

    var profile = trinsic.accountService().loginAnonymous().get();

    // authorizeWebhook() {
    var authorizeResponse =
        trinsic.accountService().authorizeWebhook(
            AccountOuterClass.AuthorizeWebhookRequest.newBuilder()
                .setEvents(0, "*") //Authorize all events
                .build()
        ).get();
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
    var myProfile = trinsic.accountService().signIn().get();
    // }

    // protectUnprotectProfile() {
    var code = "1234";
    var myProtectedProfile = AccountService.protect(myProfile, code);
    var myUnprotectedProfile = AccountService.unprotect(myProtectedProfile, code);
    // }

    Assertions.assertThrows(
        Exception.class,
        () -> {
          trinsic.setProfile(myProtectedProfile);
          Assertions.assertEquals(myProtectedProfile, trinsic.getOptions().getAuthToken());
          trinsic.accountService().getInfo().get();
        });

    Assertions.assertDoesNotThrow(
        () -> {
          trinsic.setProfile(myUnprotectedProfile);
          // getInfo() {
          var info = trinsic.accountService().getInfo().get();
          // }
        });

    trinsic.shutdown();
  }
}
