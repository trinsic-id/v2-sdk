package storage;

import trinsic.services.account.v1.Account;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;

public interface IProfileProvider {
    Account.AccountProfile get(String name) throws NoSuchAlgorithmException, IOException;
    void save(String name, Account.AccountProfile accountProfile) throws NoSuchAlgorithmException, IOException;
}
