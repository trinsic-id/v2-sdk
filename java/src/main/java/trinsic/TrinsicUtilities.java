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
    public static Options.ServiceOptions getTrinsicServiceOptions() {

        String endpoint = getEnvVar("TEST_SERVER_ENDPOINT", "prod.trinsic.cloud");
        int port = Integer.parseInt(getEnvVar("TEST_SERVER_PORT", "443"));
        boolean useTls = Boolean.parseBoolean(getEnvVar("TEST_SERVER_USE_TLS", "true"));
        String authToken = getEnvVar("TEST_SERVER_AUTH_TOKEN", "");
        String defaultEcosystem = getEnvVar("TEST_SERVER_ECOSYSTEM", "default");

        return Options.ServiceOptions.newBuilder()
                .setServerEndpoint(endpoint)
                .setServerPort(port)
                .setAuthToken(authToken)
                .setDefaultEcosystem(defaultEcosystem)
                .setServerUseTls(useTls).build();
    }

    public static Options.ServiceOptions getTrinsicServiceOptions(String authToken) {
        return Options.ServiceOptions.newBuilder().mergeFrom(getTrinsicServiceOptions()).setAuthToken(authToken).build();
    }

    public static String hashmapToJson(HashMap document) {
        var gson = new Gson();
        return gson.toJson(document, HashMap.class);
    }

    public static ManagedChannel getChannel(Options.ServiceOptions config) {
        var channelBuilder = ManagedChannelBuilder.forAddress(config.getServerEndpoint(), config.getServerPort());
        if (!config.getServerUseTls())
            channelBuilder = channelBuilder.usePlaintext();
        else
            channelBuilder = channelBuilder.useTransportSecurity();
        return channelBuilder.build();
    }
}

