package trinsic.security;

import com.google.protobuf.ByteString;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
import io.github.rctcwyvrn.blake3.Blake3;
import trinsic.okapi.DidException;
import trinsic.okapi.Oberon;
import trinsic.okapi.security.v1.Security;
import trinsic.services.account.v1.Account;
import trinsic.services.common.v1.CommonOuterClass;

import java.time.Instant;
import java.util.Base64;

public class OberonSecurityProvider implements ISecurityProvider {
    @Override
    public String GetAuthHeader(Account.AccountProfile accountProfile, Message message) throws InvalidProtocolBufferException, DidException {
        if (accountProfile.hasProtection() && accountProfile.getProtection().getEnabled())
            throw new RuntimeException("the token must be unprotected before use.");

        // compute the hash of the request and return the result
        var bytes = message.toByteArray();
        var hasher = Blake3.newInstance();
        hasher.update(bytes);
        var messageHash = hasher.digest(64);

        var nonce = CommonOuterClass.Nonce.newBuilder()
                .setTimestamp(Instant.now().toEpochMilli())
                .setRequestHash(ByteString.copyFrom(messageHash)).build();

        var proof = Oberon.createProof(Security.CreateOberonProofRequest.newBuilder()
                .setToken(accountProfile.getAuthToken())
                .setData(accountProfile.getAuthData())
                .setNonce(nonce.toByteString()).build());

        var oberonBuilder = "Oberon " +
                "version=1," +
                "proof=" + Base64.getUrlEncoder().encodeToString(proof.getProof().toByteArray()) + "," +
                "data=" + Base64.getUrlEncoder().encodeToString(accountProfile.getAuthData().toByteArray()) + "," +
                "nonce=" + Base64.getUrlEncoder().encodeToString(nonce.toByteArray());

        return oberonBuilder;
    }
}
