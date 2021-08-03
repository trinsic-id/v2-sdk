import com.google.gson.Gson;
import com.google.protobuf.Struct;
import com.google.protobuf.Value;
import io.grpc.*;
import trinsic.services.CoreService;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
import java.util.concurrent.Callable;

public class Utilities {
    public static Value stringValue(String s) {
        return Value.newBuilder().setStringValue(s).build();
    }

    public static Value structValue(HashMap<String, Value> h) {
        return Value.newBuilder().setStructValue(hashmapToStruct(h)).build();
    }

    public static Struct hashmapToStruct(HashMap<String, Value> h) {
        return Struct.newBuilder().putAllFields(h).build();
    }

    public static CoreService.JsonPayload createPayloadString(HashMap document) {
        var gson = new Gson();
        return CoreService.JsonPayload.newBuilder().setJsonString(gson.toJson(document)).build();
    }

    public static Channel getChannel(String serviceAddress, Channel channel) throws MalformedURLException {
        if (serviceAddress == null)
            serviceAddress = "http://localhost:5000";
        if (channel == null) {
            var serviceUrl = new URL(serviceAddress);
            channel = ManagedChannelBuilder.forAddress(serviceUrl.getHost(), serviceUrl.getPort())
                    .usePlaintext().build(); // TODO Switch to HTTPS
        }
        return channel;
    }
}

