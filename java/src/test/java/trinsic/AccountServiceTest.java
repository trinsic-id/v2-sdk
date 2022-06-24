package trinsic;

import com.google.protobuf.InvalidProtocolBufferException;
import java.util.concurrent.ExecutionException;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import trinsic.okapi.DidException;
import trinsic.services.AccountService;
import trinsic.services.TrinsicService;

class AccountServiceTest {

  @Test
  public void testProtectUnprotectAccount()
      throws ExecutionException, InterruptedException, InvalidProtocolBufferException,
          DidException {
    // accountServiceConstructor() {
    var trinsic = new TrinsicService(TrinsicUtilities.getTrinsicServiceOptions());
    // }
    // accountServiceSignIn() {
    var myProfile = trinsic.account().signIn().get();
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
          Assertions.assertEquals(
              myProtectedProfile, trinsic.account().getOptionsBuilder().getAuthToken());
          trinsic.account().getInfo().get();
        });

    Assertions.assertDoesNotThrow(
        () -> {
          trinsic.setProfile(myUnprotectedProfile);
          // getInfo() {
          var info = trinsic.account().getInfo().get();
          // }
        });
  }
}
