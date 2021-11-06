import com.google.protobuf.ByteString;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
import io.grpc.ManagedChannel;
import io.grpc.Metadata;
import ky.korins.blake3.Blake3;
import trinsic.okapi.security.v1.Security;
import trinsic.services.common.v1.CommonOuterClass;
import trinsic.services.universalwallet.v1.UniversalWallet;

import java.nio.ByteBuffer;
import java.time.Instant;
import java.util.Base64;
import java.util.concurrent.TimeUnit;

public abstract class ServiceBase {
    protected UniversalWallet.WalletProfile profile;

    public abstract void shutdown() throws InterruptedException;

    protected void shutdown(ManagedChannel channel) throws InterruptedException {
        if (channel == null)
            return;
        channel.shutdownNow();
        channel.awaitTermination(5, TimeUnit.SECONDS);
    }

    public Metadata getMetadata(Message message) throws InvalidProtocolBufferException, DidException {
        if (this.profile == null)
            throw new IllegalArgumentException("Profile not set");

        var messageBytes = message.toByteArray();
        var hashArray = ByteBuffer.allocate(messageBytes.length);
        Blake3.newHasher().update(messageBytes).done(hashArray);

        var nonce = CommonOuterClass.Nonce.newBuilder()
                .setTimestamp(Instant.now().getEpochSecond())
                .setRequestHash(ByteString.copyFrom(hashArray)).build();
        var proof = Oberon.createProof(Security.CreateOberonProofRequest.newBuilder()
                .setToken(this.profile.getAuthToken())
                .setData(this.profile.getAuthData())
                .setNonce(nonce.toByteString()).build());

        var oberonBuilder = "Oberon " +
                "proof=" + Base64.getUrlEncoder().encodeToString(proof.toByteArray()) +
                "data=" + Base64.getUrlEncoder().encodeToString(this.profile.getAuthData().toByteArray()) +
                "nonce=" + Base64.getUrlEncoder().encodeToString(nonce.toByteArray());

        var metadata = new Metadata();
        metadata.put(Metadata.Key.of("Authorization", Metadata.ASCII_STRING_MARSHALLER), oberonBuilder);
        return metadata;
    }

    public void setProfile(UniversalWallet.WalletProfile profile) {
        this.profile = profile;
    }

}

