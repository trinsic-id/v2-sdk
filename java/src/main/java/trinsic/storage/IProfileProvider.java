package trinsic.storage;

import trinsic.services.account.v1.AccountProfile;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;

public interface IProfileProvider {
  AccountProfile get(String name) throws NoSuchAlgorithmException, IOException;

  void save(String name, AccountProfile accountProfile)
      throws NoSuchAlgorithmException, IOException;
}
