package trinsic;

import trinsic.okapi.DidException;
import trinsic.services.TrinsicService;
import trinsic.services.common.v1.ProviderOuterClass;
import trinsic.services.verifiablecredentials.v1.VerifiableCredentials;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.concurrent.ExecutionException;

public class CredentialsDemo {
  public static void main(String[] args)
      throws IOException, DidException, ExecutionException, InterruptedException {
    run();
  }

  public static void run()
      throws IOException, DidException, ExecutionException, InterruptedException {
    var unsignedCredential = Files.readString(vaccineCertUnsignedPath());
    var proofRequestJson = Files.readString(vaccineCertFramePath());
    var recipientEmail = "example@trinsic.id";

    var serverConfig = TrinsicUtilities.getTrinsicServiceOptions();

    var trinsicService = new TrinsicService(serverConfig);
    var ecosystemId =
        trinsicService.provider()
            .createEcosystem(ProviderOuterClass.CreateEcosystemRequest.getDefaultInstance())
            .get()
            .getEcosystem()
            .getId();

    serverConfig = serverConfig.toBuilder().setDefaultEcosystem(ecosystemId).build();

    trinsicService.setOptions(serverConfig);

    var issuerVerifier = trinsicService.account().signIn().get(); // Both issues and verifies
    var holder = trinsicService.account().signIn().get();

    trinsicService.setProfile(issuerVerifier);

    // issueCredentialSample() {
    var issueResult =
            trinsicService.credential()
            .issueCredential(
                VerifiableCredentials.IssueRequest.newBuilder()
                    .setDocumentJson(unsignedCredential)
                    .build())
            .get();

    var signedCredentialJson = issueResult.getSignedDocumentJson();
    // }

    System.out.println("Credential: " + signedCredentialJson);

    trinsicService.setProfile(holder);
    // createProof() {
    var createProofResponse =
            trinsicService.credential()
            .createProof(
                VerifiableCredentials.CreateProofRequest.newBuilder()
                    .setDocumentJson(signedCredentialJson)
                    .setRevealDocumentJson(proofRequestJson)
                    .build())
            .get();

    var credentialProof = createProofResponse.getProofDocumentJson();
    // }

    System.out.println("Proof: " + credentialProof);

    try {
      // sendCredential() {
        trinsicService.credential().send(
          VerifiableCredentials.SendRequest.newBuilder()
              .setDocumentJson(signedCredentialJson)
              .setEmail(recipientEmail)
              .build());
      // }
    } catch (ExecutionException re) {
      // This is okay, we don't expect that account to exist.
    }

    trinsicService.setProfile(issuerVerifier);
    // verifyProof() {
    var verifyProofResponse =
            trinsicService.credential()
            .verifyProof(
                VerifiableCredentials.VerifyProofRequest.newBuilder()
                    .setProofDocumentJson(credentialProof)
                    .build())
            .get();

    boolean isValid = verifyProofResponse.getIsValid();
    // }

    System.out.println("Verification result: " + isValid);
    assert isValid;
  }

  public static String baseTestPath() {
    return Path.of(new File("").getAbsolutePath(), "..", "devops", "testdata")
        .toAbsolutePath()
        .toString();
  }

  public static Path vaccineCertUnsignedPath() {
    return Path.of(baseTestPath(), "vaccination-certificate-unsigned.jsonld");
  }

  public static Path vaccineCertFramePath() {
    return Path.of(baseTestPath(), "vaccination-certificate-frame.jsonld");
  }
}
