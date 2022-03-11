package trinsic.services;

import com.google.protobuf.InvalidProtocolBufferException;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import trinsic.TrinsicUtilities;
import trinsic.okapi.DidException;

import java.util.concurrent.ExecutionException;

class AccountServiceTest {

    @Test
    public void testProtectUnprotectAccount() throws ExecutionException, InterruptedException, InvalidProtocolBufferException, DidException {
        var accountService = new AccountService(TrinsicUtilities.getTrinsicServiceOptions());
        var myProfile = accountService.signIn(null).get();

        var code = "1234";
        var myProtectedProfile = accountService.protect(myProfile, code);
        var myUnprotectedProfile = accountService.unprotect(myProtectedProfile, code);

        Assertions.assertThrows(Exception.class, () -> {
           accountService.setProfile(myProtectedProfile);
           Assertions.assertEquals(myProtectedProfile, accountService.getOptions().getAuthToken());
           accountService.getInfo().get();
        });

        Assertions.assertDoesNotThrow(() -> {
            accountService.setProfile(myUnprotectedProfile);
            accountService.getInfo().get();
        });
    }

}