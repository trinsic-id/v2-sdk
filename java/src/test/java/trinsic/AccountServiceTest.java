package trinsic;

import com.google.protobuf.InvalidProtocolBufferException;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import trinsic.okapi.DidException;
import trinsic.services.AccountService;
import trinsic.services.TrinsicService;

import java.util.concurrent.ExecutionException;

class AccountServiceTest {

  @Test
  public void testProtectUnprotectAccount()
      throws ExecutionException, InterruptedException, InvalidProtocolBufferException,
          DidException {
    // accountServiceConstructor() {
    var trinsicService = new TrinsicService(TrinsicUtilities.getTrinsicServiceOptions());
    // }
    // accountServiceSignIn() {
    var myProfile = trinsicService.account().signIn().get();
    // }

    // protectUnprotectProfile() {
    var code = "1234";
    var myProtectedProfile = AccountService.protect(myProfile, code);
    var myUnprotectedProfile = AccountService.unprotect(myProtectedProfile, code);
    // }

    Assertions.assertThrows(
        Exception.class,
        () -> {
          trinsicService.setProfile(myProtectedProfile);
          Assertions.assertEquals(myProtectedProfile, trinsicService.account().getOptions().getAuthToken());
          trinsicService.account().getInfo().get();
        });

    Assertions.assertDoesNotThrow(
        () -> {
          trinsicService.setProfile(myUnprotectedProfile);
          // getInfo() {
          var info = trinsicService.account().getInfo().get();
          // }
        });
  }
}
