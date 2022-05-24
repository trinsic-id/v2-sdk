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
import trinsic.services.account.v1.AccountOuterClass;

import java.util.Base64;

public abstract class ServiceBase {
    private final ISecurityProvider securityProvider = new OberonSecurityProvider();
    private final Channel channel;
    private Options.ServiceOptions options;

    protected ServiceBase(Options.ServiceOptions options) {
        this.options = options;
        if (this.options == null) this.options = TrinsicUtilities.getTrinsicServiceOptions();
        this.channel = TrinsicUtilities.getChannel(this.options);
    }

    public void shutdown() {
        if (channel instanceof ManagedChannel) ((ManagedChannel) this.channel).shutdownNow();
    }

    public Metadata buildMetadata(Message request) throws InvalidProtocolBufferException, DidException {
        if (this.options == null || this.options.getAuthToken().isEmpty())
            throw new IllegalArgumentException("Cannot call authenticated endpoint: profile must be set");

        var metadata = new Metadata();
        metadata.put(Metadata.Key.of("authorization", Metadata.ASCII_STRING_MARSHALLER), securityProvider.GetAuthHeader(this.getProfile(), request));
        return metadata;
    }

    private AccountOuterClass.AccountProfile getProfile() throws InvalidProtocolBufferException {
        return AccountOuterClass.AccountProfile.newBuilder().mergeFrom(Base64.getUrlDecoder().decode(this.options.getAuthToken())).build();
    }

    public void setProfile(String base64ProfileToken) {
        this.options = Options.ServiceOptions.newBuilder().mergeFrom(this.options).setAuthToken(base64ProfileToken).build();
    }

    public Options.ServiceOptions getOptions() {
        return this.options;
    }

    public Channel getChannel() {
        return this.channel;
    }

    protected <T extends io.grpc.stub.AbstractStub<T>> T withMetadata(T stub, Message message) throws InvalidProtocolBufferException, DidException {
        return stub.withInterceptors(MetadataUtils.newAttachHeadersInterceptor(this.buildMetadata(message)));
    }

}

