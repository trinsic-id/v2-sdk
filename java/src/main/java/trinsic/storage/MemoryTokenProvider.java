package trinsic.storage;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.HashMap;
import trinsic.TrinsicUtilities;

public class MemoryTokenProvider implements ITokenProvider {
  HashMap<String, String> tokens = new HashMap<>();

  @Override
  public ListenableFuture<String> get(String name) {
    return TrinsicUtilities.GetListenableFutureValue(tokens.get(name));
  }

  @Override
  public ListenableFuture<String> save(String accountProfile, String name) {
    tokens.put(name, accountProfile);
    return get(name);
  }

  @Override
  public ListenableFuture<String> save(String accountProfile) {
    return save(accountProfile, "default");
  }
}
