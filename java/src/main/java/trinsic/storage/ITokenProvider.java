package trinsic.storage;

import com.google.common.util.concurrent.ListenableFuture;

public interface ITokenProvider {
  ListenableFuture<String> get(String name);

  ListenableFuture<String> save(String accountProfile, String name);

  ListenableFuture<String> save(String accountProfile);
}
