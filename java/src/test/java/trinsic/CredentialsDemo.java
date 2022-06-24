package trinsic;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.concurrent.ExecutionException;
import trinsic.okapi.DidException;
import trinsic.services.TrinsicService;
import trinsic.services.common.v1.ProviderOuterClass;
import trinsic.services.verifiablecredentials.v1.VerifiableCredentials;

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

    var trinsic = new TrinsicService(serverConfig);
    var ecosystemId =
        trinsic
            .provider()
            .createEcosystem(ProviderOuterClass.CreateEcosystemRequest.getDefaultInstance())
            .get()
            .getEcosystem()
            .getId();

    serverConfig = serverConfig.setDefaultEcosystem(ecosystemId);

    //    trinsicService.setOptionsBuilder(serverConfig);

    var issuerVerifier = trinsic.account().signIn().get(); // Both issues and verifies
    var holder = trinsic.account().signIn().get();

    trinsic.setProfile(issuerVerifier);

    // issueCredentialSample() {
    var issueResult =
        trinsic
            .credential()
            .issueCredential(
                VerifiableCredentials.IssueRequest.newBuilder()
                    .setDocumentJson(unsignedCredential)
                    .build())
            .get();

    var signedCredentialJson = issueResult.getSignedDocumentJson();
    // }

    System.out.println("Credential: " + signedCredentialJson);

    trinsic.setProfile(holder);
    // createProof() {
    var createProofResponse =
        trinsic
            .credential()
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
      trinsic
          .credential()
          .send(
              VerifiableCredentials.SendRequest.newBuilder()
                  .setDocumentJson(signedCredentialJson)
                  .setEmail(recipientEmail)
                  .build());
      // }
    } catch (ExecutionException re) {
      // This is okay, we don't expect that account to exist.
    }

    trinsic.setProfile(issuerVerifier);
    // verifyProof() {
    var verifyProofResponse =
        trinsic
            .credential()
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
