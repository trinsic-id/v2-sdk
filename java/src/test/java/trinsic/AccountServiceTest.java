package trinsic;

import com.google.protobuf.InvalidProtocolBufferException;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import trinsic.okapi.DidException;
import trinsic.services.AccountService;

import java.util.concurrent.ExecutionException;

class AccountServiceTest {

    @Test
    public void testProtectUnprotectAccount() throws ExecutionException, InterruptedException, InvalidProtocolBufferException, DidException {
        // accountServiceConstructor() {
        var accountService = new AccountService(TrinsicUtilities.getTrinsicServiceOptions());
        // }
        // accountServiceSignIn() {
        var myProfile = accountService.signIn().get();
        // }

        // protectUnprotectProfile() {
        var code = "1234";
        var myProtectedProfile = AccountService.protect(myProfile, code);
        var myUnprotectedProfile = AccountService.unprotect(myProtectedProfile, code);
        // }

        Assertions.assertThrows(Exception.class, () -> {
           accountService.setProfile(myProtectedProfile);
           Assertions.assertEquals(myProtectedProfile, accountService.getOptions().getAuthToken());
           accountService.getInfo().get();
        });

        Assertions.assertDoesNotThrow(() -> {
            accountService.setProfile(myUnprotectedProfile);
            // getInfo() {
            var info = accountService.getInfo().get();
            // }
        });
    }

}