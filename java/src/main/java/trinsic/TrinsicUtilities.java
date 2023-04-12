package trinsic;

import com.google.common.util.concurrent.ListenableFuture;
import com.google.gson.Gson;
import io.grpc.ManagedChannel;
import io.grpc.ManagedChannelBuilder;
import java.util.HashMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.jetbrains.annotations.NotNull;
import trinsic.sdk.options.v1.Options;

public class TrinsicUtilities {

  private static String getEnvVar(String key, String defaultValue) {
    var envValue = System.getenv(key);
    if (envValue != null) return envValue;
    return defaultValue;
  }

  public static Options.TrinsicOptions.Builder getTrinsicTrinsicOptions() {

    String endpoint = getEnvVar("TEST_SERVER_ENDPOINT", "prod.trinsic.cloud");
    int port = Integer.parseInt(getEnvVar("TEST_SERVER_PORT", "443"));
    boolean useTls = Boolean.parseBoolean(getEnvVar("TEST_SERVER_USE_TLS", "true"));
    String authToken = getEnvVar("TEST_SERVER_AUTH_TOKEN", "");

    return Options.TrinsicOptions.newBuilder()
        .setServerEndpoint(endpoint)
        .setServerPort(port)
        .setAuthToken(authToken)
        .setServerUseTls(useTls);
  }

  public static Options.TrinsicOptions.Builder getTrinsicTrinsicOptions(String authToken) {
    return getTrinsicTrinsicOptions().setAuthToken(authToken);
  }

  public static String hashmapToJson(HashMap document) {
    var gson = new Gson();
    return gson.toJson(document, HashMap.class);
  }

  public static ManagedChannel getChannel(Options.TrinsicOptions config) {
    var channelBuilder =
        ManagedChannelBuilder.forAddress(config.getServerEndpoint(), config.getServerPort());
    if (!config.getServerUseTls()) channelBuilder = channelBuilder.usePlaintext();
    else channelBuilder = channelBuilder.useTransportSecurity();
    return channelBuilder.build();
  }

  /**
   * Wraps a known value in a `ListenableFuture` for debugging or other synchronous call areas.
   *
   * @param value
   * @return
   * @param <T>
   */
  public static <T> ListenableFuture<T> GetListenableFutureValue(T value) {
    return new ListenableFuture<>() {
      @Override
      public void addListener(Runnable listener, Executor executor) {}

      @Override
      public boolean cancel(boolean mayInterruptIfRunning) {
        return false;
      }

      @Override
      public boolean isCancelled() {
        return false;
      }

      @Override
      public boolean isDone() {
        return true;
      }

      @Override
      public T get() throws InterruptedException, ExecutionException {
        return value;
      }

      @Override
      public T get(long timeout, @NotNull TimeUnit unit)
          throws InterruptedException, ExecutionException, TimeoutException {
        return value;
      }
    };
  }

  public static String getSdkVersion() {
    final String sdkVersion = "1.8.0";
    return sdkVersion;
  }
}
