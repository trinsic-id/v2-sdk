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
import trinsic.security.ISecurityProvider;
import trinsic.security.OberonSecurityProvider;
import trinsic.services.account.v1.AccountProfile;

import java.util.Base64;

import static trinsic.TrinsicUtilities.getTrinsicServiceOptions;

public abstract class ServiceBase {
  private final ISecurityProvider securityProvider = new OberonSecurityProvider();
  private final Channel channel;
  private Options.ServiceOptions.Builder options;

  protected ServiceBase(Options.ServiceOptions.Builder options) {
    this.options = options;
    if (this.options == null) this.options = getTrinsicServiceOptions();
    this.channel = TrinsicUtilities.getChannel(this.options.build());
  }

  public void shutdown() {
    if (channel instanceof ManagedChannel) ((ManagedChannel) this.channel).shutdownNow();
  }

  public Metadata buildMetadata(Message request)
      throws InvalidProtocolBufferException, DidException {
    if (this.options == null || this.options.getAuthToken().isEmpty())
      throw new IllegalArgumentException("Cannot call authenticated endpoint: profile must be set");

    var metadata = new Metadata();
    metadata.put(
        Metadata.Key.of("authorization", Metadata.ASCII_STRING_MARSHALLER),
        securityProvider.GetAuthHeader(this.getProfile(), request));
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

  public Options.ServiceOptions.Builder getOptionsBuilder() {
    return this.options;
  }

  public void setOptionsBuilder(Options.ServiceOptions.Builder builder) {
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
