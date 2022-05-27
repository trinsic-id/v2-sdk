package trinsic;

import org.junit.jupiter.api.Assertions;
import trinsic.okapi.DidException;
import trinsic.services.AccountService;
import trinsic.services.CredentialService;
import trinsic.services.ProviderService;
import trinsic.services.WalletService;
import trinsic.services.common.v1.ProviderOuterClass;
import trinsic.services.universalwallet.v1.UniversalWalletOuterClass;
import trinsic.services.verifiablecredentials.v1.VerifiableCredentials;

import java.io.*;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.concurrent.ExecutionException;

public class CredentialsDemo {
    public static void main(String[] args) throws IOException, DidException, ExecutionException, InterruptedException {
        run();
    }

    public static void run() throws IOException, DidException, ExecutionException, InterruptedException {
        var unsignedCredential = Files.readString(vaccineCertUnsignedPath());
        var proofRequestJson = Files.readString(vaccineCertFramePath());
        var recipientEmail = "example@trinsic.id";

        var serverConfig = TrinsicUtilities.getTrinsicServiceOptions();

        var providerService = new ProviderService(serverConfig);
        var ecosystemId = providerService
                .createEcosystem(ProviderOuterClass.CreateEcosystemRequest.getDefaultInstance())
                .get().getEcosystem().getId();

        serverConfig = serverConfig.toBuilder().setDefaultEcosystem(ecosystemId).build();

        var accountService = new AccountService(serverConfig);

        var issuerVerifier = accountService.signIn().get(); //Both issues and verifies
        var holder = accountService.signIn().get();

        var walletService = new WalletService(TrinsicUtilities.getTrinsicServiceOptions());
        var credentialService = new CredentialService(TrinsicUtilities.getTrinsicServiceOptions());

        credentialService.setProfile(issuerVerifier);

        // issueCredentialSample() {
        var issueResult = credentialService.issueCredential(
                VerifiableCredentials.IssueRequest
                        .newBuilder()
                        .setDocumentJson(unsignedCredential)
                        .build()
        ).get();

        var signedCredentialJson = issueResult.getSignedDocumentJson();
        // }

        System.out.println("Credential: " + signedCredentialJson);

        credentialService.setProfile(holder);
        // createProof() {
        var createProofResponse = credentialService.createProof(
                VerifiableCredentials.CreateProofRequest
                        .newBuilder()
                        .setDocumentJson(signedCredentialJson)
                        .setRevealDocumentJson(proofRequestJson)
                        .build()
        ).get();

        var credentialProof = createProofResponse.getProofDocumentJson();
        // }

        System.out.println("Proof: " + credentialProof);

        try {
            // sendCredential() {
            credentialService.send(
                    VerifiableCredentials.SendRequest
                            .newBuilder()
                            .setDocumentJson(signedCredentialJson)
                            .setEmail(recipientEmail)
                            .build()
            );
            // }
        } catch (ExecutionException re) {
            // This is okay, we don't expect that account to exist.
        }

        credentialService.setProfile(issuerVerifier);
        // verifyProof() {
        var verifyProofResponse = credentialService.verifyProof(
                VerifiableCredentials.VerifyProofRequest
                        .newBuilder()
                        .setProofDocumentJson(credentialProof)
                        .build()
        ).get();

        boolean isValid = verifyProofResponse.getIsValid();
        // }

        System.out.println("Verification result: " + isValid);
        assert isValid;

        providerService.shutdown();
        accountService.shutdown();
        credentialService.shutdown();
        walletService.shutdown();
    }

    public static String baseTestPath() {
        return Path.of(new File("").getAbsolutePath(), "..", "devops", "testdata").toAbsolutePath().toString();
    }

    public static Path vaccineCertUnsignedPath() {
        return Path.of(baseTestPath(), "vaccination-certificate-unsigned.jsonld");
    }

    public static Path vaccineCertFramePath() {
        return Path.of(baseTestPath(), "vaccination-certificate-frame.jsonld");
    }
}
