package trinsic.services;

import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
import io.grpc.Channel;
import io.grpc.ManagedChannel;
import io.grpc.Metadata;
import trinsic.TrinsicUtilities;
import trinsic.okapi.DidException;
import trinsic.security.ISecurityProvider;
import trinsic.security.OberonSecurityProvider;
import trinsic.services.account.v1.Account;
import trinsic.services.common.v1.CommonOuterClass;

public abstract class ServiceBase {
    private Account.AccountProfile profile = null;
    private CommonOuterClass.ServerConfig configuration = null;
    private ManagedChannel channel = null;
    private final ISecurityProvider securityProvider = new OberonSecurityProvider();

    protected ServiceBase(Account.AccountProfile accountProfile, CommonOuterClass.ServerConfig serverConfig) {
        this.profile = accountProfile;
        this.configuration = serverConfig;
        if (this.configuration == null)
            this.configuration = TrinsicUtilities.getProductionConfig();
        this.channel = TrinsicUtilities.getChannel(this.configuration);
    }

    public void shutdown() {
        this.channel.shutdownNow();
    }

    public Metadata buildMetadata(Message request) throws InvalidProtocolBufferException, DidException {
        if (this.profile == null)
            throw new IllegalArgumentException("Cannot call authenticated endpoint: profile must be set");

        var metadata = new Metadata();
        metadata.put(Metadata.Key.of("authorization", Metadata.ASCII_STRING_MARSHALLER), securityProvider.GetAuthHeader(this.profile, request));
        return metadata;
    }

    public void setProfile(Account.AccountProfile profile) {
        this.profile = profile;
    }

    public Account.AccountProfile getProfile() {
        return this.profile;
    }

    public CommonOuterClass.ServerConfig getConfiguration() {
        return this.configuration;
    }

    public Channel getChannel() {
        return this.channel;
    }

}

