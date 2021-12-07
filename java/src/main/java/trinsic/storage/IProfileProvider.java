package trinsic.storage;

import trinsic.services.account.v1.AccountOuterClass;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;

public interface IProfileProvider {
    AccountOuterClass.AccountProfile get(String name) throws NoSuchAlgorithmException, IOException;
    void save(String name, AccountOuterClass.AccountProfile accountProfile) throws NoSuchAlgorithmException, IOException;
}
