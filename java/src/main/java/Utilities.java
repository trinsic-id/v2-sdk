import com.google.gson.Gson;
import com.google.protobuf.Struct;
import com.google.protobuf.Value;
import io.grpc.Channel;
import io.grpc.ManagedChannelBuilder;
import trinsic.services.common.v1.CommonOuterClass;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;

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

    public static CommonOuterClass.JsonPayload createPayloadString(HashMap document) {
        var gson = new Gson();
        return CommonOuterClass.JsonPayload.newBuilder().setJsonString(gson.toJson(document)).build();
    }

    public static Channel getChannel(String serviceAddress) throws MalformedURLException {
        if (serviceAddress == null)
            serviceAddress = "http://localhost:5000";
        var serviceUrl = new URL(serviceAddress);
        if (serviceUrl.getPort() == -1)
            throw new MalformedURLException("Port required!");
        var channelBuilder = ManagedChannelBuilder.forAddress(serviceUrl.getHost(), serviceUrl.getPort());
        if (serviceUrl.getProtocol().equals("http"))
            channelBuilder = channelBuilder.usePlaintext();
        else
            channelBuilder = channelBuilder.useTransportSecurity();
        return channelBuilder.build();
    }
}

