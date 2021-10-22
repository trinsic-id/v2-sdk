import com.google.gson.Gson;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Struct;
import com.google.protobuf.Value;
import io.grpc.*;
import trinsic.okapi.Pbmse;
import trinsic.services.CoreService;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

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
            if (serviceUrl.getPort() == -1)
                throw new MalformedURLException("Port required!");
            var channelBuilder = ManagedChannelBuilder.forAddress(serviceUrl.getHost(), serviceUrl.getPort());
            if (serviceUrl.getProtocol().equals("http"))
                channelBuilder = channelBuilder.usePlaintext();
            else
                channelBuilder = channelBuilder.useTransportSecurity();
            channel = channelBuilder.build();
        }
        return channel;
    }

    public static Pbmse.EncryptionRecipient toOkapiEncryptionRecipient(trinsic.services.Pbmse.EncryptionRecipient input) {
        return Pbmse.EncryptionRecipient.newBuilder()
                .mergeFrom(input)
                .build();
    }
    public static List<Pbmse.EncryptionRecipient> toOkapiEncryptionRecipient(List<trinsic.services.Pbmse.EncryptionRecipient> input) {
        var output = new ArrayList<Pbmse.EncryptionRecipient>();
        input.forEach(encryptionRecipient -> output.add(toOkapiEncryptionRecipient(encryptionRecipient)));
        return output;
    }

    public static trinsic.services.Pbmse.EncryptionRecipient toServicesEncryptionRecipient(Pbmse.EncryptionRecipient input) throws InvalidProtocolBufferException {
        return trinsic.services.Pbmse.EncryptionRecipient.newBuilder()
                .mergeFrom(input.toByteArray())
                .build();
    }
    public static List<trinsic.services.Pbmse.EncryptionRecipient> toServicesEncryptionRecipient(List<Pbmse.EncryptionRecipient> input) {
        var output = new ArrayList<trinsic.services.Pbmse.EncryptionRecipient>();
        input.forEach(encryptionRecipient -> {
            try {
                output.add(toServicesEncryptionRecipient(encryptionRecipient));
            } catch (InvalidProtocolBufferException e) {
                e.printStackTrace();
            }
        });
        return output;
    }

    public static trinsic.services.Pbmse.EncryptedMessage toServicesEncryptedMessage(Pbmse.EncryptedMessage input) throws InvalidProtocolBufferException {
        return trinsic.services.Pbmse.EncryptedMessage.newBuilder()
                .mergeFrom(input.toByteArray())
                .build();
    }
    public static Pbmse.EncryptedMessage toOkapiEncryptedMessage(trinsic.services.Pbmse.EncryptedMessage input) throws InvalidProtocolBufferException {
        return Pbmse.EncryptedMessage.newBuilder()
                .mergeFrom(input.toByteArray())
                .build();
    }
}

