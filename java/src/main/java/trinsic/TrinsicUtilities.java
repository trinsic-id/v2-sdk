package trinsic;

import com.google.gson.Gson;
import io.grpc.ManagedChannel;
import io.grpc.ManagedChannelBuilder;
import trinsic.services.common.v1.CommonOuterClass;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;

public class TrinsicUtilities {

    private static String getEnvVar(String key, String defaultValue) {
        var envValue = System.getenv(key);
        if (envValue != null) return envValue;
        return defaultValue;
    }
    public static CommonOuterClass.ServerConfig getTestServerConfig() {

        String endpoint = getEnvVar("TEST_SERVER_ENDPOINT", "");
        int port = Integer.parseInt(getEnvVar("TEST_SERVER_PORT", "443"));
        boolean useTls = Boolean.parseBoolean(getEnvVar("TEST_SERVER_USE_TLS", "true"));

        return CommonOuterClass.ServerConfig.newBuilder()
                .setEndpoint(endpoint)
                .setPort(port)
                .setUseTls(useTls).build();
    }
    public static CommonOuterClass.ServerConfig getProductionConfig() {
        return CommonOuterClass.ServerConfig.newBuilder()
                .setEndpoint("prod.trinsic.cloud")
                .setPort(443)
                .setUseTls(true).build();
    }
    public static CommonOuterClass.ServerConfig getConfigFromUrl(String url) throws MalformedURLException {
        if (url == null || url.trim().length() == 0)
            url = "http://localhost:5000";
        var serviceUrl = new URL(url);
        if (serviceUrl.getPort() == -1)
            throw new MalformedURLException("Port required!");
        return CommonOuterClass.ServerConfig.newBuilder()
                .setEndpoint(serviceUrl.getHost())
                .setPort(serviceUrl.getPort())
                .setUseTls(serviceUrl.getProtocol().equals("https")).build();
    }

    public static CommonOuterClass.JsonPayload createPayloadString(HashMap document) {
        var gson = new Gson();
        return CommonOuterClass.JsonPayload.newBuilder().setJsonString(gson.toJson(document, HashMap.class)).build();
    }

    public static ManagedChannel getChannel(CommonOuterClass.ServerConfig config) {
        var channelBuilder = ManagedChannelBuilder.forAddress(config.getEndpoint(), config.getPort());
        if (!config.getUseTls())
            channelBuilder = channelBuilder.usePlaintext();
        else
            channelBuilder = channelBuilder.useTransportSecurity();
        return channelBuilder.build();
    }
}

