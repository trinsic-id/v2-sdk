package trinsic.services;

import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
import io.grpc.Channel;
import io.grpc.ManagedChannel;
import io.grpc.Metadata;
import io.grpc.stub.MetadataUtils;
import trinsic.TrinsicUtilities;
import trinsic.okapi.DidException;
import trinsic.security.ISecurityProvider;
import trinsic.security.OberonSecurityProvider;
import trinsic.services.account.v1.AccountOuterClass;
import trinsic.services.common.v1.CommonOuterClass;

public abstract class ServiceBase {
    private AccountOuterClass.AccountProfile profile;
    private CommonOuterClass.ServerConfig configuration;
    private Channel channel;
    private boolean createdChannel;
    private final ISecurityProvider securityProvider = new OberonSecurityProvider();

    protected ServiceBase(AccountOuterClass.AccountProfile accountProfile, CommonOuterClass.ServerConfig serverConfig, Channel channel) {
        this.profile = accountProfile;
        this.configuration = serverConfig;
        if (this.configuration == null)
            this.configuration = TrinsicUtilities.getProductionConfig();
        // Note if we should clean up the channel in the end.
        this.createdChannel = channel == null;
        this.channel = this.createdChannel ? TrinsicUtilities.getChannel(this.configuration) : channel;
    }

    public void shutdown() {
        if (channel instanceof ManagedChannel && createdChannel)
            ((ManagedChannel) this.channel).shutdownNow();
    }

    public Metadata buildMetadata(Message request) throws InvalidProtocolBufferException, DidException {
        if (this.profile == null)
            throw new IllegalArgumentException("Cannot call authenticated endpoint: profile must be set");

        var metadata = new Metadata();
        metadata.put(Metadata.Key.of("authorization", Metadata.ASCII_STRING_MARSHALLER), securityProvider.GetAuthHeader(this.profile, request));
        return metadata;
    }

    public void setProfile(AccountOuterClass.AccountProfile profile) {
        this.profile = profile;
    }

    public AccountOuterClass.AccountProfile getProfile() {
        return this.profile;
    }

    public CommonOuterClass.ServerConfig getConfiguration() {
        return this.configuration;
    }

    public Channel getChannel() {
        return this.channel;
    }

    protected <T extends io.grpc.stub.AbstractStub<T>> T withMetadata(T stub, Message message) throws InvalidProtocolBufferException, DidException {
        return stub.withInterceptors(
                MetadataUtils.newAttachHeadersInterceptor(this.buildMetadata(message)));
    }

}

