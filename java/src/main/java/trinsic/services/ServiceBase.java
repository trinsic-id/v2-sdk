package trinsic.services;

import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
import io.grpc.Channel;
import io.grpc.ManagedChannel;
import io.grpc.Metadata;
import io.grpc.stub.MetadataUtils;
import trinsic.TrinsicUtilities;
import trinsic.okapi.DidException;
import trinsic.sdk.options.v1.Options;
import trinsic.services.account.v1.AccountProfile;

import java.util.Base64;
import java.util.concurrent.TimeUnit;

import static trinsic.TrinsicUtilities.getSdkVersion;
import static trinsic.TrinsicUtilities.getTrinsicTrinsicOptions;

public abstract class ServiceBase {
  private final Channel channel;
  private Options.TrinsicOptions.Builder options;

  protected ServiceBase(Options.TrinsicOptions.Builder options) {
    this.options = options;
    if (this.options == null) this.options = getTrinsicTrinsicOptions();
    this.channel = TrinsicUtilities.getChannel(this.options.build());
  }

  public void shutdown() {
    try {
      if (channel instanceof ManagedChannel) {
        ((ManagedChannel) this.channel).shutdownNow().awaitTermination(5000, TimeUnit.MILLISECONDS);
      }
    } catch (InterruptedException ignored) {
      // We'd rather exit than worry about it not shut down.
    }
  }

  private static void putMetadata(Metadata m, String key, String value) {
    m.put(Metadata.Key.of(key, Metadata.ASCII_STRING_MARSHALLER), value);
  }

  public Metadata buildMetadata(Message request) {
    var metadata = new Metadata();
    putMetadata(metadata, "TrinsicSDKLanguage", "java");
    putMetadata(metadata, "TrinsicSDKVersion", getSdkVersion());
    var authToken = "";
    if (request != null) {
      if (this.options != null)
        authToken = this.options.getAuthToken();


      putMetadata(
          metadata, "Authorization", "Bearer " + authToken);
    }
    return metadata;
  }

  private AccountProfile getProfile() throws InvalidProtocolBufferException {
    return AccountProfile.newBuilder()
        .mergeFrom(Base64.getUrlDecoder().decode(this.options.getAuthToken()))
        .build();
  }

  public void setAuthToken(String base64ProfileToken) {
    this.options.setAuthToken(base64ProfileToken);
  }

  public Options.TrinsicOptions.Builder getOptionsBuilder() {
    return this.options;
  }

  public void setOptionsBuilder(Options.TrinsicOptions.Builder builder) {
    this.options = builder;
  }

  public Channel getChannel() {
    return this.channel;
  }

  protected <T extends io.grpc.stub.AbstractStub<T>> T withMetadata(T stub, Message message)
      throws InvalidProtocolBufferException, DidException {
    return stub.withInterceptors(
        MetadataUtils.newAttachHeadersInterceptor(this.buildMetadata(message)));
  }
}
