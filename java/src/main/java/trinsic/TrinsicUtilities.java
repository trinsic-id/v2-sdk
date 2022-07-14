package trinsic;

import com.google.gson.Gson;
import io.grpc.ManagedChannel;
import io.grpc.ManagedChannelBuilder;
import trinsic.sdk.options.v1.Options;

import java.util.HashMap;

public class TrinsicUtilities {

  private static String getEnvVar(String key, String defaultValue) {
    var envValue = System.getenv(key);
    if (envValue != null) return envValue;
    return defaultValue;
  }

  public static Options.ServiceOptions.Builder getTrinsicServiceOptions() {

    String endpoint = getEnvVar("TEST_SERVER_ENDPOINT", "prod.trinsic.cloud");
    int port = Integer.parseInt(getEnvVar("TEST_SERVER_PORT", "443"));
    boolean useTls = Boolean.parseBoolean(getEnvVar("TEST_SERVER_USE_TLS", "true"));
    String authToken = getEnvVar("TEST_SERVER_AUTH_TOKEN", "");

    return Options.ServiceOptions.newBuilder()
        .setServerEndpoint(endpoint)
        .setServerPort(port)
        .setAuthToken(authToken)
        .setServerUseTls(useTls);
  }

  public static Options.ServiceOptions.Builder getTrinsicServiceOptions(String authToken) {
    return getTrinsicServiceOptions().setAuthToken(authToken);
  }

  public static String hashmapToJson(HashMap document) {
    var gson = new Gson();
    return gson.toJson(document, HashMap.class);
  }

  public static ManagedChannel getChannel(Options.ServiceOptions config) {
    var channelBuilder =
        ManagedChannelBuilder.forAddress(config.getServerEndpoint(), config.getServerPort());
    if (!config.getServerUseTls()) channelBuilder = channelBuilder.usePlaintext();
    else channelBuilder = channelBuilder.useTransportSecurity();
    return channelBuilder.build();
  }

  public static String getSdkVersion() {
    final String sdkVersion = "1.0.0";
    return sdkVersion;
  }
}
