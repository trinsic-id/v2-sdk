package trinsic.security;

import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
import trinsic.okapi.DidException;
import trinsic.okapi.Hashing;
import trinsic.okapi.Oberon;
import trinsic.okapi.security.v1.Security;
import trinsic.services.account.v1.AccountOuterClass;
import trinsic.services.common.v1.CommonOuterClass;

import java.time.Instant;
import java.util.Base64;

public class OberonSecurityProvider implements ISecurityProvider {
    @Override
    public String GetAuthHeader(AccountOuterClass.AccountProfile accountProfile, Message message) throws InvalidProtocolBufferException, DidException {
        if (accountProfile.hasProtection() && accountProfile.getProtection().getEnabled())
            throw new RuntimeException("the token must be unprotected before use.");

        // compute the hash of the request and return the result
        var messageHash = Hashing.blake3_hash(trinsic.okapi.hashing.v1.Hashing.Blake3HashRequest.newBuilder().setData(message.toByteString()).build()).getDigest();

        var nonce = CommonOuterClass.Nonce.newBuilder()
                .setTimestamp(Instant.now().toEpochMilli())
                .setRequestHash(messageHash).build();

        var proof = Oberon.createProof(Security.CreateOberonProofRequest.newBuilder()
                .setToken(accountProfile.getAuthToken())
                .setData(accountProfile.getAuthData())
                .setNonce(nonce.toByteString()).build());

        return "Oberon " +
                "version=1," +
                "proof=" + Base64.getUrlEncoder().encodeToString(proof.getProof().toByteArray()) + "," +
                "data=" + Base64.getUrlEncoder().encodeToString(accountProfile.getAuthData().toByteArray()) + "," +
                "nonce=" + Base64.getUrlEncoder().encodeToString(nonce.toByteArray());
    }
}
